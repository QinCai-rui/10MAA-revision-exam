# Revision exams

- Give each new paper its own numbered `paper-N/` directory, exam and worked marking schedule. Preserve existing papers unless asked to change them.
- Keep all papers independently buildable. Each paper owns its sources, layout, assets and diagram pipeline; changes to one must not affect another.
- Use an existing paper as the format reference when creating a paper or changing its layout, unless asked otherwise. Check the cover, formula pages, section headers (including continued headers), answer spaces and mark placement against its PDF. Leave room to write the awarded mark before the slash.
- Allocate working space to the question rather than using a fixed amount everywhere. Avoid unnecessary page breaks and large gaps, while keeping questions and their answer space together where practical.
- Use the existing TikZ and `tkz-euclide` diagram workflow rather than introducing a separate drawing system. Follow `paper-1/diagrams/README.md` for the drawing and print-size checks; keep each paper's diagram sources and assets independent.
- Check mathematical questions and worked schedules together, including mark totals and follow-through. An estimated exam duration is not a substitute for a timed trial.
- After layout or diagram changes, rebuild the affected paper and inspect the rendered pages, not just automated margin checks. Check for clipped content, collisions, awkward breaks and excessive blank space.
