import re
from typing import Dict, Optional


def parse_intaddr(int_addr: Optional[str]):
    if not int_addr or '/' not in int_addr:
        return None
    try:
        ap_name = ''
        rest = int_addr
        if ':' in int_addr:
            ap_name, rest = int_addr.split(':', 1)
        ld_inst, ln_doi_da_path = rest.split('/', 1)
        path_parts = ln_doi_da_path.split('.')
        da_name = None
        common_das = {
            'stval', 'q', 't', 'mxval', 'instmag', 'i', 'f', 'ctlval',
            'mag', 'ang', 'subval', 'stseld', 'd', 'stse'
        }
        if len(path_parts) >= 2 and path_parts[-1].lower() in common_das:
            da_name = path_parts[-1]
            doi_name = path_parts[-2]
            ln_ref = '.'.join(path_parts[:-2])
        else:
            doi_name = path_parts[-1]
            ln_ref = '.'.join(path_parts[:-1])
        return {
            'ap': ap_name.strip(),
            'ld': ld_inst.strip(),
            'ln_ref': (ln_ref or 'LLN0').strip(),
            'doi': doi_name.strip(),
            'da': da_name.strip() if da_name else None,
        }
    except Exception:
        return None


def doi_sort_key(item: Dict[str, str]):
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
        return (parsed.get('ld', ''), ln_prefix_sort, ln_num_sort, doi_prefix, doi_num, intaddr)
    return ('', '', 9999, '', 9999, intaddr)
