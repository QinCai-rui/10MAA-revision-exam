// Draw the small provider mark first, behind the user-supplied celery artwork.
#let cover-brand() = box(width: 43mm, height: 43mm)[
  #place(top + left, dx: 19.5mm, dy: 24mm,
    image("assets/openai.svg", width: 11mm, alt: "OpenAI symbol"))
  #place(top + left, dx: 7mm,
    image("assets/celery.svg", height: 43mm, alt: "A small bunch of celery"))
]
