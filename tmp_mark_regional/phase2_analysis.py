#!/usr/bin/env python3
"""Transparent regional-profile reanalysis for Mark's fixed A-B-A division.

Hypothesis tested without alteration: Mark 1:1–6:29 and Mark 11:1–16:8
are closer to the Alexandrian profile; Mark 6:30–10:52 is closer to the
Syrian profile. Only identically available surface features are used:
a predeclared closed-class word profile and character trigrams. No verb-
morphology surrogate, reconstructed VSO, LCI, or LDA is used.
"""
from __future__ import annotations
import argparse,csv,hashlib,json,re,sqlite3,unicodedata
from collections import Counter,defaultdict
from pathlib import Path
import numpy as np
from lxml import etree

SEED=20260712
BLOCK=500
NGRAM=3
NCHAR=600
CLOSED=sorted(set("""
ο η το του της τω τη τον την οι αι τα των τοις ταις τους τας
εγω μου μοι με συ σου σοι σε ημεις ημων ημιν ημας υμεις υμων υμιν υμας
αυτος αυτη αυτο αυτου αυτης αυτω αυτην αυτον αυτοι αυται αυτα αυτων αυτοις αυταις αυτους αυτας
ουτος τουτο τουτου ταυτης τουτω ταυτη τουτον ταυτην ουτοι ταυτα τουτων τουτοις ταυταις τουτους ταυτας
εκεινος εκεινη εκεινο εκεινου εκεινης εκεινω εκεινην εκεινον εκεινοι εκειναι εκεινα εκεινων εκεινοις εκειναις εκεινους εκεινας
ος ου ης ω ην ον α ων οις αις ους ας
τις τι τινος τινι τινα τινες τινων τισιν τινας
πας πασα παν παντος πασης παντι πασαν παντα παντες πασαι παντων πασι πασαις παντας
και δε γαρ μεν ουν τε αλλα αλλ η ουδε μηδε ουτε μητε οτι διοτι ινα ως ωστε καθως
ει εαν αν οταν οποτε επει επειδη πριν εως μεχρι αχρι
ου ουκ ουχ μη ναι
εν εις εκ εξ απο δια κατα μετα παρα περι προ προς συν υπερ υπο αντι ανα επι χωρις
νυν τοτε ετι παλιν ουτως ωδε εκει πως που ποτε ποθεν μαλλον
μεταξυ ενωπιον εναντιον εσω εξω ανω κατω
ειμι εστι εστιν εσμεν εστε εισι εισιν ην ησαν ημην ης ημεν ητε εσομαι εση εσται εσομεθα εσεσθε εσονται ειναι ων ουσα ον οντες ουσαι οντα
""".split()))
GR=re.compile(r"[α-ω]+")
VR=re.compile(r"^Mk\s+(\d+):(\d+)\s*\t(.*)$")
VARIANTS=['combined_full','lxx_only_full','philo_only_full','combined_no_theophilus','combined_no_didache']


def sha(path):
 h=hashlib.sha256()
 with open(path,'rb') as f:
  for b in iter(lambda:f.read(1048576),b''): h.update(b)
 return h.hexdigest()

def norm(s):
 s=s.lower().replace('ς','σ')
 s=''.join(c for c in unicodedata.normalize('NFD',s) if unicodedata.category(c)!='Mn')
 return ' '.join(GR.findall(s))
def toks(s): return norm(s).split()

def strip_elements(root,names):
 for name in names:
  for e in root.xpath(f'.//*[local-name()="{name}"]'):
   p=e.getparent()
   if p is None: continue
   tail=e.tail; i=p.index(e); p.remove(e)
   if tail:
    if i: p[i-1].tail=(p[i-1].tail or '')+tail
    else: p.text=(p.text or '')+tail

def eltext(el):
 c=etree.fromstring(etree.tostring(el)); strip_elements(c,['note','head','fw'])
 return ' '.join(c.itertext())
def tei(path):
 tr=etree.parse(str(path),etree.XMLParser(recover=True,huge_tree=True))
 es=tr.xpath('//*[local-name()="div" and @type="edition"]')
 return eltext(es[0] if es else tr.getroot()),{'path':str(path),'sha256':sha(path)}
def ignatius(path):
 tr=etree.parse(str(path),etree.XMLParser(recover=True,huge_tree=True))
 es=tr.xpath('//*[local-name()="div" and @subtype="epistle"]')
 out={f'Ignatius epistle {e.get("n") or i+1}':eltext(e) for i,e in enumerate(es)}
 if len(out)!=7: raise RuntimeError(f'Expected seven Ignatian epistles, found {len(out)}')
 return out,{'path':str(path),'sha256':sha(path)}
def mark(path):
 d={'front':[],'middle':[],'back':[]}
 for line in open(path,encoding='utf-8-sig'):
  m=VR.match(line.rstrip())
  if not m: continue
  r=(int(m.group(1)),int(m.group(2))); x=m.group(3)
  if (1,1)<=r<=(6,29): d['front'].append(x)
  elif (6,30)<=r<=(10,52): d['middle'].append(x)
  elif (11,1)<=r<=(16,8): d['back'].append(x)
 return {k:' '.join(v) for k,v in d.items()}
def lxx(path):
 con=sqlite3.connect(str(path)); d=defaultdict(list)
 for b,x in con.execute('select Book,Scripture from Verses order by Book,Chapter,Verse'): d[int(b)].append(str(x))
 con.close(); return {f'LXX book {b:02d}':' '.join(x) for b,x in sorted(d.items())},{'path':str(path),'sha256':sha(path),'books':len(d)}
def find(root,pat):
 x=list(root.glob(pat))
 if not x: raise FileNotFoundError(pat)
 return x[0]
def find_lxx(explicit=None):
 if explicit and Path(explicit).exists(): return Path(explicit)
 for base in [Path.cwd(),Path('/usr/local/lib/python3.12/site-packages'),Path('/usr/local/lib/python3.11/site-packages')]:
  if base.exists():
   x=list(base.rglob('LXX.bible'))
   if x:return x[0]
 raise FileNotFoundError('LXX.bible')

def blocks(ts):
 z=[ts[i:i+BLOCK] for i in range(0,len(ts),BLOCK)]
 if len(z)>1 and len(z[-1])<BLOCK//2: z[-2]+=z[-1];z.pop()
 return z

def closed(ts):
 c=Counter(ts);n=max(len(ts),1);return np.array([c[w]/n for w in CLOSED])
def grams(ts):
 s=' '.join(ts);return Counter(s[i:i+NGRAM] for i in range(max(0,len(s)-NGRAM+1)))
def choose_chars(docs):
 t=Counter();df=Counter()
 for x in docs:
  c=grams(x);t.update(c);df.update(c.keys())
 return [g for g,_ in t.most_common() if df[g]>=3][:NCHAR]
def charvec(ts,features):
 c=grams(ts);n=max(sum(c.values()),1);return np.array([c[g]/n for g in features])
def mean(v):return np.mean(np.stack(v),axis=0)
def dist(a,b):
 z=np.linalg.norm(a)*np.linalg.norm(b)
 return 1-float(np.dot(a,b)/z) if z else float('nan')

def macros(c,fn):
 m={k:fn(v) for k,v in c['mark'].items()}
 q={g:{k:fn(v) for k,v in c[g].items()} for g in ['lxx','philo','didache','ignatius','theophilus']}
 r={'LXX':mean(list(q['lxx'].values())),'Philo':mean(list(q['philo'].values())),
    'Didache':mean(list(q['didache'].values())),'Ignatius':mean(list(q['ignatius'].values())),
    'Theophilus':mean(list(q['theophilus'].values()))}
 return m,r

def cent(r,v):
 a=r['LXX'] if v.startswith('lxx_only') else r['Philo'] if v.startswith('philo_only') else mean([r['LXX'],r['Philo']])
 sk=['Didache','Ignatius','Theophilus']
 if v.endswith('no_theophilus'):sk.remove('Theophilus')
 if v.endswith('no_didache'):sk.remove('Didache')
 return a,mean([r[k] for k in sk])
def deterministic(c,name,fn):
 m,r=macros(c,fn);out=[]
 for v in VARIANTS:
  a,s=cent(r,v)
  for sec in ['front','middle','back']:
   da,ds=dist(m[sec],a),dist(m[sec],s);delta=ds-da
   out.append({'feature_set':name,'variant':v,'section':sec,'distance_alexandrian':da,'distance_syrian':ds,
               'delta_syrian_minus_alexandrian':delta,'predicted_profile':'Alexandrian' if delta>0 else 'Syrian'})
 return out

def blockvec(d,fn):return {k:[fn(b) for b in blocks(v)] for k,v in d.items()}
def bootdoc(v,rng):return mean([v[i] for i in rng.integers(0,len(v),len(v))])
def bootmacro(d,rng,resample=True):
 n=list(d)
 if resample and len(n)>1:n=[n[i] for i in rng.integers(0,len(n),len(n))]
 return mean([bootdoc(d[k],rng) for k in n])
def bootstrap(c,name,fn,B):
 rng=np.random.default_rng(SEED+(10000 if name.startswith('Character') else 0))
 z={g:blockvec(c[g],fn) for g in c};store={(v,s):[] for v in VARIANTS for s in ['front','middle','back']}
 for _ in range(B):
  r={'LXX':bootmacro(z['lxx'],rng),'Philo':bootmacro(z['philo'],rng),'Didache':bootmacro(z['didache'],rng,False),
     'Ignatius':bootmacro(z['ignatius'],rng),'Theophilus':bootmacro(z['theophilus'],rng,False)}
  m={s:bootdoc(z['mark'][s],rng) for s in ['front','middle','back']}
  for v in VARIANTS:
   a,y=cent(r,v)
   for s in m:store[(v,s)].append(dist(m[s],y)-dist(m[s],a))
 out=[]
 for v in VARIANTS:
  for s in ['front','middle','back']:
   x=np.array(store[(v,s)])
   out.append({'feature_set':name,'variant':v,'section':s,'bootstrap_median_delta':float(np.median(x)),
    'ci95_low':float(np.quantile(x,.025)),'ci95_high':float(np.quantile(x,.975)),
    'probability_alexandrian_closer':float(np.mean(x>0)),'probability_syrian_closer':float(np.mean(x<0)),
    'bootstrap_replicates':B})
 return out

def patterns(det,boot):
 bm={(x['feature_set'],x['variant'],x['section']):x for x in boot};out=[]
 for f in sorted(set(x['feature_set'] for x in det)):
  for v in VARIANTS:
   d={x['section']:x for x in det if x['feature_set']==f and x['variant']==v}
   p=[bm[(f,v,'front')]['probability_alexandrian_closer'],bm[(f,v,'middle')]['probability_syrian_closer'],bm[(f,v,'back')]['probability_alexandrian_closer']]
   out.append({'feature_set':f,'variant':v,'deterministic_ABA_pattern':d['front']['delta_syrian_minus_alexandrian']>0 and d['middle']['delta_syrian_minus_alexandrian']<0 and d['back']['delta_syrian_minus_alexandrian']>0,
    'front_direction_probability':p[0],'middle_direction_probability':p[1],'back_direction_probability':p[2],'minimum_direction_probability':min(p)})
 return out
def writecsv(p,rows):
 with open(p,'w',encoding='utf-8',newline='') as f:w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--first1k',required=True);ap.add_argument('--sblgnt',required=True);ap.add_argument('--lxx-db');ap.add_argument('--out',required=True);ap.add_argument('--bootstraps',type=int,default=3000);a=ap.parse_args()
 root=Path(a.first1k);out=Path(a.out);out.mkdir(parents=True,exist_ok=True);manifest=[]
 mp=find(Path(a.sblgnt),'**/txt/62-Mk.txt');mt=mark(mp)
 pp={'Philo, De Opificio Mundi':find(root,'**/tlg0018/tlg001/*grc1.xml'),'Philo, Legum Allegoriae':find(root,'**/tlg0018/tlg002/*grc1.xml'),'Philo, De Abrahamo':find(root,'**/tlg0018/tlg020/*grc1.xml'),'Philo, De Vita Mosis':find(root,'**/tlg0018/tlg022/*grc1.xml'),'Philo, De Specialibus Legibus':find(root,'**/tlg0018/tlg024/*grc1.xml')}
 ph={}
 for n,p in pp.items():x,m=tei(p);ph[n]=x;manifest.append({'corpus':n,**m})
 dp=find(root,'**/tlg1311/tlg001/*grc1.xml');dt,dm=tei(dp);manifest.append({'corpus':'Didache',**dm})
 ip=find(root,'**/tlg1443/tlg001/*grc1.xml');it,im=ignatius(ip);manifest.append({'corpus':'Ignatius, seven genuine epistles',**im})
 tp=find(root,'**/tlg1725/tlg001/*perseus-grc1.xml');tt,tm=tei(tp);manifest.append({'corpus':'Theophilus, Ad Autolycum',**tm})
 lp=find_lxx(a.lxx_db);lt,lm=lxx(lp);manifest.append({'corpus':'LXX (Rahlfs 1935 database)',**lm});manifest.append({'corpus':'SBLGNT Mark','path':str(mp),'sha256':sha(mp)})
 c={'mark':{k:toks(v) for k,v in mt.items()},'lxx':{k:toks(v) for k,v in lt.items()},'philo':{k:toks(v) for k,v in ph.items()},'didache':{'Didache':toks(dt)},'ignatius':{k:toks(v) for k,v in it.items()},'theophilus':{'Theophilus':toks(tt)}}
 refs=sum([list(c[g].values()) for g in ['lxx','philo','didache','ignatius','theophilus']],[]);cf=choose_chars(refs)
 det=[];boot=[]
 for n,fn in [('Closed-class word profile',closed),('Character trigram profile',lambda x:charvec(x,cf))]:det+=deterministic(c,n,fn);boot+=bootstrap(c,n,fn,a.bootstraps)
 pat=patterns(det,boot);counts=[]
 for g,d in c.items():
  for n,x in d.items():counts.append({'group':g,'document':n,'tokens':len(x),'blocks_500':len(blocks(x))})
 writecsv(out/'regional_deterministic.csv',det);writecsv(out/'regional_bootstrap.csv',boot);writecsv(out/'regional_pattern_summary.csv',pat);writecsv(out/'corpus_token_counts.csv',counts);writecsv(out/'corpus_manifest.csv',manifest)
 (out/'closed_class_features.txt').write_text('\n'.join(CLOSED),encoding='utf-8');(out/'character_trigram_features.txt').write_text('\n'.join(cf),encoding='utf-8')
 result={'seed':SEED,'bootstrap_replicates':a.bootstraps,'block_size_tokens':BLOCK,'hypothesis':'front/back Alexandrian; middle Syrian','pattern_summary':pat,'deterministic':det,'bootstrap':boot,'token_counts':counts}
 (out/'regional_results.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8');(out/'RUN_COMPLETE').write_text('ok\n')
if __name__=='__main__':main()
