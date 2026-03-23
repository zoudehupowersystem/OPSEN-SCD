import json
import os
import tkinter as tk
from tkinter import filedialog, messagebox, ttk
from typing import Iterable, Tuple

from .parser import parse_all_data


TreeRow = Tuple[str, str, tuple]


ERROR_TAG = 'error'
WARNING_TAG = 'warning'


def build_ied_rows(ied_list) -> list[TreeRow]:
    rows: list[TreeRow] = []
    for ied_data in ied_list:
        ied_id = ('ied', ied_data['name'])
        rows.append((f"IED: {ied_data['name']}（{ied_data['desc']}）", '', ied_id))
        rows.extend(_build_pubsub_rows(ied_id, 'GOOSE', ied_data['GOOSE']))
        rows.extend(_build_pubsub_rows(ied_id, 'SV', ied_data['SV']))
        rows.extend(_build_mms_rows(ied_id, ied_data['MMS']))
    return rows


def _build_pubsub_rows(parent_id, section_name, section_data) -> list[TreeRow]:
    rows: list[TreeRow] = []
    section_id = parent_id + (section_name,)
    rows.append((f'[{section_name}]', '', section_id))
    inputs_id = section_id + ('inputs',)
    rows.append((f'{section_name}输入 (Inputs)', '', inputs_id))
    for input_kind in ['ExtRef', 'LN']:
        root_id = inputs_id + (input_kind,)
        data = section_data['inputs'][input_kind]
        rows.append((f'{input_kind} {section_name} Inputs ({len(data)})', '' if data else '无', root_id))
        for idx, entry in enumerate(data, start=1):
            if input_kind == 'ExtRef':
                src_path = f"{entry.get('prefix','')}{entry['lnClass']}{entry.get('lnInst','')}.{entry['doName']}"
                if entry.get('daName'):
                    src_path += f".{entry['daName']}"
                item_id = root_id + ('ext', idx)
                left = f"{idx}. 源:{entry['source_desc']} → 目标:{entry['dest_desc']}"
                right = f"From: {entry['iedName']}/{entry['ldInst']}/{src_path} | intAddr: {entry['intAddr'] or '(N/A)'}"
                rows.append((left, right, item_id))
            else:
                ln_id = root_id + ('ln', idx)
                rows.append((f"{idx}. {entry['ln_desc']}", '', ln_id))
                for doi_idx, doi in enumerate(entry['dois'], start=1):
                    rows.append((f"{doi_idx}. {doi['desc']}", f"DOI: {doi['name']}", ln_id + ('doi', doi_idx)))
    outputs_id = section_id + ('outputs',)
    rows.append((f'{section_name}输出 (Outputs)', '', outputs_id))
    for idx, out in enumerate(section_data['outputs'], start=1):
        output_id = outputs_id + ('output', idx)
        if section_name == 'GOOSE':
            rows.append((f"{idx}. GSE: {out['name']} (AppID: {out['appID']})", f"DataSet: {out['dataSet']}", output_id))
            fcda_root = output_id + ('fcda',)
            rows.append((f"FCDA Members ({len(out['fcda'])})", '', fcda_root))
            for fcda_idx, fcda in enumerate(out['fcda'], start=1):
                rows.append((f"{fcda_idx}. {fcda['desc']}", fcda['path_info'], fcda_root + (fcda_idx,)))
        else:
            rows.append((f"{idx}. SMV: {out['name']} (SmvID: {out['smvID']})", f"DataSet: {out['dataSet']}", output_id))
            if out['grouped']:
                grouped_root = output_id + ('grouped',)
                rows.append((f"Grouped FCDA by LN ({len(out['grouped'])})", '', grouped_root))
                for grp_idx, group in enumerate(out['grouped'], start=1):
                    group_id = grouped_root + (grp_idx,)
                    rows.append((f"{grp_idx}. LN: {group['ln_desc']}", f"Items: {len(group['fcda_details'])}", group_id))
                    for fcda_idx, fcda_d in enumerate(group['fcda_details'], start=1):
                        rows.append((f"{fcda_idx}. {fcda_d['desc']}", fcda_d['path_info'], group_id + (fcda_idx,)))
            if out['individual']:
                individual_root = output_id + ('individual',)
                rows.append((f"Individual FCDA ({len(out['individual'])})", '', individual_root))
                for fcda_idx, fcda_ind in enumerate(out['individual'], start=1):
                    rows.append((f"{fcda_idx}. {fcda_ind['desc']}", fcda_ind['path_info'], individual_root + (fcda_idx,)))
    if not section_data['outputs']:
        rows.append(('无输出', '', outputs_id + ('empty',)))
    return rows


def _build_mms_rows(parent_id, mms_data) -> list[TreeRow]:
    rows: list[TreeRow] = []
    mms_id = parent_id + ('MMS',)
    rows.append(('[MMS]', '', mms_id))
    inputs_id = mms_id + ('inputs',)
    rows.append((f"MMS输入 (Reports) ({len(mms_data['inputs'])})", '无' if not mms_data['inputs'] else '', inputs_id))
    for idx, item in enumerate(mms_data['inputs'], start=1):
        rows.append((f"{idx}. 来自 {item['source_ied']} / {item['report_name']}", f"RptID={item['rptID']} | DataSet={item['dataSet']} | Client={item['client_ref']}", inputs_id + (idx,)))
    outputs_id = mms_id + ('outputs',)
    rows.append((f"MMS输出 (ReportControl) ({len(mms_data['outputs'])})", '无' if not mms_data['outputs'] else '', outputs_id))
    for idx, out in enumerate(mms_data['outputs'], start=1):
        output_id = outputs_id + (idx,)
        rows.append((f"{idx}. {out['name']} ({'BRCB' if out['buffered'] == 'true' else 'URCB'})", f"RptID={out['rptID']} | DataSet={out['dataSet']} | max={out['max_clients'] or 'N/A'}", output_id))
        trig = ', '.join(f'{k}={v}' for k, v in sorted(out['trigger_options'].items())) or 'N/A'
        opts = ', '.join(f'{k}={v}' for k, v in sorted(out['optional_fields'].items())) or 'N/A'
        rows.append(('Trigger Options', trig, output_id + ('trigger',)))
        rows.append(('Optional Fields', opts, output_id + ('options',)))
        client_root = output_id + ('clients',)
        rows.append((f"Clients ({len(out['clients'])})", '', client_root))
        for cidx, client in enumerate(out['clients'], start=1):
            rows.append((f"{cidx}. {client['iedName']}", client['desc'], client_root + (cidx,)))
        fcda_root = output_id + ('fcda',)
        rows.append((f"FCDA Members ({len(out['fcda'])})", '', fcda_root))
        for fcda_idx, fcda in enumerate(out['fcda'], start=1):
            rows.append((f"{fcda_idx}. {fcda['desc']}", fcda['path_info'], fcda_root + (fcda_idx,)))
    return rows


def build_communication_rows(comm_list) -> list[TreeRow]:
    rows: list[TreeRow] = []
    for index, sub_net in enumerate(comm_list, start=1):
        bit_rate = sub_net.get('BitRate', {})
        br_text = f"{bit_rate.get('multiplier','')}{bit_rate.get('value','')}{bit_rate.get('unit','')}" if bit_rate.get('value') else 'N/A'
        sub_id = ('subnet', index)
        rows.append((f"{index}. 子网: {sub_net.get('name', 'Unnamed')}", f"Type={sub_net.get('type', 'N/A')}, BitRate={br_text}", sub_id))
        cap_root = sub_id + ('caps',)
        rows.append((f"ConnectedAPs ({len(sub_net.get('ConnectedAP', []))})", '', cap_root))
        for cap_index, cap in enumerate(sub_net.get('ConnectedAP', []), start=1):
            cap_id = cap_root + (cap_index,)
            rows.append((f"{cap_index}. IED: {cap['iedName']}, AP: {cap['apName']}", '', cap_id))
            if cap.get('Address'):
                rows.append((f"Address ({len(cap['Address'])})", ', '.join(f"{p['type']}={p['value']}" for p in cap['Address']), cap_id + ('address',)))
            if cap.get('GSE'):
                gse_root = cap_id + ('gse',)
                rows.append((f"GSE Configured ({len(cap['GSE'])})", '', gse_root))
                for gse_index, gse in enumerate(cap['GSE'], start=1):
                    gse_addr = ', '.join(f"{entry['type']}={entry['value']}" for entry in gse['Address'])
                    rows.append((f"{gse_index}. LD={gse['ldInst']} / CB={gse['cbName']}", f"MinT={gse['MinTime'] or 'N/A'}, MaxT={gse['MaxTime'] or 'N/A'} | Addr: {gse_addr}", gse_root + (gse_index,)))
            if cap.get('SMV'):
                smv_root = cap_id + ('smv',)
                rows.append((f"SMV Configured ({len(cap['SMV'])})", '', smv_root))
                for smv_index, smv in enumerate(cap['SMV'], start=1):
                    smv_addr = ', '.join(f"{entry['type']}={entry['value']}" for entry in smv['Address'])
                    rows.append((f"{smv_index}. LD={smv['ldInst']} / CB={smv['cbName']}", f"Addr: {smv_addr}", smv_root + (smv_index,)))
    return rows


class MainWindow:
    def __init__(self):
        self.root = tk.Tk()
        self.root.title('SCD 解析程序 zoudehu (tkinter)')
        self.root.geometry('1650x980')
        self.scd_data = None
        self.current_scd_path = None

        top_frame = ttk.Frame(self.root, padding=8)
        top_frame.pack(fill='x')

        ttk.Button(top_frame, text='打开SCD文件', command=self.open_scd_file).pack(side='left')
        ttk.Label(top_frame, text='选择要导出的IED:').pack(side='left', padx=(20, 4))
        self.ied_selector = ttk.Combobox(top_frame, state='disabled', width=30)
        self.ied_selector.pack(side='left')
        ttk.Button(top_frame, text='保存所选IED的JSON', command=self.save_json_selected_ied).pack(side='left', padx=8)

        self.tab_widget = ttk.Notebook(self.root)
        self.tab_widget.pack(fill='both', expand=True)

        self.tree_ied = self._create_tree(self.tab_widget)
        self.tab_widget.add(self.tree_ied.master, text='IED 信息')

        self.tree_comm = self._create_tree(self.tab_widget)
        self.tab_widget.add(self.tree_comm.master, text='Communication')

    def _create_tree(self, parent):
        frame = ttk.Frame(parent)
        tree = ttk.Treeview(frame, columns=('path',), show='tree headings')
        tree.heading('#0', text='中文描述')
        tree.heading('path', text='SCL路径 / 原文')
        tree.column('#0', width=760, stretch=True)
        tree.column('path', width=840, stretch=True)
        ybar = ttk.Scrollbar(frame, orient='vertical', command=tree.yview)
        xbar = ttk.Scrollbar(frame, orient='horizontal', command=tree.xview)
        tree.configure(yscrollcommand=ybar.set, xscrollcommand=xbar.set)
        tree.tag_configure(ERROR_TAG, foreground='red')
        tree.tag_configure(WARNING_TAG, foreground='magenta')
        tree.grid(row=0, column=0, sticky='nsew')
        ybar.grid(row=0, column=1, sticky='ns')
        xbar.grid(row=1, column=0, sticky='ew')
        frame.rowconfigure(0, weight=1)
        frame.columnconfigure(0, weight=1)
        return tree

    def _clear_tree(self, tree):
        tree.delete(*tree.get_children())

    @staticmethod
    def _resolve_parent_id(node_map, node_id):
        parent_id = node_id[:-1]
        while parent_id not in node_map and parent_id:
            parent_id = parent_id[:-1]
        return node_map.get(parent_id, '')

    def _insert_rows(self, tree, rows: Iterable[TreeRow]):
        node_map = {(): ''}
        for left, right, node_id in rows:
            parent = self._resolve_parent_id(node_map, node_id)
            tags = self._tags_for_row(left)
            node_map[node_id] = tree.insert(parent, 'end', text=left, values=(right,), tags=tags)

    def _tags_for_row(self, text: str):
        tags = []
        if any(key in text for key in ('未找到', '错误', '不完整', '未配置', '回退')):
            tags.append(ERROR_TAG)
        if any(key in text for key in ('源描述未找到', '源查找失败', '源信息不完整')):
            tags.append(WARNING_TAG)
        return tuple(tags)

    def open_scd_file(self):
        file_path = filedialog.askopenfilename(title='选择SCD文件', filetypes=[('SCL Files', '*.scd *.icd *.cid *.iid *.ssd *.sed *.xml'), ('All Files', '*.*')])
        if not file_path:
            return
        self.current_scd_path = file_path
        self._clear_tree(self.tree_ied)
        self._clear_tree(self.tree_comm)
        self.tree_ied.insert('', 'end', text='正在加载和解析...', values=(file_path,))
        self.root.update_idletasks()
        self.scd_data = parse_all_data(file_path)
        self._clear_tree(self.tree_ied)
        if not self.scd_data:
            self.tree_ied.insert('', 'end', text='错误', values=('SCD文件解析失败或无效。',), tags=(ERROR_TAG,))
            return
        self._insert_rows(self.tree_ied, build_ied_rows(self.scd_data['IEDs']))
        self._insert_rows(self.tree_comm, build_communication_rows(self.scd_data['Communication']))
        if self.scd_data['IEDs']:
            self.ied_selector.configure(state='readonly', values=['-- 请选择IED --'] + [ied['name'] for ied in self.scd_data['IEDs']])
            self.ied_selector.current(0)
        messagebox.showinfo('完成', f"SCD 文件 '{os.path.basename(file_path)}' 解析完成。")

    def save_json_selected_ied(self):
        if not self.scd_data or not self.scd_data.get('IEDs'):
            messagebox.showwarning('无数据', '没有可导出的IED数据。请先加载SCD文件。')
            return
        selected_ied_name = self.ied_selector.get()
        if not selected_ied_name or selected_ied_name == '-- 请选择IED --':
            messagebox.showwarning('未选择', '请先从下拉列表中选择一个IED进行导出。')
            return
        ied_to_save = next((item for item in self.scd_data['IEDs'] if item['name'] == selected_ied_name), None)
        if ied_to_save is None:
            messagebox.showerror('错误', f"内部错误：无法找到选定IED '{selected_ied_name}' 的数据。")
            return
        initial_dir = os.path.dirname(self.current_scd_path) if self.current_scd_path else ''
        file_path = filedialog.asksaveasfilename(title=f"保存IED '{selected_ied_name}' 的JSON文件", initialdir=initial_dir, initialfile=f'{selected_ied_name}_parsed.json', defaultextension='.json', filetypes=[('JSON Files', '*.json'), ('All Files', '*.*')])
        if file_path:
            with open(file_path, 'w', encoding='utf-8') as handle:
                json.dump(ied_to_save, handle, ensure_ascii=False, indent=4)
            messagebox.showinfo('保存成功', f"已成功保存IED '{selected_ied_name}' 的 JSON 文件：\n{file_path}")

    def run(self):
        self.root.mainloop()


def run():
    MainWindow().run()
