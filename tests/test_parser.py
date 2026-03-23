import unittest
from pathlib import Path

from scd_tool.gui import MainWindow, build_circuit_models, build_communication_rows, build_ied_rows
from scd_tool.helpers import parse_intaddr
from scd_tool.parser import parse_all_data, parse_mms_reports


ROOT = Path(__file__).resolve().parents[1]


class ParserTests(unittest.TestCase):
    def test_parse_intaddr_supports_access_point_and_da(self):
        parsed = parse_intaddr('AP1:LD0/GGIO1.Ind1.stVal')
        self.assertEqual(parsed['ap'], 'AP1')
        self.assertEqual(parsed['ld'], 'LD0')
        self.assertEqual(parsed['ln_ref'], 'GGIO1')
        self.assertEqual(parsed['doi'], 'Ind1')
        self.assertEqual(parsed['da'], 'stVal')

    def test_bzt_contains_goose_sv_and_mms_sections(self):
        data = parse_all_data(ROOT / 'bzt.scd')
        self.assertIsNotNone(data)
        self.assertTrue(data['IEDs'])
        first = data['IEDs'][0]
        self.assertIn('GOOSE', first)
        self.assertIn('SV', first)
        self.assertIn('MMS', first)

    def test_field_samples_expose_mms_outputs(self):
        data = parse_all_data(ROOT / 'scd_test' / 'nhb2010040813.scd')
        report_count = sum(len(ied['MMS']['outputs']) for ied in data['IEDs'])
        declared_clients = sum(len(report['clients']) for ied in data['IEDs'] for report in ied['MMS']['outputs'])
        self.assertGreater(report_count, 0)
        self.assertGreater(declared_clients, 0)


    def test_parse_mms_reports_supports_precise_assertions(self):
        reports = parse_mms_reports(ROOT / 'scd_test' / 'nhb2010040813.scd', 'P_110MH_144')
        self.assertIsNotNone(reports)
        self.assertGreater(len(reports['outputs']), 0)
        target = next(report for report in reports['outputs'] if report['name'] == 'urcbAin')
        self.assertEqual(target['rptID'], 'urcbAin')
        self.assertEqual(target['buffered'], 'false')
        self.assertEqual(target['max_clients'], '16')
        self.assertTrue(target['clients'])
        self.assertEqual(target['clients'][0]['iedName'], 'A1KA1')
        self.assertGreater(len(target['fcda']), 0)

    def test_parse_mms_reports_returns_mapping_for_all_ieds(self):
        report_map = parse_mms_reports(ROOT / 'scd_test' / 'nhb2010040813.scd')
        self.assertIn('P_110MH_144', report_map)
        self.assertIn('outputs', report_map['P_110MH_144'])



    def test_gui_parent_resolution_handles_top_level_ids(self):
        node_map = {(): '', ('ied', 'IED_A'): 'node-a'}
        self.assertEqual('', MainWindow._resolve_parent_id({(): ''}, ('ied', 'IED_A')))
        self.assertEqual('node-a', MainWindow._resolve_parent_id(node_map, ('ied', 'IED_A', 'GOOSE')))

    def test_gui_row_builders_work_without_qt_or_display(self):
        data = parse_all_data(ROOT / 'bzt.scd')
        ied_rows = build_ied_rows(data['IEDs'])
        comm_rows = build_communication_rows(data['Communication'])
        self.assertTrue(any('[MMS]' in row[0] for row in ied_rows))
        self.assertTrue(any('ConnectedAPs' in row[0] for row in comm_rows))
        self.assertTrue(any('GOOSE输入' in row[0] for row in ied_rows))

    def test_circuit_models_capture_direct_and_expanded_ieds(self):
        data = parse_all_data(ROOT / 'bzt.scd')
        models = build_circuit_models(data['IEDs'])
        self.assertIn('IED_BKR', models)
        bkr_model = models['IED_BKR']
        direct_nodes = {edge['source'] for edge in bkr_model['direct_edges']} | {edge['target'] for edge in bkr_model['direct_edges']}
        expanded_nodes = {edge['source'] for edge in bkr_model['expanded_edges']} | {edge['target'] for edge in bkr_model['expanded_edges']}
        self.assertIn('IED_BCUA', direct_nodes)
        self.assertIn('IED_MU1', direct_nodes)
        self.assertIn('IED_BKR', direct_nodes)
        self.assertIn('IED_TRPROT1', direct_nodes)
        self.assertGreaterEqual(len(bkr_model['direct_edges']), 11)
        self.assertGreater(len(bkr_model['expanded_edges']), len(bkr_model['direct_edges']))
        self.assertIn('IED_BCUC', expanded_nodes)

    def test_multiple_sample_files_parse(self):
        for path in (ROOT / 'scd_test').glob('*.scd'):
            with self.subTest(path=path.name):
                data = parse_all_data(path)
                self.assertIsNotNone(data)
                self.assertIn('IEDs', data)
                self.assertIn('Communication', data)


if __name__ == '__main__':
    unittest.main()
