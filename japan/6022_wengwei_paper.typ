#set page(
  paper: "us-letter",
  header: align(right)[
    A fluid dynamic model for
    glacier flow
  ],
  numbering: "1",
)
#set par(justify: true)
#set text(
  font: "Linux Libertine",
  size: 11pt,
)

#align(center, text(17pt)[
  *A fluid dynamic model
  for glacier flow*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)

#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]

#let title = [
  A fluid dynamic model
  for glacier flow
]

...

#set page(
  header: align(
    right + horizon,
    title
  ),

)

#align(center, text(17pt)[
  *#title*
])
#show: rest => columns(2, rest)

= Introduction
#lorem(300)

= Related Work
#lorem(200)

#show: rest => columns(1, rest)
#show heading: it => [
  #set align(center)
  #set text(12pt, weight: "regular")
  #block(smallcaps(it.body))
]

#lorem(600)
