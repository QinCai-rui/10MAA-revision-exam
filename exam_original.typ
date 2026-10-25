#import "common.typ": *
#show: document-style
#set document(title: "10MAA New Revision Examination 2026", author: "GPT-6.1 Sol")
#align(center)[
  #image("assets/sol.svg", width: 43mm)
  #v(1mm)
  #text(size: 11pt, weight: "bold")[GPT-6.1 SOL]
  #v(3mm)
  #text(size: 20pt, weight: "bold")[10MAA]
  #v(1mm)
  #text(size: 21pt)[End of Year Revision Examination 2026]
]
#v(7mm)
Student's full name: #h(4mm) #box(width: 83mm, line(length: 100%, stroke: .5pt))

Form class: #h(3mm) #box(width: 27mm, line(length: 100%, stroke: .5pt))

Maths teacher's code: #h(3mm) #box(width: 77mm, line(length: 100%, stroke: .5pt))
#v(7mm)
#align(center)[*Time allowed: 2 hours*]
*Instructions:*
#set list(spacing: 7pt)
- Write in blue/black pen only. Use a pencil for diagrams.
- No twink or correction fluid allowed.
- Calculators are permitted.
- Answer *all questions in this booklet*, showing working in the appropriate space.
- Unless otherwise stated, give non-exact answers to *three significant figures*, angles to *one decimal place*, and money to *two decimal places*.
#v(5mm)
#table(columns: (76mm, 24mm), stroke: .5pt, inset: 4pt,
  [*Topic*], [*Mark*],
  [Algebraic Expressions & Equations], [/31],
  [Statistics & Probability], [/27],
  [Trigonometry], [/13],
  [Measurement], [/16],
  [Coordinate Geometry], [/12],
  [Graphs of Quadratic Functions], [/23],
  [Geometry], [/13],
  [*Total*], [#strong[/135]],
)
#v(1fr)
#grid(columns: (1fr, auto), align: (left, right + bottom),
  text(size: 8pt)[Independent revision paper],
  [#image("assets/openai.svg", height: 8mm) #h(2mm) #text(font: "Liberation Sans", size: 12pt)[OpenAI]],
)
#newpage()
#section[Useful Formulae]
*The Quadratic Formula*
$ x = (-b plus.minus sqrt(b^2 - 4a c))/(2a) $
#v(1mm)
*Volume of a cylinder*
$ V = pi r^2 h $
#v(1mm)
*Volume of a sphere*
$ V = 4/3 pi r^3 $
#v(1mm)
*Volume of a cone*
$ V = 1/3 pi r^2 h $
#v(1mm)
*The Cosine Rule*
$ a^2 = b^2 + c^2 - 2b c cos A $
#v(1mm)
*The Sine Rule*
$ a/(sin A) = b/(sin B) = c/(sin C) $
#v(1mm)
*The Area of a Triangle*
$ A = 1/2 a b sin C $
#v(1mm)
*The midpoint of a line segment*
$ ((x_1 + x_2)/2, (y_1 + y_2)/2) $
#v(1mm)
*Distance*
$ sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $
#v(1mm)
*Gradient of a line*
$ m = (y_2 - y_1)/(x_2 - x_1) $
#v(1mm)
*Equation of a line*
$ y-y_1 = m(x-x_1) $
#v(1mm)
*Perpendicular criteria*
$ m_1 m_2 = -1 $
For lines with defined gradients.
#newpage()
#section("Algebraic Expressions & Equations", marks: 31)
#q[1.][A student writes $(x-4)^2=x^2+16$.]
#q[][(a) Expand $(x-4)^2$ correctly.]
#work(height: 15mm, marks: 2)
#q[][(b) Simplify $(x^2-16)/(x-4)$ for $x != 4$.]
#work(height: 22mm, marks: 2)
#q[][(c) The student's original equality is true for exactly one value of $x$. Find that value.]
#work(height: 23mm, marks: 2, label: "x")
#q[2.][(a) Simplify $(16m^12)^(1/4)$, where $m>0$.]
#work(height: 19mm, marks: 2)
#q[][(b) The numbers $a$ and $b$ satisfy
$ 9^a times 27^b=3^22, quad a=b+1. $
Find $a$ and $b$.]
#work(height: 25mm, marks: 3)
#newpage()
#section[Algebraic Expressions & Equations continued]
#q[3.][A compiler processes files in batches. The table gives the time $T$, in milliseconds, for a batch containing $n$ files.]
#align(center)[#tbl((35mm, 22mm, 22mm, 22mm, 22mm),
 [$n$], [1], [2], [3], [4],
 [$T$ / milliseconds], [7], [14], [25], [40],
)]
#q[][(a) Find the first differences and show that the second differences are constant.]
#space(height: 22mm, marks: 2)
#q[][(b) Find a quadratic formula for $T$ in terms of $n$.]
#work(height: 33mm, marks: 3, label: "T")
#q[][(c) Use your formula to predict the time for a batch of 10 files.]
#work(height: 13mm, marks: 1, unit: "milliseconds")
#q[4.][A coding club buys 20 stickers for \$78. Python stickers cost \$3 each and Rust stickers cost \$5 each.]
#q[][(a) Let $p$ be the number of Python stickers and $r$ the number of Rust stickers. Form two simultaneous equations.]
#space(height: 18mm, marks: 2)
#q[][(b) Find how many stickers of each type the club buys.]
#work(height: 22mm, marks: 2)
#newpage()
#section[Algebraic Expressions & Equations continued]
#q[5.][The inequality $2(3x-5)>5x+k$ is true when $x=4$, but false when $x=1$.

$k$ is an integer. Find all possible values of $k$.]
#work(height: 47mm, marks: 4, label: "k")
#q[6.][A rectangular pixel image is $n$ cells wide and $(n+7)$ cells high.

A border one cell thick is added around all four sides. The enlarged image, including the border, contains 198 cells.]
#diagram("new-border", width: 130mm)
#q[][(a) Form an equation in $n$.]
#work(height: 13mm, marks: 2)
#q[][(b) Find the dimensions of the original image. Justify your choice of solution.]
#work(height: 44mm, marks: 4, unit: "cells")
#newpage()
#section("Statistics & Probability", marks: 27)
#q[1.][The boxplots summarise a fictional benchmark. The same set of 20 tasks is run on each operating system.]
#diagram("new-boxplots", width: 168mm)
#q[][(a) Find the difference between the median Windows and Linux run times.]
#work(height: 4mm, marks: 1, unit: "seconds")
#q[][(b) Which of Linux and macOS has the smaller interquartile range? Show your calculations.]
#work(height: 10mm, marks: 2)
#q[][(c) Estimate the percentage of runs taking less than 30 seconds for:

macOS: ...................................... #h(8mm) Linux: ...................................... #h(1fr) \[2\]]
#q[][(d) Do the boxplots establish that every Linux run was faster than every Windows run? Give a reason.]
#space(height: 11mm, marks: 1)
#q[2.][Six values, written in ascending order, are
$ 2, quad 5, quad 7, quad 9, quad k, quad 15. $
Their mean is 8.]
#q[][(a) Find $k$.]
#work(height: 10mm, marks: 2, label: "k")
#q[][(b) The final value should have been 150, not 15. State the median before and after this correction, and explain your answer.]
#space(height: 12mm, marks: 2)
#newpage()
#section[Statistics & Probability continued]
#q[3.][Nine cards are labelled with programming languages:

4 Python cards, 3 Rust cards and 2 C cards.

Two cards are selected at random without replacement.]
#q[][(a) Draw a probability tree showing whether each selected card is Rust or not Rust. Label every branch with its probability.]
#space(height: 62mm, marks: 3)
#q[][(b) Calculate the probability that the two cards show the same programming language.]
#work(height: 29mm, marks: 3)
#q[][(c) Given that the cards show the same language, find the probability that both are Rust.]
#work(height: 24mm, marks: 2)
#q[][(d) The experiment is repeated 180 times, with all nine cards returned before each new pair is selected. Find the expected number of pairs showing the same language.]
#work(height: 13mm, marks: 1, unit: "pairs")
#newpage()
#section[Statistics & Probability continued]
#q[4.][The table records the build times for 72 Rust projects.]
#align(center)[#tbl((50mm, 30mm),
 [Build time, $t$ / seconds], [Frequency],
 [$0<t<=20$], [12],
 [$20<t<=40$], [18],
 [$40<t<=80$], [24],
 [$80<t<=140$], [18],
)]
#q[][Two students use the table to draw the diagrams below.]
#diagram("new-histogram-comparison", width: 180mm)
#q[][(a) Which diagram is a correct histogram? Justify your answer using bar areas.]
#space(height: 16mm, marks: 2)
#q[][(b) Estimate how many projects are represented by the darker shaded region in Diagram B. State the assumption used for your estimate.]
#work(height: 16mm, marks: 2, unit: "projects")
#q[][(c) Without assuming an even spread within classes, find the least and greatest possible numbers of projects with build times greater than 50 seconds.]
#work(height: 18mm, marks: 2)
#q[][(d) New caching halves every build time. State the new class interval and frequency density for the bar that originally represented $40<t<=80$.]
#work(height: 17mm, marks: 2)
#newpage()
#section("Trigonometry", marks: 13)
#q[1.][A triangle ABC has $A B=14$ cm, $A C=10$ cm and $angle A B C=35 degree$.

There are two possible positions for C, shown as C₁ and C₂.]
#diagram("new-ssa", width: 156mm)
#q[][(a) Find both possible values of angle ACB.]
#work(height: 43mm, marks: 3, unit: "°")
#q[][(b) For the triangle in which angle ACB is obtuse, calculate BC.]
#work(height: 45mm, marks: 2, label: "BC", unit: "cm")
#newpage()
#section[Trigonometry continued]
#q[2.][A, B and C lie on horizontal ground. A mast CD is vertical. The angle of elevation of D is $35 degree$ from A and $55 degree$ from B.

$A B=20$ m, $B C=x$ m and $C D=h$ m.]
#diagram("new-mast", width: 131mm)
#q[][(a) Express $h$ in terms of $x$, using the angle at B.]
#work(height: 14mm, marks: 1, label: "h")
#q[][(b) Use the angle at A to form an equation in $x$ only.]
#work(height: 25mm, marks: 1)
#q[][(c) Calculate the height of the mast.]
#work(height: 42mm, marks: 3, unit: "m")
#newpage()
#section[Trigonometry continued]
#q[3.][A delivery drone flies 8 km from A to B on a bearing of $040 degree$, then 6 km from B to C on a bearing of $100 degree$.

Calculate the direct distance from A to C.]
#diagram("new-bearings", width: 155mm)
#work(height: 58mm, marks: 3, label: "AC", unit: "km")
#newpage()
#section("Measurement", marks: 16)
#q[1.][A 3D-printed case is an open-topped rectangular box. Its external dimensions are 12 cm by 8 cm by 5 cm.

The four walls and the base are each 0.4 cm thick.]
#diagram("new-case", width: 153mm)
#q[][(a) Calculate the internal capacity of the case.]
#work(height: 25mm, marks: 3, unit: "cm³")
#q[][(b) Calculate the volume of material used to print the case.]
#work(height: 23mm, marks: 2, unit: "cm³")
#q[][(c) The printing material has density $1.24 "g/cm"^3$. Calculate the mass of the case.]
#work(height: 21mm, marks: 1, unit: "g")
#newpage()
#section[Measurement continued]
#q[2.][Two cooling ducts are geometrically similar. Their volumes are $216 "cm"^3$ and $729 "cm"^3$. The smaller duct is 8 cm high.]
#diagram("new-ducts", width: 153mm)
#q[][(a) Calculate the height of the larger duct.]
#work(height: 43mm, marks: 2, unit: "cm")
#q[][(b) An external surface on the smaller duct has area $96 "cm"^2$.

Calculate the area of the corresponding surface on the larger duct.]
#work(height: 45mm, marks: 2, unit: "cm²")
#newpage()
#section[Measurement continued]
#q[3.][A cylindrical canister has internal radius 3.0 cm, correct to the nearest 0.1 cm, and internal height 12 cm, correct to the nearest centimetre.]
#q[][(a) Write the bounds for the radius $r$ and height $h$.]
#work(height: 17mm, marks: 2)
#q[][(b) A seller claims that every canister with these measurements can hold at least $350 "cm"^3$.

Use a calculation to decide whether this claim is guaranteed.]
#work(height: 29mm, marks: 2)
#q[][(c) Use the stated values $r=3.0$ cm and $h=12$ cm for this part.

A solid cone has the same radius and height as the canister. The canister is filled with water and the cone is fully inserted, as shown. Water overflows.

Calculate the volume of water remaining inside the canister.]
#diagram("new-cone", width: 124mm)
#work(height: 28mm, marks: 2, unit: "cm³")
#newpage()
#section("Coordinate Geometry", marks: 12)
#q[1.][The diagram shows A $(-4,1)$, B $(4,5)$ and C $(6,1)$.]
#diagram("new-coordinate-triangle", width: 157mm)
#q[][(a) Show, using gradients, that AB is perpendicular to BC.]
#space(height: 36mm, marks: 3)
#q[][(b) Calculate the area of triangle ABC.]
#work(height: 26mm, marks: 2, unit: "units²")
#q[][(c) B is reflected in the line AC. Write the coordinates of its image.]
#work(height: 18mm, marks: 1)
#newpage()
#section[Coordinate Geometry continued]
#q[2.][The lines $L: y=2x+1$ and $M: y=-1/2 x+6$ intersect at P.

They meet the horizontal line $y=-3$ at A and B respectively. PK is perpendicular to AB.]
#diagram("new-line-regions", width: 150mm)
#q[][(a) Find the coordinates of P algebraically.]
#work(height: 28mm, marks: 2)
#q[][(b) Calculate the length AB.]
#work(height: 27mm, marks: 2, label: "AB", unit: "units")
#q[][(c) Find the ratio of the area of triangle APK to the area of triangle PKB. Give your answer in its simplest form.]
#work(height: 24mm, marks: 2)
#newpage()
#section("Graphs of Quadratic Functions", marks: 23)
#q[1.][The cross-section of an arch is modelled by a parabola. Its highest point is $(2,9)$ and it passes through $(0,5)$.

$y$ is the height in metres above the floor. $x$ is the horizontal position in metres relative to a reference post. Negative values of $x$ are positions west of the post.]
#diagram("new-arch", width: 151mm)
#q[][(a) Find the equation of the parabola in the form $y=a(x-h)^2+k$.]
#work(height: 22mm, marks: 3)
#q[][(b) Find the horizontal positions where the arch meets the floor.]
#work(height: 23mm, marks: 3, unit: "m")
#q[][(c) Find the interval of horizontal positions for which the arch is at least 8 m above the floor.]
#work(height: 27mm, marks: 3)
#newpage()
#section[Graphs of Quadratic Functions continued]
#q[2.][An AI program processes $n$ items in a batch. Its memory use, $M$, in megabytes, is modelled by
$ M=2n^2+6n+12. $
$n$ is a positive whole number.]
#q[][(a) Write $2n^2+6n+12$ in completed-square form.]
#work(height: 34mm, marks: 2)
#q[][(b) The program has 200 MB of memory available. Find the greatest number of items it can process in one batch. Show how your answer follows from the quadratic model.]
#work(height: 54mm, marks: 4, unit: "items")
#q[][(c) Describe the translation that maps the graph of $y=2x^2$ onto the graph of $y=2x^2+6x+12$.]
#space(height: 32mm, marks: 2)
#newpage()
#section[Graphs of Quadratic Functions continued]
#q[3.][The graph of $y=x^2-4x+1$ is drawn below.]
#q[][(a) On the same grid, draw the line $y=1-x$. #h(1fr) \[2\]]
#diagram("new-intersection", width: 165mm)
#q[][(b) Use the graph to estimate the coordinates of both intersection points.]
#work(height: 12mm, marks: 2)
#q[][(c) Verify the x-coordinates of the intersections algebraically.]
#space(height: 25mm, marks: 2)
#newpage()
#section("Geometry", marks: 13)
#q[1.][TA and TB are tangents to a circle with centre O. A and B are the points of contact. Angle AOB is $110 degree$.

C lies on the minor arc AB.]
#diagram("new-tangents", width: 158mm)
#q[][(a) Calculate angle OAB. Give a geometric reason.]
#space(height: 22mm, marks: 2)
#q[][(b) Calculate angle ATB. Give geometric reasons for your steps.]
#space(height: 25mm, marks: 3)
#q[][(c) Calculate angle ACB. Give a geometric reason.]
#space(height: 24mm, marks: 2)
#newpage()
#section[Geometry continued]
#q[2.][$arrow(O A)=bold(p)$ and $arrow(O B)=bold(q)$.

C lies on AB, with $A C:C B=2:1$.

D is defined by $arrow(O D)=2bold(q)-bold(p)$.]
#diagram("new-vector-line", width: 151mm)
#q[][(a) Find $arrow(O C)$ in terms of $bold(p)$ and $bold(q)$.]
#work(height: 22mm, marks: 2)
#q[][(b) Prove, using vectors, that A, C and D lie on one straight line.]
#space(height: 29mm, marks: 2)
#q[][(c) Find the ratio $A C:C D$ in its simplest form.]
#work(height: 22mm, marks: 2)
#v(1fr)
#align(center)[*End of Assessment*]
