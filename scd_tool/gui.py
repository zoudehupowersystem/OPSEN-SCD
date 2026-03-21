import json
import os
import sys

from PySide6.QtCore import Qt
from PySide6.QtWidgets import (
    QApplication,
    QComboBox,
    QFileDialog,
    QHeaderView,
    QHBoxLayout,
    QLabel,
    QMainWindow,
    QMessageBox,
    QPushButton,
    QTabWidget,
    QTreeWidget,
    QTreeWidgetItem,
    QVBoxLayout,
    QWidget,
)

from .constants import ERROR_HINTS
from .parser import parse_all_data


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle('SCD 解析程序 zoudehu')
        self.resize(1650, 980)
        self.scd_data = None
        self.current_scd_path = None

        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        layout = QVBoxLayout(central_widget)
        top_controls_layout = QHBoxLayout()

        self.open_button = QPushButton('打开SCD文件')
        self.open_button.clicked.connect(self.open_scd_file)
        top_controls_layout.addWidget(self.open_button)
        top_controls_layout.addStretch(1)
        self.ied_export_label = QLabel('选择要导出的IED:')
        top_controls_layout.addWidget(self.ied_export_label)
        self.ied_selector = QComboBox()
        self.ied_selector.setMinimumWidth(200)
        top_controls_layout.addWidget(self.ied_selector)
        self.save_button = QPushButton('保存所选IED的JSON')
        self.save_button.clicked.connect(self.save_json_selected_ied)
        top_controls_layout.addWidget(self.save_button)
        layout.addLayout(top_controls_layout)

        self.tab_widget = QTabWidget()
        layout.addWidget(self.tab_widget)
        self.tree_ied = QTreeWidget()
        self.tree_ied.setHeaderLabels(['中文描述', 'SCL路径 / 原文'])
        self.tree_ied.header().setSectionResizeMode(0, QHeaderView.ResizeMode.Interactive)
        self.tree_ied.header().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        self.tree_ied.setColumnWidth(0, 750)
        self.tab_widget.addTab(self.tree_ied, 'IED 信息')
        self.tree_comm = QTreeWidget()
        self.tree_comm.setHeaderLabels(['中文描述', 'SCL路径 / 原文'])
        self.tree_comm.header().setSectionResizeMode(0, QHeaderView.ResizeMode.Interactive)
        self.tree_comm.header().setSectionResizeMode(1, QHeaderView.ResizeMode.Stretch)
        self.tree_comm.setColumnWidth(0, 600)
        self.tab_widget.addTab(self.tree_comm, 'Communication')

        self.ied_export_label.setVisible(False)
        self.ied_selector.setVisible(False)
        self.ied_selector.setEnabled(False)
        self.save_button.setEnabled(False)

    def open_scd_file(self):
        file_path, _ = QFileDialog.getOpenFileName(self, '选择SCD文件', '', 'SCL Files (*.scd *.icd *.cid *.iid *.ssd *.sed *.xml);;All Files (*)')
        if not file_path:
            return
        self.current_scd_path = file_path
        self.tree_ied.clear()
        self.tree_comm.clear()
        self.scd_data = None
        self.ied_selector.clear()
        self.ied_selector.setEnabled(False)
        self.save_button.setEnabled(False)
        self.ied_export_label.setVisible(False)
        self.ied_selector.setVisible(False)
        QApplication.processEvents()
        loading_item = QTreeWidgetItem(['正在加载和解析...', file_path])
        self.tree_ied.addTopLevelItem(loading_item)
        QApplication.processEvents()
        self.scd_data = parse_all_data(file_path)
        idx = self.tree_ied.indexOfTopLevelItem(loading_item)
        if idx != -1:
            self.tree_ied.takeTopLevelItem(idx)
        if not self.scd_data:
            self.tree_ied.addTopLevelItem(QTreeWidgetItem(['错误', 'SCD文件解析失败或无效。']))
            return
        self.populate_ied_tree(self.scd_data['IEDs'])
        self.populate_communication_tree(self.scd_data['Communication'])
        if self.scd_data['IEDs']:
            self.ied_selector.addItem('-- 请选择IED --')
            for ied in self.scd_data['IEDs']:
                self.ied_selector.addItem(ied['name'])
            self.ied_export_label.setVisible(True)
            self.ied_selector.setVisible(True)
            self.ied_selector.setEnabled(True)
            self.save_button.setEnabled(True)
            QMessageBox.information(self, '完成', f"SCD 文件 '{os.path.basename(file_path)}' 解析完成。")

    def save_json_selected_ied(self):
        if not self.scd_data or not self.scd_data.get('IEDs'):
            QMessageBox.warning(self, '无数据', '没有可导出的IED数据。请先加载SCD文件。')
            return
        selected_ied_name = self.ied_selector.currentText()
        if not selected_ied_name or selected_ied_name == '-- 请选择IED --':
            QMessageBox.warning(self, '未选择', '请先从下拉列表中选择一个IED进行导出。')
            return
        ied_to_save = next((item for item in self.scd_data['IEDs'] if item['name'] == selected_ied_name), None)
        if ied_to_save is None:
            QMessageBox.critical(self, '错误', f"内部错误：无法找到选定IED '{selected_ied_name}' 的数据。")
            return
        file_path, _ = QFileDialog.getSaveFileName(self, f"保存IED '{selected_ied_name}' 的JSON文件", os.path.join(os.path.dirname(self.current_scd_path) if self.current_scd_path else '', f'{selected_ied_name}_parsed.json'), 'JSON Files (*.json);;All Files (*)')
        if file_path:
            with open(file_path, 'w', encoding='utf-8') as f:
                json.dump(ied_to_save, f, ensure_ascii=False, indent=4)
            QMessageBox.information(self, '保存成功', f"已成功保存IED '{selected_ied_name}' 的 JSON 文件：\n{file_path}")

    def populate_ied_tree(self, ied_list):
        self.tree_ied.clear()
        if not ied_list:
            self.tree_ied.addTopLevelItem(QTreeWidgetItem(['信息', 'SCD文件中未找到IED定义。']))
            return
        for ied_data in ied_list:
            ied_item = QTreeWidgetItem([f"IED: {ied_data['name']}（{ied_data['desc']}）", ''])
            self.tree_ied.addTopLevelItem(ied_item)
            self._populate_pubsub_section(ied_item, 'GOOSE', ied_data['GOOSE'])
            self._populate_pubsub_section(ied_item, 'SV', ied_data['SV'])
            self._populate_mms_section(ied_item, ied_data['MMS'])
        self.tree_ied.expandToDepth(0)

    def _populate_pubsub_section(self, parent_item, section_name, section_data):
        section_item = QTreeWidgetItem([f'[{section_name}]', ''])
        parent_item.addChild(section_item)
        inputs_item = QTreeWidgetItem([f'{section_name}输入 (Inputs)', ''])
        section_item.addChild(inputs_item)
        for input_kind in ['ExtRef', 'LN']:
            data = section_data['inputs'][input_kind]
            root = QTreeWidgetItem(inputs_item, [f'{input_kind} {section_name} Inputs ({len(data)})', ''])
            if input_kind == 'ExtRef':
                for idx, ext in enumerate(data, start=1):
                    src_path = f"{ext.get('prefix','')}{ext['lnClass']}{ext.get('lnInst','')}.{ext['doName']}"
                    if ext.get('daName'):
                        src_path += f".{ext['daName']}"
                    item = QTreeWidgetItem(root, [f"{idx}. 源:{ext['source_desc']} → 目标:{ext['dest_desc']}", f"From: {ext['iedName']}/{ext['ldInst']}/{src_path} | intAddr: {ext['intAddr'] or '(N/A)'}"])
                    if any(err in ext['dest_desc'] for err in ERROR_HINTS):
                        item.setForeground(0, Qt.GlobalColor.red)
                    if any(err in ext['source_desc'] for err in ERROR_HINTS[:3]):
                        item.setForeground(0, Qt.GlobalColor.magenta)
            else:
                for idx, ln in enumerate(data, start=1):
                    ln_item = QTreeWidgetItem(root, [f"{idx}. {ln['ln_desc']}", ''])
                    for doi_idx, doi in enumerate(ln['dois'], start=1):
                        QTreeWidgetItem(ln_item, [f"{doi_idx}. {doi['desc']}", f"DOI: {doi['name']}"])
            if not data:
                root.setText(1, '无')
                root.setDisabled(True)
        outputs_item = QTreeWidgetItem([f'{section_name}输出 (Outputs)', ''])
        section_item.addChild(outputs_item)
        for idx, out in enumerate(section_data['outputs'], start=1):
            left = f"{idx}. {'GSE' if section_name == 'GOOSE' else 'SMV'}: {out['name']}"
            right = f"DataSet: {out['dataSet']}"
            if section_name == 'GOOSE':
                left += f" (AppID: {out['appID']})"
                out_item = QTreeWidgetItem(outputs_item, [left, right])
                fcda_root = QTreeWidgetItem(out_item, [f"FCDA Members ({len(out['fcda'])})", ''])
                for fcda_idx, fcda in enumerate(out['fcda'], start=1):
                    QTreeWidgetItem(fcda_root, [f"{fcda_idx}. {fcda['desc']}", fcda['path_info']])
            else:
                left += f" (SmvID: {out['smvID']})"
                out_item = QTreeWidgetItem(outputs_item, [left, right])
                if out['grouped']:
                    grouped_root = QTreeWidgetItem(out_item, [f"Grouped FCDA by LN ({len(out['grouped'])})", ''])
                    for grp_idx, group in enumerate(out['grouped'], start=1):
                        group_item = QTreeWidgetItem(grouped_root, [f"{grp_idx}. LN: {group['ln_desc']}", f"Items: {len(group['fcda_details'])}"])
                        for fcda_idx, fcda_d in enumerate(group['fcda_details'], start=1):
                            QTreeWidgetItem(group_item, [f"{fcda_idx}. {fcda_d['desc']}", fcda_d['path_info']])
                if out['individual']:
                    ind_root = QTreeWidgetItem(out_item, [f"Individual FCDA ({len(out['individual'])})", ''])
                    for fcda_idx, fcda_ind in enumerate(out['individual'], start=1):
                        QTreeWidgetItem(ind_root, [f"{fcda_idx}. {fcda_ind['desc']}", fcda_ind['path_info']])
        if not section_data['outputs']:
            empty = QTreeWidgetItem(['无输出', ''])
            outputs_item.addChild(empty)
            empty.setDisabled(True)

    def _populate_mms_section(self, parent_item, mms_data):
        mms_item = QTreeWidgetItem(['[MMS]', ''])
        parent_item.addChild(mms_item)
        inputs_root = QTreeWidgetItem(mms_item, [f"MMS输入 (Reports) ({len(mms_data['inputs'])})", ''])
        for idx, item in enumerate(mms_data['inputs'], start=1):
            QTreeWidgetItem(inputs_root, [f"{idx}. 来自 {item['source_ied']} / {item['report_name']}", f"RptID={item['rptID']} | DataSet={item['dataSet']} | Client={item['client_ref']}"])
        outputs_root = QTreeWidgetItem(mms_item, [f"MMS输出 (ReportControl) ({len(mms_data['outputs'])})", ''])
        for idx, out in enumerate(mms_data['outputs'], start=1):
            out_item = QTreeWidgetItem(outputs_root, [f"{idx}. {out['name']} ({'BRCB' if out['buffered'] == 'true' else 'URCB'})", f"RptID={out['rptID']} | DataSet={out['dataSet']} | max={out['max_clients'] or 'N/A'}"])
            trig = ', '.join(f'{k}={v}' for k, v in sorted(out['trigger_options'].items())) or 'N/A'
            opts = ', '.join(f'{k}={v}' for k, v in sorted(out['optional_fields'].items())) or 'N/A'
            QTreeWidgetItem(out_item, ['Trigger Options', trig])
            QTreeWidgetItem(out_item, ['Optional Fields', opts])
            client_root = QTreeWidgetItem(out_item, [f"Clients ({len(out['clients'])})", ''])
            for cidx, client in enumerate(out['clients'], start=1):
                QTreeWidgetItem(client_root, [f"{cidx}. {client['iedName']}", client['desc']])
            fcda_root = QTreeWidgetItem(out_item, [f"FCDA Members ({len(out['fcda'])})", ''])
            for fcda_idx, fcda in enumerate(out['fcda'], start=1):
                QTreeWidgetItem(fcda_root, [f"{fcda_idx}. {fcda['desc']}", fcda['path_info']])
        if not mms_data['inputs']:
            inputs_root.setText(1, '无')
            inputs_root.setDisabled(True)
        if not mms_data['outputs']:
            outputs_root.setText(1, '无')
            outputs_root.setDisabled(True)

    def populate_communication_tree(self, comm_list):
        self.tree_comm.clear()
        if not comm_list:
            self.tree_comm.addTopLevelItem(QTreeWidgetItem(['信息', 'SCD文件中未找到Communication定义。']))
            return
        for i, sub_net in enumerate(comm_list, start=1):
            bit_rate = sub_net.get('BitRate', {})
            br_text = f"{bit_rate.get('multiplier','')}{bit_rate.get('value','')}{bit_rate.get('unit','')}" if bit_rate.get('value') else 'N/A'
            sn_item = QTreeWidgetItem([f"{i}. 子网: {sub_net.get('name', 'Unnamed')}", f"Type={sub_net.get('type', 'N/A')}, BitRate={br_text}"])
            self.tree_comm.addTopLevelItem(sn_item)
            cap_root_item = QTreeWidgetItem(sn_item, [f"ConnectedAPs ({len(sub_net.get('ConnectedAP', []))})", ''])
            for idx, cap in enumerate(sub_net.get('ConnectedAP', []), start=1):
                cap_item = QTreeWidgetItem(cap_root_item, [f"{idx}. IED: {cap['iedName']}, AP: {cap['apName']}", ''])
                if cap.get('Address'):
                    QTreeWidgetItem(cap_item, [f"Address ({len(cap['Address'])})", ', '.join(f"{p['type']}={p['value']}" for p in cap['Address'])])
                if cap.get('GSE'):
                    gse_root = QTreeWidgetItem(cap_item, [f"GSE Configured ({len(cap['GSE'])})", ''])
                    for gse_idx, gse in enumerate(cap['GSE'], start=1):
                        gse_addr = ', '.join(f"{entry['type']}={entry['value']}" for entry in gse['Address'])
                        QTreeWidgetItem(gse_root, [f"{gse_idx}. LD={gse['ldInst']} / CB={gse['cbName']}", f"MinT={gse['MinTime'] or 'N/A'}, MaxT={gse['MaxTime'] or 'N/A'} | Addr: {gse_addr}"])
                if cap.get('SMV'):
                    smv_root = QTreeWidgetItem(cap_item, [f"SMV Configured ({len(cap['SMV'])})", ''])
                    for smv_idx, smv in enumerate(cap['SMV'], start=1):
                        smv_addr = ', '.join(f"{entry['type']}={entry['value']}" for entry in smv['Address'])
                        QTreeWidgetItem(smv_root, [f"{smv_idx}. LD={smv['ldInst']} / CB={smv['cbName']}", f"Addr: {smv_addr}"])
        self.tree_comm.expandToDepth(0)


def run():
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    QApplication.setAttribute(Qt.AA_UseHighDpiPixmaps, True)
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec())
