#import "common.typ": *
#show: document-style
#set document(title: "10MAA Revision Examination 2026 Marking Schedule", author: "GPT-6.1 Sol")
#set text(size: 9.5pt)
#set par(leading: .45em)
#let band(title) = block(width: 100%, fill: rgb("d8d8d8"), inset: 5pt, above: 7pt, below: 0pt)[#align(center, text(font: "Liberation Sans", weight: "bold", size: 10pt, title))]
#let rows(..cells) = table(
  columns: (17mm, 97mm, 12mm, 58mm),
  stroke: .45pt,
  inset: (x: 4pt, y: 5pt),
  table.header(
    table.cell(fill: rgb("e2e2e2"))[*Question*],
    table.cell(fill: rgb("e2e2e2"))[*Working and answer*],
    table.cell(fill: rgb("e2e2e2"))[*Marks*],
    table.cell(fill: rgb("e2e2e2"))[*Comments*],
  ), ..cells)
#let mini(name, width: 81mm) = image("assets/" + name + ".svg", width: width)
#block(width: 100%, fill: rgb("ededed"), stroke: .45pt, inset: 8pt)[
  #align(center)[#text(font: "Liberation Sans", weight: "bold", size: 12pt)[GPT-6.1 Sol

  10MAA End of Year Revision Examination 2026

  Marking Schedule]]
]
*General comments*

Accept equivalent methods and exact answers unless a particular form or accuracy is requested. Award method marks for valid working. For questions worth more than one mark, an unsupported correct answer earns the final-answer mark only. Do not penalise the same arithmetic error twice; allow follow-through where the subsequent method is valid. Penalise incorrect rounding only once across the paper. Money is given to two decimal places.
#band[Algebraic Expressions & Equations • 34 marks]
#rows(
 [1.], [$8x-12=3x+23$ #linebreak() $5x=35$ #linebreak() $x=7$], [2], [1 for collecting terms. #linebreak() 1 for $x=7$.],
 [2.(a)], [$9-4t <= 3t+30$ #linebreak() $-7t <= 21$ #linebreak() $t >= -3$], [3], [1 for collecting terms. #linebreak() 1 for boundary $-3$. #linebreak() 1 for reversing the inequality.],
 [(b)], [Closed circle at $-3$; ray to the right.], [1], [Allow follow-through from part (a).],
 [3.], [$3(-3)^2-2(-2)(5)$ #linebreak() $=27+20=47$], [2], [1 for correct substitution. #linebreak() 1 for 47.],
 [4.(a)], [$(18p^7 q^3)/(6p^2 q)=3p^5 q^2$], [2], [1 for coefficient 3. #linebreak() 1 for both powers correct.],
 [(b)], [$(81k^8)^(3/4)=81^(3/4)k^6=27k^6$], [2], [1 for 27. #linebreak() 1 for $k^6$.],
 [5.(a)], [$6x^2-54=6(x^2-9)$ #linebreak() $=6(x-3)(x+3)$], [2], [1 for extracting 6. #linebreak() 1 for complete factorisation.],
 [(b)], [$(5(x+1)-2(x-2))/((x-2)(x+1))$ #linebreak() $=(3x+9)/((x-2)(x+1))$], [3], [1 for common denominator. #linebreak() 1 for correct numerator expansion. #linebreak() 1 for simplification. Accept $3(x+3)$ in numerator.],
 [6.], [$T^2=5r+4$ #linebreak() $r=(T^2-4)/5$], [2], [1 for squaring correctly. #linebreak() 1 for making $r$ the subject.],
 [7.], [$a+40b=86$, $a+70b=122$ #linebreak() $30b=36$, so $b=1.20$ and $a=38$ #linebreak() $a+100b=38+120=158$ #linebreak() *Cost = \$158.00*], [3], [1 for a valid pair of equations. #linebreak() 1 for $a$ or $b$. #linebreak() 1 for \$158.00.],
 [8.], [$1/2 (2x-1)(x+3)=30$ #linebreak() $2x^2+5x-63=0$ #linebreak() $(2x-9)(x+7)=0$ #linebreak() $x=-7$ or $x=4.5$ #linebreak() *$x=4.5$ cm*; reject $-7$ because it gives negative side lengths.], [4], [1 for area equation. #linebreak() 1 for quadratic equal to zero. #linebreak() 1 for both roots. #linebreak() 1 for 4.5 cm only, with a contextual reason for rejecting $-7$.],
)
#newpage()
#band[Algebraic Expressions & Equations continued]
#rows(
 [9.(a)], [$60/x$ minutes], [1], [Correct expression.],
 [(b)], [$60/(x+10)$ minutes], [1], [Correct expression.],
 [(c)], [$60/x-60/(x+10)=1$], [2], [1 for the difference of the two times in the correct order. #linebreak() 1 for equating to 1. Allow follow-through.],
 [(d)], [$60(x+10)-60x=x(x+10)$ #linebreak() $x^2+10x-600=0$ #linebreak() $(x+30)(x-20)=0$ #linebreak() $x=-30$ or $x=20$ #linebreak() *20 jobs per hour*. Reject $-30$ because a processing rate must be positive.], [4], [1 for eliminating denominators. #linebreak() 1 for the correct quadratic. #linebreak() 1 for solving it. #linebreak() 1 for 20 only, with a contextual reason for rejecting $-30$.],
)
#band[Statistics & Probability • 26 marks]
#rows(
 [1.(a)], [Mode $=2$ projects.], [1], [Correct answer.],
 [(b)], [The 15th and 16th values are both 2. #linebreak() Median $=2$ projects.], [1], [Correct answer.],
 [(c)], [$"Mean"=(0(3)+1(6)+2(10)+3(7)+4(4))/30$ #linebreak() $=63/30=2.1$ projects.], [2], [1 for weighted total or correct fraction. #linebreak() 1 for 2.1.],
 [2.], [$"Mean"=(12(8)+8(11)+5(14))/25$ #linebreak() $=254/25=10.16$ #linebreak() *10.2 seconds* to 3 significant figures.], [3], [1 for weighted totals. #linebreak() 1 for correct overall total and divisor. #linebreak() 1 for answer.],
 [3.], [Both $=24+19-(40-7)=10$. #linebreak() Python only $=14$; Rust only $=9$; neither $=7$. #linebreak() Exactly one $=14+9=23$ students.], [3], [1 for intersection 10. #linebreak() 1 for all four diagram regions correct. #linebreak() 1 for 23.],
 [4.(a)], [$36/100=9/25$], [1], [Accept any equivalent probability.],
 [(b)], [$24/30=4/5$], [1], [Denominator must represent macOS computers.],
 [(c)], [$(40+22-4)/100=58/100=29/50$], [1], [The overlap must be counted once.],
 [(d)], [$12/100 times 11/99=1/75$], [2], [1 for sampling without replacement, with both counts reduced for the second draw. #linebreak() 1 for final answer.],
)
#newpage()
#band[Statistics & Probability continued]
#rows(
 [5.(a)], [Cumulative frequencies: $16,48,104,144,160$.], [1], [All five correct.],
 [(b)], [Plot $(0,0),(20,16),(40,48),(60,104),$ #linebreak() $(80,144),(100,160)$ and join in order.], [2], [1 for correct upper-boundary points. #linebreak() 1 for an increasing curve or joined line segments. Allow follow-through from (a).],
 [(c)], [Upper quartile is the time at cumulative frequency $120$. #linebreak() $60+(120-104)/(144-104) times 20=68$ s.], [1], [Accept 66–70 s, or a consistent reading from the student's graph.],
 [6.(a)], [First check: Pass $3/5$; Fail $2/5$. #linebreak() After Pass: Pass $3/4$; Fail $1/4$. #linebreak() After Fail: Pass $1/2$; Fail $1/2$.], [3], [1 for each complete pair of branches.],
 [(b)], [$3/5 times 1/4+2/5 times 1/2$ #linebreak() $=3/20+1/5=7/20$], [2], [1 for a correct single-pass path. #linebreak() 1 for the sum $7/20$.],
 [(c)], [$P("second pass")=3/5 times 3/4+2/5 times 1/2$ #linebreak() $=9/20+4/20=13/20=0.65$ #linebreak() $0.65>0.5$, so the claim is correct.], [2], [1 for $13/20$. #linebreak() 1 for a comparison with $1/2$ and a correct conclusion.],
)
#band[Trigonometry • 12 marks]
#rows(
 [1.], [$tan 28 degree=h/36$ #linebreak() $h=36 tan 28 degree=19.1415...$ #linebreak() *19.1 m*], [2], [1 for a correct trigonometric equation. #linebreak() 1 for answer.],
 [2.(a)], [$cos angle Q P R=(80^2+120^2-60^2)/(2(80)(120))$ #linebreak() $=43/48$ #linebreak() $angle Q P R=26.3843... degree$ #linebreak() *26.4°*], [2], [1 for cosine rule with correct substitution. #linebreak() 1 for angle.],
 [(b)(i)], [$60 degree+26.3843... degree=86.3843... degree$ #linebreak() *086.4°*], [1], [Allow follow-through from (a).],
 [(ii)], [$86.3843... degree+180 degree=266.3843... degree$ #linebreak() *266.4°*], [1], [Allow follow-through from (b)(i).],
 [(c)], [$120 sin(86.3843... degree)=119.761...$ #linebreak() *$1.20 times 10^2$ km*], [2], [1 for $120 sin("bearing")$. #linebreak() 1 for answer. Accept 120 km.],
 [(d)], [$(R S)/(sin 42 degree)=60/(sin 73 degree)$ #linebreak() $R S=(60 sin 42 degree)/(sin 73 degree)=41.9825...$ #linebreak() *42.0 km*], [2], [1 for correct sine rule. #linebreak() 1 for answer.],
 [(e)], [$A=1/2(80)(120)sin(26.3843... degree)$ #linebreak() $=2133.0729...$ #linebreak() *$2.13 times 10^3 "km"^2$*], [2], [1 for correct area expression. #linebreak() 1 for answer. Use unrounded angles where possible.],
)
#newpage()
#band[Measurement • 14 marks]
#rows(
 [1.], [$0.48 times 100^2=4800 "cm"^2$], [1], [Correct answer.],
 [2.], [$A=24(10)-2 pi(3)^2=240-18pi$ #linebreak() $=183.451...$ #linebreak() *183 cm²* to the nearest cm².], [3], [1 for circle area using radius 3. #linebreak() 1 for subtracting both holes from 240. #linebreak() 1 for rounded answer.],
 [3.], [$(A C)/12=15/9$, so $A C=20$ cm. #linebreak() $B C=20-12=$ *8 cm*.], [2], [1 for a correct scale-factor equation. #linebreak() 1 for BC, not AC.],
 [4.(a)], [$V=pi(6)^2(20)=720pi$ #linebreak() *$2.26 times 10^3 "cm"^3$*], [1], [Accept $720pi "cm"^3$.],
 [(b)], [$V=4/3 pi(3)^3=36pi$ #linebreak() *113 cm³*], [1], [Accept $36pi "cm"^3$.],
 [(c)], [$"Available volume"=720pi-1800$ #linebreak() $"Number"=(720pi-1800)/(36pi)=4.0845...$ #linebreak() *4 spheres* can be added.], [2], [1 for the correct capacity calculation. #linebreak() 1 for rounding down to 4. Do not round volumes before dividing.],
 [5.], [$23.5 <= L < 24.5$, $0.795 <= p < 0.805$ #linebreak() Fewest panels: $ceil(23.5/0.805)=30$. #linebreak() Most panels: $ceil(24.5/0.795)=31$. #linebreak() Costs: \$975.00 and \$1007.50. #linebreak() Greatest difference: $(31-30) times 32.50=$ *\$32.50*.], [4], [1 for all length bounds. #linebreak() 1 for minimum 30 panels. #linebreak() 1 for maximum 31 panels. #linebreak() 1 for \$32.50. The limiting ratios give attainable integer counts despite the open upper bounds.],
)
#band[Coordinate Geometry • 11 marks]
#rows(
 [1.(a)], [$-2$], [1], [Correct gradient.],
 [(b)], [$4-2(15)=-26 != -24$. #linebreak() *No*, the point is not on L.], [2], [1 for substitution and value $-26$. #linebreak() 1 for conclusion.],
 [2.(a)], [$((-2+6)/2,(7+1)/2)=(2,4)$], [1], [Correct midpoint.],
 [(b)], [$A B=sqrt((6+2)^2+(1-7)^2)$ #linebreak() $=sqrt(64+36)=10$ units.], [2], [1 for correct distance expression. #linebreak() 1 for 10.],
 [(c)], [$m_(A B)=(1-7)/(6+2)=-3/4$ #linebreak() $m_("perpendicular")=4/3$ #linebreak() $y-4=4/3(x-2)$ #linebreak() $3y-12=4x-8$ #linebreak() *$4x-3y=-4$*], [5], [1 for gradient of AB. #linebreak() 1 for perpendicular gradient. #linebreak() 1 for line through midpoint $(2,4)$. #linebreak() 1 for correct rearrangement. #linebreak() 1 for the required integer form. Accept non-zero integer multiples.],
)
#newpage()
#band[Graphs of Quadratic Functions • 24 marks]
#rows(
 [1.(a)], [For $x=-2,-1,0,1,2,3$:

 $y=2,-2,-4,-4,-2,2$.], [2], [1 for at least three correct values. #linebreak() 2 for all six correct.],
 [(b)], [#mini("quadratic-answer")], [3], [1 for correct plotted points. #linebreak() 1 for domain $-2 <= x <= 3$ only. #linebreak() 1 for a smooth parabola. The full grid is shown; the curve must stop at $(-2,2)$ and $(3,2)$.],
 [2.(a)], [$f(x)=(x+2)^2-4$ #linebreak() Vertex $(-2,-4)$; x-intercepts $(-4,0),(0,0)$.], [3], [1 for vertex. #linebreak() 1 for both intercepts. #linebreak() 1 for upward parabola with correct shape and labels.],
 [(b)], [$g(x)=(x-1)^2-1$ #linebreak() Vertex $(1,-1)$; x-intercepts $(0,0),(2,0)$.], [3], [1 for vertex. #linebreak() 1 for a second correct point or both intercepts. #linebreak() 1 for correct curve and function label.],
 [(a), (b)], [#mini("transform-answer") #linebreak() Left vertex: $f$. Right vertex: $g$.], [—], [Reference sketches. Student sketches need not be to scale, but intercepts and vertices must agree with the formulae.],
 [(c)], [A *translation* 3 units to the right and 3 units up.], [2], [1 for each component with correct direction. The answer must identify a translation.],
)
#newpage()
#band[Graphs of Quadratic Functions continued]
#rows(
 [3.(a)], [$h(0)=1+4(0)-0^2=1$ #linebreak() *1 m*], [2], [1 for substituting $t=0$. #linebreak() 1 for answer.],
 [(b)], [$h(2)=1+4(2)-2^2=5$ #linebreak() *5 m*], [2], [1 for substitution. #linebreak() 1 for answer.],
 [(c)], [$0=1+4t-t^2$ #linebreak() $t^2-4t-1=0$ #linebreak() $t=(4 plus.minus sqrt(16+4))/2=2 plus.minus sqrt(5)$ #linebreak() $t=-0.236...$ or $t=4.236...$ #linebreak() *4.24 seconds*. The negative time is before launch and outside the model.], [3], [1 for the correct quadratic. #linebreak() 1 for solving it. #linebreak() 1 for the positive time only, with a reason for rejecting the negative time.],
 [(d)], [$2=1+4t-t^2$ #linebreak() $t^2-4t+1=0$ #linebreak() $t=(4 plus.minus sqrt(16-4))/2=2 plus.minus sqrt(3)$ #linebreak() *0.268 s and 3.73 s*. Both are after launch and before $2+sqrt(5)$ seconds.], [4], [1 for setting $h=2$. #linebreak() 1 for rearrangement. #linebreak() 1 for solving. #linebreak() 1 for both valid times. Neither root may be omitted.],
)
#band[Geometry • 14 marks]
#rows(
 [1.], [$angle A B C=180 degree-128 degree=52 degree$ #linebreak() $angle A C B=52 degree$ #linebreak() $e=180 degree-52 degree-52 degree=$ *76°*.], [4], [1 for interior angle 52°. #linebreak() 1 for straight-line reason. #linebreak() 1 for 76°. #linebreak() 1 for both remaining reasons: equal base angles in an isosceles triangle and triangle angle sum 180°.],
 [2.(a)], [$m=180 degree-110 degree=$ *70°*.], [2], [1 for 70°. #linebreak() 1 for opposite angles of a cyclic quadrilateral summing to 180°.],
 [(b)], [$angle A C B=180 degree-110 degree-35 degree=35 degree$ #linebreak() $j=180 degree-35 degree=$ *145°*.], [4], [1 for 35°. #linebreak() 1 for triangle angle sum. #linebreak() 1 for 145°. #linebreak() 1 for angles on a straight line. Accept a correct alternative method.],
 [3.(a)(i)], [$arrow(O M)=bold(p)+1/2 bold(q)$], [1], [Correct expression.],
 [(ii)], [$arrow(O N)=1/2 bold(p)+bold(q)$], [1], [Correct expression.],
 [(b)], [$arrow(M N)=arrow(O N)-arrow(O M)$ #linebreak() $=1/2(bold(q)-bold(p))$ #linebreak() $arrow(A C)=bold(q)-bold(p)$ #linebreak() Thus $arrow(M N)=1/2 arrow(A C)$, so $M N parallel A C$.], [2], [1 for $arrow(M N)$. #linebreak() 1 for comparison with $arrow(A C)$ and a valid parallel conclusion.],
)
#v(5mm)
#align(center)[*Total: 135 marks*]
