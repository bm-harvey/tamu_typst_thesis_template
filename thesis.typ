#import "@preview/indenta:0.0.3": fix-indent

#import "@preview/board-n-pieces:0.5.0": board, starting-position 

#set text(size: 12pt, font: "Times New Roman")
#set page(width: 8.5in, height: 11in, margin: 1in)
#set par(justify: true, first-line-indent: 0.5in)

#let indent = h(0.5in)

#show heading: it => block(width: 100%)[
  #set text(12pt)
  #block(it.body+v(1em))
]

#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(12pt)
  #block(it.body + v(3em))
]

 
// title page

#set page(numbering: none)
#set par(leading: 1.3em, first-line-indent:0.25in)
#align(center)[TITLE OF THESIS IN ALL CAPS AND IT'S SO LONG THAT IT MIGHT EVENT TAKE UP TWO LINES]
#v(4em)
#align(center)[
  A Thesis

  by
  
  AGGIE M. STUDENT 
]

#v(4em)
#align(center)[
  #par(leading: 0.65em)[
    #show par: set block(spacing: 0.65em)
    Submitted to the Graduate and Professional School of 

    Texas A&M University
    
    in partial fulfillment of the requirements for the degree of

    #show par: set block(spacing: 1.3em)
    DOCTOR OF PHILOSOPHY
  ]
]

#v(4em)
#table(
  columns: ( auto, auto),
  stroke: none,
  rows: 2em,
  align: horizon,
  "Chair of Committee, ", "Dr. Chair Person",
  "Committee Members, ", "Dr. Committee Person 1",
  "", "Dr. Committee Person 2",
  "", "Dr. Committee Person 3",
  "Head of Department, ", "Dr. Department Head",
)
#v(3em)
#align(center)[
  Nevtember#h(2pt)3024
]
#v(3em)
#align(center)[
  Major Subject: Physics
]
#v(3em)
#align(center)[
  Copyright 3024#h(.5em)Aggie M. Student
]





// abstract
#pagebreak()
#set page(numbering: "i")
#set par(leading: 1.3em)
#show: fix-indent()

= ABSTRACT

#lorem(49)

#lorem(200)


// other front matter
#pagebreak()
= DEDICATION
#align(horizon + center)[
  #lorem(20)
]

#pagebreak()
= ACKNOWLEDGEMENTS
#lorem(25)

#pagebreak()
= CONTRIBUTERS AND FUNDING SOURCES
== Contributors
#lorem(49)
== Funding sources
#lorem(39)

#pagebreak()

#set par(leading:0.5em)
= NOMENTCLATURE
#grid(
columns:(0.35fr, 0.62fr),
gutter: 1em,

"OGAPS", "Office of Graduate and Professional Studies at Texas A&M Univeristy",
"B/CS", "Bryan and College Station",
"TAMU", "Texas A&M University" ,
"SDCC", "San Diego Comic-Con"

)

#set par(leading:1.5em)

#pagebreak()
= TABLE OF CONTENTS


#outline(indent: 0.5in, title: none)

#pagebreak()
= LIST OF FIGURES
#outline(indent: 0.5in, target: figure, title: none)

#set page(numbering: "1")
#counter(page).update(1)
#show: fix-indent()


#set heading(numbering: "1.1.1")
#counter(heading).update(0)
#show heading: it => block(width: 100%)[
  #set text(12pt)
  #let selector = selector(heading).before(here())
  #let level = counter(selector)
  #block([#level.display()#h(1em)#it.body]+v(1em))
]

#show heading.where(
  level: 1
): it => {
  set align(center);
  set text(12pt)
  set text(12pt)
  let selector = selector(heading).before(here())
  let level = counter(selector)
  pagebreak()
  block([#level.display().#h(1em)#it.body] + v(3em))
}

#show: fix-indent()
= TITLE OF CHAPTER 1 
== #lorem(5)

#lorem(25)

This is an example of a citation as, seen in reference @hannaman_prc_2024.

#figure(
  board(starting-position),
  caption: [The starting position of a chess game.],
)
#lorem(25)
$
  sum_(j=1)^n integral f_j dif x = integral sum_(j=1)^n f_j dif x

$

#lorem(100)
== Section 1.2
#lorem(100)

=== Section 1.2.1
#lorem(100)

= TITLE OF CHAPTER 2
#lorem(100)

#show heading: it => block(width: 100%)[
  #set text(12pt)
  #block(it.body+v(1em))
]

#show heading.where(
  level: 1
): it => {
  set align(center)
  set text(12pt)
  pagebreak()+ it.body + v(3em)
}


#bibliography(title: "REFERENCES", style:"american-physics-society","ref.bib")

