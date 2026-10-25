# Build and edit the geometry diagrams

The geometry figures are standalone TikZ documents using `tkz-euclide`. Tectonic 0.17.0 compiles each source into a vector PDF in `assets/diagrams/`. Typst embeds those PDFs at the print sizes recorded in `manifest.json`.

Normal exam builds use the committed figure PDFs. You only need Tectonic when you edit a figure.

## Regenerate the figures

Install the Liberation Serif fonts, then run this command from the repository root:

```sh
uv run python make_diagrams.py
```

On x86-64 Linux, the script downloads a checksum-verified Tectonic binary into `.tools/`. It does not install system packages. The first compilation downloads TeX packages into Tectonic's user cache and requires network access.

On another platform, install Tectonic 0.17.0 and supply its path:

```sh
uv run python make_diagrams.py --tectonic /path/to/tectonic
```

To rebuild selected figures using only cached TeX packages:

```sh
uv run python make_diagrams.py --offline new-tangents vectors-trapezium
```

Tectonic's bundled `tkz-euclide` is version 4.051b. Use that version's commands rather than assuming current 5.x examples are compatible. The build uses Tectonic's deterministic mode. Font substitutions or a changed package bundle can still change the output.

## Edit a figure

1. Edit its source in `diagrams/tex/`.
2. Regenerate its PDF with `make_diagrams.py`.
3. Check the figures and render review images:

   ```sh
   uv run --with pymupdf python check_diagrams.py
   ```

4. Inspect the PNGs in `review-diagrams/` for label collisions, incorrect geometry, and misleading markings. Automated checks do not detect all of those problems.
5. Rebuild the exam:

   ```sh
   uv run --with typst --with pymupdf python build.py
   ```

6. Inspect the affected full pages in `review/` before publishing.

Commit the TeX sources and rendered figure PDFs together.

## Drawing rules

- Load `style.tex` in every figure. It sets the fonts, line weights, arrowheads, and notes.
- Use centimetre coordinates for `tkz-euclide` constructions. Its internal calculations assume centimetres, even if TikZ accepts another coordinate scale.
- Derive midpoints, subdivisions, parallels, and intersections from named points. Do not estimate their positions in drawing coordinates.
- Use mathematical italic for point names and bold for vector names. Keep units upright.
- Keep text and line weights at their final print sizes. Do not scale an entire drawing to make it fit.
- End the picture with `\ExamBounds{width_mm}{height_mm}`. Match those dimensions in `manifest.json` and the width passed to Typst's `diagram()` helper.
- Leave clearance around labels. Use hidden-edge dashes and dimension guides consistently.
- Only mark facts supplied in the question. Do not add equal-length ticks, parallel marks, or angle values that give away a requested proof.

The checks verify page size, embedded fonts, text bounds, and the absence of raster images. They do not prove that a construction matches its question.
