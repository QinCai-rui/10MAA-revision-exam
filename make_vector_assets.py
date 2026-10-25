"""Vector-geometry diagrams for the expanded paper."""
from make_assets import SVG

def midpoint(a,b):
    return ((a[0]+b[0])/2,(a[1]+b[1])/2)

def along(a,b,t):
    return (a[0]+t*(b[0]-a[0]),a[1]+t*(b[1]-a[1]))

def point_label(s,p,label,dx=0,dy=0):
    s.circle(*p,2.6,fill='#111',width=0)
    s.text(p[0]+dx,p[1]+dy,label,19)

s=SVG(600,300)
O,A,B=(70,240),(490,240),(190,35)
P,Q=along(O,A,2/3),along(O,B,2/3)
R,S=midpoint(A,Q),midpoint(B,P)
s.poly([O,A,B]);s.line(A,Q);s.line(B,P);s.line(R,S,width=2.3)
for p,label,dx,dy in [(O,'O',-16,21),(A,'A',16,21),(B,'B',0,-15),(P,'P',0,24),(Q,'Q',-20,0),(R,'R',18,-6),(S,'S',-35,-10)]:
    point_label(s,p,label,dx,dy)
s.text(485,287,'Not to scale',15)
s.save('vectors-trisection.svg')

s=SVG(620,315)
A,B,C,D=(80,250),(420,250),(520,50),(180,50)
P,Q,R,S=midpoint(A,B),midpoint(B,C),midpoint(C,D),midpoint(D,A)
s.poly([A,B,C,D]);s.poly([P,Q,R,S]);s.line(A,C,dash=True,color='#777',width=1.3)
for p,label,dx,dy in [(A,'A',-15,21),(B,'B',16,21),(C,'C',15,-10),(D,'D',-12,-12),(P,'P',0,24),(Q,'Q',22,5),(R,'R',0,-13),(S,'S',-22,5)]:
    point_label(s,p,label,dx,dy)
s.text(480,298,'Not to scale',15)
s.save('vectors-midpoint-parallelogram.svg')

s=SVG(620,325)
A,B,C=(70,260),(520,260),(220,35)
P,Q=along(B,C,2/5),along(A,C,4/5)
T=along(A,P,10/11)
s.poly([A,B,C]);s.line(A,P);s.line(B,Q)
for p,label,dx,dy in [(A,'A',-16,22),(B,'B',16,22),(C,'C',0,-15),(P,'P',19,-8),(Q,'Q',-20,-5),(T,'T',-15,25)]:
    point_label(s,p,label,dx,dy)
s.text(485,309,'Not to scale',15)
s.save('vectors-cevians.svg')

s=SVG(630,330)
O,A,B,C=(70,270),(550,270),(310,50),(150,50)
X=along(O,B,3/4);M=along(O,C,3/4);N=along(A,B,3/4)
s.poly([O,A,B,C]);s.line(O,B);s.line(A,C);s.line(M,N,width=2)
for p,label,dx,dy in [(O,'O',-16,22),(A,'A',16,22),(B,'B',14,-13),(C,'C',-14,-13),(X,'X',0,25),(M,'M',-22,4),(N,'N',22,4)]:
    point_label(s,p,label,dx,dy)
s.text(310,305,'6a',19,italic=True);s.text(230,32,'2a',19,italic=True);s.text(83,164,'b',19,italic=True)
s.text(497,322,'Not to scale',15)
s.save('vectors-trapezium.svg')
print('Created four additional vector diagrams')
