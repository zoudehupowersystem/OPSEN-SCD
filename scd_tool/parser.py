import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Dict, List, Optional, Tuple

from .constants import NAMESPACE_URI
from .helpers import doi_sort_key, parse_intaddr


class SCDParser:
    def __init__(self, root: ET.Element, ns_map: Dict[str, str]):
        self.root = root
        self.ns_map = ns_map
        self.ied_map = {ied.get('name'): ied for ied in root.findall('.//ns:IED', ns_map)}

    def find_source_doi_description(self, source_ied_element, ld_inst, prefix, ln_class, ln_inst, doi_name):
        if not source_ied_element or not ld_inst or not ln_class or not doi_name:
            return None
        ldevice = source_ied_element.find(f".//ns:LDevice[@inst='{ld_inst}']", self.ns_map)
        if ldevice is None:
            return None
        candidate_lns = ldevice.findall(f"./ns:LN[@lnClass='{ln_class}']", self.ns_map)
        for ln in candidate_lns:
            ln_prefix = ln.get('prefix', '')
            extref_prefix = prefix or ''
            ln_instance = ln.get('inst', '')
            extref_instance = ln_inst or ''
            inst_match = (ln_instance == extref_instance) or (ln_class == 'LLN0' and not extref_instance and ln_instance in ('', '0'))
            if ln_prefix == extref_prefix and inst_match:
                return self._get_doi_desc_or_du(ln.find(f"./ns:DOI[@name='{doi_name}']", self.ns_map))
        if prefix:
            for ln in candidate_lns:
                ln_instance = ln.get('inst', '')
                extref_instance = ln_inst or ''
                inst_match = (ln_instance == extref_instance) or (ln_class == 'LLN0' and not extref_instance and ln_instance in ('', '0'))
                if inst_match:
                    return self._get_doi_desc_or_du(ln.find(f"./ns:DOI[@name='{doi_name}']", self.ns_map))
        return None

    def _get_doi_desc_or_du(self, doi_element):
        if doi_element is None:
            return None
        desc = doi_element.get('desc', '').strip()
        if desc:
            return desc
        val_du = doi_element.find(".//ns:DAI[@name='dU']/ns:Val", self.ns_map)
        if val_du is not None and val_du.text:
            return val_du.text.strip()
        return "(目标描述未配置)"

    def _try_find_doi_in_access_point(self, access_point_elem, ld_inst, ln_ref, doi_name):
        ldevice = access_point_elem.find(f".//ns:LDevice[@inst='{ld_inst}']", self.ns_map)
        if ldevice is None:
            return None
        target_ln = None
        for ln in ldevice.findall('.//ns:LN', self.ns_map):
            ln_prefix = ln.get('prefix', '')
            ln_class = ln.get('lnClass', '')
            ln_inst = ln.get('inst', '')
            ids = {
                f"{ln_prefix}{ln_class}{ln_inst}",
                f"{ln_class}{ln_inst}",
            }
            if ln_class == 'LLN0' and ln_inst in ('', '0'):
                ids |= {f"{ln_prefix}{ln_class}", ln_class}
            if ln_ref in ids:
                target_ln = ln
                break
        if target_ln is None:
            direct_doi = ldevice.find(f".//ns:DOI[@name='{doi_name}']", self.ns_map)
            return f"{self._get_doi_desc_or_du(direct_doi)} (LN匹配失败回退)" if direct_doi is not None else None
        return self._get_doi_desc_or_du(target_ln.find(f"./ns:DOI[@name='{doi_name}']", self.ns_map))

    def find_target_doi_description(self, receiving_ied_element, parsed_int_addr):
        if not receiving_ied_element or not parsed_int_addr:
            return "(无效输入)"
        ap_name = parsed_int_addr.get('ap')
        ld_inst = parsed_int_addr.get('ld')
        ln_ref = parsed_int_addr.get('ln_ref')
        doi_name = parsed_int_addr.get('doi')
        if not ld_inst or not ln_ref or not doi_name:
            return f"({doi_name}: 内部地址解析不完整)"
        if ap_name:
            access_point = receiving_ied_element.find(f".//ns:AccessPoint[@name='{ap_name}']", self.ns_map)
            if access_point is not None:
                result_desc = self._try_find_doi_in_access_point(access_point, ld_inst, ln_ref, doi_name)
                if result_desc is not None:
                    return result_desc
                return f"({doi_name}: 在AP '{ap_name}' 下找不到 LDevice='{ld_inst}' 或 LN='{ln_ref}' 或 DOI='{doi_name}')"
        for ap_candidate in receiving_ied_element.findall('.//ns:AccessPoint', self.ns_map):
            result = self._try_find_doi_in_access_point(ap_candidate, ld_inst, ln_ref, doi_name)
            if result is not None:
                return result
        return f"({doi_name}: {'AP ' + ap_name + ' 未找到，也无fallback匹配' if ap_name else '(无AP) 在所有AP下均未找到'})"

    def _resolve_fcda_desc(self, ied, fcda):
        fcda_desc = fcda.get('desc', '').strip()
        if not fcda_desc:
            fcda_desc = self.find_source_doi_description(
                ied, fcda.get('ldInst'), fcda.get('prefix'), fcda.get('lnClass'), fcda.get('lnInst'), fcda.get('doName')
            )
        return fcda_desc

    def _fcda_entries(self, ied, dataset_ref):
        dataset = ied.find(f".//ns:DataSet[@name='{dataset_ref}']", self.ns_map) if dataset_ref else None
        if dataset is None:
            return []
        entries = []
        for fcda in dataset.findall('.//ns:FCDA', self.ns_map):
            path_info = f"{fcda.get('ldInst','')}"
            ln_part = f"{fcda.get('prefix','')}{fcda.get('lnClass','')}{fcda.get('lnInst','')}"
            if ln_part:
                path_info += f"/{ln_part}"
            path_info += f".{fcda.get('doName')}"
            if fcda.get('daName'):
                path_info += f".{fcda.get('daName')}"
            entries.append({
                'desc': self._resolve_fcda_desc(ied, fcda) or f"{fcda.get('doName')}" + (f".{fcda.get('daName', '')}" if fcda.get('daName') else ''),
                'ldInst': fcda.get('ldInst'),
                'prefix': fcda.get('prefix', ''),
                'lnClass': fcda.get('lnClass'),
                'lnInst': fcda.get('lnInst'),
                'doName': fcda.get('doName'),
                'daName': fcda.get('daName', ''),
                'path_info': path_info,
            })
        return sorted(entries, key=lambda x: x['path_info'])

    def get_extref_inputs_separated(self, receiving_ied_element):
        goose_inputs, sv_inputs = [], []
        for section in receiving_ied_element.findall('.//ns:Inputs', self.ns_map):
            for ext_ref in section.findall('.//ns:ExtRef', self.ns_map):
                data = {
                    'iedName': ext_ref.get('iedName'),
                    'ldInst': ext_ref.get('ldInst'),
                    'prefix': ext_ref.get('prefix') or '',
                    'lnClass': ext_ref.get('lnClass'),
                    'lnInst': ext_ref.get('lnInst') or '',
                    'doName': ext_ref.get('doName'),
                    'daName': ext_ref.get('daName') or '',
                    'intAddr': ext_ref.get('intAddr'),
                    'desc': ext_ref.get('desc', ''),
                    'source_desc': '?',
                    'dest_desc': '?',
                }
                src_ied = self.ied_map.get(data['iedName']) if data['iedName'] else None
                src_desc = self.find_source_doi_description(src_ied, data['ldInst'], data['prefix'], data['lnClass'], data['lnInst'], data['doName']) if src_ied else None
                if src_desc:
                    data['source_desc'] = src_desc
                elif data['desc']:
                    data['source_desc'] = f"{data['desc']} (源查找失败)"
                elif data['iedName']:
                    data['source_desc'] = f"{data.get('prefix','')}{data['lnClass']}{data.get('lnInst','')}.{data['doName']} (源描述未找到)"
                else:
                    data['source_desc'] = "(源信息不完整或未找到)"
                if data['intAddr']:
                    parsed_addr = parse_intaddr(data['intAddr'])
                    data['dest_desc'] = self.find_target_doi_description(receiving_ied_element, parsed_addr) if parsed_addr else '(内部地址解析错误)'
                else:
                    data['dest_desc'] = '(目标地址未指定)'
                service_type = ext_ref.get('serviceType')
                is_sv = service_type == 'SMV' or ((service_type is None or service_type == 'GOOSE') and not data['daName'])
                (sv_inputs if is_sv else goose_inputs).append(data)
        return sorted(goose_inputs, key=doi_sort_key), sorted(sv_inputs, key=doi_sort_key)

    def _inputs_from_ln(self, ied, matcher):
        results = []
        for ln in ied.findall('.//ns:LN', self.ns_map):
            prefix = ln.get('prefix', '').upper()
            ln_class = ln.get('lnClass', '')
            ln_inst = ln.get('inst', '')
            ln_desc = ln.get('desc', '').strip()
            if not matcher(prefix, ln_class, ln_desc):
                continue
            dois = []
            for doi in ln.findall('./ns:DOI', self.ns_map):
                desc = self._get_doi_desc_or_du(doi) or f"{doi.get('name')} (desc missing)"
                dois.append({'name': doi.get('name'), 'desc': desc})
            if dois:
                results.append({'ln_desc': ln_desc or f"{prefix}{ln_class}{ln_inst}", 'dois': sorted(dois, key=lambda x: x['name'])})
        return results

    def get_goose_inputs_from_ln(self, ied):
        return self._inputs_from_ln(ied, lambda prefix, _cls, desc: prefix in {'GO', 'GOIN'} or 'GOOSE' in desc.upper() or 'GOIN' in desc.upper())

    def get_sv_inputs_from_ln(self, ied):
        return self._inputs_from_ln(ied, lambda prefix, ln_class, desc: prefix == 'SVIN' or 'SV 输入' in desc or 'SVIN' in desc.upper() or (ln_class == 'GGIO' and ('SV' in prefix or 'SV' in desc.upper())))

    def get_goose_outputs(self, ied):
        outputs = []
        for gse in ied.findall('.//ns:GSEControl', self.ns_map):
            outputs.append({'name': gse.get('name'), 'appID': gse.get('appID'), 'dataSet': gse.get('datSet'), 'fcda': self._fcda_entries(ied, gse.get('datSet'))})
        return sorted(outputs, key=lambda x: x['name'] or '')

    def get_sv_outputs(self, ied):
        outputs = []
        ln_mapping = {(ln.get('lnClass'), ln.get('inst')): ln.get('desc', '').strip() or f"{ln.get('prefix','')}{ln.get('lnClass','')}{ln.get('inst','')}" for ln in ied.findall('.//ns:LN', self.ns_map)}
        for sv in ied.findall('.//ns:SampledValueControl', self.ns_map):
            grouped, individual = [], []
            dataset_ref = sv.get('datSet')
            dataset = ied.find(f".//ns:DataSet[@name='{dataset_ref}']", self.ns_map) if dataset_ref else None
            if dataset is not None:
                grouped_map = {}
                for fcda in dataset.findall('.//ns:FCDA', self.ns_map):
                    key = (fcda.get('lnClass'), fcda.get('lnInst'))
                    if all(key):
                        grouped_map.setdefault(key, []).append(fcda)
                    else:
                        full_path = f"{fcda.get('ldInst','')}/{fcda.get('prefix','')}{fcda.get('lnClass','')}{fcda.get('lnInst','')}.{fcda.get('doName')}"
                        if fcda.get('daName'):
                            full_path += f".{fcda.get('daName')}"
                        individual.append({'desc': self._resolve_fcda_desc(ied, fcda) or full_path, 'doName': fcda.get('doName'), 'daName': fcda.get('daName', ''), 'path_info': full_path})
                for key, items in grouped_map.items():
                    details = []
                    for fcda in items:
                        path = f"{fcda.get('doName')}" + (f".{fcda.get('daName')}" if fcda.get('daName') else '')
                        details.append({'desc': self._resolve_fcda_desc(ied, fcda) or path, 'doName': fcda.get('doName'), 'daName': fcda.get('daName', ''), 'path_info': path})
                    grouped.append({'ln_desc': ln_mapping.get(key, f'{key[0]}{key[1]}'), 'fcda_details': sorted(details, key=lambda x: x['path_info'])})
            outputs.append({'name': sv.get('name'), 'smvID': sv.get('smvID'), 'dataSet': dataset_ref, 'grouped': sorted(grouped, key=lambda x: x['ln_desc']), 'individual': sorted(individual, key=lambda x: x['path_info'])})
        return sorted(outputs, key=lambda x: x['name'] or '')

    def get_mms_outputs(self, ied):
        outputs = []
        for report in ied.findall('.//ns:ReportControl', self.ns_map):
            rpt_enabled = report.find('./ns:RptEnabled', self.ns_map)
            clients = []
            if rpt_enabled is not None:
                for client in rpt_enabled.findall('./ns:ClientLN', self.ns_map):
                    client_ref = f"{client.get('iedName','')}/{client.get('ldInst','')}/{client.get('prefix','')}{client.get('lnClass','')}{client.get('lnInst','')}"
                    clients.append({
                        'iedName': client.get('iedName', ''),
                        'ldInst': client.get('ldInst', ''),
                        'prefix': client.get('prefix', ''),
                        'lnClass': client.get('lnClass', ''),
                        'lnInst': client.get('lnInst', ''),
                        'desc': client_ref.strip('/'),
                    })
            trg_ops = report.find('./ns:TrgOps', self.ns_map)
            opt_fields = report.find('./ns:OptFields', self.ns_map)
            outputs.append({
                'name': report.get('name'),
                'rptID': report.get('rptID', ''),
                'buffered': report.get('buffered', 'false'),
                'dataSet': report.get('datSet', ''),
                'confRev': report.get('confRev', ''),
                'bufTime': report.get('bufTime', ''),
                'intgPd': report.get('intgPd', ''),
                'indexed': report.get('indexed', ''),
                'max_clients': rpt_enabled.get('max', '') if rpt_enabled is not None else '',
                'trigger_options': trg_ops.attrib if trg_ops is not None else {},
                'optional_fields': opt_fields.attrib if opt_fields is not None else {},
                'clients': sorted(clients, key=lambda x: (x['iedName'], x['ldInst'], x['lnClass'], x['lnInst'])),
                'fcda': self._fcda_entries(ied, report.get('datSet')),
            })
        return sorted(outputs, key=lambda x: (x['buffered'], x['name'] or ''))

    def build_mms_input_index(self, mms_outputs_by_ied):
        index = {name: [] for name in self.ied_map}
        for source_ied_name, reports in mms_outputs_by_ied.items():
            for report in reports:
                for client in report['clients']:
                    client_ied = client['iedName']
                    if client_ied in index:
                        index[client_ied].append({
                            'source_ied': source_ied_name,
                            'report_name': report['name'],
                            'rptID': report['rptID'],
                            'buffered': report['buffered'],
                            'dataSet': report['dataSet'],
                            'client_ref': client['desc'],
                        })
        return {name: sorted(items, key=lambda x: (x['source_ied'], x['report_name'])) for name, items in index.items()}

    def parse_communication(self):
        comm = self.root.find('.//ns:Communication', self.ns_map)
        if comm is None:
            return []
        sub_networks = []
        for sub_net in comm.findall('./ns:SubNetwork', self.ns_map):
            bit_rate_elem = sub_net.find('./ns:BitRate', self.ns_map)
            bit_rate = {
                'value': bit_rate_elem.text.strip(),
                'unit': bit_rate_elem.get('unit', 'b/s'),
                'multiplier': bit_rate_elem.get('multiplier', ''),
            } if bit_rate_elem is not None and bit_rate_elem.text else {}
            caps = []
            for cap in sub_net.findall('./ns:ConnectedAP', self.ns_map):
                address = []
                address_elem = cap.find('./ns:Address', self.ns_map)
                if address_elem is not None:
                    for p in address_elem.findall('./ns:P', self.ns_map):
                        value = p.text.strip() if p.text else ''
                        if value or 'SEL' in p.get('type', '').upper():
                            address.append({'type': p.get('type', ''), 'value': value})
                gse_list = []
                for gse_elem in cap.findall('./ns:GSE', self.ns_map):
                    gse_list.append({'ldInst': gse_elem.get('ldInst', ''), 'cbName': gse_elem.get('cbName', ''), 'Address': self._address_list(gse_elem), 'MinTime': (gse_elem.find('./ns:MinTime', self.ns_map).text.strip() if gse_elem.find('./ns:MinTime', self.ns_map) is not None and gse_elem.find('./ns:MinTime', self.ns_map).text else ''), 'MaxTime': (gse_elem.find('./ns:MaxTime', self.ns_map).text.strip() if gse_elem.find('./ns:MaxTime', self.ns_map) is not None and gse_elem.find('./ns:MaxTime', self.ns_map).text else '')})
                smv_list = []
                for smv_elem in cap.findall('./ns:SMV', self.ns_map):
                    smv_list.append({'ldInst': smv_elem.get('ldInst', ''), 'cbName': smv_elem.get('cbName', ''), 'Address': self._address_list(smv_elem)})
                if address or gse_list or smv_list:
                    caps.append({'iedName': cap.get('iedName', ''), 'apName': cap.get('apName', ''), 'Address': sorted(address, key=lambda x: x['type']), 'GSE': sorted(gse_list, key=lambda x: (x['ldInst'], x['cbName'])), 'SMV': sorted(smv_list, key=lambda x: (x['ldInst'], x['cbName']))})
            sub_networks.append({'name': sub_net.get('name', 'Unnamed SubNetwork'), 'type': sub_net.get('type', ''), 'BitRate': bit_rate, 'ConnectedAP': sorted(caps, key=lambda x: (x['iedName'], x['apName']))})
        return sorted(sub_networks, key=lambda x: x['name'])

    def _address_list(self, parent):
        result = []
        address_elem = parent.find('./ns:Address', self.ns_map)
        if address_elem is not None:
            for p in address_elem.findall('./ns:P', self.ns_map):
                value = p.text.strip() if p.text else ''
                if value:
                    result.append({'type': p.get('type', ''), 'value': value})
        return sorted(result, key=lambda x: x['type'])

    def parse_all_data(self):
        ordered_ieds = sorted(self.ied_map.items())
        mms_outputs_by_ied = {ied_name: self.get_mms_outputs(ied) for ied_name, ied in ordered_ieds}
        mms_inputs_by_ied = self.build_mms_input_index(mms_outputs_by_ied)
        ieds = []
        for ied_name, ied in ordered_ieds:
            goose_inputs_ext, sv_inputs_ext = self.get_extref_inputs_separated(ied)
            ieds.append({
                'name': ied_name,
                'desc': ied.get('desc', '').strip(),
                'GOOSE': {'inputs': {'ExtRef': goose_inputs_ext, 'LN': self.get_goose_inputs_from_ln(ied)}, 'outputs': self.get_goose_outputs(ied)},
                'SV': {'inputs': {'ExtRef': sv_inputs_ext, 'LN': self.get_sv_inputs_from_ln(ied)}, 'outputs': self.get_sv_outputs(ied)},
                'MMS': {'inputs': mms_inputs_by_ied.get(ied_name, []), 'outputs': mms_outputs_by_ied.get(ied_name, [])},
            })
        return {'IEDs': ieds, 'Communication': self.parse_communication()}


def parse_scd_file(file_path: str | Path) -> Tuple[Optional[ET.Element], Optional[Dict[str, str]]]:
    try:
        events = ('start-ns', 'end')
        root_tag = None
        ns_uri = None
        for event, elem in ET.iterparse(file_path, events=events):
            if event == 'start-ns':
                prefix, uri = elem
                if prefix == '':
                    ns_uri = uri
            elif event == 'end' and root_tag is None and '}' in elem.tag:
                root_tag = elem.tag
        if ns_uri is None and root_tag and '}' in root_tag:
            ns_uri = root_tag.split('}')[0].strip('{')
        if ns_uri is None:
            root_for_ns = ET.parse(file_path).getroot()
            if '}' in root_for_ns.tag:
                ns_uri = root_for_ns.tag.split('}')[0].strip('{')
        ns_uri = ns_uri or NAMESPACE_URI
        ET.register_namespace('', ns_uri)
        root = ET.parse(file_path).getroot()
        return root, {'ns': ns_uri}
    except Exception:
        return None, None


def parse_all_data(file_path: str | Path):
    root, ns_map = parse_scd_file(file_path)
    if root is None or not ns_map:
        return None
    return SCDParser(root, ns_map).parse_all_data()


def parse_mms_reports(file_path: str | Path, ied_name: Optional[str] = None):
    data = parse_all_data(file_path)
    if data is None:
        return None
    reports_by_ied = {ied['name']: ied['MMS'] for ied in data['IEDs']}
    if ied_name is not None:
        return reports_by_ied.get(ied_name)
    return reports_by_ied
