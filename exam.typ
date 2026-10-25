#import "common.typ": *
#show: document-style
#set document(title: "10MAA Revision Examination 2026", author: "GPT-6.1 Sol")
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
  [Algebraic Expressions & Equations], [/34],
  [Statistics & Probability], [/26],
  [Trigonometry], [/12],
  [Measurement], [/14],
  [Coordinate Geometry], [/11],
  [Graphs of Quadratic Functions], [/24],
  [Geometry], [/14],
  [*Total*], [#strong[/135]],
)
#v(1fr)
#grid(columns: (1fr, auto), align: (left, right + bottom),
  text(size: 8pt)[Independent revision paper],
  [#image("assets/openai.svg", height: 8mm) #h(2mm) #text(font: "Liberation Sans", size: 12pt)[OpenAI]],
)
#newpage()
#section[Useful Formulae]
#v(1mm)
*The Quadratic Formula*
$ x = (-b plus.minus sqrt(b^2 - 4a c))/(2a) $
#v(3mm)
*Volume of a cylinder*
$ V = pi r^2 h $
#v(3mm)
*Volume of a sphere*
$ V = 4/3 pi r^3 $
#v(3mm)
*The Cosine Rule*
$ a^2 = b^2 + c^2 - 2b c cos A $
#v(3mm)
*The Sine Rule*
$ a/(sin A) = b/(sin B) = c/(sin C) $
#v(3mm)
*The Area of a Triangle*
$ A = 1/2 a b sin C $
#v(3mm)
*The midpoint of a line segment*
$ ((x_1 + x_2)/2, (y_1 + y_2)/2) $
#v(3mm)
*Distance*
$ sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $
#v(3mm)
*Gradient of a line*
$ m = (y_2 - y_1)/(x_2 - x_1) $
#v(3mm)
*Equation of a line*
$ y-y_1 = m(x-x_1) $
#v(3mm)
*Perpendicular criteria*
$ m_1 m_2 = -1 $
For lines with defined gradients.
#newpage()
#section("Algebraic Expressions & Equations", marks: 34)
#q[1.][Solve $4(2x-3)=3x+23$.]
#work(height: 29mm, marks: 2, label: "x")
#q[2.][(a) Solve the inequality $9-4t <= 3t+30$.]
#work(height: 32mm, marks: 3)
#q[][(b) Represent your solution to part (a) on the number line.]
#v(7mm)
#diagram("numberline", width: 163mm)
#space(height: 4mm, marks: 1)
#q[3.][Find the value of $3a^2-2b c$ when $a=-3$, $b=-2$ and $c=5$.]
#work(height: 30mm, marks: 2)
#newpage()
#section[Algebraic Expressions & Equations continued]
#q[4.][Simplify fully. Assume all variables in this question are positive.]
#q[][(a) $ (18p^7 q^3)/(6p^2 q) $]
#work(height: 28mm, marks: 2)
#q[][(b) $ (81k^8)^(3/4) $]
#work(height: 29mm, marks: 2)
#q[5.][(a) Factorise completely $6x^2-54$.]
#work(height: 29mm, marks: 2)
#q[][(b) Express $5/(x-2)-2/(x+1)$ as a single fraction in its simplest form.]
#work(height: 38mm, marks: 3)
#newpage()
#section[Algebraic Expressions & Equations continued]
#q[6.][Make $r$ the subject of $T=sqrt(5r+4)$.]
#work(height: 24mm, marks: 2, label: "r")
#q[7.][An AI service charges a fixed monthly fee of \$#h(0pt)$a$ and \$#h(0pt)$b$ per batch of requests.

One month, 40 batches cost \$86. Another month, 70 batches cost \$122.

Find the cost of 100 batches in one month.]
#work(height: 33mm, marks: 3, label: "Cost", unit: "dollars")
#q[8.][The diagram shows a right-angled triangular support for a computer stand. Its area is $30 "cm"^2$.

Find the value of $x$.]
#diagram("algebra-triangle", width: 107mm)
#work(height: 30mm, marks: 4, label: "x", unit: "cm")
#newpage()
#section[Algebraic Expressions & Equations continued]
#q[9.][In a fictional benchmark, a Windows computer completes $x$ identical jobs each hour. A Linux computer completes $(x+10)$ jobs each hour.

Both computers work at constant rates.]
#q[][(a) Write an expression for the time, in minutes, that Windows takes to complete one job.]
#work(height: 15mm, marks: 1, unit: "minutes")
#q[][(b) Write an expression for the time, in minutes, that Linux takes to complete one job.]
#work(height: 15mm, marks: 1, unit: "minutes")
#q[][(c) Linux takes 1 minute less per job than Windows. Form an equation in $x$.]
#work(height: 22mm, marks: 2)
#q[][(d) Solve your equation to find the number of jobs Windows completes each hour.]
#work(height: 44mm, marks: 4, unit: "jobs per hour")
#newpage()
#section("Statistics & Probability", marks: 26)
#q[1.][The table shows the number of programming projects completed by 30 students.]
#align(center)[#tbl((47mm, 14mm, 14mm, 14mm, 14mm, 14mm),
  [Projects], [0], [1], [2], [3], [4],
  [Number of students], [3], [6], [10], [7], [4],
)]
#q[][(a) Find the mode.]
#work(height: 9mm, marks: 1)
#q[][(b) Find the median.]
#work(height: 12mm, marks: 1)
#q[][(c) Calculate the mean.]
#work(height: 22mm, marks: 2)
#q[2.][The table gives results from a fictional test of the same program.]
#align(center)[#tbl((42mm, 38mm, 48mm),
  [Operating system], [Number of runs], [Mean run time / seconds],
  [Linux], [12], [8],
  [macOS], [8], [11],
  [Windows], [5], [14],
)]
#q[][Calculate the mean run time for all 25 runs.]
#work(height: 27mm, marks: 3, unit: "seconds")
#newpage()
#section[Statistics & Probability continued]
#q[3.][Of 40 students, 24 use Python, 19 use Rust, and 7 use neither language.

Complete the Venn diagram and find the number who use exactly one of the two languages.]
#diagram("venn", width: 145mm)
#work(height: 10mm, marks: 3, unit: "students")
#q[4.][A club tests 100 computers. Each computer either passes or fails a compatibility check.]
#align(center)[#tbl((40mm, 23mm, 23mm, 23mm),
  [], [Pass], [Fail], [Total],
  [Linux], [36], [4], [40],
  [macOS], [24], [6], [30],
  [Windows], [18], [12], [30],
  [Total], [78], [22], [100],
)]
#q[][(a) Find the probability that a randomly selected computer uses Linux and passes.]
#work(height: 5mm, marks: 1)
#q[][(b) Given that a computer uses macOS, find the probability that it passes.]
#work(height: 5mm, marks: 1)
#q[][(c) Find the probability that a randomly selected computer uses Linux or fails.]
#work(height: 8mm, marks: 1)
#q[][(d) Two computers are selected at random without replacement. Find the probability that both are Windows computers that fail.]
#work(height: 11mm, marks: 2)
#newpage()
#section[Statistics & Probability continued]
#q[5.][The table shows the times taken by an AI system to answer 160 prompts.]
#align(center)[#tbl((42mm, 23mm, 47mm),
  [Time, $t$ / seconds], [Frequency], [Cumulative frequency],
  [$0 < t <= 20$], [16], [],
  [$20 < t <= 40$], [32], [],
  [$40 < t <= 60$], [56], [],
  [$60 < t <= 80$], [40], [],
  [$80 < t <= 100$], [16], [],
)]
#q[][(a) Complete the cumulative frequency column. #h(1fr) \[1\]]
#q[][(b) Draw a cumulative frequency graph on the grid. #h(1fr) \[2\]]
#diagram("cf-grid", width: 168mm)
#q[][(c) Use your graph to estimate the upper quartile of the response times.]
#work(height: 9mm, marks: 1, unit: "seconds")
#newpage()
#section[Statistics & Probability continued]
#q[6.][AI-generated programs are put through two checks.

The probability that a program passes the first check is $3/5$.

If it passes the first check, the probability that it passes the second is $3/4$.

If it fails the first check, it is repaired. The probability that a repaired program passes the second check is $1/2$.]
#q[][(a) Complete the probability tree.]
#diagram("tree", width: 158mm)
#space(height: 0mm, marks: 3)
#q[][(b) Find the probability that a program passes exactly one check.]
#work(height: 21mm, marks: 2)
#q[][(c) A student claims that more than half of all programs pass the second check. Use probabilities to decide whether the claim is correct.]
#work(height: 24mm, marks: 2)
#newpage()
#section("Trigonometry", marks: 12)
#q[1.][A camera is directly above point C. Point A is 36 m from C on horizontal ground. The angle of elevation of the camera from A is $28 degree$.

Calculate the height $h$ of the camera above C.]
#diagram("elevation", width: 138mm)
#work(height: 24mm, marks: 2, label: "h", unit: "m")
#q[2.][Three relay stations P, Q and R form a triangle.

$P Q=80$ km, $Q R=60$ km and $P R=120$ km. The bearing of Q from P is $060 degree$. R lies clockwise from Q when viewed from P, as shown.]
#diagram("bearings", width: 135mm)
#q[][(a) Calculate angle QPR.]
#work(height: 17mm, marks: 2, unit: "°")
#newpage()
#section[Trigonometry continued]
#q[2.][(b) Find the bearing of:

(i) R from P,]
#work(height: 15mm, marks: 1, unit: "°")
#q[][(ii) P from R.]
#work(height: 15mm, marks: 1, unit: "°")
#q[][(c) Calculate how far R is east of P.]
#work(height: 29mm, marks: 2, unit: "km")
#q[][(d) A fourth station S is on the opposite side of QR from P. In triangle QRS, angle RQS is $42 degree$ and angle QSR is $73 degree$.

Calculate the distance RS.]
#work(height: 32mm, marks: 2, label: "RS", unit: "km")
#q[][(e) Calculate the area of triangle PQR.]
#work(height: 28mm, marks: 2, unit: "km²")
#newpage()
#section("Measurement", marks: 14)
#q[1.][Convert $0.48 "m"^2$ into $"cm"^2$.]
#work(height: 12mm, marks: 1, unit: "cm²")
#q[2.][A rectangular computer panel is 24 cm long and 10 cm wide. Two circular holes, each of diameter 6 cm, are cut out.]
#diagram("plate", width: 132mm)
#q[][Calculate the area of the remaining panel. Give your answer to the nearest $"cm"^2$.]
#work(height: 20mm, marks: 3, unit: "cm²")
#q[3.][In triangle ADC, B lies on AC and E lies on AD, with $B E parallel C D$.

$A B=12$ cm, $B E=9$ cm and $C D=15$ cm. Calculate BC.]
#diagram("similar", width: 123mm)
#work(height: 17mm, marks: 2, label: "BC", unit: "cm")
#newpage()
#section[Measurement continued]
#q[4.][A cylindrical container has internal radius 6 cm and height 20 cm. Solid metal spheres each have radius 3 cm.]
#diagram("solids", width: 155mm)
#q[][(a) Calculate the volume of the cylinder.]
#work(height: 28mm, marks: 1, unit: "cm³")
#q[][(b) Calculate the volume of one sphere.]
#work(height: 28mm, marks: 1, unit: "cm³")
#q[][(c) The cylinder initially contains $1800 "cm"^3$ of water. The spheres are lowered into it one at a time and become fully submerged.

Find the greatest number of spheres that can be added without water overflowing. Ignore the volume of any supports.]
#work(height: 43mm, marks: 2, unit: "spheres")
#newpage()
#section[Measurement continued]
#q[5.][A school installs a straight row of acoustic panels in a computer room.

The required row length is 24 m, correct to the nearest metre.

Each panel is 0.80 m long, correct to the nearest centimetre.

The panels must cover at least the required length. Only complete panels may be bought, and there are no gaps or overlaps. A panel may extend beyond the end of the row.

Each panel costs \$32.50.

Find the greatest possible difference between the total costs of the panels needed. Show your working clearly.]
#work(height: 110mm, marks: 4, label: "Difference", unit: "dollars")
#newpage()
#section("Coordinate Geometry", marks: 11)
#q[1.][Line L has equation $y=4-2x$.]
#q[][(a) State the gradient of L.]
#work(height: 9mm, marks: 1)
#q[][(b) Does the point $(15,-24)$ lie on L? Give a reason.]
#work(height: 17mm, marks: 2)
#q[2.][A has coordinates $(-2,7)$ and B has coordinates $(6,1)$.]
#q[][(a) Find the midpoint of AB.]
#work(height: 14mm, marks: 1)
#q[][(b) Calculate the length of AB.]
#work(height: 22mm, marks: 2, unit: "units")
#q[][(c) Find the equation of the perpendicular bisector of AB. Give your answer in the form $p x+q y=r$, where $p$, $q$ and $r$ are integers.]
#work(height: 43mm, marks: 5)
#newpage()
#section("Graphs of Quadratic Functions", marks: 24)
#q[1.][(a) Complete the table of values for $y=x^2-x-4$.]
#align(center)[#tbl((14mm, 17mm, 17mm, 17mm, 17mm, 17mm, 17mm),
  [$x$], [-2], [-1], [0], [1], [2], [3],
  [$y$], [], [], [], [], [], [],
)]
#space(height: 1mm, marks: 2)
#q[][(b) Draw the graph of $y=x^2-x-4$ for $-2 <= x <= 3$ on the grid.]
#diagram("quadratic-grid", width: 167mm)
#space(height: 1mm, marks: 3)
#newpage()
#section[Graphs of Quadratic Functions continued]
#q[2.][(a) On the grid, sketch $f(x)=(x+2)^2-4$. Clearly label its vertex and both x-intercepts.]
#q[][(b) On the same grid, sketch $g(x)=(x-1)^2-1$. Clearly label its vertex. Label each curve with its function name.]
#diagram("transform-grid", width: 167mm)
#align(right)[(a) \[3\] #h(8mm) (b) \[3\]]
#q[][(c) Describe fully the transformation that maps the graph of $f$ onto the graph of $g$.]
#space(height: 32mm, marks: 2)
#newpage()
#section[Graphs of Quadratic Functions continued]
#q[3.][A small robot launches a foam ball. Its height $h$ metres above the floor is modelled by
$ h=1+4t-t^2, $
where $t$ is the time in seconds after launch. The model applies from launch until the ball first reaches the floor.]
#q[][(a) Find the height at launch.]
#work(height: 12mm, marks: 2, unit: "m")
#q[][(b) Calculate the height after 2 seconds.]
#work(height: 15mm, marks: 2, unit: "m")
#q[][(c) Find the time when the ball reaches the floor.]
#work(height: 27mm, marks: 3, unit: "seconds")
#q[][(d) Find all the times, within the stated model, when the ball is 2 m above the floor.]
#work(height: 33mm, marks: 4, unit: "seconds")
#newpage()
#section("Geometry", marks: 14)
#q[1.][ABC is an isosceles triangle with $A B=A C$. D, B and C lie on a straight line. Angle DBA is $128 degree$.

Find angle $e$. Give geometric reasons for each step.]
#diagram("isosceles", width: 151mm)
#space(height: 74mm, marks: 4)
#newpage()
#section[Geometry continued]
#q[2.][ABCD is a cyclic quadrilateral. B, C and E lie on a straight line.

Angle ABC is $110 degree$ and angle BAC is $35 degree$.]
#diagram("cyclic", width: 151mm)
#q[][(a) Calculate angle $m=angle A D C$. Give a geometric reason.]
#space(height: 35mm, marks: 2)
#q[][(b) Calculate angle $j=angle A C E$. Give geometric reasons for your steps.]
#space(height: 47mm, marks: 4)
#newpage()
#section[Geometry continued]
#q[3.][OABC is a parallelogram. M is the midpoint of AB, and N is the midpoint of BC.

$arrow(O A)=bold(p)$ and $arrow(O C)=bold(q)$.]
#diagram("vectors", width: 148mm)
#q[][(a) Find, in terms of $bold(p)$ and $bold(q)$:

(i) $arrow(O M)$,]
#work(height: 12mm, marks: 1)
#q[][(ii) $arrow(O N)$.]
#work(height: 12mm, marks: 1)
#q[][(b) Use a vector method to prove that MN is parallel to AC.]
#space(height: 29mm, marks: 2)
#v(1fr)
#align(center)[*End of Assessment*]
