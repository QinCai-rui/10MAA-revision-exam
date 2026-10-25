"""Build the expanded paper without modifying the earlier paper or its PDFs."""
from pathlib import Path
import json
import runpy
import typst
import pymupdf

ROOT=Path(__file__).parent
runpy.run_path(str(ROOT/'make_original_assets.py'))

def replace_once(text,old,new):
    assert text.count(old)==1, f'Expected one occurrence: {old!r}'
    return text.replace(old,new,1)

exam=(ROOT/'exam_original.typ').read_text()
for old,new in [
    ('title: "10MAA New Revision Examination 2026"','title: "10MAA Expanded Revision Examination 2026"'),
    ('*Time allowed: 2 hours*','*Time allowed: 2 hours 25 minutes*'),
    ('[Geometry], [/13]','[Geometry], [/38]'),
    ('[#strong[/135]]','[#strong[/160]]'),
    ('#section("Geometry", marks: 13)','#section("Geometry", marks: 38)'),
    ('#v(1fr)\n#align(center)[*End of Assessment*]','#include "vectors_extra.typ"'),
]:
    exam=replace_once(exam,old,new)

schedule=(ROOT/'schedule_original.typ').read_text()
schedule=replace_once(schedule,'title: "10MAA New Revision Examination 2026 Marking Schedule"','title: "10MAA Expanded Revision Examination 2026 Marking Schedule"')
schedule=replace_once(schedule,'#band[Geometry • 13 marks]','#band[Geometry • 38 marks]')
schedule=replace_once(schedule,'#v(5mm)\n#align(center)[*Total: 135 marks*]','#include "vectors_extra_schedule.typ"')

review=ROOT/'review-expanded'
review.mkdir(exist_ok=True)
report={}
for stem,source,target in [
    ('exam',exam,'10MAA Expanded Revision Exam.pdf'),
    ('schedule',schedule,'10MAA Expanded Revision Exam Schedule.pdf'),
]:
    generated=ROOT/f'{stem}_expanded.generated.typ'
    generated.write_text(source)
    typst.compile(str(generated),output=str(ROOT/target),timestamp=1792886400)
    doc=pymupdf.open(ROOT/target)
    pages=[]
    for i,page in enumerate(doc):
        image=review/f'{stem}-{i+1:02}.png'
        page.get_pixmap(matrix=pymupdf.Matrix(1.7,1.7)).save(str(image))
        spans=[s for b in page.get_text('dict')['blocks'] if b['type']==0 for line in b['lines'] for s in line['spans']]
        outside=[s['text'] for s in spans if s['bbox'][0]<15 or s['bbox'][2]>page.rect.width-15 or s['bbox'][1]<12 or s['bbox'][3]>page.rect.height-12]
        pages.append({'page':i+1,'text_length':len(page.get_text()),'outside_printable_area':outside})
    report[stem]={'pages':len(doc),'bytes':(ROOT/target).stat().st_size,'page_checks':pages}
    print(stem,len(doc),'pages',report[stem]['bytes'],'bytes')
(review/'checks.json').write_text(json.dumps(report,indent=2))
