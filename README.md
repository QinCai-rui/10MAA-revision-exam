# 10MAA revision exam

A printable mathematics revision paper with a separate worked marking schedule. The paper has 160 marks, 25 pages, and a suggested time of 2 hours 25 minutes.

## Download the paper

- [Revision exam](<10MAA Revision Exam.pdf>)
- [Marking schedule](<10MAA Revision Exam Schedule.pdf>)

The paper covers algebra, statistics and probability, trigonometry, measurement, coordinate geometry, quadratics, and geometry. It includes extra vector geometry and proof questions, plus practice interpreting quadratic solutions in context.

Some questions use fictional AI, programming, and operating-system scenarios. Their data are for mathematics practice, not real performance comparisons.

Only the current paper is maintained. Earlier versions remain available in Git history.

## Build the PDFs

Install [uv](https://docs.astral.sh/uv/) and the Liberation Serif and Liberation Sans fonts. Run commands from the repository root.

Build the exam and marking schedule:

```sh
uv run --with typst --with pymupdf python build.py
```

The build writes the two PDFs in the repository root. It also writes page previews and text-boundary checks to `review/`. Git ignores those review files. The build uses the committed diagram assets without regenerating them.

## Edit the paper

- `exam.typ` and `schedule.typ` contain the current paper and its marking schedule.
- `vectors_extra.typ` and `vectors_extra_schedule.typ` contain the included vector questions and solutions.
- `build.py` compiles both documents and renders their review pages.
- `cover-brand.typ` layers the cover symbols using `assets/celery.svg` and `assets/openai.svg`.
- `common.typ` defines shared page layout and question formatting.
- `diagrams/tex/` contains the TikZ geometry figures and their shared print style.
- `diagrams/manifest.json` records each figure's print size and alternative text.
- `assets/diagrams/` contains the rendered vector PDFs. Ordinary exam builds use these without requiring TeX.
- The Python SVG generators remain for charts and graph grids. They are not part of the ordinary PDF build.

See [Build and edit the geometry diagrams](diagrams/README.md) to regenerate the TikZ figures.

## About this paper

This is an unofficial revision resource, not a school-issued exam. GPT-6.1 Sol generated the paper and worked solutions, with code-based checks and review. Errors may remain.

The geometry figures use TikZ and `tkz-euclide`. Charts and graph grids use programmatically drawn SVGs. The cover uses the user-supplied celery artwork, with a small OpenAI symbol behind it. The OpenAI logo comes from [OpenAI's favicon](https://openai.com/favicon.svg). Its use does not imply OpenAI endorsement. No past papers or knowledge booklet are re-distributed here.
