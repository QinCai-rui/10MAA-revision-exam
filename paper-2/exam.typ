#import "common.typ": *
#import "cover-brand.typ": cover-brand
#show: document-style
#set document(title: "10MAA Revision Examination Paper 2", author: "GPT-6.1 Terra")
#align(center)[
  #cover-brand()
  #v(1mm)
  #text(size: 11pt, weight: "bold")[GPT-6.1 TERRA]
  #v(3mm)
  #text(size: 20pt, weight: "bold")[10MAA]
  #v(1mm)
  #text(size: 21pt)[End of Year Revision Examination 2026]
  #v(1mm)
  #text(size: 13pt, weight: "bold")[Paper 2]
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
#table(columns: (76mm, 24mm), stroke: .5pt, inset: 4pt, align: (left, right),
 [*Topic*], table.cell(align: left)[*Mark*], [Number], [/12], [Algebraic Expressions & Equations], [/32], [Statistics & Probability], [/26], [Trigonometry], [/16], [Measurement], [/15], [Coordinate Geometry], [/11], [Graphs of Quadratic Functions], [/20], [Geometry], [/20], [*Total*], [#strong[/152]])
#v(1fr)
#text(size: 8pt)[Independent revision paper]
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
#section("Number", marks: 12)
#q[1.][A laptop's price is increased by 15% to $\$1,380$. Find its price before the increase.]
#work(height: 26mm, marks: 3)
#q[2.][A savings account contains $\$2,400$. It earns 4% compound interest per year. Find the balance after 3 years.]
#work(height: 25mm, marks: 3)
#q[3.][Write $0.dot(3)dot(6)$ as a fraction in its simplest form. Show your method.]
#work(height: 25mm, marks: 3)
#q[4.][A program processes $3.2 times 10^6$ records per hour. How many records does it process in 15 minutes? Give your answer in standard form.]
#work(height: 23mm, marks: 3)
#section("Algebra", marks: 32)
#q[1.][Solve $5x-7=2x+11$.]
#work(height: 13mm, marks: 2)
#q[2.][Solve $3(2t-1)>4t+7$.]
#work(height: 16mm, marks: 2)
#newpage()
#section[Algebra continued]
#q[3.][Simplify $((4a^3 b^2)(3a^2))/(6a b)$, where $a b != 0$.]
#work(height: 15mm, marks: 2)
#q[4.][Expand and simplify $(x-5)(x+3)$.]
#work(height: 14mm, marks: 2)
#q[5.][Factorise fully $6x^2-24$.]
#work(height: 15mm, marks: 2)
#q[6.][Simplify fully $(x^2-9)/(x^2+5x+6)$, stating the values of $x$ excluded by the original expression.]
#work(height: 25mm, marks: 3)
#q[7.][Make $h$ the subject of $A=2pi r(r+h)$, where $r>0$.]
#work(height: 19mm, marks: 2)
#q[8.][A coding club buys 18 stickers. Linux stickers cost \$2 each and AI stickers cost \$3 each. The total cost is \$43. Find the number of each kind. Show your equations.]
#work(height: 33mm, marks: 4)
#q[9.][Solve $x^2-7x+10=0$.]
#work(height: 21mm, marks: 3)
#newpage()
#section[Algebra continued]
#q[10.][A script processes $x$ files per minute. An improved script processes $(x+4)$ files per minute. Each processes 120 files. The improved script takes 1 minute less.]
#q[][(a) Write an equation in $x$ describing this information.]
#work(height: 17mm, marks: 2)
#q[][(b) Solve your equation to find $x$. Explain why any unsuitable solution is rejected.]
#work(height: 40mm, marks: 3)
#q[11.][A quadratic sequence starts $3, 8, 15, 24, 35, ...$. Find an expression for its $n$th term.]
#work(height: 23mm, marks: 3)
#q[12.][Write $x^2-6x+2$ in completed square form.]
#work(height: 18mm, marks: 2)
#newpage()
#section("Statistics and probability", marks: 26)
#q[1.][A test recorded these build times in seconds: $4, 5, 5, 7, 9, 12, 14$.]
#q[][(a) Find the median and the mean.]
#work(height: 17mm, marks: 3)
#q[][(b) The slowest result was actually 21 seconds. State the new median and explain your answer.]
#work(height: 15mm, marks: 2)
#q[2.][The five-number summary of the build times, in seconds, for 20 Linux computers is: minimum 4, lower quartile 6, median 8, upper quartile 11, maximum 16.]
#q[][(a) Draw a box plot for these data on a labelled scale.]
#work(height: 30mm, marks: 3)
#q[][(b) Find the interquartile range and explain what it measures.]
#work(height: 18mm, marks: 2)
#q[3.][Of 50 programmers, 30 use Linux, 27 use Python, and 5 use neither.]
#q[][(a) Find how many use both. You may draw a Venn diagram.]
#work(height: 25mm, marks: 3)
#q[][(b) A programmer is chosen at random from those who use Linux. Find the probability that they also use Python.]
#work(height: 15mm, marks: 2)
#newpage()
#section[Statistics and probability continued]
#q[4.][A security test contains 5 safe and 3 malicious sample files. Two are selected at random without replacement.]
#q[][(a) Find the probability that both are malicious.]
#work(height: 17mm, marks: 2)
#q[][(b) Find the probability that exactly one is malicious.]
#work(height: 25mm, marks: 3)
#q[][(c) Given that exactly one is malicious, find the probability that the first file selected was malicious.]
#work(height: 20mm, marks: 2)
#q[5.][A grouped table records response times $t$ in seconds.]
#align(center, tbl((38mm, 38mm, 38mm, 38mm), [$0<t<=10$], [$10<t<=20$], [$20<t<=40$], [$40<t<=60$], [4], [8], [12], [6]))
#q[][(a) Estimate the mean response time.]
#work(height: 20mm, marks: 3)
#q[][(b) Find the frequency density for $20<t<=40$.]
#work(height: 10mm, marks: 1)
#newpage()
#section("Trigonometry", marks: 16)
#q[1.][A cable runs from the top of a 12 m mast to a point 9 m from its base on level ground.]
#diagram("mast", width: 132mm)
#q[][(a) Find the cable's length.]
#work(height: 20mm, marks: 2, grow: 1)
#q[][(b) Find the angle the cable makes with the ground.]
#work(height: 20mm, marks: 2, grow: 1)
#newpage()
#section[Trigonometry continued]
#q[2.][A robot travels 8 km due east from $A$ to $B$, then 6 km on a bearing of $030 degree$ from $B$ to $C$.]
#diagram("bearings", width: 145mm)
#q[][(a) Find angle $A B C$.]
#work(height: 13mm, marks: 2, grow: .7)
#q[][(b) Calculate the distance $A C$.]
#work(height: 24mm, marks: 3, grow: 1.2)
#q[][(c) Calculate the area of triangle $A B C$.]
#work(height: 20mm, marks: 3, grow: 1)
#newpage()
#section[Trigonometry continued]
#q[3.][(a) Sketch $y=sin theta$ for $0 degree<=theta<=360 degree$. Label the axes and the coordinates of the intercepts and turning points.]
#work(height: 70mm, marks: 3)
#q[][(b) Use the graph to solve $sin theta=0.5$ for $0 degree<=theta<=360 degree$.]
#work(height: 20mm, marks: 1)
#section("Measurement", marks: 15)
#q[1.][Two similar solid cones have heights 6 cm and 15 cm. The smaller cone has volume $40 "cm"^3$. Find the volume of the larger cone.]
#work(height: 30mm, marks: 3)
#newpage()
#section[Measurement continued]
#q[2.][A cylindrical server cooling tank has radius 0.4 m and height 1.2 m.]
#diagram("cylinder", width: 120mm)
#q[][(a) Calculate its volume in cubic metres.]
#work(height: 16mm, marks: 2, grow: .8)
#q[][(b) One litre is $1000 "cm"^3$. Find the capacity of the tank in litres.]
#work(height: 18mm, marks: 2, grow: .8)
#newpage()
#section[Measurement continued]
#q[3.][A rectangular metal plate measures 20 cm by 12 cm. Two circular holes, each of radius 3 cm, are cut from it. Find the remaining area, to the nearest square centimetre.]
#diagram("plate", width: 135mm)
#work(height: 25mm, marks: 3, grow: 1.2)
#q[4.][A rectangular device case is 15 cm long and 8 cm wide, each correct to the nearest centimetre.]
#q[][(a) State the lower and upper bounds for its length.]
#work(height: 15mm, marks: 2, grow: .6)
#q[][(b) Find the greatest possible area to which the case's top can be arbitrarily close.]
#work(height: 18mm, marks: 3, grow: .8)
#newpage()
#section("Coordinate geometry", marks: 11)
#q[1.][The points $A=(-2,3)$ and $B=(4,7)$.]
#q[][(a) Find the gradient of $A B$.]
#work(height: 15mm, marks: 2)
#q[][(b) Find the midpoint of $A B$.]
#work(height: 15mm, marks: 1)
#q[][(c) Find the length of $A B$, giving an exact answer.]
#work(height: 18mm, marks: 2)
#q[][(d) Find the equation of the perpendicular bisector of $A B$ in the form $y=m x+c$.]
#work(height: 28mm, marks: 4)
#q[2.][Determine whether $(10, -3)$ lies on $y=2x-23$. Give a reason.]
#work(height: 16mm, marks: 2)
#newpage()
#section("Quadratic functions", marks: 20)
#q[1.][Let $f(x)=x^2-2x-3$.]
#q[][(a) Complete the table.]
#align(center, tbl((24mm,24mm,24mm,24mm,24mm,24mm,24mm), [$x$], [$-2$], [$-1$], [$0$], [$1$], [$2$], [$3$], [$f(x)$], [], [], [], [], [], []))
#align(right)[\[2\]]
#q[][(b) On the axes below, plot these points and draw a smooth curve for $-2<=x<=3$.]
#align(center, image("assets/quadratic-grid.svg", width: 140mm))
#align(right)[\[3\]]
#newpage()
#section[Quadratic functions continued]
#q[][(c) Find the coordinates of the turning point of $f$.]
#work(height: 16mm, marks: 2)
#q[][(d) Solve $f(x)=0$ algebraically.]
#work(height: 20mm, marks: 2)
#q[][(e) Describe the transformation mapping $y=x^2$ to $y=(x-1)^2-4$.]
#work(height: 17mm, marks: 2)
#q[2.][The height $h$ metres of a drone above level ground after $t$ seconds is modelled by $h=(t+1)(7-t)$ for $0<=t<=7$.]
#q[][(a) Find its height at $t=0$.]
#work(height: 13mm, marks: 1)
#q[][(b) When does the drone reach the ground?]
#work(height: 13mm, marks: 1)
#q[][(c) Find its maximum height and the time at which this occurs.]
#work(height: 26mm, marks: 3)
#q[][(d) Find both times when the drone is 12 m above the ground.]
#work(height: 30mm, marks: 4)
#newpage()
#section("Geometry", marks: 20)
#q[1.][In triangle $A B C$, $A B=A C$ and angle $B A C=38 degree$. Find angle $A B C$, giving a geometric reason.]
#diagram("isosceles", width: 135mm)
#work(height: 19mm, marks: 2)
#q[2.][Quadrilateral $P Q R S$ is cyclic. Angle $P Q R=112 degree$.]
#diagram("cyclic", width: 140mm)
#q[][(a) Find angle $P S R$, giving a reason.]
#work(height: 18mm, marks: 2)
#q[][(b) Side $S R$ is extended beyond $R$ to $T$. Find angle $Q R T$ if angle $Q P S=74 degree$. Give reasons.]
#work(height: 22mm, marks: 2)
#newpage()
#section[Geometry continued]
#q[3.][Draw two points $A$ and $B$ 6 cm apart. Using a ruler and compasses, construct the locus of points equidistant from $A$ and $B$. Leave your construction arcs visible.]
#work(height: 60mm, marks: 3)
#q[4.][In triangle $O M N$, $arrow(O M)=bold(p)$ and $arrow(O N)=bold(q)$. $P$ is the midpoint of $O M$, and $Q$ is the midpoint of $O N$.]
#diagram("vectors", width: 140mm)
#q[][(a) Express $arrow(M N)$ in terms of $bold(p)$ and $bold(q)$.]
#work(height: 14mm, marks: 1)
#q[][(b) Express $arrow(P Q)$ in terms of $bold(p)$ and $bold(q)$.]
#work(height: 18mm, marks: 2)
#q[][(c) Prove that $P Q$ is parallel to $M N$ and half its length.]
#work(height: 25mm, marks: 3)
#newpage()
#section[Geometry continued]
#q[5.][In triangle $O M N$, $arrow(O M)=bold(p)$ and $arrow(O N)=bold(q)$. $P$ and $Q$ are the midpoints of $O M$ and $O N$ respectively. A point $R$ has position vector $arrow(O R)=1/3 bold(p)+1/3 bold(q)$.]
#q[][The position of $R$ is not shown on the diagram.]
#diagram("vectors", width: 140mm)
#q[][(a) Find $arrow(P R)$ in terms of $bold(p)$ and $bold(q)$.]
#work(height: 24mm, marks: 2, grow: .8)
#q[][(b) Show that $R$ lies on $P N$, and find the ratio $P R:R N$.]
#work(height: 35mm, marks: 3, grow: 1.2)
#align(center)[*End of assessment*]
