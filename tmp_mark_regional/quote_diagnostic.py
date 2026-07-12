#!/usr/bin/env python3
import argparse,csv,json,re,sqlite3
from pathlib import Path

SELECTED_MARK=[(1,2),(1,3),(4,12),(7,6),(7,7),(7,10),(8,18),(9,48),(10,6),(10,7),(10,8),(10,19),(11,9),(11,10),(11,17),(12,10),(12,11),(12,19),(12,26),(12,29),(12,30),(12,31),(12,36),(13,14),(13,24),(13,25),(14,27),(14,62),(15,34)]
SELECTED_LXX=[
(1,1,27),(1,2,24),(2,3,6),(2,20,12),(2,20,13),(2,20,14),(2,20,15),(2,20,16),(2,21,17),(2,23,20),
(3,19,18),(3,20,9),(5,5,16),(5,5,17),(5,5,18),(5,5,19),(5,5,20),(5,6,4),(5,6,5),(5,25,5),
(19,22,2),(19,110,1),(19,118,22),(19,118,23),(19,118,25),(19,118,26),
(23,6,9),(23,6,10),(23,13,10),(23,29,13),(23,34,4),(23,40,3),(23,56,7),(23,66,24),
(24,5,21),(24,7,11),(27,7,13),(27,9,27),(27,11,31),(27,12,11),(38,13,7),(39,3,1)]

def read_mark(root):
    p=next(Path(root).glob('**/txt/62-Mk.txt'))
    out={}
    rg=re.compile(r'^Mk\s+(\d+):(\d+)\s*\t(.*)$')
    for line in p.read_text(encoding='utf-8-sig').splitlines():
        m=rg.match(line)
        if m: out[(int(m.group(1)),int(m.group(2)))]=m.group(3)
    return p,out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--sblgnt',required=True);ap.add_argument('--lxx-db',required=True);ap.add_argument('--out',required=True);a=ap.parse_args()
    out=Path(a.out);out.mkdir(parents=True,exist_ok=True)
    mp,mk=read_mark(a.sblgnt)
    (out/'mark_selected.json').write_text(json.dumps({f'Mk {c}:{v}':mk.get((c,v)) for c,v in SELECTED_MARK},ensure_ascii=False,indent=2),encoding='utf-8')
    con=sqlite3.connect(a.lxx_db)
    schema={}
    for name,sql in con.execute("select name,sql from sqlite_master where type='table' order by name"):
        schema[name]=sql
    (out/'lxx_schema.json').write_text(json.dumps(schema,ensure_ascii=False,indent=2),encoding='utf-8')
    samples={}
    for table in schema:
        try:
            cols=[r[1] for r in con.execute(f'pragma table_info({table})')]
            rows=con.execute(f'select * from {table} limit 60').fetchall()
            samples[table]={'columns':cols,'rows':rows}
        except Exception as e: samples[table]={'error':repr(e)}
    (out/'lxx_table_samples.json').write_text(json.dumps(samples,ensure_ascii=False,indent=2,default=str),encoding='utf-8')
    rows=[]
    try:
        for b,c,v in SELECTED_LXX:
            r=con.execute('select Scripture from Verses where Book=? and Chapter=? and Verse=?',(b,c,v)).fetchone()
            rows.append({'book':b,'chapter':c,'verse':v,'text':r[0] if r else None})
    except Exception as e:
        rows.append({'error':repr(e)})
    con.close()
    with open(out/'lxx_selected.csv','w',encoding='utf-8',newline='') as f:
        w=csv.DictWriter(f,fieldnames=sorted({k for r in rows for k in r}));w.writeheader();w.writerows(rows)
    (out/'diagnostic_manifest.txt').write_text(f'mark_path={mp}\nlxx_db={a.lxx_db}\n',encoding='utf-8')
if __name__=='__main__':main()
