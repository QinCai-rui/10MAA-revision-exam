"""Build the current revision paper and marking schedule, then render every page."""
from pathlib import Path
import json

import pymupdf
import typst

ROOT = Path(__file__).resolve().parent
review = ROOT / "review"
review.mkdir(exist_ok=True)
report = {}
for stem, source, target in [
    ("exam", "exam.typ", "10MAA Revision Exam.pdf"),
    ("schedule", "schedule.typ", "10MAA Revision Exam Schedule.pdf"),
]:
    typst.compile(str(ROOT / source), output=str(ROOT / target), timestamp=1792886400)
    with pymupdf.open(ROOT / target) as doc:
        pages = []
        for i, page in enumerate(doc):
            page.get_pixmap(matrix=pymupdf.Matrix(1.7, 1.7)).save(review / f"{stem}-{i+1:02}.png")
            spans = [s for b in page.get_text("dict")["blocks"] if b["type"] == 0
                     for line in b["lines"] for s in line["spans"]]
            outside = [s["text"] for s in spans if s["bbox"][0] < 15
                       or s["bbox"][2] > page.rect.width - 15 or s["bbox"][1] < 12
                       or s["bbox"][3] > page.rect.height - 12]
            pages.append({"page": i+1, "text_length": len(page.get_text()),
                          "outside_printable_area": outside})
        report[stem] = {"pages": len(doc), "bytes": (ROOT / target).stat().st_size,
                        "page_checks": pages}
        print(f"{stem}: {len(doc)} pages, {report[stem]['bytes']} bytes")
(review / "checks.json").write_text(json.dumps(report, indent=2))
if any(page["outside_printable_area"] for item in report.values() for page in item["page_checks"]):
    raise RuntimeError("Text exceeds the checked page margins; inspect review/checks.json")
