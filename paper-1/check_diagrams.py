"""Check committed vector figures and render full-size review images."""
import argparse
import json
from pathlib import Path

import pymupdf

ROOT = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("names", nargs="*", help="Default: all figures")
    args = parser.parse_args()
    manifest = json.loads((ROOT / "diagrams/manifest.json").read_text())
    names = args.names or list(manifest)
    review = ROOT / "review-diagrams"
    review.mkdir(exist_ok=True)
    for name in names:
        spec = manifest[name]
        doc = pymupdf.open(ROOT / "assets/diagrams" / f"{name}.pdf")
        assert len(doc) == 1, f"{name}: expected a single-page figure"
        page = doc[0]
        for actual, expected in [(page.rect.width, spec["width_mm"]),
                                 (page.rect.height, spec["height_mm"])]:
            assert abs(actual * 25.4 / 72 - expected) < .02, f"{name}: incorrect print size"
        assert not page.get_images(), f"{name}: contains a raster image"
        assert page.get_fonts(), f"{name}: no typeset labels"
        for font in page.get_fonts():
            assert doc.extract_font(font[0])[3], f"{name}: a font is not embedded"
        for word in page.get_text("words"):
            box = pymupdf.Rect(word[:4])
            assert (box & page.rect).get_area() >= box.get_area() * .98, f"{name}: clipped text {word[4]}"
        page.get_pixmap(matrix=pymupdf.Matrix(3, 3)).save(review / f"{name}.png")
        print(f"{name}: print size, vectors, embedded fonts, and label bounds OK")


if __name__ == "__main__":
    main()
