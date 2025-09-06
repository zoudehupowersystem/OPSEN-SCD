# -*- coding: utf-8 -*-
import sys
import json
import xml.etree.ElementTree as ET
import re
import os

from PySide6.QtWidgets import (
    QApplication, QMainWindow, QTabWidget, QTreeWidget, QTreeWidgetItem,
    QVBoxLayout, QWidget, QFileDialog, QPushButton, QHBoxLayout, QHeaderView,
    QMessageBox, QComboBox, QLabel # <-- 添加 QComboBox, QLabel
)
from PySide6.QtCore import Qt

# IEC 61850 SCL 命名空间
NAMESPACE_URI = "http://www.iec.ch/61850/2003/SCL"
# Global namespace dictionary, initialized in parse_scd_file
ns_map = {}

# --- Helper Functions (保持不变) ---
# find_source_doi_description, parse_intaddr, find_target_doi_description,
# _try_find_doi_in_access_point, _get_doi_desc_or_dU, find_doi_desc
# (代码省略，与原代码相同)

def find_source_doi_description(source_ied_element, ld_inst, prefix, ln_class, ln_inst, doi_name):
    if not source_ied_element or not ld_inst or not ln_class or not doi_name:
        return None

    ldevice = source_ied_element.find(f".//ns:LDevice[@inst='{ld_inst}']", ns_map)
    if ldevice is None:
        return None

    found_ln = None
    xpath_base = f"./ns:LN[@lnClass='{ln_class}']"
    candidate_lns = ldevice.findall(xpath_base, ns_map)

    for ln in candidate_lns:
        ln_prefix = ln.get('prefix', '')
        extref_prefix = prefix if prefix is not None else ''
        prefix_match = (ln_prefix == extref_prefix)

        ln_instance = ln.get('inst', '')
        extref_instance = ln_inst if ln_inst is not None else ''

        if ln_class == 'LLN0' and not extref_instance:
            inst_match = (ln_instance == '' or ln_instance == '0')
        else:
            inst_match = (ln_instance == extref_instance)

        if prefix_match and inst_match:
            found_ln = ln
            break

    # 若带 prefix 未找到，则尝试忽略 prefix 再找一次
    if found_ln is None and prefix:
        for ln in candidate_lns:
            ln_instance = ln.get('inst', '')
            extref_instance = ln_inst if ln_inst is not None else ''
            if ln_class == 'LLN0' and not extref_instance:
                inst_match = (ln_instance == '' or ln_instance == '0')
            else:
                inst_match = (ln_instance == extref_instance)
            if inst_match:
                found_ln = ln
                break

    if found_ln is None:
        return None

    desc = None
    doi = found_ln.find(f"./ns:DOI[@name='{doi_name}']", ns_map)
    if doi is not None:
        desc = doi.get('desc', '').strip()
        if not desc:
            val_du = doi.find(".//ns:DAI[@name='dU']/ns:Val", ns_map)
            if val_du is not None and val_du.text:
                desc = val_du.text.strip()
    return desc


def parse_intaddr(int_addr):
    """
    兼容两种形式:
    1) 带 AccessPoint: "AP1:PISV/SVINGGIO1.SvIn2"
    2) 不带 AccessPoint: "PISV/SVINGGIO1.SvIn2"
    """
    if not int_addr:
        return None

    if ':' in int_addr:
        try:
            ap_name, rest = int_addr.split(':', 1)
            if '/' not in rest:
                return None
            ld_inst, ln_doi_da_path = rest.split('/', 1)

            path_parts = ln_doi_da_path.split('.')
            if len(path_parts) < 1:
                return None

            da_name, doi_name, ln_ref = None, None, None
            common_das = {
                'stval','q','t','mxval','instmag','i','f','ctlval','mag','ang','subval','stseld','d','stse'
            }
            potential_da = path_parts[-1].lower()

            if len(path_parts) >= 2 and potential_da in common_das:
                da_name = path_parts[-1]
                doi_name = path_parts[-2]
                ln_ref = ".".join(path_parts[:-2])
            else:
                doi_name = path_parts[-1]
                ln_ref = ".".join(path_parts[:-1])

            if not doi_name:
                return None
            if not ln_ref:
                ln_ref = "LLN0"

            return {
                'ap': ap_name.strip(),
                'ld': ld_inst.strip(),
                'ln_ref': ln_ref.strip(),
                'doi': doi_name.strip(),
                'da': da_name.strip() if da_name else None
            }
        except:
            return None
    else:
        # 不带冒号时，直接假设没有 AccessPoint
        try:
            if '/' not in int_addr:
                return None
            ld_inst, ln_doi_da_path = int_addr.split('/', 1)

            path_parts = ln_doi_da_path.split('.')
            if len(path_parts) < 1:
                return None

            da_name, doi_name, ln_ref = None, None, None
            common_das = {
                'stval','q','t','mxval','instmag','i','f','ctlval','mag','ang','subval','stseld','d','stse'
            }
            potential_da = path_parts[-1].lower()

            if len(path_parts) >= 2 and potential_da in common_das:
                da_name = path_parts[-1]
                doi_name = path_parts[-2]
                ln_ref = ".".join(path_parts[:-2])
            else:
                doi_name = path_parts[-1]
                ln_ref = ".".join(path_parts[:-1])

            if not doi_name:
                return None
            if not ln_ref:
                ln_ref = "LLN0"

            return {
                'ap': '',
                'ld': ld_inst.strip(),
                'ln_ref': ln_ref.strip(),
                'doi': doi_name.strip(),
                'da': da_name.strip() if da_name else None
            }
        except:
            return None


def find_target_doi_description(receiving_ied_element, parsed_int_addr):
    if not receiving_ied_element or not parsed_int_addr:
        return "(无效输入)"

    ap_name = parsed_int_addr.get('ap')
    ld_inst = parsed_int_addr.get('ld')
    ln_ref_from_intaddr = parsed_int_addr.get('ln_ref')
    doi_name = parsed_int_addr.get('doi')
    ied_name = receiving_ied_element.get('name')

    if not ld_inst or not ln_ref_from_intaddr or not doi_name:
        return f"({doi_name}: 内部地址解析不完整)"

    # 如果 ap_name 不为空，则先精确查找
    if ap_name:
        access_point = receiving_ied_element.find(f".//ns:AccessPoint[@name='{ap_name}']", ns_map)
        if access_point is not None:
            result_desc = _try_find_doi_in_access_point(access_point, ld_inst, ln_ref_from_intaddr, doi_name)
            if result_desc is not None:
                return result_desc
            else:
                return f"({doi_name}: 在AP '{ap_name}' 下找不到 LDevice='{ld_inst}' 或 LN='{ln_ref_from_intaddr}' 或 DOI='{doi_name}')"
        # 找不到则 fallback
    # 若 ap_name 为空 或 未找到 AccessPoint，则遍历所有AP
    all_aps = receiving_ied_element.findall(".//ns:AccessPoint", ns_map)
    for ap_candidate in all_aps:
        result = _try_find_doi_in_access_point(ap_candidate, ld_inst, ln_ref_from_intaddr, doi_name)
        if result is not None:
            return result
    if ap_name:
        return f"({doi_name}: AP '{ap_name}' 未找到，也无fallback匹配)"
    else:
        return f"({doi_name}: (无AP) 在所有AP下均未找到 LDevice='{ld_inst}' 或 LN='{ln_ref_from_intaddr}' 或 DOI='{doi_name}')"


def _try_find_doi_in_access_point(access_point_elem, ld_inst, ln_ref, doi_name):
    ldevice = access_point_elem.find(f".//ns:LDevice[@inst='{ld_inst}']", ns_map)
    if ldevice is None:
        return None

    target_ln = None
    ln_elements = ldevice.findall('.//ns:LN', ns_map)
    for ln in ln_elements:
        ln_prefix = ln.get('prefix', '')
        ln_class = ln.get('lnClass', '')
        ln_inst = ln.get('inst', '')

        possible_ids = list(filter(None, set([
            f"{ln_prefix}{ln_class}{ln_inst}",
            f"{ln_class}{ln_inst}",
            f"{ln_prefix}{ln_class}" if ln_class == 'LLN0' and ln_inst in ['', '0'] else None,
            f"{ln_class}" if ln_class == 'LLN0' and ln_inst in ['', '0'] else None,
        ])))

        if ln_ref in possible_ids:
            target_ln = ln
            break

        if ln_class == 'LLN0' and ln_inst in ['', '0'] and ln_ref == 'LLN0':
            target_ln = ln
            break

    if target_ln is None:
        # LN 没找到，尝试在 LDevice 下搜索 DOI
        direct_doi = ldevice.find(f".//ns:DOI[@name='{doi_name}']", ns_map)
        if direct_doi is not None:
            return _get_doi_desc_or_dU(direct_doi) + " (LN匹配失败回退)"
        else:
            return None

    doi = target_ln.find(f"./ns:DOI[@name='{doi_name}']", ns_map)
    if doi is None:
        return None

    return _get_doi_desc_or_dU(doi)


def _get_doi_desc_or_dU(doi_element):
    desc = doi_element.get('desc', '').strip()
    if desc:
        return desc
    val_du = doi_element.find(".//ns:DAI[@name='dU']/ns:Val", ns_map)
    if val_du is not None and val_du.text:
        return val_du.text.strip()
    return "(目标描述未配置)"


def find_doi_desc(ied, doName):
    for doi in ied.findall(f".//ns:DOI[@name='{doName}']", ns_map):
        desc = doi.get('desc', '').strip()
        if desc:
            return desc
        val_du = doi.find(".//ns:DAI[@name='dU']/ns:Val", ns_map)
        if val_du is not None and val_du.text:
            desc = val_du.text.strip()
            return desc
    return ""

# --- SCD Parsing Functions (保持不变) ---
# parse_scd_file, get_extref_inputs_separated, get_goose_inputs_from_ln,
# get_sv_inputs_from_ln, get_goose_outputs, get_sv_outputs,
# parse_communication, parse_all_data
# (代码省略，与原代码相同)

def parse_scd_file(file_path):
    global ns_map
    print(f"正在加载SCD文件: {file_path}")
    try:
        events = ("start-ns", "end")
        root_tag = None
        ns_uri = None
        context = ET.iterparse(file_path, events=events)

        for event, elem in context:
            if event == "start-ns":
                prefix, uri = elem
                if prefix == "":
                    ns_uri = uri
            elif event == "end" and root_tag is None and '}' in elem.tag:
                root_tag = elem.tag

        if ns_uri is None and root_tag and '}' in root_tag:
            ns_uri = root_tag.split('}')[0].strip('{')

        if ns_uri is None:
            try:
                tree_for_ns = ET.parse(file_path)
                root_for_ns = tree_for_ns.getroot()
                if '}' in root_for_ns.tag:
                    ns_uri = root_for_ns.tag.split('}')[0].strip('{')
            except Exception:
                pass

            if ns_uri is None:
                ns_uri = NAMESPACE_URI
                print(f"警告: 无法自动检测SCL命名空间，使用默认值: {ns_uri}")

        ns_map = {'ns': ns_uri}
        ET.register_namespace('', ns_uri)

        tree = ET.parse(file_path)
        root = tree.getroot()
        if root is None:
            raise ValueError("无法解析SCD文件的根元素")

        print(f"SCD文件加载成功。命名空间: {ns_uri}")
        return root, ns_map
    except Exception as e:
        print(f"加载或解析SCD文件失败: {e}")
        ns_map = {}
        return None, None


def get_extref_inputs_separated(receiving_ied_element, ied_map):
    goose_inputs = []
    sv_inputs = []
    inputs_sections = receiving_ied_element.findall('.//ns:Inputs', ns_map)
    receiving_ied_name = receiving_ied_element.get('name')

    for section in inputs_sections:
        for ext_ref in section.findall('.//ns:ExtRef', ns_map):
            service_type = ext_ref.get('serviceType')
            da_name = ext_ref.get('daName')
            src_ied_name = ext_ref.get('iedName')
            src_ld_inst = ext_ref.get('ldInst')
            src_prefix = ext_ref.get('prefix')
            src_ln_class = ext_ref.get('lnClass')
            src_ln_inst = ext_ref.get('lnInst')
            src_do_name = ext_ref.get('doName')
            int_addr = ext_ref.get('intAddr')
            extref_desc = ext_ref.get('desc', '')

            extref_data = {
                'iedName': src_ied_name,
                'ldInst': src_ld_inst,
                'prefix': src_prefix or '',
                'lnClass': src_ln_class,
                'lnInst': src_ln_inst or '',
                'doName': src_do_name,
                'daName': da_name or '',
                'intAddr': int_addr,
                'desc': extref_desc,
                'source_desc': '?',
                'dest_desc': '?'
            }

            # 查找源描述
            source_ied_element = ied_map.get(src_ied_name) if src_ied_name else None
            src_desc_found = None
            if source_ied_element and src_ld_inst and src_ln_class and src_do_name:
                src_desc_found = find_source_doi_description(
                    source_ied_element,
                    src_ld_inst,
                    src_prefix,
                    src_ln_class,
                    src_ln_inst,
                    src_do_name
                )

            if src_desc_found:
                extref_data['source_desc'] = src_desc_found
            elif extref_desc:
                extref_data['source_desc'] = f"{extref_desc} (源查找失败)"
            elif src_ied_name:
                src_path_fallback = f"{extref_data.get('prefix','')}{extref_data['lnClass']}{extref_data.get('lnInst','')}.{extref_data['doName']}"
                extref_data['source_desc'] = f"{src_path_fallback} (源描述未找到)"
            else:
                extref_data['source_desc'] = "(源信息不完整或未找到)"

            # 查找目标描述 (本 IED)
            dest_desc_found = "(目标地址未指定)"
            if int_addr:
                parsed_addr = parse_intaddr(int_addr)
                if parsed_addr:
                    dest_desc_found = find_target_doi_description(receiving_ied_element, parsed_addr)
                else:
                    dest_desc_found = "(内部地址解析错误)"

            extref_data['dest_desc'] = dest_desc_found

            # 判断是 GOOSE 还是 SV
            is_sv = False
            if service_type == 'SMV':
                is_sv = True
            elif service_type is None or service_type == 'GOOSE':
                # 如果没有 daName，很多情况下可能是 SV
                if not da_name:
                    is_sv = True

            if is_sv:
                sv_inputs.append(extref_data)
            else:
                goose_inputs.append(extref_data)

    # 排序
    try:
        def sort_key(item):
            intaddr = item.get('intAddr', '')
            parsed = parse_intaddr(intaddr)
            if parsed and parsed.get('doi'):
                doi_name = parsed['doi']
                match_doi = re.search(r'([a-zA-Z]+)(\d+)$', doi_name)
                doi_prefix = match_doi.group(1) if match_doi else doi_name
                doi_num = int(match_doi.group(2)) if match_doi else 9999

                ln_ref = parsed.get('ln_ref', '')
                match_ln = re.search(r'([a-zA-Z]+)(\d*)$', ln_ref)
                ln_prefix_sort = match_ln.group(1) if match_ln else ln_ref
                ln_num_sort = int(match_ln.group(2)) if match_ln and match_ln.group(2) else 9999

                return (parsed.get('ld',''), ln_prefix_sort, ln_num_sort, doi_prefix, doi_num, intaddr)
            return ('', '', 9999, '', 9999, intaddr)

        goose_inputs.sort(key=sort_key)
        sv_inputs.sort(key=sort_key)
    except Exception as e:
        print(f"警告: 排序ExtRef输入时出错 - {e}")

    return goose_inputs, sv_inputs


def get_goose_inputs_from_ln(ied):
    inputs = []
    for ln in ied.findall('.//ns:LN', ns_map):
        prefix = ln.get('prefix', '').upper()
        ln_class = ln.get('lnClass','')
        ln_inst = ln.get('inst','')
        ln_desc = ln.get('desc', '').strip()

        is_goose_ln = False
        if prefix == "GO" or prefix == "GOIN":
            is_goose_ln = True
        elif "GOOSE" in ln_desc.upper() or "GOIN" in ln_desc.upper():
            is_goose_ln = True

        if is_goose_ln:
            doi_list = []
            for doi in ln.findall('.//ns:DOI', ns_map):
                doi_name = doi.get('name')
                doi_desc = doi.get('desc', '').strip()
                if not doi_desc:
                    du_val = doi.find(".//ns:DAI[@name='dU']/ns:Val", ns_map)
                    if du_val is not None and du_val.text:
                        doi_desc = du_val.text.strip()
                doi_list.append({
                    'name': doi_name,
                    'desc': doi_desc or f"{doi_name} (desc missing)"
                })

            if doi_list:
                inputs.append({
                    'ln_desc': ln_desc or f"{prefix}{ln_class}{ln_inst}",
                    'dois': sorted(doi_list, key=lambda x: x['name'])
                })

    return inputs


def get_sv_inputs_from_ln(ied):
    inputs = []
    for ln in ied.findall('.//ns:LN', ns_map):
        prefix = ln.get('prefix', '').upper()
        ln_class = ln.get('lnClass','')
        ln_inst = ln.get('inst','')
        ln_desc = ln.get('desc', '').strip()

        is_sv_ln = False
        if prefix == "SVIN":
            is_sv_ln = True
        elif "SV 输入" in ln_desc or "SVIN" in ln_desc.upper():
            is_sv_ln = True
        elif ln_class == 'GGIO' and ('SV' in prefix or 'SV' in ln_desc.upper()):
            is_sv_ln = True

        if is_sv_ln:
            doi_list = []
            for doi in ln.findall('.//ns:DOI', ns_map):
                doi_name = doi.get('name')
                doi_desc = doi.get('desc', '').strip()
                if not doi_desc:
                    du_val = doi.find(".//ns:DAI[@name='dU']/ns:Val", ns_map)
                    if du_val is not None and du_val.text:
                        doi_desc = du_val.text.strip()
                doi_list.append({
                    'name': doi_name,
                    'desc': doi_desc or f"{doi_name} (desc missing)"
                })

            if doi_list:
                inputs.append({
                    'ln_desc': ln_desc or f"{prefix}{ln_class}{ln_inst}",
                    'dois': sorted(doi_list, key=lambda x: x['name'])
                })

    return inputs


def get_goose_outputs(ied):
    outputs = []
    gse_controls = ied.findall('.//ns:GSEControl', ns_map)
    for gse in gse_controls:
        gse_dict = {
            'name': gse.get('name'),
            'appID': gse.get('appID'),
            'dataSet': gse.get('datSet'),
            'fcda': []
        }
        dataset_ref = gse.get('datSet')
        if dataset_ref:
            dataset = ied.find(f".//ns:DataSet[@name='{dataset_ref}']", ns_map)
            if dataset is not None:
                fcda_list = []
                for fcda in dataset.findall('.//ns:FCDA', ns_map):
                    fcda_desc = fcda.get('desc', '').strip()
                    if not fcda_desc:
                        src_desc = find_source_doi_description(
                            ied,
                            fcda.get('ldInst'),
                            fcda.get('prefix'),
                            fcda.get('lnClass'),
                            fcda.get('lnInst'),
                            fcda.get('doName')
                        )
                        fcda_desc = src_desc if src_desc else None

                    path_info = f"{fcda.get('ldInst','')}"
                    ln_part = f"{fcda.get('prefix','')}{fcda.get('lnClass','')}{fcda.get('lnInst','')}"
                    if ln_part:
                        path_info += f"/{ln_part}"
                    path_info += f".{fcda.get('doName')}"
                    if fcda.get('daName'):
                        path_info += f".{fcda.get('daName')}"

                    fcda_list.append({
                        'desc': fcda_desc if fcda_desc else f"{fcda.get('doName')}" +
                                (f".{fcda.get('daName', '')}" if fcda.get('daName') else ""),
                        'ldInst': fcda.get('ldInst'),
                        'prefix': fcda.get('prefix', ''),
                        'lnClass': fcda.get('lnClass'),
                        'lnInst': fcda.get('lnInst'),
                        'doName': fcda.get('doName'),
                        'daName': fcda.get('daName', ''),
                        'path_info': path_info
                    })

                fcda_list.sort(key=lambda x: x['path_info'])
                gse_dict['fcda'] = fcda_list

        outputs.append(gse_dict)

    outputs.sort(key=lambda x: x['name'])
    return outputs


def get_sv_outputs(ied):
    outputs = []
    sv_controls = ied.findall('.//ns:SampledValueControl', ns_map)

    ln_mapping = {}
    for ln in ied.findall('.//ns:LN', ns_map):
        key = (ln.get('lnClass'), ln.get('inst'))
        desc = ln.get('desc', '').strip()
        if all(k is not None for k in key):
            ln_mapping[key] = desc or f"{ln.get('prefix','')}{ln.get('lnClass','')}{ln.get('inst','')}"

    for sv in sv_controls:
        sv_dict = {
            'name': sv.get('name'),
            'smvID': sv.get('smvID'),
            'dataSet': sv.get('datSet'),
            'grouped': [],
            'individual': []
        }
        dataset_ref = sv.get('datSet')
        if dataset_ref:
            dataset = ied.find(f".//ns:DataSet[@name='{dataset_ref}']", ns_map)
            if dataset is not None:
                grouped = {}
                individual_results = []

                for fcda in dataset.findall('.//ns:FCDA', ns_map):
                    key = (fcda.get('lnClass'), fcda.get('lnInst'))
                    if all(k is not None for k in key):
                        grouped.setdefault(key, []).append(fcda)
                    else:
                        individual_results.append(fcda)

                for key, fcda_group in grouped.items():
                    ln_desc = ln_mapping.get(key, f"{key[0]}{key[1]}")
                    fcda_details = []
                    for fcda in fcda_group:
                        fcda_desc = fcda.get('desc', '').strip()
                        if not fcda_desc:
                            src_desc = find_source_doi_description(
                                ied,
                                fcda.get('ldInst'),
                                fcda.get('prefix'),
                                fcda.get('lnClass'),
                                fcda.get('lnInst'),
                                fcda.get('doName')
                            )
                            fcda_desc = src_desc if src_desc else None

                        path = f"{fcda.get('doName')}" + (f".{fcda.get('daName')}" if fcda.get('daName') else "")
                        fcda_details.append({
                            'desc': fcda_desc or path,
                            'doName': fcda.get('doName'),
                            'daName': fcda.get('daName', ''),
                            'path_info': path
                        })
                    fcda_details.sort(key=lambda x: x['path_info'])

                    sv_dict['grouped'].append({
                        'ln_desc': ln_desc,
                        'fcda_details': fcda_details
                    })

                for fcda in individual_results:
                    fcda_desc = fcda.get('desc', '').strip()
                    if not fcda_desc:
                        src_desc = find_source_doi_description(
                            ied,
                            fcda.get('ldInst'),
                            fcda.get('prefix'),
                            fcda.get('lnClass'),
                            fcda.get('lnInst'),
                            fcda.get('doName')
                        )
                        fcda_desc = src_desc if src_desc else None

                    full_path = f"{fcda.get('ldInst','')}/{fcda.get('prefix','')}{fcda.get('lnClass','')}{fcda.get('lnInst','')}.{fcda.get('doName')}"
                    if fcda.get('daName'):
                        full_path += f".{fcda.get('daName')}"

                    sv_dict['individual'].append({
                        'desc': fcda_desc or full_path,
                        'doName': fcda.get('doName'),
                        'daName': fcda.get('daName', ''),
                        'path_info': full_path
                    })

                sv_dict['individual'].sort(key=lambda x: x['path_info'])

        outputs.append(sv_dict)

    outputs.sort(key=lambda x: x['name'])
    return outputs


def parse_communication(root):
    comm = root.find('.//ns:Communication', ns_map)
    sub_networks = []
    if comm is None:
        return []

    for sub_net in comm.findall('.//ns:SubNetwork', ns_map):
        sub_name = sub_net.get("name", "Unnamed SubNetwork")
        sub_type = sub_net.get("type", "")
        bit_rate_elem = sub_net.find('.//ns:BitRate', ns_map)
        bit_rate = {}
        if bit_rate_elem is not None and bit_rate_elem.text:
            bit_rate = {
                "value": bit_rate_elem.text.strip(),
                "unit": bit_rate_elem.get("unit", "b/s"),
                "multiplier": bit_rate_elem.get("multiplier", "")
            }

        connected_aps = []
        for cap in sub_net.findall('.//ns:ConnectedAP', ns_map):
            ied_name = cap.get("iedName", "")
            ap_name = cap.get("apName", "")

            address_list = []
            gse_list = []
            smv_list = []

            address_elem = cap.find('.//ns:Address', ns_map)
            if address_elem is not None:
                for p in address_elem.findall('.//ns:P', ns_map):
                    p_type = p.get("type", "")
                    p_value = p.text.strip() if p.text else ""
                    if p_value or "SEL" in p_type.upper():
                        address_list.append({"type": p_type, "value": p_value})

            for gse_elem in cap.findall('.//ns:GSE', ns_map):
                gse_address_list = []
                gse_address_elem = gse_elem.find('.//ns:Address', ns_map)
                if gse_address_elem is not None:
                    for p in gse_address_elem.findall('.//ns:P', ns_map):
                        p_type = p.get("type", "")
                        p_value = p.text.strip() if p.text else ""
                        if p_value:
                            gse_address_list.append({"type": p_type, "value": p_value})
                min_t = gse_elem.find('.//ns:MinTime', ns_map)
                max_t = gse_elem.find('.//ns:MaxTime', ns_map)
                gse_list.append({
                    "ldInst": gse_elem.get("ldInst", ""),
                    "cbName": gse_elem.get("cbName", ""),
                    "Address": sorted(gse_address_list, key=lambda x: x['type']),
                    "MinTime": min_t.text.strip() if min_t is not None and min_t.text else "",
                    "MaxTime": max_t.text.strip() if max_t is not None and max_t.text else ""
                })

            for smv_elem in cap.findall('.//ns:SMV', ns_map):
                smv_address_list = []
                smv_address_elem = smv_elem.find('.//ns:Address', ns_map)
                if smv_address_elem is not None:
                    for p in smv_address_elem.findall('.//ns:P', ns_map):
                        p_type = p.get("type", "")
                        p_value = p.text.strip() if p.text else ""
                        if p_value:
                            smv_address_list.append({"type": p_type, "value": p_value})

                smv_list.append({
                    "ldInst": smv_elem.get("ldInst", ""),
                    "cbName": smv_elem.get("cbName", ""),
                    "Address": sorted(smv_address_list, key=lambda x: x['type'])
                })

            if address_list or gse_list or smv_list:
                gse_list.sort(key=lambda x: (x['ldInst'], x['cbName']))
                smv_list.sort(key=lambda x: (x['ldInst'], x['cbName']))
                connected_aps.append({
                    "iedName": ied_name,
                    "apName": ap_name,
                    "Address": sorted(address_list, key=lambda x: x['type']),
                    "GSE": gse_list,
                    "SMV": smv_list
                })

        connected_aps.sort(key=lambda x: (x['iedName'], x['apName']))
        if connected_aps or bit_rate or sub_type:
            sub_networks.append({
                "name": sub_name,
                "type": sub_type,
                "BitRate": bit_rate,
                "ConnectedAP": connected_aps
            })

    sub_networks.sort(key=lambda x: x['name'])
    return sub_networks


def parse_all_data(file_path):
    root, current_ns_map = parse_scd_file(file_path)
    if root is None or not current_ns_map:
        QMessageBox.critical(None, "错误", "无法加载或解析SCD文件。")
        return None

    ied_map = {ied.get('name'): ied for ied in root.findall('.//ns:IED', ns_map)}
    if not ied_map:
        QMessageBox.warning(None, "警告", "SCD文件中未找到IED定义。")
        # 返回包含空列表的结构，而不是None，以便调用者可以处理
        return {"IEDs": [], "Communication": []}

    ied_data_list = []
    total_ieds = len(ied_map)
    print(f"开始解析 {total_ieds} 个IED...")

    for i, (ied_name, ied) in enumerate(ied_map.items()):
        print(f"  解析 IED {i+1}/{total_ieds}: {ied_name}")
        ied_desc = ied.get('desc', '').strip()

        try:
            goose_inputs_ext, sv_inputs_ext = get_extref_inputs_separated(ied, ied_map)
        except Exception as e:
            print(f"  错误: 解析IED '{ied_name}' ExtRef输入: {e}")
            goose_inputs_ext, sv_inputs_ext = [], []
            QMessageBox.warning(None, "解析错误", f"IED '{ied_name}' ExtRef输入:\n{e}")

        try:
            goose_inputs_ln = get_goose_inputs_from_ln(ied)
        except Exception as e:
            print(f"  错误: 解析IED '{ied_name}' LN GOOSE输入: {e}")
            goose_inputs_ln = []

        try:
            sv_inputs_ln = get_sv_inputs_from_ln(ied)
        except Exception as e:
            print(f"  错误: 解析IED '{ied_name}' LN SV输入: {e}")
            sv_inputs_ln = []

        try:
            goose_out = get_goose_outputs(ied)
        except Exception as e:
            print(f"  错误: 解析IED '{ied_name}' GOOSE输出: {e}")
            goose_out = []

        try:
            sv_out = get_sv_outputs(ied)
        except Exception as e:
            print(f"  错误: 解析IED '{ied_name}' SV输出: {e}")
            sv_out = []

        ied_data_list.append({
            "name": ied_name,
            "desc": ied_desc,
            "GOOSE": {
                "inputs": {
                    "ExtRef": goose_inputs_ext,
                    "LN": goose_inputs_ln
                },
                "outputs": goose_out
            },
            "SV": {
                "inputs": {
                    "ExtRef": sv_inputs_ext,
                    "LN": sv_inputs_ln
                },
                "outputs": sv_out
            }
        })

    print("IED解析完成.")
    print("开始解析Communication部分...")

    try:
        comm_data = parse_communication(root)
        print("Communication解析完成.")
    except Exception as e:
        print(f"错误: 解析Communication: {e}")
        comm_data = []
        QMessageBox.warning(None, "解析错误", f"Communication:\n{e}")

    ied_data_list.sort(key=lambda x: x['name'])
    return {
        "IEDs": ied_data_list,
        "Communication": comm_data
    }


# --- GUI Class (MainWindow) ---

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("SCD 解析程序 zoudehu")
        self.resize(1650, 980)

        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        layout = QVBoxLayout(central_widget)

        # --- Top Controls Layout ---
        top_controls_layout = QHBoxLayout()

        # Open Button
        self.open_button = QPushButton("打开SCD文件")
        self.open_button.clicked.connect(self.open_scd_file)
        top_controls_layout.addWidget(self.open_button)

        # Spacer
        top_controls_layout.addStretch(1)

        # IED Selector for Export
        self.ied_export_label = QLabel("选择要导出的IED:")
        top_controls_layout.addWidget(self.ied_export_label)

        self.ied_selector = QComboBox()
        self.ied_selector.setMinimumWidth(200) # Give it some initial width
        top_controls_layout.addWidget(self.ied_selector)

        # Save Button
        self.save_button = QPushButton("保存所选IED的JSON") # Changed button text
        self.save_button.clicked.connect(self.save_json_selected_ied) # Connect to new method
        top_controls_layout.addWidget(self.save_button)

        # --- Add Top Controls to Main Layout ---
        layout.addLayout(top_controls_layout)

        # Tab Widget
        self.tab_widget = QTabWidget()
        layout.addWidget(self.tab_widget)

        # Tree Widgets (IED and Communication)
        self.tree_ied = QTreeWidget()
        self.tree_ied.setHeaderLabels(["中文描述", "SCL路径 / 原文"])
        self.tree_ied.header().setSectionResizeMode(0, QHeaderView.ResizeMode.Interactive)
        self.tree_ied.header().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        self.tree_ied.setColumnWidth(0, 750)
        self.tab_widget.addTab(self.tree_ied, "IED 信息")

        self.tree_comm = QTreeWidget()
        self.tree_comm.setHeaderLabels(["中文描述", "SCL路径 / 原文"])
        self.tree_comm.header().setSectionResizeMode(0, QHeaderView.ResizeMode.Interactive)
        self.tree_comm.header().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        self.tree_comm.setColumnWidth(0, 600)
        self.tab_widget.addTab(self.tree_comm, "Communication")

        self.scd_data = None
        self.current_scd_path = None

        # --- Initial State ---
        self.ied_export_label.setVisible(False) # Hide selector initially
        self.ied_selector.setVisible(False)
        self.ied_selector.setEnabled(False)
        self.save_button.setEnabled(False)

    def open_scd_file(self):
        file_path, _ = QFileDialog.getOpenFileName(
            self,
            "选择SCD文件",
            "",
            "SCL Files (*.scd *.icd *.cid *.iid *.ssd *.sed *.xml);;All Files (*)"
        )
        if file_path:
            self.current_scd_path = file_path
            # --- Reset UI before loading ---
            self.tree_ied.clear()
            self.tree_comm.clear()
            self.scd_data = None
            self.ied_selector.clear()
            self.ied_selector.setEnabled(False)
            self.save_button.setEnabled(False)
            self.ied_export_label.setVisible(False)
            self.ied_selector.setVisible(False)
            QApplication.processEvents()

            loading_item = QTreeWidgetItem(["正在加载和解析...", file_path])
            self.tree_ied.addTopLevelItem(loading_item)
            QApplication.processEvents()

            try:
                self.scd_data = parse_all_data(file_path)
                # Remove loading item regardless of success or failure below
                loading_index = self.tree_ied.indexOfTopLevelItem(loading_item)
                if loading_index != -1:
                    self.tree_ied.takeTopLevelItem(loading_index)

                if self.scd_data and self.scd_data["IEDs"]:
                    self.populate_ied_tree(self.scd_data["IEDs"])
                    self.populate_communication_tree(self.scd_data["Communication"])

                    # --- Populate IED Selector ---
                    self.ied_selector.addItem("-- 请选择IED --") # Placeholder
                    for ied in self.scd_data["IEDs"]:
                        self.ied_selector.addItem(ied['name'])

                    # --- Enable/Show Export Controls ---
                    self.ied_export_label.setVisible(True)
                    self.ied_selector.setVisible(True)
                    self.ied_selector.setEnabled(True)
                    self.save_button.setEnabled(True) # Enable save button

                    print("界面已更新。")
                    QMessageBox.information(self, "完成", f"SCD 文件 '{os.path.basename(file_path)}' 解析完成。")

                elif self.scd_data and not self.scd_data["IEDs"]:
                    # Parsed successfully, but no IEDs found
                    warning_item = QTreeWidgetItem(["警告", "SCD文件中未找到IED定义。"])
                    self.tree_ied.addTopLevelItem(warning_item)
                    self.populate_communication_tree(self.scd_data["Communication"]) # Still show comm data if any
                    print("解析完成，但未找到IED。")
                    QMessageBox.warning(self, "警告", "SCD文件中未找到IED定义。导出功能不可用。")
                else:
                    # parse_all_data returned None (critical parse error)
                    error_item = QTreeWidgetItem(["错误", "SCD文件解析失败或无效。"])
                    self.tree_ied.addTopLevelItem(error_item)
                    print("解析失败或文件无效。")
                    # Keep controls disabled

            except Exception as e:
                # Handle unexpected errors during parsing or populating
                loading_index = self.tree_ied.indexOfTopLevelItem(loading_item)
                if loading_index != -1:
                    self.tree_ied.takeTopLevelItem(loading_index)
                error_item = QTreeWidgetItem(["严重错误", f"处理SCD文件时发生意外错误: {e}"])
                self.tree_ied.addTopLevelItem(error_item)
                print(f"处理SCD文件时发生意外错误: {e}")
                QMessageBox.critical(self, "严重错误", f"处理SCD文件时发生意外错误:\n{e}")
                # Keep controls disabled


    # Renamed original save_json to avoid confusion, though it's now unused.
    # You could remove it or keep it if you wanted a "Save All" button later.
    # def save_json_all(self): ...

    def save_json_selected_ied(self):
        # --- Check if data is loaded ---
        if not self.scd_data or not self.scd_data.get("IEDs"):
            QMessageBox.warning(self, "无数据", "没有可导出的IED数据。请先加载SCD文件。")
            return

        # --- Get selected IED name ---
        selected_ied_name = self.ied_selector.currentText()

        # --- Check if a valid IED is selected ---
        if not selected_ied_name or selected_ied_name == "-- 请选择IED --":
            QMessageBox.warning(self, "未选择", "请先从下拉列表中选择一个IED进行导出。")
            return

        # --- Find the data for the selected IED ---
        ied_to_save = None
        for ied_data in self.scd_data["IEDs"]:
            if ied_data['name'] == selected_ied_name:
                ied_to_save = ied_data
                break

        if ied_to_save is None:
            # This should theoretically not happen if the combo box is populated correctly
            QMessageBox.critical(self, "错误", f"内部错误：无法找到选定IED '{selected_ied_name}' 的数据。")
            return

        # --- Suggest filename ---
        default_filename = f"{selected_ied_name}_parsed.json"
        # Use the directory of the original SCD file as the default save location
        initial_dir = os.path.dirname(self.current_scd_path) if self.current_scd_path else ""

        # --- Show Save File Dialog ---
        file_path, _ = QFileDialog.getSaveFileName(
            self,
            f"保存IED '{selected_ied_name}' 的JSON文件", # Dialog title
            os.path.join(initial_dir, default_filename), # Default path and filename
            "JSON Files (*.json);;All Files (*)"
        )

        # --- Save the selected IED data ---
        if file_path:
            try:
                with open(file_path, 'w', encoding='utf-8') as f:
                    # Dump ONLY THE SELECTED IED'S DATA
                    json.dump(ied_to_save, f, ensure_ascii=False, indent=4)
                print(f"已保存IED '{selected_ied_name}' 的 JSON 文件：{file_path}")
                QMessageBox.information(self, "保存成功", f"已成功保存IED '{selected_ied_name}' 的 JSON 文件：\n{file_path}")
            except Exception as e:
                print(f"保存 JSON 文件失败: {e}")
                QMessageBox.critical(self, "保存失败", f"保存 JSON 文件时出错:\n{e}")

    # --- populate_ied_tree 和 populate_communication_tree 保持不变 ---
    # (代码省略，与原代码相同)
    def populate_ied_tree(self, ied_list):
        self.tree_ied.clear()
        if not ied_list:
            self.tree_ied.addTopLevelItem(
                QTreeWidgetItem(["信息", "SCD文件中未找到IED定义。"])
            )
            return

        for i, ied_data in enumerate(ied_list, start=1):
            # IED 主节点
            ied_item = QTreeWidgetItem([
                f"IED: {ied_data['name']}（{ied_data['desc']}）",
                ""  # 右侧暂不显示
            ])
            self.tree_ied.addTopLevelItem(ied_item)

            # GOOSE
            goose_item = QTreeWidgetItem(["[GOOSE]", ""])
            ied_item.addChild(goose_item)

            # -- GOOSE Inputs --
            goose_in_item = QTreeWidgetItem(["GOOSE输入 (Inputs)", ""])
            goose_item.addChild(goose_in_item)

            # ExtRef
            extref_goose_data = ied_data["GOOSE"]["inputs"]["ExtRef"]
            extref_goose_root = QTreeWidgetItem(
                goose_in_item,
                [f"ExtRef GOOSE Inputs ({len(extref_goose_data)})", ""]
            )
            if extref_goose_data:
                for idx, ext in enumerate(extref_goose_data, start=1):
                    # 左列：中文描述（源->目标），右列：SCL路径
                    left_text = f"{idx}. 源:{ext['source_desc']} → 目标:{ext['dest_desc']}"
                    # 右列包含: iedName/ldInst/prefix+lnClass+lnInst.doName.daName 及 intAddr
                    src_path_display = f"{ext.get('prefix','')}{ext['lnClass']}{ext.get('lnInst','')}.{ext['doName']}"
                    if ext.get('daName'):
                        src_path_display += f".{ext['daName']}"
                    scl_path = f"From: {ext['iedName']}/{ext['ldInst']}/{src_path_display}"
                    scl_path += f" | intAddr: {ext['intAddr'] if ext['intAddr'] else '(N/A)'}"

                    ext_item = QTreeWidgetItem(extref_goose_root, [left_text, scl_path])

                    # 如果描述中带有错误提示，则用颜色标识
                    if any(err in ext['dest_desc'] for err in ["未找到", "错误", "不完整", "未配置", "回退"]):
                        ext_item.setForeground(0, Qt.GlobalColor.red)
                    if any(err in ext['source_desc'] for err in ["未找到", "错误", "不完整"]):
                        ext_item.setForeground(0, Qt.GlobalColor.magenta)

            else:
                extref_goose_root.setText(1, "无")
                extref_goose_root.setDisabled(True)

            # LN GOOSE
            ln_goose_data = ied_data["GOOSE"]["inputs"]["LN"]
            ln_goose_root = QTreeWidgetItem(
                goose_in_item,
                [f"LN GOOSE Inputs ({len(ln_goose_data)})", ""]
            )
            if ln_goose_data:
                for idx, ln in enumerate(ln_goose_data, start=1):
                    ln_item = QTreeWidgetItem(
                        ln_goose_root,
                        [f"{idx}. {ln['ln_desc']}", ""]
                    )
                    for doi_idx, doi in enumerate(ln['dois'], start=1):
                        left_text = f"  {doi_idx}. {doi['desc']}"
                        right_text = f"DOI: {doi['name']}"
                        doi_item = QTreeWidgetItem(ln_item, [left_text, right_text])
            else:
                ln_goose_root.setText(1, "无")
                ln_goose_root.setDisabled(True)

            # -- GOOSE Outputs --
            goose_out_item = QTreeWidgetItem(["GOOSE输出 (Outputs)", ""])
            goose_item.addChild(goose_out_item)
            goose_output_data = ied_data["GOOSE"]["outputs"]
            if goose_output_data:
                for idx, go in enumerate(goose_output_data, start=1):
                    left_text = f"{idx}. GSE: {go['name']} (AppID: {go['appID']})"
                    right_text = f"DataSet: {go['dataSet']}"
                    out_item = QTreeWidgetItem(goose_out_item, [left_text, right_text])

                    fcda_data = go['fcda']
                    fcda_root_item = QTreeWidgetItem(out_item, [
                        f"FCDA Members ({len(fcda_data)})",
                        ""
                    ])
                    if fcda_data:
                        for fcda_idx, fcda in enumerate(fcda_data, start=1):
                            left_text = f"{fcda_idx}. {fcda['desc']}"
                            right_text = fcda.get('path_info', '(Path Error)')
                            fcda_item = QTreeWidgetItem(fcda_root_item, [left_text, right_text])
                    else:
                        fcda_root_item.setText(1, "无或空数据集")
                        fcda_root_item.setDisabled(True)
            else:
                goose_out_item_empty = QTreeWidgetItem(["无GOOSE输出", ""])
                goose_out_item.addChild(goose_out_item_empty)
                goose_out_item_empty.setDisabled(True)

            # SV
            sv_item = QTreeWidgetItem(["[SV]", ""])
            ied_item.addChild(sv_item)

            # -- SV Inputs --
            sv_in_item = QTreeWidgetItem(["SV输入 (Inputs)", ""])
            sv_item.addChild(sv_in_item)

            extref_sv_data = ied_data["SV"]["inputs"]["ExtRef"]
            extref_sv_root = QTreeWidgetItem(
                sv_in_item,
                [f"ExtRef SV Inputs ({len(extref_sv_data)})", ""]
            )
            if extref_sv_data:
                for idx, ext in enumerate(extref_sv_data, start=1):
                    left_text = f"{idx}. 源:{ext['source_desc']} → 目标:{ext['dest_desc']}"
                    src_path_display = f"{ext.get('prefix','')}{ext['lnClass']}{ext.get('lnInst','')}.{ext['doName']}"
                    if ext.get('daName'):
                        src_path_display += f".{ext['daName']}"
                    scl_path = f"From: {ext['iedName']}/{ext['ldInst']}/{src_path_display}"
                    scl_path += f" | intAddr: {ext['intAddr'] if ext['intAddr'] else '(N/A)'}"

                    ext_item = QTreeWidgetItem(extref_sv_root, [left_text, scl_path])

                    if any(err in ext['dest_desc'] for err in ["未找到", "错误", "不完整", "未配置", "回退"]):
                        ext_item.setForeground(0, Qt.GlobalColor.red)
                    if any(err in ext['source_desc'] for err in ["未找到", "错误", "不完整"]):
                        ext_item.setForeground(0, Qt.GlobalColor.magenta)
            else:
                extref_sv_root.setText(1, "无")
                extref_sv_root.setDisabled(True)

            ln_sv_data = ied_data["SV"]["inputs"]["LN"]
            ln_sv_root = QTreeWidgetItem(
                sv_in_item,
                [f"LN SV Inputs ({len(ln_sv_data)})", ""]
            )
            if ln_sv_data:
                for idx, ln in enumerate(ln_sv_data, start=1):
                    ln_item = QTreeWidgetItem(
                        ln_sv_root,
                        [f"{idx}. {ln['ln_desc']}", ""]
                    )
                    for doi_idx, doi in enumerate(ln['dois'], start=1):
                        left_text = f"  {doi_idx}. {doi['desc']}"
                        right_text = f"DOI: {doi['name']}"
                        doi_item = QTreeWidgetItem(ln_item, [left_text, right_text])
            else:
                ln_sv_root.setText(1, "无")
                ln_sv_root.setDisabled(True)

            # -- SV Outputs --
            sv_out_item = QTreeWidgetItem(["SV输出 (Outputs)", ""])
            sv_item.addChild(sv_out_item)
            sv_output_data = ied_data["SV"]["outputs"]
            if sv_output_data:
                for idx, so in enumerate(sv_output_data, start=1):
                    left_text = f"{idx}. SMV: {so['name']} (SmvID: {so['smvID']})"
                    right_text = f"DataSet: {so['dataSet']}"
                    so_item = QTreeWidgetItem(sv_out_item, [left_text, right_text])

                    grouped_data = so['grouped']
                    individual_data = so['individual']

                    if grouped_data:
                        grouped_root = QTreeWidgetItem(so_item, [
                            f"Grouped FCDA by LN ({len(grouped_data)})",
                            ""
                        ])
                        grouped_data.sort(key=lambda g: g['ln_desc'])
                        for grp_idx, group in enumerate(grouped_data, start=1):
                            left_text = f"{grp_idx}. LN: {group['ln_desc']}"
                            right_text = f"Items: {len(group['fcda_details'])}"
                            group_item = QTreeWidgetItem(grouped_root, [left_text, right_text])

                            for fcda_idx, fcda_d in enumerate(group['fcda_details'], start=1):
                                left_text = f"{fcda_idx}. {fcda_d['desc']}"
                                right_text = fcda_d.get('path_info', '(Path Error)')
                                fcda_item = QTreeWidgetItem(group_item, [left_text, right_text])

                    if individual_data:
                        ind_root = QTreeWidgetItem(so_item, [
                            f"Individual FCDA ({len(individual_data)})",
                            ""
                        ])
                        for fcda_idx, fcda_ind in enumerate(individual_data, start=1):
                            left_text = f"{fcda_idx}. {fcda_ind['desc']}"
                            right_text = fcda_ind.get('path_info', '(Path Error)')
                            fcda_item = QTreeWidgetItem(ind_root, [left_text, right_text])

                    if not grouped_data and not individual_data:
                        empty_fcda_item = QTreeWidgetItem(["FCDA Members", "无或空数据集"])
                        so_item.addChild(empty_fcda_item)
                        empty_fcda_item.setDisabled(True)
            else:
                sv_out_item_empty = QTreeWidgetItem(["无SV输出", ""])
                sv_out_item.addChild(sv_out_item_empty)
                sv_out_item_empty.setDisabled(True)

        self.tree_ied.expandToDepth(0)  # 只展开顶层 IED

    def populate_communication_tree(self, comm_list):
        self.tree_comm.clear()
        if not comm_list:
            self.tree_comm.addTopLevelItem(
                QTreeWidgetItem(["信息", "SCD文件中未找到Communication定义。"])
            )
            return

        for i, sub_net in enumerate(comm_list, start=1):
            sn_name = sub_net.get("name", "Unnamed")
            sn_type = sub_net.get("type", "N/A")
            bit_rate = sub_net.get("BitRate", {})
            if bit_rate and bit_rate.get('value'):
                br_text = f"{bit_rate.get('multiplier','')}{bit_rate.get('value','')}{bit_rate.get('unit','')}"
            else:
                br_text = "N/A"

            left_text = f"{i}. 子网: {sn_name}"
            right_text = f"Type={sn_type}, BitRate={br_text}"
            sn_item = QTreeWidgetItem([left_text, right_text])
            self.tree_comm.addTopLevelItem(sn_item)

            connected_aps_data = sub_net.get("ConnectedAP", [])
            cap_root_item = QTreeWidgetItem(sn_item, [
                f"ConnectedAPs ({len(connected_aps_data)})",
                ""
            ])
            if connected_aps_data:
                for idx, cap in enumerate(connected_aps_data, start=1):
                    left_text = f"{idx}. IED: {cap['iedName']}, AP: {cap['apName']}"
                    cap_item = QTreeWidgetItem(cap_root_item, [left_text, ""])

                    addr_data = cap.get("Address", [])
                    if addr_data:
                        addr_summary = ", ".join([f"{p['type']}={p['value']}" for p in addr_data])
                        addr_item = QTreeWidgetItem(cap_item, [
                            f"Address ({len(addr_data)})",
                            addr_summary
                        ])

                    gse_data_list = cap.get("GSE", [])
                    if gse_data_list:
                        gse_root = QTreeWidgetItem(cap_item, [
                            f"GSE Configured ({len(gse_data_list)})",
                            ""
                        ])
                        for gse_idx, gse in enumerate(gse_data_list, start=1):
                            gse_addr_summary = ", ".join([
                                f"{p['type']}={p['value']}" for p in gse.get("Address",[])
                            ])
                            gse_timing = f"MinT={gse.get('MinTime','N/A')}, MaxT={gse.get('MaxTime','N/A')}"
                            left_text = f"{gse_idx}. LD={gse.get('ldInst','?')} / CB={gse.get('cbName','?')}"
                            right_text = f"{gse_timing} | Addr: {gse_addr_summary}"
                            gse_item = QTreeWidgetItem(gse_root, [left_text, right_text])

                    smv_data_list = cap.get("SMV", [])
                    if smv_data_list:
                        smv_root = QTreeWidgetItem(cap_item, [
                            f"SMV Configured ({len(smv_data_list)})",
                            ""
                        ])
                        for smv_idx, smv in enumerate(smv_data_list, start=1):
                            smv_addr_summary = ", ".join([
                                f"{p['type']}={p['value']}" for p in smv.get("Address",[])
                            ])
                            left_text = f"{smv_idx}. LD={smv.get('ldInst','?')} / CB={smv.get('cbName','?')}"
                            right_text = f"Addr: {smv_addr_summary}"
                            smv_item = QTreeWidgetItem(smv_root, [left_text, right_text])

                    if not addr_data and not gse_data_list and not smv_data_list:
                        cap_item.setText(1, "(No address or control blocks listed)")
                        cap_item.setDisabled(True)
            else:
                cap_root_item.setText(1, "无")
                cap_root_item.setDisabled(True)

        self.tree_comm.expandToDepth(0)


# --- Main Function (保持不变) ---
def main():
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    QApplication.setAttribute(Qt.AA_UseHighDpiPixmaps, True)
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec())


if __name__ == "__main__":
    main()