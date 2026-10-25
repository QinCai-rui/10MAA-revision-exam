#import "common.typ": *
#let band(title) = block(width: 100%, fill: rgb("d8d8d8"), inset: 5pt, above: 7pt, below: 0pt)[#align(center, text(font: "Liberation Sans", weight: "bold", size: 10pt, title))]
#let rows(..cells) = table(columns: (17mm, 97mm, 12mm, 58mm), stroke: .45pt, inset: (x: 4pt, y: 5pt),
 table.header(
  table.cell(fill: rgb("e2e2e2"))[*Question*],
  table.cell(fill: rgb("e2e2e2"))[*Working and answer*],
  table.cell(fill: rgb("e2e2e2"))[*Marks*],
  table.cell(fill: rgb("e2e2e2"))[*Comments*],
 ), ..cells)
#newpage()
#band[Geometry continued • additional vector questions]
#rows(
 [3.(a)], [$arrow(O P)=2/3 bold(p)$ #linebreak() $arrow(O Q)=2/3 bold(q)$], [2], [1 for each vector.],
 [(b)], [$arrow(O R)=1/2(arrow(O A)+arrow(O Q))$ #linebreak() $=1/2 bold(p)+1/3 bold(q)$ #linebreak() $arrow(O S)=1/2(arrow(O B)+arrow(O P))$ #linebreak() $=1/3 bold(p)+1/2 bold(q)$], [2], [1 for each midpoint position vector. Accept equivalent unsimplified expressions.],
 [(c)], [$arrow(R S)=arrow(O S)-arrow(O R)$ #linebreak() $=1/6(bold(q)-bold(p))$ #linebreak() $arrow(A B)=bold(q)-bold(p)$ #linebreak() Thus $arrow(R S)=1/6 arrow(A B)$. #linebreak() *$R S parallel A B$ and $R S:A B=1:6$*.], [2], [1 for the correct vector RS. #linebreak() 1 for comparison with AB, the parallel conclusion and ratio $1:6$.],
 [4.(a)], [$arrow(P Q)=1/2 bold(a)+1/2 bold(b)$ #linebreak() $arrow(S R)=1/2 bold(a)+1/2 bold(b)$], [2], [1 for each vector. Direction SR, not RS, is required.],
 [(b)], [$arrow(P Q)=arrow(S R)$, so PQ and SR have equal length and are parallel in the same direction. #linebreak() One pair of opposite sides of PQRS is equal and parallel. #linebreak() *PQRS is a parallelogram*.], [2], [1 for the directed-vector comparison. #linebreak() 1 for the correct parallelogram criterion and conclusion.],
 [(c)], [From A: #linebreak() $arrow(A P)=1/2 bold(a)$, $arrow(A R)=1/2 bold(a)+bold(b)$; #linebreak() midpoint of PR has vector $1/2 bold(a)+1/2 bold(b)$. #linebreak() $arrow(A Q)=bold(a)+1/2 bold(b)$, $arrow(A S)=1/2 bold(b)$; #linebreak() midpoint of QS has vector $1/2 bold(a)+1/2 bold(b)$. #linebreak() Since $arrow(A C)=bold(a)+bold(b)$, both are the midpoint of AC.], [2], [1 for the midpoint of PR. #linebreak() 1 for the midpoint of QS and comparison with the midpoint of AC. A statement that diagonals bisect each other without the requested position-vector working is insufficient.],
)
#newpage()
#band[Geometry continued • additional vector questions]
#rows(
 [5.(a)], [$arrow(A P)=bold(a)+2/5(bold(b)-bold(a))$ #linebreak() $=3/5 bold(a)+2/5 bold(b)$ #linebreak() $arrow(B Q)=-bold(a)+4/5 bold(b)$], [2], [1 for each vector.],
 [(b)], [$arrow(A T)=k(3/5 bold(a)+2/5 bold(b))$ #linebreak() $arrow(A T)=bold(a)+m(-bold(a)+4/5 bold(b))$ #linebreak() Comparing coefficients: #linebreak() *$3/5 k=1-m$* and *$2/5 k=4/5 m$*.], [2], [1 for each correct coefficient equation, supported by the two vector expressions. Allow follow-through from (a).],
 [(c)], [$m=k/2$ #linebreak() $3/5 k=1-k/2$, so $11/10 k=1$. #linebreak() $k=10/11$, so $A T=10/11 A P$ and $T P=1/11 A P$. #linebreak() *$A T:T P=10:1$*.], [2], [1 for $k=10/11$. #linebreak() 1 for ratio $10:1$, not $10:11$.],
 [6.(a)], [$arrow(O B)=2bold(a)+bold(b)$ #linebreak() $arrow(A C)=-6bold(a)+bold(b)$], [2], [1 for each vector.],
 [(b)], [$arrow(O X)=s(2bold(a)+bold(b))$ #linebreak() $arrow(O X)=6bold(a)+t(-6bold(a)+bold(b))$ #linebreak() Coefficients of $bold(a)$: $2s=6-6t$. #linebreak() Coefficients of $bold(b)$: $s=t$. #linebreak() $8s=6$, hence *$s=t=3/4$*.], [3], [1 for each coefficient equation derived from the two vector routes. #linebreak() 1 for solving and stating both parameters.],
 [(c)], [$arrow(O X)=3/2 bold(a)+3/4 bold(b)$. #linebreak() As $M N parallel O A$, $arrow(O M)=3/4 bold(b)$. #linebreak() Therefore *$arrow(M X)=3/2 bold(a)$*. #linebreak() On AB, write $arrow(O N)=6bold(a)+u(-4bold(a)+bold(b))$. #linebreak() Its $bold(b)$ coefficient is $3/4$, so $u=3/4$ and $arrow(O N)=3bold(a)+3/4 bold(b)$. #linebreak() Therefore *$arrow(X N)=3/2 bold(a)$*. #linebreak() Since $arrow(M X)=arrow(X N)$, *X is the midpoint of MN*.], [2], [1 for MX. #linebreak() 1 for XN with a valid midpoint conclusion. Accept an equivalent method using segment ratios.],
)
#v(5mm)
#align(center)[*Total: 160 marks*]
