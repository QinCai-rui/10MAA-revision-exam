#import "common.typ": *
#show: document-style
#set document(title: "10MAA Revision Examination 2026 Marking Schedule", author: "GPT-6.1 Sol")
#set text(size: 9.5pt)
#set par(leading: .45em)
#let band(title) = block(width: 100%, fill: rgb("d8d8d8"), inset: 5pt, above: 7pt, below: 0pt)[#align(center, text(font: "Liberation Sans", weight: "bold", size: 10pt, title))]
#let rows(..cells) = table(columns: (17mm, 97mm, 12mm, 58mm), stroke: .45pt, inset: (x: 4pt, y: 5pt),
 table.header(
  table.cell(fill: rgb("e2e2e2"))[*Question*],
  table.cell(fill: rgb("e2e2e2"))[*Working and answer*],
  table.cell(fill: rgb("e2e2e2"))[*Marks*],
  table.cell(fill: rgb("e2e2e2"))[*Comments*],
 ), ..cells)
#let mini(name, width: 80mm) = image("assets/"+name+".svg", width: width)
#block(width: 100%, fill: rgb("ededed"), stroke: .45pt, inset: 8pt)[
 #align(center)[#text(font: "Liberation Sans", weight: "bold", size: 12pt)[GPT-6.1 Sol

 10MAA End of Year Revision Examination 2026

 Marking Schedule]]
]
*General comments*

Accept equivalent methods and exact answers unless a particular form or accuracy is requested. Require working for method marks. Correct algebraic expressions may themselves show the method. Allow follow-through where a subsequent method is valid. Do not penalise the same arithmetic error twice. Penalise incorrect rounding only once across the paper. Retain unrounded values in calculations.
#band[Algebraic Expressions & Equations • 31 marks]
#rows(
 [1.(a)], [$(x-4)^2=(x-4)(x-4)$ #linebreak() $=x^2-8x+16$], [2], [1 for two correct cross-products or equivalent expansion. #linebreak() 1 for final expression.],
 [(b)], [$(x^2-16)/(x-4)=((x-4)(x+4))/(x-4)=x+4$], [2], [1 for difference-of-squares factorisation. #linebreak() 1 for cancellation and $x+4$.],
 [(c)], [$x^2-8x+16=x^2+16$ #linebreak() $-8x=0$, so *$x=0$*.], [2], [1 for equating the correct expansion to the student's expression. #linebreak() 1 for 0.],
 [2.(a)], [$(16m^12)^(1/4)=2m^3$], [2], [1 for fourth root of 16. #linebreak() 1 for $m^3$.],
 [(b)], [$3^(2a) times 3^(3b)=3^22$ #linebreak() $2a+3b=22$, $a=b+1$ #linebreak() $2(b+1)+3b=22$ #linebreak() *$b=4$, $a=5$*.], [3], [1 for a common base. #linebreak() 1 for the equation in one variable. #linebreak() 1 for both values.],
 [3.(a)], [First differences: $7,11,15$. #linebreak() Second differences: $4,4$, which are constant.], [2], [1 for all first differences. #linebreak() 1 for second differences and conclusion.],
 [(b)], [$T=a n^2+b n+c$ #linebreak() $2a=4$, so $a=2$. #linebreak() $2+b+c=7$, $8+2b+c=14$ #linebreak() $b=1$, $c=4$ #linebreak() *$T=2n^2+n+4$*.], [3], [1 for quadratic coefficient 2. #linebreak() 1 for finding the remaining coefficients. #linebreak() 1 for the complete formula. Accept other valid methods.],
 [(c)], [$T(10)=2(100)+10+4=$ *214 ms*.], [1], [Allow follow-through from (b).],
 [4.(a)], [$p+r=20$ #linebreak() $3p+5r=78$], [2], [1 for each equation.],
 [(b)], [$3p+3r=60$ #linebreak() $2r=18$, so $r=9$ and $p=11$. #linebreak() *11 Python stickers and 9 Rust stickers*.], [2], [1 for valid elimination or substitution. #linebreak() 1 for both counts, correctly identified.],
)
#newpage()
#band[Algebraic Expressions & Equations continued]
#rows(
 [5.], [$2(3x-5)>5x+k$ gives $x>k+10$. #linebreak() True at $x=4$: $4>k+10$, so $k<-6$. #linebreak() False at $x=1$: $1<=k+10$, so $k>=-9$. #linebreak() Thus $-9<=k<-6$. #linebreak() *$k=-9,-8,-7$*.], [4], [1 for correct simplification or substitution at both test values. #linebreak() 1 for upper bound $k<-6$. #linebreak() 1 for lower bound $k>=-9$. #linebreak() 1 for the complete integer list.],
 [6.(a)], [The enlarged dimensions are $(n+2)$ and $(n+9)$. #linebreak() *$(n+2)(n+9)=198$*.], [2], [1 for both enlarged dimensions. #linebreak() 1 for the area equation.],
 [(b)], [$n^2+11n-180=0$ #linebreak() $(n+20)(n-9)=0$ #linebreak() $n=-20$ or $n=9$. #linebreak() Reject $-20$ because a cell count cannot be negative. #linebreak() Original dimensions: *9 cells by 16 cells*.], [4], [1 for the correct quadratic. #linebreak() 1 for solving it. #linebreak() 1 for selecting 9 with a contextual reason. #linebreak() 1 for both original dimensions.],
)
#band[Statistics & Probability • 27 marks]
#rows(
 [1.(a)], [$36-18=$ *18 seconds*.], [1], [Correct difference.],
 [(b)], [Linux: $22-16=6$ s. #linebreak() macOS: $30-20=10$ s. #linebreak() *Linux has the smaller interquartile range*.], [2], [1 for both interquartile ranges. #linebreak() 1 for comparison identifying Linux.],
 [(c)], [macOS: *approximately 75%*. #linebreak() Linux: *100%*.], [2], [1 for each. Accept a quartile-based estimate for macOS.],
 [(d)], [*No*. The slowest Linux run is 28 s, while the fastest Windows run is 20 s.], [1], [A valid comparison or counterexample is required. Merely stating that the median is lower does not establish the claim.],
 [2.(a)], [$2+5+7+9+k+15=6(8)$ #linebreak() $38+k=48$, so *$k=10$*.], [2], [1 for using total $=6 times "mean"$. #linebreak() 1 for 10.],
 [(b)], [Median before: $(7+9)/2=8$. #linebreak() Median after: *8*. #linebreak() Changing the largest value does not change the third and fourth values.], [2], [1 for both medians. #linebreak() 1 for explaining that the middle two values are unchanged.],
)
#newpage()
#band[Statistics & Probability continued]
#rows(
 [3.(a)], [First card: Rust $3/9$; not Rust $6/9$. #linebreak() After Rust: Rust $2/8$; not Rust $6/8$. #linebreak() After not Rust: Rust $3/8$; not Rust $5/8$.], [3], [1 for each complete pair of branches on a correctly structured two-stage tree. Accept simplified fractions.],
 [(b)], [$P("same")=4/9 times 3/8+3/9 times 2/8+2/9 times 1/8$ #linebreak() $=(12+6+2)/72=20/72=$ *$5/18$*.], [3], [1 for correct Python and Rust paths. #linebreak() 1 for the C path and addition of all three. #linebreak() 1 for $5/18$. Accept a combinations method.],
 [(c)], [$P("both Rust")=3/9 times 2/8=1/12$ #linebreak() $P("both Rust" | "same")=(1/12)/(5/18)=$ *$3/10$*.], [2], [1 for using the same-language event as the condition. #linebreak() 1 for $3/10$.],
 [(d)], [$180 times 5/18=$ *50 pairs*.], [1], [Allow follow-through from (b).],
 [4.(a)], [*Diagram B*. #linebreak() Its bar areas are $20(0.6)=12$, $20(0.9)=18$, $40(0.6)=24$, $60(0.3)=18$, so area represents frequency. #linebreak() In A, unequal class widths make the areas inconsistent with the frequencies.], [2], [1 for Diagram B. #linebreak() 1 for a correct area–frequency justification. Merely naming frequency density without explaining areas earns only the first mark.],
 [(b)], [$20(0.6)=$ *12 projects*. #linebreak() Assume build times are evenly spread within $40<t<=80$.], [2], [1 for 12. #linebreak() 1 for the uniform-within-class assumption.],
 [(c)], [All 18 projects in $80<t<=140$ exceed 50 s. Between 0 and 24 of the projects in $40<t<=80$ could exceed 50 s. #linebreak() *Least 18; greatest 42*.], [2], [1 for each bound. No within-class assumption is allowed here.],
 [(d)], [Let $u=t/2$. #linebreak() New class: *$20<u<=40$ seconds*. #linebreak() Frequency stays 24, while width becomes 20. #linebreak() New density: *$24/20=1.2$*.], [2], [1 for the halved interval. #linebreak() 1 for density 1.2, not 0.3. Accept the original variable name if the meaning is clear.],
)
#newpage()
#band[Trigonometry • 13 marks]
#rows(
 [1.(a)], [$(sin C)/14=(sin 35 degree)/10$ #linebreak() $sin C=1.4sin 35 degree=0.803007...$ #linebreak() $C=53.4182... degree$ or $180 degree-53.4182... degree$ #linebreak() *53.4° or 126.6°*.], [3], [1 for correct sine-rule equation. #linebreak() 1 for the acute value. #linebreak() 1 for the obtuse value.],
 [(b)], [$A=180 degree-35 degree-126.5818... degree$ #linebreak() $=18.4182... degree$ #linebreak() $(B C)/(sin A)=10/(sin 35 degree)$ #linebreak() $B C=5.50843...=$ *5.51 cm*.], [2], [1 for the correct remaining angle and sine-rule setup. #linebreak() 1 for BC. Allow a valid alternative method.],
 [2.(a)], [*$h=x tan 55 degree$*.], [1], [Correct expression.],
 [(b)], [*$x tan 55 degree=(x+20)tan 35 degree$*.], [1], [An equation in $x$ only is required.],
 [(c)], [$x(tan 55 degree-tan 35 degree)=20tan 35 degree$ #linebreak() $x=19.2380...$ #linebreak() $h=x tan 55 degree=27.4748...$ #linebreak() *27.5 m*.], [3], [1 for correctly isolating $x$. #linebreak() 1 for calculating $h$ from $x$. #linebreak() 1 for final height. Allow follow-through.],
 [3.], [Bearing of A from B is $220 degree$. #linebreak() $angle A B C=220 degree-100 degree=120 degree$. #linebreak() $A C^2=8^2+6^2-2(8)(6)cos 120 degree$ #linebreak() $A C=sqrt(148)=$ *12.2 km*.], [3], [1 for included angle 120°. #linebreak() 1 for cosine rule. #linebreak() 1 for distance.],
)
#band[Measurement • 16 marks]
#rows(
 [1.(a)], [Internal dimensions: $12-0.8=11.2$ cm, #linebreak() $8-0.8=7.2$ cm, $5-0.4=4.6$ cm. #linebreak() $V=11.2(7.2)(4.6)=370.944 "cm"^3$ #linebreak() *371 cm³*.], [3], [1 for reducing both horizontal dimensions by twice the wall thickness. #linebreak() 1 for internal height 4.6. #linebreak() 1 for capacity.],
 [(b)], [$V_("external")=12(8)(5)=480 "cm"^3$ #linebreak() $V_("material")=480-370.944=109.056 "cm"^3$ #linebreak() *109 cm³*.], [2], [1 for external volume minus internal capacity. #linebreak() 1 for material volume.],
 [(c)], [$"Mass"=109.056(1.24)=135.22944$ #linebreak() *135 g*.], [1], [Allow follow-through from (b).],
)
#newpage()
#band[Measurement continued]
#rows(
 [2.(a)], [$"Volume scale factor"=729/216=27/8$ #linebreak() $"Length scale factor"=root(3,27/8)=3/2$ #linebreak() $"Height"=8 times 3/2=$ *12 cm*.], [2], [1 for the cube root giving length scale factor 1.5. #linebreak() 1 for 12 cm.],
 [(b)], [$"Area scale factor"=(3/2)^2=9/4$ #linebreak() $"Area"=96 times 9/4=$ *216 cm²*.], [2], [1 for squaring the length scale factor. #linebreak() 1 for area.],
 [3.(a)], [*$2.95<=r<3.05$ cm*. #linebreak() *$11.5<=h<12.5$ cm*.], [2], [1 for each complete pair of bounds.],
 [(b)], [$V_("minimum")=pi(2.95)^2(11.5)$ #linebreak() $=314.406... "cm"^3<350 "cm"^3$. #linebreak() *The claim is not guaranteed*.], [2], [1 for a valid lower-bound capacity calculation. #linebreak() 1 for comparison with 350 and conclusion. An attainable counterexample is also valid.],
 [(c)], [$V_("water")=pi(3)^2(12)-1/3 pi(3)^2(12)$ #linebreak() $=108pi-36pi=72pi "cm"^3$ #linebreak() *226 cm³*.], [2], [1 for cylinder volume minus cone volume. #linebreak() 1 for $72pi$ or 226 cm³.],
)
#band[Coordinate Geometry • 12 marks]
#rows(
 [1.(a)], [$m_(A B)=(5-1)/(4-(-4))=1/2$ #linebreak() $m_(B C)=(1-5)/(6-4)=-2$ #linebreak() $m_(A B)m_(B C)=-1$, so $A B perp B C$.], [3], [1 for each gradient. #linebreak() 1 for product $-1$ and perpendicular conclusion.],
 [(b)], [AC is horizontal, with length $6-(-4)=10$. #linebreak() The perpendicular height from B is $5-1=4$. #linebreak() $A=1/2(10)(4)=$ *20 square units*.], [2], [1 for a valid base and height, or both perpendicular side lengths. #linebreak() 1 for area.],
 [(c)], [Reflection in $y=1$ gives *$(4,-3)$*.], [1], [Correct coordinates.],
 [2.(a)], [$2x+1=-1/2 x+6$ #linebreak() $5/2 x=5$, so $x=2$, $y=5$. #linebreak() *P $(2,5)$*.], [2], [1 for solving the simultaneous equations. #linebreak() 1 for both coordinates.],
 [(b)], [At A: $-3=2x+1$, so $x=-2$. #linebreak() At B: $-3=-1/2 x+6$, so $x=18$. #linebreak() $A B=18-(-2)=$ *20 units*.], [2], [1 for both x-coordinates. #linebreak() 1 for distance.],
 [(c)], [$A K=2-(-2)=4$, $K B=18-2=16$. #linebreak() The triangles have equal height PK. #linebreak() Area ratio $=4:16=$ *$1:4$*.], [2], [1 for correct bases and common-height reasoning, or correct individual areas 16 and 64. #linebreak() 1 for ratio $1:4$.],
)
#newpage()
#band[Graphs of Quadratic Functions • 23 marks]
#rows(
 [1.(a)], [$y=a(x-2)^2+9$ #linebreak() At $(0,5)$: $5=4a+9$, so $a=-1$. #linebreak() *$y=-(x-2)^2+9$*.], [3], [1 for the correct vertex form. #linebreak() 1 for substituting $(0,5)$ and finding $a$. #linebreak() 1 for the equation.],
 [(b)], [$0=-(x-2)^2+9$ #linebreak() $(x-2)^2=9$, so $x=2 plus.minus 3$. #linebreak() *$x=-1$ m and $x=5$ m*. #linebreak() Both are valid positions: 1 m west and 5 m east of the post.], [3], [1 for setting $y=0$ and rearranging. #linebreak() 1 for both roots. #linebreak() 1 for retaining and interpreting both positions. Accept $(-1,0)$ and $(5,0)$.],
 [(c)], [$-(x-2)^2+9>=8$ #linebreak() $(x-2)^2<=1$ #linebreak() *$1<=x<=3$*.], [3], [1 for the height inequality. #linebreak() 1 for boundary values 1 and 3. #linebreak() 1 for the correct closed interval between them.],
 [2.(a)], [$2(n^2+3n)+12$ #linebreak() $=2((n+3/2)^2-9/4)+12$ #linebreak() *$2(n+3/2)^2+15/2$*.], [2], [1 for the correct square term. #linebreak() 1 for constant $15/2$. Accept decimal equivalents.],
 [(b)], [$2n^2+6n+12<=200$ #linebreak() Boundary: $n^2+3n-94=0$. #linebreak() $n=(-3 plus.minus sqrt(385))/2$ #linebreak() $n=-11.3107...$ or $n=8.3107...$. #linebreak() Since $n$ is a positive whole number, *8 items*. #linebreak() Check: $M(8)=188<=200$; $M(9)=228>200$.], [4], [1 for the capacity inequality or boundary equation. #linebreak() 1 for solving the quadratic. #linebreak() 1 for applying the positive whole-number domain. #linebreak() 1 for 8, justified by the interval or the neighbouring memory values.],
 [(c)], [A *translation* $3/2$ units left and $15/2$ units up.], [2], [1 for each correctly directed component.],
)
#newpage()
#band[Graphs of Quadratic Functions continued]
#rows(
 [3.(a)], [#mini("new-intersection-answer")], [2], [1 for at least two correctly plotted points on $y=1-x$. #linebreak() 1 for a straight line through them across the grid.],
 [(b)], [*$(0,1)$ and $(3,-2)$*.], [2], [1 for each coordinate pair. Allow sensible graph-reading tolerance.],
 [(c)], [$x^2-4x+1=1-x$ #linebreak() $x^2-3x=0$ #linebreak() $x(x-3)=0$, so *$x=0$ or $x=3$*.], [2], [1 for equating the functions and rearranging. #linebreak() 1 for both roots.],
)
#band[Geometry • 38 marks]
#rows(
 [1.(a)], [$O A=O B$ because both are radii. #linebreak() $angle O A B=(180 degree-110 degree)/2=$ *35°*.], [2], [1 for 35°. #linebreak() 1 for equal base angles in an isosceles triangle and the triangle angle sum.],
 [(b)], [$angle O A T=angle O B T=90 degree$. #linebreak() $angle A T B=360 degree-110 degree-90 degree-90 degree$ #linebreak() *$angle A T B=70 degree$*.], [3], [1 for the radius–tangent right angles. #linebreak() 1 for using the angle sum of quadrilateral OATB. #linebreak() 1 for 70°.],
 [(c)], [C lies on the minor arc AB, so angle ACB subtends the major arc AB. #linebreak() The corresponding reflex central angle is $360 degree-110 degree=250 degree$. #linebreak() $angle A C B=1/2(250 degree)=$ *125°*.], [2], [1 for 125°. #linebreak() 1 for the angle at the circumference being half the central angle on the same arc, correctly using the major arc.],
 [2.(a)], [$arrow(A B)=bold(q)-bold(p)$ #linebreak() $arrow(O C)=bold(p)+2/3(bold(q)-bold(p))$ #linebreak() *$arrow(O C)=1/3 bold(p)+2/3 bold(q)$*.], [2], [1 for the correct fraction of AB. #linebreak() 1 for OC.],
 [(b)], [$arrow(A C)=2/3(bold(q)-bold(p))$ #linebreak() $arrow(A D)=(2bold(q)-bold(p))-bold(p)$ #linebreak() $=2(bold(q)-bold(p))=3arrow(A C)$. #linebreak() The vectors share starting point A and are parallel, so A, C and D are collinear.], [2], [1 for a correct comparison of AC and AD. #linebreak() 1 for the common-starting-point collinearity conclusion.],
 [(c)], [$arrow(C D)=arrow(A D)-arrow(A C)=2arrow(A C)$ #linebreak() *$A C:C D=1:2$*.], [2], [1 for CD being twice AC. #linebreak() 1 for ratio $1:2$.],
)
#include "vectors_extra_schedule.typ"
