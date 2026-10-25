#let diagram-manifest = json("diagrams/manifest.json")
#let document-style(body) = {
  set page(paper: "a4", margin: (x: 13mm, top: 13mm, bottom: 15mm), numbering: "1", number-align: center)
  set text(font: "Liberation Serif", size: 11pt)
  set par(justify: false, leading: 0.65em)
  set math.equation(numbering: none)
  show math.equation.where(block: false): it => box(math.equation(block: true, it.body))
  body
}
#let section(title, marks: none) = {
  block(width: 100%, fill: rgb("b4b4b4"), inset: (x: 8pt, y: 7pt))[
    #text(font: "Liberation Sans", weight: "bold", size: 12pt)[#title #h(1fr) #if marks != none { [#marks marks] }]
  ]
  v(8pt)
}
#let q(label, body) = block(above: 10pt, below: 5pt)[#grid(columns: (22pt, 1fr), [#label], body)]
#let work(height: 25mm, marks: 1, label: "Answer", unit: "") = {
  v(height)
  align(right)[#label: #box(width: 51mm, line(length: 100%, stroke: (paint: gray, thickness: .5pt, dash: "dotted"))) #unit #h(3pt) \[#marks\]]
  v(5pt)
}
#let space(height: 25mm, marks: 1) = {v(height);align(right)[\[#marks\]];v(5pt)}
#let diagram(name, width: 130mm) = align(center, {
  if name in diagram-manifest {
    let spec = diagram-manifest.at(name)
    assert(calc.abs(width - spec.width_mm * 1mm) < 0.01mm,
      message: "Use the diagram's print width to preserve label and stroke sizes")
    image("assets/diagrams/" + name + ".pdf", width: width, alt: spec.alt)
  } else {
    image("assets/" + name + ".svg", width: width)
  }
})
#let tbl(columns, ..cells) = table(columns: columns, stroke: .5pt, inset: 6pt, align: center + horizon, ..cells)
#let newpage() = pagebreak()
