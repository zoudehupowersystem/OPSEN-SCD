import json
import os
import tkinter as tk
from tkinter import filedialog, font, messagebox, ttk
from typing import Dict, Iterable, List, Tuple

from .parser import parse_all_data


TreeRow = Tuple[str, str, tuple]

ERROR_TAG = 'error'
WARNING_TAG = 'warning'
PROTOCOL_STYLES = {
    'GOOSE': {'line': '#255cff', 'badge_bg': '#1034d1', 'badge_fg': '#ffffff'},
    'SV': {'line': '#ff37d7', 'badge_bg': '#ff00d9', 'badge_fg': '#ffffff'},
    'MMS': {'line': '#00a38c', 'badge_bg': '#007c6b', 'badge_fg': '#ffffff'},
}
BOX_STYLES = {
    'center': {'fill': '#f3c49a', 'header': '#2d63a7'},
    'peer': {'fill': '#b1b0ef', 'header': '#2d63a7'},
}


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


def _node_label(ied: dict) -> str:
    desc = ied.get('desc', '').strip()
    return f"{ied['name']}:{desc}" if desc else ied['name']


def build_circuit_models(ied_list: List[dict]) -> Dict[str, dict]:
    ied_lookup = {ied['name']: ied for ied in ied_list}
    global_edges = _collect_subscription_edges(ied_list, ied_lookup)
    direct_neighbors: Dict[str, set[str]] = {ied['name']: set() for ied in ied_list}
    for edge in global_edges:
        direct_neighbors.setdefault(edge['source'], set()).add(edge['target'])
        direct_neighbors.setdefault(edge['target'], set()).add(edge['source'])

    models = {}
    for ied in ied_list:
        focus = ied['name']
        first_level = direct_neighbors.get(focus, set())
        visible_names = {focus, *first_level}
        expanded_names = set(visible_names)
        for neighbor in first_level:
            expanded_names.update(direct_neighbors.get(neighbor, set()))

        direct_edges = [edge for edge in global_edges if edge['source'] == focus or edge['target'] == focus]
        expanded_edges = [edge for edge in global_edges if edge['source'] in expanded_names and edge['target'] in expanded_names]
        nodes = {}
        for name in expanded_names:
            src = ied_lookup.get(name, {'name': name, 'desc': ''})
            nodes[name] = {'name': name, 'title': _node_label(src), 'role': 'center' if name == focus else 'peer'}

        models[focus] = {
            'focus_ied': focus,
            'focus_title': _node_label(ied),
            'nodes': list(nodes.values()),
            'direct_edges': _dedupe_edges(direct_edges),
            'expanded_edges': _dedupe_edges(expanded_edges),
            'stats': _collect_model_stats(ied, direct_edges, expanded_edges),
        }
    return models


def _collect_subscription_edges(ied_list: List[dict], ied_lookup: Dict[str, dict]) -> List[dict]:
    edges = []
    for target_ied in ied_list:
        target_name = target_ied['name']
        for protocol in ('GOOSE', 'SV'):
            for entry in target_ied[protocol]['inputs']['ExtRef']:
                source_name = entry.get('iedName') or '未知IED'
                if source_name not in ied_lookup:
                    ied_lookup[source_name] = {'name': source_name, 'desc': ''}
                edges.append({
                    'source': source_name,
                    'target': target_name,
                    'protocol': protocol,
                    'left_text': entry.get('source_desc') or '(未命名源)',
                    'right_text': entry.get('dest_desc') or '(未命名目标)',
                    'meta': f"源IED={source_name} | intAddr={entry.get('intAddr') or 'N/A'}",
                    'is_focus_edge': False,
                })
        for item in target_ied['MMS']['inputs']:
            source_name = item['source_ied']
            if source_name not in ied_lookup:
                ied_lookup[source_name] = {'name': source_name, 'desc': ''}
            edges.append({
                'source': source_name,
                'target': target_name,
                'protocol': 'MMS',
                'left_text': f"Report {item['report_name']}",
                'right_text': item.get('client_ref') or 'MMS Client',
                'meta': f"RptID={item.get('rptID','')} | DataSet={item.get('dataSet','')}",
                'is_focus_edge': False,
            })
    return edges


def _collect_model_stats(ied: dict, direct_edges: List[dict], expanded_edges: List[dict]) -> dict:
    protocol_counts = {protocol: 0 for protocol in ('GOOSE', 'SV', 'MMS')}
    expanded_counts = {protocol: 0 for protocol in ('GOOSE', 'SV', 'MMS')}
    for edge in direct_edges:
        protocol_counts[edge['protocol']] += 1
    for edge in expanded_edges:
        expanded_counts[edge['protocol']] += 1
    return {
        'goose_inputs': len(ied['GOOSE']['inputs']['ExtRef']),
        'goose_outputs': len(ied['GOOSE']['outputs']),
        'sv_inputs': len(ied['SV']['inputs']['ExtRef']),
        'sv_outputs': len(ied['SV']['outputs']),
        'mms_inputs': len(ied['MMS']['inputs']),
        'mms_outputs': len(ied['MMS']['outputs']),
        'edge_counts': protocol_counts,
        'expanded_edge_counts': expanded_counts,
    }


def _dedupe_edges(edges: List[dict]) -> List[dict]:
    seen = set()
    result = []
    for edge in edges:
        key = (edge['source'], edge['target'], edge['protocol'], edge['left_text'], edge['right_text'], edge['meta'])
        if key in seen:
            continue
        seen.add(key)
        result.append(edge)
    return result


class MainWindow:
    def __init__(self):
        self.root = tk.Tk()
        self.root.title('SCD 回路浏览器')
        self.root.geometry('1800x1040')
        self.root.configure(bg='#d7dbe1')
        self.scd_data = None
        self.current_scd_path = None
        self.circuit_models: Dict[str, dict] = {}
        self.current_view_ied: str | None = None
        self.current_scale = 1.0
        self.current_expand_related = True
        self.current_canvas_bounds = (0, 0, 2200, 1400)
        self.tree_item_to_ied: Dict[str, str] = {}
        self.current_filter = ''
        self.detail_text: tk.Text | None = None
        self.tree_devices: ttk.Treeview | None = None
        self.canvas: tk.Canvas | None = None
        self.status_var = tk.StringVar(value='请先打开 SCD 文件。')
        self.summary_var = tk.StringVar(value='尚未加载数据。')
        self.only_desc_var = tk.BooleanVar(value=False)
        self.protocol_vars = {name: tk.BooleanVar(value=True) for name in ('GOOSE', 'SV', 'MMS')}

        self._configure_styles()
        self._build_layout()

    def _configure_styles(self):
        style = ttk.Style()
        try:
            style.theme_use('clam')
        except tk.TclError:
            pass
        style.configure('Top.TFrame', background='#4a4a4a')
        style.configure('Panel.TFrame', background='#edf1f6')
        style.configure('Card.TLabelframe', background='#edf1f6')
        style.configure('Card.TLabelframe.Label', background='#edf1f6', foreground='#123257', font=('Microsoft YaHei UI', 10, 'bold'))
        style.configure('Title.TLabel', background='#4a4a4a', foreground='#ffffff', font=('Microsoft YaHei UI', 10, 'bold'))
        style.configure('Small.TLabel', background='#edf1f6', foreground='#364554', font=('Microsoft YaHei UI', 9))
        style.configure('Accent.TButton', font=('Microsoft YaHei UI', 9, 'bold'))

    def _build_layout(self):
        top_frame = ttk.Frame(self.root, padding=(10, 8), style='Top.TFrame')
        top_frame.pack(fill='x')
        ttk.Label(top_frame, text='回路浏览器', style='Title.TLabel').pack(side='left', padx=(0, 14))
        ttk.Button(top_frame, text='打开SCD文件', command=self.open_scd_file, style='Accent.TButton').pack(side='left')
        ttk.Label(top_frame, text='选择要导出的IED:', style='Title.TLabel').pack(side='left', padx=(18, 4))
        self.ied_selector = ttk.Combobox(top_frame, state='disabled', width=26)
        self.ied_selector.pack(side='left')
        self.ied_selector.bind('<<ComboboxSelected>>', self._on_toolbar_ied_selected)
        ttk.Button(top_frame, text='保存所选IED的JSON', command=self.save_json_selected_ied).pack(side='left', padx=8)
        ttk.Label(top_frame, textvariable=self.status_var, style='Title.TLabel').pack(side='right')

        self.tab_widget = ttk.Notebook(self.root)
        self.tab_widget.pack(fill='both', expand=True)

        circuit_tab = ttk.Frame(self.tab_widget, style='Panel.TFrame')
        self.tab_widget.add(circuit_tab, text='回路浏览器')
        self._build_circuit_tab(circuit_tab)

        self.tree_ied = self._create_tree(self.tab_widget)
        self.tab_widget.add(self.tree_ied.master, text='IED 信息')

        self.tree_comm = self._create_tree(self.tab_widget)
        self.tab_widget.add(self.tree_comm.master, text='Communication')

    def _build_circuit_tab(self, parent):
        toolbar = ttk.Frame(parent, padding=(10, 8), style='Panel.TFrame')
        toolbar.pack(fill='x')
        ttk.Label(toolbar, text='装置过滤:', style='Small.TLabel').pack(side='left')
        self.search_var = tk.StringVar()
        search_entry = ttk.Entry(toolbar, textvariable=self.search_var, width=28)
        search_entry.pack(side='left', padx=(4, 10))
        search_entry.bind('<KeyRelease>', self._on_filter_changed)
        ttk.Button(toolbar, text='清空过滤', command=self._clear_filter).pack(side='left')
        ttk.Separator(toolbar, orient='vertical').pack(side='left', fill='y', padx=8)
        ttk.Button(toolbar, text='展开当前回路', command=lambda: self.show_selected_circuit(expand_related=True)).pack(side='left')
        ttk.Button(toolbar, text='仅查看当前装置', command=lambda: self.show_selected_circuit(expand_related=False)).pack(side='left', padx=6)
        ttk.Button(toolbar, text='恢复全图', command=self._fit_canvas_to_content).pack(side='left')
        ttk.Button(toolbar, text='导出回路摘要', command=self.export_current_circuit_summary).pack(side='left', padx=(6, 10))
        ttk.Checkbutton(toolbar, text='仅显示描述', variable=self.only_desc_var, command=self._redraw_current_circuit).pack(side='left')
        for protocol in ('GOOSE', 'SV', 'MMS'):
            ttk.Checkbutton(toolbar, text=protocol, variable=self.protocol_vars[protocol], command=self._redraw_current_circuit).pack(side='left', padx=3)
        ttk.Label(toolbar, textvariable=self.summary_var, style='Small.TLabel').pack(side='right')

        content = ttk.Panedwindow(parent, orient='horizontal')
        content.pack(fill='both', expand=True, padx=10, pady=(0, 10))

        left_panel = ttk.Labelframe(content, text='装置列表', style='Card.TLabelframe', padding=8)
        self.tree_devices = ttk.Treeview(left_panel, columns=('type',), show='tree', selectmode='browse')
        self.tree_devices.pack(fill='both', expand=True)
        self.tree_devices.bind('<<TreeviewSelect>>', self._on_device_selected)
        left_scroll = ttk.Scrollbar(left_panel, orient='vertical', command=self.tree_devices.yview)
        self.tree_devices.configure(yscrollcommand=left_scroll.set)
        left_scroll.place(relx=1.0, rely=0.0, relheight=1.0, anchor='ne')
        content.add(left_panel, weight=1)

        center_panel = ttk.Frame(content, style='Panel.TFrame')
        canvas_header = ttk.Frame(center_panel, padding=(0, 0, 0, 6), style='Panel.TFrame')
        canvas_header.pack(fill='x')
        ttk.Label(canvas_header, text='可视化回路画布', style='Small.TLabel').pack(side='left')
        ttk.Button(canvas_header, text='放大', command=lambda: self._scale_canvas(1.15)).pack(side='right')
        ttk.Button(canvas_header, text='缩小', command=lambda: self._scale_canvas(1 / 1.15)).pack(side='right', padx=4)
        ttk.Button(canvas_header, text='恢复', command=self._reset_canvas_zoom).pack(side='right', padx=4)
        canvas_frame = ttk.Frame(center_panel)
        canvas_frame.pack(fill='both', expand=True)
        self.canvas = tk.Canvas(canvas_frame, bg='#ffffff', highlightthickness=1, highlightbackground='#b7bec8', scrollregion=(0, 0, 2200, 1400))
        self.canvas.grid(row=0, column=0, sticky='nsew')
        xbar = ttk.Scrollbar(canvas_frame, orient='horizontal', command=self.canvas.xview)
        ybar = ttk.Scrollbar(canvas_frame, orient='vertical', command=self.canvas.yview)
        self.canvas.configure(xscrollcommand=xbar.set, yscrollcommand=ybar.set)
        xbar.grid(row=1, column=0, sticky='ew')
        ybar.grid(row=0, column=1, sticky='ns')
        canvas_frame.rowconfigure(0, weight=1)
        canvas_frame.columnconfigure(0, weight=1)
        content.add(center_panel, weight=4)

        right_panel = ttk.Labelframe(content, text='回路详情', style='Card.TLabelframe', padding=8)
        self.detail_text = tk.Text(right_panel, wrap='word', font=('Consolas', 10), bg='#f8fbff', relief='flat')
        self.detail_text.pack(fill='both', expand=True)
        self.detail_text.configure(state='disabled')
        content.add(right_panel, weight=2)

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

    def _populate_device_tree(self):
        if not self.tree_devices:
            return
        self.tree_devices.delete(*self.tree_devices.get_children())
        self.tree_item_to_ied.clear()
        if not self.scd_data:
            return
        groups = {'核心保护/控制': [], '采样与过程层': [], '其他IED': []}
        keyword_map = {
            '核心保护/控制': ('TRPROT', 'BKR', 'BCU'),
            '采样与过程层': ('MU',),
        }
        for ied in self.scd_data['IEDs']:
            assigned = '其他IED'
            for group, keys in keyword_map.items():
                if any(key in ied['name'] for key in keys):
                    assigned = group
                    break
            groups[assigned].append(ied)
        filter_text = self.current_filter.strip().lower()
        for group_name, items in groups.items():
            filtered = [ied for ied in items if not filter_text or filter_text in ied['name'].lower() or filter_text in ied.get('desc', '').lower()]
            if not filtered:
                continue
            group_id = self.tree_devices.insert('', 'end', text=f'{group_name} ({len(filtered)})', open=True)
            for ied in filtered:
                node = self.tree_devices.insert(group_id, 'end', text=_node_label(ied))
                self.tree_item_to_ied[node] = ied['name']
        roots = self.tree_devices.get_children()
        if roots and not self.current_view_ied:
            first_group = roots[0]
            children = self.tree_devices.get_children(first_group)
            if children:
                self.tree_devices.selection_set(children[0])
                self.show_selected_circuit(expand_related=True)

    def _on_filter_changed(self, _event=None):
        self.current_filter = self.search_var.get()
        self._populate_device_tree()

    def _clear_filter(self):
        self.search_var.set('')
        self.current_filter = ''
        self._populate_device_tree()

    def _on_device_selected(self, _event=None):
        self.show_selected_circuit(expand_related=True)

    def _on_toolbar_ied_selected(self, _event=None):
        selected_ied_name = self.ied_selector.get()
        if not selected_ied_name or selected_ied_name == '-- 请选择IED --':
            return
        if self.tree_devices:
            for item_id, ied_name in self.tree_item_to_ied.items():
                if ied_name == selected_ied_name:
                    self.tree_devices.selection_set(item_id)
                    self.tree_devices.see(item_id)
                    break
        self.show_selected_circuit(expand_related=True)

    def show_selected_circuit(self, expand_related=True):
        if not self.tree_devices:
            return
        selected = self.tree_devices.selection()
        if not selected:
            return
        ied_name = self.tree_item_to_ied.get(selected[0])
        if not ied_name:
            return
        self.current_view_ied = ied_name
        self.current_expand_related = expand_related
        self.draw_circuit(self.circuit_models.get(ied_name), expand_related=expand_related)
        if self.ied_selector.get() != ied_name and self.scd_data:
            self.ied_selector.set(ied_name)

    def _redraw_current_circuit(self):
        if self.current_view_ied:
            self.draw_circuit(self.circuit_models.get(self.current_view_ied), expand_related=self.current_expand_related)

    def draw_circuit(self, model: dict | None, expand_related=True):
        if not self.canvas:
            return
        self.canvas.delete('all')
        if not model:
            self.canvas.create_text(80, 60, anchor='nw', text='请先加载 SCD 文件或选择装置。', fill='#52606d', font=('Microsoft YaHei UI', 14, 'bold'))
            return

        focus = model['focus_ied']
        enabled_protocols = {name for name, var in self.protocol_vars.items() if var.get()}
        edge_key = 'expanded_edges' if expand_related else 'direct_edges'
        edges = [dict(edge, is_focus_edge=(edge['source'] == focus or edge['target'] == focus)) for edge in model[edge_key] if edge['protocol'] in enabled_protocols]
        incoming = [edge for edge in edges if edge['target'] == focus]
        outgoing = [edge for edge in edges if edge['source'] == focus]
        direct_neighbors = {edge['source'] for edge in incoming} | {edge['target'] for edge in outgoing}
        secondary_sources = sorted({edge['source'] for edge in edges if edge['target'] in direct_neighbors and edge['source'] not in direct_neighbors and edge['source'] != focus})
        secondary_targets = sorted({edge['target'] for edge in edges if edge['source'] in direct_neighbors and edge['target'] not in direct_neighbors and edge['target'] != focus})
        left_nodes = sorted({edge['source'] for edge in edges if edge['target'] == focus})
        right_nodes = sorted({edge['target'] for edge in edges if edge['source'] == focus})

        self.canvas.create_rectangle(0, 0, 2600, 1600, fill='#ffffff', outline='')
        self.canvas.create_text(40, 28, anchor='nw', text=f"回路总览：{model['focus_title']}", fill='#25384b', font=('Microsoft YaHei UI', 16, 'bold'))
        mode_text = '已展开二级关联回路' if expand_related else '仅显示当前装置直接回路'
        self.canvas.create_text(40, 58, anchor='nw', text=f'布局说明：左一列/右一列为当前装置直接相连装置，最外层列为展开后的二级关联装置。当前模式：{mode_text}。', fill='#607080', font=('Microsoft YaHei UI', 9))

        node_titles = {node['name']: node['title'] for node in model['nodes']}
        node_positions = {focus: (1300, 780)}
        self._draw_node_box(1300, 780, model['focus_title'], 'center', subtitle='当前装置')

        primary_left_positions = self._stack_positions(760, left_nodes, 180, center=780)
        primary_right_positions = self._stack_positions(1840, right_nodes, 180, center=780)
        secondary_left_positions = self._stack_positions(300, secondary_sources, 160, center=780) if expand_related else {}
        secondary_right_positions = self._stack_positions(2300, secondary_targets, 160, center=780) if expand_related else {}

        for name, y in primary_left_positions.items():
            node_positions[name] = (760, y)
            self._draw_node_box(760, y, node_titles.get(name, name), 'peer', subtitle='直接来源')
        for name, y in primary_right_positions.items():
            node_positions[name] = (1840, y)
            self._draw_node_box(1840, y, node_titles.get(name, name), 'peer', subtitle='直接去向')
        for name, y in secondary_left_positions.items():
            node_positions[name] = (300, y)
            self._draw_node_box(300, y, node_titles.get(name, name), 'peer', subtitle='展开来源')
        for name, y in secondary_right_positions.items():
            node_positions[name] = (2300, y)
            self._draw_node_box(2300, y, node_titles.get(name, name), 'peer', subtitle='展开去向')

        visible_edges = [edge for edge in edges if edge['source'] in node_positions and edge['target'] in node_positions]
        grouped_visible_edges = self._group_edges_for_display(visible_edges)
        for edge in sorted(grouped_visible_edges, key=lambda item: (not item['is_focus_edge'], item['protocol'], item['source'], item['target'])):
            self._draw_edge(node_positions[edge['source']], node_positions[edge['target']], edge)

        self._update_detail_panel(model, incoming, outgoing, visible_edges, expand_related)
        self.summary_var.set(self._summary_text(model, len(grouped_visible_edges), len(left_nodes), len(right_nodes), expand_related))
        self.status_var.set(f"已显示 {os.path.basename(self.current_scd_path) if self.current_scd_path else ''} / {focus} 的回路。")
        self.current_canvas_bounds = (0, 0, 2600, 1600)
        self._reset_canvas_zoom()

    @staticmethod
    def _stack_positions(x, names, gap, center=700):
        if not names:
            return {}
        total_height = (len(names) - 1) * gap
        start = center - total_height / 2
        return {name: start + idx * gap for idx, name in enumerate(names)}

    def _group_edges_for_display(self, edges):
        grouped = {}
        for edge in edges:
            key = (edge['source'], edge['target'], edge['protocol'])
            bucket = grouped.setdefault(key, {
                'source': edge['source'],
                'target': edge['target'],
                'protocol': edge['protocol'],
                'source_labels': [],
                'target_labels': [],
                'meta_items': [],
                'is_focus_edge': False,
            })
            bucket['source_labels'].append(edge['left_text'])
            bucket['target_labels'].append(edge['right_text'])
            bucket['meta_items'].append(edge['meta'])
            bucket['is_focus_edge'] = bucket['is_focus_edge'] or edge.get('is_focus_edge', False)

        result = []
        for item in grouped.values():
            result.append({
                'source': item['source'],
                'target': item['target'],
                'protocol': item['protocol'],
                'left_text': self._summarize_edge_labels(item['source_labels']),
                'right_text': self._summarize_edge_labels(item['target_labels']),
                'meta': self._summarize_edge_labels(item['meta_items'], max_items=2),
                'is_focus_edge': item['is_focus_edge'],
                'edge_count': len(item['source_labels']),
            })
        return result

    @staticmethod
    def _summarize_edge_labels(labels, max_items=3):
        seen = []
        for label in labels:
            if label not in seen:
                seen.append(label)
        if not seen:
            return ''
        if len(seen) == 1:
            return seen[0]
        head = ' / '.join(seen[:max_items])
        more = len(seen) - max_items
        return f"{head} 等{len(seen)}项" if more > 0 else head

    @staticmethod
    def _truncate_text(text, limit=22):
        if len(text) <= limit:
            return text
        return text[: limit - 1] + '…'

    def _draw_node_box(self, x, y, title, role, subtitle=''):
        style = BOX_STYLES[role]
        width = 220
        height = 110
        header_h = 28
        x1 = x - width / 2
        y1 = y - height / 2
        x2 = x + width / 2
        y2 = y + height / 2
        self.canvas.create_rectangle(x1, y1, x2, y2, fill=style['fill'], outline='#20293a', width=1.2)
        self.canvas.create_rectangle(x1, y1, x2, y1 + header_h, fill=style['header'], outline='#20293a', width=1.2)
        self.canvas.create_text(x, y1 + header_h / 2, text=title, fill='#ffffff', font=('Microsoft YaHei UI', 11, 'bold'))
        if subtitle:
            self.canvas.create_text(x1 + 10, y1 + 48, text=subtitle, anchor='w', fill='#31445a', font=('Microsoft YaHei UI', 9))

    def _display_text(self, edge, side):
        text = edge['left_text'] if side == 'source' else edge['right_text']
        if self.only_desc_var.get():
            return text.split('(')[0].strip() or text
        return text

    def _draw_edge(self, source_pos, target_pos, edge):
        sx, sy = source_pos
        tx, ty = target_pos
        source_right = tx > sx
        start = (sx + 110 if source_right else sx - 110, sy)
        end = (tx - 110 if source_right else tx + 110, ty)
        mid_x = (start[0] + end[0]) / 2
        style = PROTOCOL_STYLES[edge['protocol']]
        dash = () if edge['protocol'] == 'SV' else (6, 3) if edge['protocol'] == 'GOOSE' else (3, 2)
        line_width = 2.6 if edge.get('is_focus_edge') else 1.6
        self.canvas.create_line(start[0], start[1], mid_x, sy, mid_x, ty, end[0], end[1], fill=style['line'], width=line_width, dash=dash, smooth=False, arrow='last')
        badge_x = mid_x
        badge_y = (sy + ty) / 2
        badge_text = self._badge_text(edge) if edge.get('edge_count', 1) == 1 else f"{self._badge_text(edge)} x{edge['edge_count']}"
        self._draw_badge(badge_x, badge_y, badge_text, style['badge_bg'], style['badge_fg'])

        source_text = self._truncate_text(self._display_text(edge, 'source'), 24)
        target_text = self._truncate_text(self._display_text(edge, 'target'), 24)
        source_label_x = start[0] + (110 if source_right else -110)
        target_label_x = end[0] - (110 if source_right else -110)
        self._draw_line_label(source_label_x, sy - 14, source_text, style['line'])
        self._draw_line_label(target_label_x, ty + 14, target_text, style['line'])

    def _badge_text(self, edge):
        if edge['protocol'] == 'GOOSE':
            return 'GOOSE'
        if edge['protocol'] == 'SV':
            return 'SV'
        return 'MMS'

    def _draw_badge(self, x, y, text, fill, fg):
        badge_font = font.Font(family='Consolas', size=10, weight='bold')
        width = max(70, badge_font.measure(text) + 18)
        height = 22
        self.canvas.create_rectangle(x - width / 2, y - height / 2, x + width / 2, y + height / 2, fill=fill, outline='#ffffff')
        self.canvas.create_text(x, y, text=text, fill=fg, font=('Consolas', 10, 'bold'))

    def _draw_line_label(self, x, y, text, color):
        label_font = ('Microsoft YaHei UI', 9)
        text_id = self.canvas.create_text(x, y, text=text, fill=color, font=label_font)
        x1, y1, x2, y2 = self.canvas.bbox(text_id)
        self.canvas.create_rectangle(x1 - 4, y1 - 2, x2 + 4, y2 + 2, fill='#ffffff', outline='', stipple='gray12')
        self.canvas.tag_raise(text_id)

    def _update_detail_panel(self, model, incoming, outgoing, all_edges, expand_related):
        if not self.detail_text:
            return
        stats = model['stats']
        lines = [
            f"当前装置: {model['focus_title']}",
            '',
            '统计概览',
            f"  GOOSE: 输入 {stats['goose_inputs']} / 输出 {stats['goose_outputs']}",
            f"  SV   : 输入 {stats['sv_inputs']} / 输出 {stats['sv_outputs']}",
            f"  MMS  : 输入 {stats['mms_inputs']} / 输出 {stats['mms_outputs']}",
            f"  当前画布链路数: {len(all_edges)}",
            f"  展开状态: {'二级展开' if expand_related else '仅直接回路'}",
            '',
            '入向回路',
        ]
        if incoming:
            for edge in incoming:
                lines.append(f"  [{edge['protocol']}] {edge['source']} -> {edge['target']}")
                lines.append(f"      源: {edge['left_text']}")
                lines.append(f"      目标: {edge['right_text']}")
                lines.append(f"      {edge['meta']}")
        else:
            lines.append('  无')
        lines.extend(['', '出向回路'])
        if outgoing:
            for edge in outgoing:
                lines.append(f"  [{edge['protocol']}] {edge['source']} -> {edge['target']}")
                lines.append(f"      源: {edge['left_text']}")
                lines.append(f"      目标: {edge['right_text']}")
                lines.append(f"      {edge['meta']}")
        else:
            lines.append('  无')
        self.detail_text.configure(state='normal')
        self.detail_text.delete('1.0', 'end')
        self.detail_text.insert('1.0', '\n'.join(lines))
        self.detail_text.configure(state='disabled')

    def _summary_text(self, model, edge_count, left_count, right_count, expand_related):
        edge_counts = model['stats']['expanded_edge_counts' if expand_related else 'edge_counts']
        mode = '已展开' if expand_related else '直接'
        return (
            f"设备 {model['focus_ied']} | 左侧关联 {left_count} | 右侧关联 {right_count} | "
            f"GOOSE {edge_counts['GOOSE']} / SV {edge_counts['SV']} / MMS {edge_counts['MMS']} | {mode}显示 {edge_count} 条链路"
        )

    def _fit_canvas_to_content(self):
        if self.canvas:
            self.canvas.configure(scrollregion=self.current_canvas_bounds)
            self.canvas.xview_moveto(0)
            self.canvas.yview_moveto(0)

    def _reset_canvas_zoom(self):
        if not self.canvas:
            return
        if self.current_scale != 1.0:
            self.canvas.scale('all', 0, 0, 1 / self.current_scale, 1 / self.current_scale)
        self.current_scale = 1.0
        self._fit_canvas_to_content()

    def _scale_canvas(self, factor):
        if not self.canvas:
            return
        new_scale = self.current_scale * factor
        if not (0.4 <= new_scale <= 2.4):
            return
        self.canvas.scale('all', 0, 0, factor, factor)
        self.current_scale = new_scale
        self.canvas.configure(scrollregion=self.canvas.bbox('all'))

    def open_scd_file(self):
        file_path = filedialog.askopenfilename(title='选择SCD文件', filetypes=[('SCL Files', '*.scd *.icd *.cid *.iid *.ssd *.sed *.xml'), ('All Files', '*.*')])
        if not file_path:
            return
        self.current_scd_path = file_path
        self._clear_tree(self.tree_ied)
        self._clear_tree(self.tree_comm)
        self.tree_ied.insert('', 'end', text='正在加载和解析...', values=(file_path,))
        self.status_var.set('正在解析 SCD 文件，请稍候...')
        self.root.update_idletasks()
        self.scd_data = parse_all_data(file_path)
        self._clear_tree(self.tree_ied)
        if not self.scd_data:
            self.tree_ied.insert('', 'end', text='错误', values=('SCD文件解析失败或无效。',), tags=(ERROR_TAG,))
            self.status_var.set('SCD 文件解析失败。')
            return
        self.circuit_models = build_circuit_models(self.scd_data['IEDs'])
        self._insert_rows(self.tree_ied, build_ied_rows(self.scd_data['IEDs']))
        self._insert_rows(self.tree_comm, build_communication_rows(self.scd_data['Communication']))
        if self.scd_data['IEDs']:
            self.ied_selector.configure(state='readonly', values=['-- 请选择IED --'] + [ied['name'] for ied in self.scd_data['IEDs']])
            self.ied_selector.current(0)
        self._populate_device_tree()
        if self.scd_data['IEDs']:
            first_ied = self.scd_data['IEDs'][0]['name']
            self.current_view_ied = first_ied
            self.ied_selector.set(first_ied)
            self.draw_circuit(self.circuit_models.get(first_ied), expand_related=True)
        self.status_var.set(f"解析完成：{os.path.basename(file_path)}")
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

    def export_current_circuit_summary(self):
        if not self.current_view_ied or self.current_view_ied not in self.circuit_models:
            messagebox.showwarning('无回路', '请先选择一个装置并生成回路图。')
            return
        model = self.circuit_models[self.current_view_ied]
        initial_dir = os.path.dirname(self.current_scd_path) if self.current_scd_path else ''
        file_path = filedialog.asksaveasfilename(title='导出回路摘要', initialdir=initial_dir, initialfile=f'{self.current_view_ied}_circuit_summary.txt', defaultextension='.txt', filetypes=[('Text Files', '*.txt'), ('All Files', '*.*')])
        if not file_path:
            return
        enabled = {name for name, var in self.protocol_vars.items() if var.get()}
        edge_key = 'expanded_edges' if self.current_expand_related else 'direct_edges'
        lines = [f"回路摘要: {model['focus_title']}", '']
        for edge in model[edge_key]:
            if edge['protocol'] not in enabled:
                continue
            lines.append(f"[{edge['protocol']}] {edge['source']} -> {edge['target']}")
            lines.append(f"  源描述: {edge['left_text']}")
            lines.append(f"  目标描述: {edge['right_text']}")
            lines.append(f"  {edge['meta']}")
        with open(file_path, 'w', encoding='utf-8') as handle:
            handle.write('\n'.join(lines))
        messagebox.showinfo('导出成功', f'回路摘要已导出：\n{file_path}')

    def run(self):
        self.root.mainloop()


def run():
    MainWindow().run()
