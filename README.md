# 10MAA revision exam

A printable mathematics revision paper with a separate worked marking schedule. The expanded paper has 160 marks, 25 pages, and a suggested time of 2 hours 25 minutes.

## Download the paper

- [Expanded exam](<10MAA Expanded Revision Exam.pdf>)
- [Expanded marking schedule](<10MAA Expanded Revision Exam Schedule.pdf>)

The paper covers algebra, statistics and probability, trigonometry, measurement, coordinate geometry, quadratics, and geometry. It includes extra vector geometry and proof questions, plus practice interpreting quadratic solutions in context.

Some questions use fictional AI, programming, and operating-system scenarios. Their data are for mathematics practice, not real performance comparisons.

Earlier versions remain in the repository. Use the **Expanded** PDFs for the latest paper. The **New** PDFs contain the shorter, 135-mark version. The PDFs without either label are the first draft.

## Build the PDFs

Install [uv](https://docs.astral.sh/uv/) and the Liberation Serif and Liberation Sans fonts. Run commands from the repository root.

Build the expanded exam and marking schedule:

```sh
uv run --with typst --with pymupdf python build_expanded.py
```

The build writes the two expanded PDFs in the repository root. It also writes page previews and text-boundary checks to `review-expanded/`. Git ignores those review files and the intermediate `*.generated.typ` files.

To build the shorter version:

```sh
uv run --with typst --with pymupdf python build_original.py
```

## Edit the paper

- `exam_original.typ` and `schedule_original.typ` contain the shorter paper and its marking schedule.
- `vectors_extra.typ` and `vectors_extra_schedule.typ` contain the additional vector questions and solutions.
- `build_expanded.py` combines those sources and updates the timing and mark totals.
- `common.typ` defines shared page layout and question formatting.
- `make_original_assets.py` and `make_vector_assets.py` draw the SVG diagrams. They use helpers in `make_assets.py`.
- `assets/` contains the diagrams and cover logos.

## About this paper

This is an unofficial revision resource, not a school-issued exam. GPT-6.1 Sol generated the paper and worked solutions, with code-based checks and review. Errors may remain.

The diagrams and custom sun logo are programmatically drawn SVGs. The OpenAI logo comes from [OpenAI's favicon](https://openai.com/favicon.svg). Its use does not imply OpenAI endorsement. The reference past papers and knowledge booklet are not included.
