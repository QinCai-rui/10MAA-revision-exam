"""Build both papers and check that text stays inside the printable margins."""
from pathlib import Path
import json

import pymupdf
import typst

ROOT = Path(__file__).resolve().parent
review = ROOT / "review"
review.mkdir(exist_ok=True)
report = {}
for folder, source, target in [
    ("paper-1", "exam.typ", "10MAA Revision Exam.pdf"),
    ("paper-1", "schedule.typ", "10MAA Revision Exam Schedule.pdf"),
    ("paper-2", "exam.typ", "10MAA Revision Exam Paper 2.pdf"),
    ("paper-2", "schedule.typ", "10MAA Revision Exam Paper 2 Schedule.pdf"),
]:
    stem = f"{folder}-{Path(source).stem}"
    output = ROOT / folder / target
    typst.compile(str(ROOT / folder / source), root=str(ROOT / folder), output=str(output), timestamp=1792886400)
    with pymupdf.open(output) as doc:
        pages = []
        for i, page in enumerate(doc):
            page.get_pixmap(matrix=pymupdf.Matrix(1.7, 1.7)).save(review / f"{stem}-{i + 1:02}.png")
            spans = [s for b in page.get_text("dict")["blocks"] if b["type"] == 0
                     for line in b["lines"] for s in line["spans"]]
            outside = [s["text"] for s in spans if s["bbox"][0] < 15
                       or s["bbox"][2] > page.rect.width - 15 or s["bbox"][1] < 12
                       or s["bbox"][3] > page.rect.height - 12]
            pages.append({"page": i + 1, "text_length": len(page.get_text()),
                          "outside_printable_area": outside})
        report[stem] = {"pages": len(doc), "page_checks": pages}
        print(f"{stem}: {len(doc)} pages")
(review / "checks.json").write_text(json.dumps(report, indent=2))
if any(page["outside_printable_area"] for item in report.values() for page in item["page_checks"]):
    raise RuntimeError("Text exceeds checked page margins; inspect review/checks.json")
