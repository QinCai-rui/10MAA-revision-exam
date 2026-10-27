"""Original diagrams for the replacement paper, not edited past-paper figures."""
import math
from make_assets import SVG, OUT, grid

def arrow(s,a,b,width=1.6):
    s.line(a,b,width=width)
    dx,dy=b[0]-a[0],b[1]-a[1]
    length=math.hypot(dx,dy);ux,uy=dx/length,dy/length
    s.poly([b,(b[0]-9*ux+4*uy,b[1]-9*uy-4*ux),(b[0]-9*ux-4*uy,b[1]-9*uy+4*ux)],fill='#111',width=0)

# Pixel border. The labels refer to the original image, not its enlarged dimensions.
s=SVG(560,330)
s.poly([(190,15),(355,15),(355,285),(190,285)],fill='#e3e3e3')
s.poly([(205,30),(340,30),(340,270),(205,270)],fill='white')
s.text(272.5,150,'Original image',19)
s.text(272.5,260,'n cells',18)
s.line((348,155),(410,155));s.text(445,160,'1 cell',15)
s.items.append('<text x="165" y="150" text-anchor="middle" font-family="Liberation Serif" font-size="18" transform="rotate(-90 165 150)">(n + 7) cells</text>')
s.text(470,315,'Not to scale',14)
s.save('new-border.svg')

s=SVG(650,270)
L,R=130,610
def bx(x):return L+x/70*(R-L)
for name,y,values in [('Linux',45,(12,16,18,22,28)),('macOS',110,(16,20,25,30,42)),('Windows',175,(20,30,36,44,65))]:
    lo,q1,med,q3,hi=values
    s.text(105,y+6,name,20,anchor='end')
    s.line((bx(lo),y),(bx(q1),y));s.line((bx(q3),y),(bx(hi),y))
    for x in [lo,hi]:s.line((bx(x),y-10),(bx(x),y+10))
    s.poly([(bx(q1),y-18),(bx(q3),y-18),(bx(q3),y+18),(bx(q1),y+18)],fill='white')
    s.line((bx(med),y-18),(bx(med),y+18),width=2.8)
s.line((L,225),(R,225))
for x in range(0,71,2):
    s.line((bx(x),225),(bx(x),232 if x%10==0 else 229),width=1)
    if x%10==0:s.text(bx(x),250,str(x),16)
s.text((L+R)/2,269,'Run time (seconds)',18)
s.save('new-boxplots.svg')

def histogram(name,complete=False):
    s=SVG(640,365);L,R,T,B=65,610,35,310
    def p(x,y):return L+x/140*(R-L),B-y*(B-T)
    for x in range(0,141,4):s.line(p(x,0),p(x,1),width=.4,color='#dedede')
    for i in range(51):
        y=i/50;s.line(p(0,y),p(140,y),width=.4,color='#dedede')
    for x in range(0,141,20):
        s.line(p(x,0),p(x,1),width=.65,color='#b6b6b6');s.text(p(x,0)[0],332,str(x),14)
    for i in range(6):
        y=i/5;s.line(p(0,y),p(140,y),width=.65,color='#b6b6b6')
        s.text(L-12,p(0,y)[1]+5,f'{y:g}',14,anchor='end')
    bars=[(0,20,.6),(20,40,.9),(40,80,.6),(80,140,.3)]
    for lo,hi,height in bars if complete else bars[:1]:
        s.poly([p(lo,0),p(hi,0),p(hi,height),p(lo,height)],fill='#ddd',width=1.6)
    s.line(p(0,0),p(140,0));s.line(p(0,0),p(0,1))
    s.text(L,20,'Frequency density',17,anchor='start');s.text((L+R)/2,361,'Build time (seconds)',17)
    s.save(name)
histogram('new-histogram.svg')
histogram('new-histogram-answer.svg',True)

# Competing histograms for an error-analysis and transformation question.
s=SVG(1240,400)
def histogram_panel(offset, maximum, heights, title, axis_label, shade=False):
    L,R,T,B=offset+65,offset+590,55,335
    def p(x,y):return L+x/140*(R-L),B-y/maximum*(B-T)
    for x in [0,20,40,60,80,100,120,140]:
        s.line(p(x,0),p(x,maximum),width=.5,color='#d8d8d8')
        s.text(p(x,0)[0],361,str(x),20)
    divisions=3 if maximum==30 else 5
    for i in range(divisions+1):
        y=maximum*i/divisions
        s.line(p(0,y),p(140,y),width=.5,color='#d8d8d8')
        s.text(L-10,p(0,y)[1]+6,f'{y:g}',20,anchor='end')
    for (lo,hi),height in zip([(0,20),(20,40),(40,80),(80,140)],heights):
        s.poly([p(lo,0),p(hi,0),p(hi,height),p(lo,height)],fill='#e5e5e5',width=1.8)
    if shade:
        s.poly([p(60,0),p(80,0),p(80,.6),p(60,.6)],fill='#b8b8b8',width=1)
    s.line(p(0,0),p(140,0));s.line(p(0,0),p(0,maximum))
    s.text((L+R)/2,24,title,26)
    s.text(L,44,axis_label,20,anchor='start')
    s.text((L+R)/2,394,'Build time (seconds)',22)
histogram_panel(0,30,[12,18,24,18],'Diagram A','Frequency')
histogram_panel(620,1,[.6,.9,.6,.3],'Diagram B','Frequency density',True)
s.save('new-histogram-comparison.svg')

# The two SSA triangles are constructed from the actual intersections.
s=SVG(600,330)
A=(120,285);B=(456,285);scale=24
delta=math.sqrt(10**2-(14*math.sin(math.radians(35)))**2)
points=[]
for distance in [14*math.cos(math.radians(35))-delta,14*math.cos(math.radians(35))+delta]:
    points.append((B[0]-scale*distance*math.cos(math.radians(35)),B[1]-scale*distance*math.sin(math.radians(35))))
near,far=points
s.line(A,B);s.line(B,far);s.line(A,near);s.line(A,far)
s.arc(B,54,180,215,'35°')
s.text(A[0]-10,A[1]+23,'A');s.text(B[0]+15,B[1]+18,'B')
s.text(near[0]+7,near[1]-13,'C₁');s.text(far[0]-10,far[1]-15,'C₂')
s.text((A[0]+B[0])/2,319,'14 cm')
s.text((A[0]+near[0])/2, (A[1]+near[1])/2-12,'10 cm',17)
s.text(far[0]-36,(A[1]+far[1])/2,'10 cm',17)
s.text(462,32,'Not to scale',15)
s.save('new-ssa.svg')

s=SVG(520,300)
A=(70,250);B=(230,250);C=(383.904,250);D=(383.904,30.202)
s.line(A,C);s.line(C,D);s.line(A,D);s.line(B,D)
s.poly([(C[0]-15,C[1]),(C[0]-15,C[1]-15),(C[0],C[1]-15)])
s.arc(A,65,-35,0,'35°')
s.arc(B,55,-55,0,'55°')
for p,t,dx,dy in [(A,'A',0,25),(B,'B',0,25),(C,'C',10,25),(D,'D',10,-12)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(150,290,'20 m');s.text(307,290,'x m');s.text(407,145,'h m',18,anchor='start')
s.text(180,30,'Not to scale',15)
s.save('new-mast.svg')

s=SVG(620,400)
A=(90,335);B=(90+29*8*math.sin(math.radians(40)),335-29*8*math.cos(math.radians(40)))
C=(B[0]+29*6*math.sin(math.radians(100)),B[1]-29*6*math.cos(math.radians(100)))
s.line(A,B);s.line(B,C);s.line(A,C,dash=True)
for p in [A,B]:
    s.line(p,(p[0],p[1]-105),dash=True)
    s.text(p[0],p[1]-114,'N',16)
s.arc(A,48,-90,-50,'040°');s.arc(B,42,-90,10,'100°')
for p,t,dx,dy in [(A,'A',-20,12),(B,'B',-15,-10),(C,'C',15,10)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(136,246,'8 km');s.text(330,151,'6 km');s.text(483,382,'Not to scale',15)
s.save('new-bearings.svg')

# Oblique projection of the open box, including the cavity and all four rim faces.
s=SVG(620,370)
def boxpt(x,y,z):return (100+20*x+12*y,320-18*y-20*z)
outer_top=[boxpt(0,0,5),boxpt(12,0,5),boxpt(12,8,5),boxpt(0,8,5)]
inner_top=[boxpt(.4,.4,5),boxpt(11.6,.4,5),boxpt(11.6,7.6,5),boxpt(.4,7.6,5)]
inner_floor=[boxpt(.4,.4,.4),boxpt(11.6,.4,.4),boxpt(11.6,7.6,.4),boxpt(.4,7.6,.4)]
s.poly(inner_top,fill='white')
s.poly([inner_top[3],inner_top[2],inner_floor[2],inner_floor[3]],fill='#ededed')
s.poly([inner_top[0],inner_top[3],inner_floor[3],inner_floor[0]],fill='#f6f6f6')
s.poly([inner_top[1],inner_top[2],inner_floor[2],inner_floor[1]],fill='#e5e5e5')
s.poly(inner_floor,fill='white')
s.poly([boxpt(0,0,0),boxpt(12,0,0),boxpt(12,0,5),boxpt(0,0,5)],fill='#eee')
s.poly([boxpt(12,0,0),boxpt(12,8,0),boxpt(12,8,5),boxpt(12,0,5)],fill='#ddd')
for i in range(4):
    j=(i+1)%4
    s.poly([outer_top[i],outer_top[j],inner_top[j],inner_top[i]],fill='#ccc')
s.text(220,346,'12 cm');s.text(444,260,'8 cm');s.text(458,127,'5 cm',anchor='start')
s.line((285,78),(315,35));s.text(326,34,'0.4 cm walls and base',17,anchor='start')
s.text(495,365,'Not to scale',15)
s.save('new-case.svg')

s=SVG(600,260)
def duct(x,y,scale):
    pts=[(x,y),(x+55*scale,y-50*scale),(x+120*scale,y-28*scale),(x+120*scale,y+65*scale),(x+65*scale,y+90*scale),(x,y+55*scale)]
    s.poly(pts,fill='white');s.line(pts[0],pts[4]);s.line(pts[1],(x+65*scale,y+38*scale));s.line((x+65*scale,y+38*scale),pts[2]);s.line((x+65*scale,y+38*scale),pts[4])
duct(90,110,.85);duct(330,95,1.275)
s.text(142,243,'216 cm³');s.text(405,243,'729 cm³')
s.text(65,150,'8 cm',16,anchor='end');s.text(468,30,'Not to scale',15)
s.save('new-ducts.svg')

s=SVG(600,290)
cx,top,bottom,rx,ry=300,65,230,100,25
s.items.append('<ellipse cx="300" cy="65" rx="100" ry="25" fill="none" stroke="#111" stroke-width="1.7"/>')
s.line((200,65),(200,230));s.line((400,65),(400,230))
s.items.append('<path d="M 200 230 A 100 25 0 0 0 400 230" fill="none" stroke="#111" stroke-width="1.7"/>')
s.line((200,230),(300,65));s.line((400,230),(300,65))
s.items.append('<ellipse cx="300" cy="230" rx="100" ry="25" fill="none" stroke="#111" stroke-width="1.2" stroke-dasharray="5 4"/>')
s.line((300,65),(400,65),dash=True);s.text(351,30,'3.0 cm',18)
s.text(430,151,'12 cm',18,anchor='start');s.text(470,280,'Not to scale',15)
s.save('new-cone.svg')

s=SVG(610,300)
L,R,T,B=70,560,25,250
def cpt(x,y,L=L,R=R,T=T,B=B):return L+(x+6)/14*(R-L),B-(y+4)/11*(B-T)
arrow(s,cpt(-6,0),cpt(8,0));arrow(s,cpt(0,-4),cpt(0,7))
for x in range(-6,9,2):
    p=cpt(x,0);s.line((p[0],p[1]-4),(p[0],p[1]+4));
    if x:s.text(p[0],p[1]+20,str(x),14)
for y in range(-4,8,2):
    p=cpt(0,y);s.line((p[0]-4,p[1]),(p[0]+4,p[1]));
    if y:s.text(p[0]-10,p[1]+4,str(y),14,anchor='end')
A,B,C=cpt(-4,1),cpt(4,5),cpt(6,1)
s.poly([A,B,C]);s.text(A[0]-12,A[1]-16,'A (−4, 1)',17,anchor='end');s.text(B[0],B[1]-12,'B (4, 5)',17);s.text(C[0]+12,C[1]+4,'C (6, 1)',17,anchor='start')
s.text(583,cpt(8,0)[1]+6,'x',17);s.text(cpt(0,7)[0]+18,26,'y',17)
s.save('new-coordinate-triangle.svg')

s=SVG(620,300)
P=(195,45);A=(105,245);B=(555,245);K=(195,245)
s.line((91.5,275),(208.5,15));s.line((141,15),(591,265));s.line((65,245),(595,245));s.line(P,K,dash=True)
for p,t,dx,dy in [(P,'P',-18,-25),(A,'A',-25,24),(B,'B',5,25),(K,'K',10,25)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(126,145,'L',19);s.text(410,150,'M',19);s.text(470,236,'y = −3',18);s.text(485,30,'Not to scale',15)
s.save('new-line-regions.svg')

s=SVG(620,300)
L,R,T,B=70,575,22,260
def ap(x,y):return L+(x+2)/8*(R-L),B-(y+1)/12*(B-T)
arrow(s,ap(-2,0),ap(6,0));arrow(s,ap(0,-1),ap(0,11))
pts=[ap(-1+6*i/300,-((-1+6*i/300)-2)**2+9) for i in range(301)]
s.items.append('<polyline points="'+' '.join(f'{x},{y}' for x,y in pts)+'" fill="none" stroke="#111" stroke-width="2"/>')
for x,y,label,dx,dy in [(2,9,'(2, 9)',10,-12),(0,5,'(0, 5)',-20,-10)]:
    p=ap(x,y);s.circle(*p,3,fill='#111',width=0);s.text(p[0]+dx,p[1]+dy,label,18,anchor='end' if dx<0 else 'start')
s.text(ap(0,0)[0]-15,ap(0,0)[1]+20,'O',17);s.text(590,ap(6,0)[1]+5,'x',18);s.text(ap(0,11)[0]+15,23,'y',18)
s.text(478,49,'Not to scale',15)
s.save('new-arch.svg')

grid('new-intersection.svg',-1,5,-4,7,h=510,curve=[(lambda x:x*x-4*x+1,-1,5)])
grid('new-intersection-answer.svg',-1,5,-4,7,h=510,curve=[(lambda x:x*x-4*x+1,-1,5),(lambda x:1-x,-1,5)])

s=SVG(600,330)
O=(210,165);r=120
A=(O[0]+r*math.cos(math.radians(55)),O[1]-r*math.sin(math.radians(55)))
B=(A[0],O[1]+r*math.sin(math.radians(55)))
C=(O[0]+r,O[1]);T=(O[0]+r/math.cos(math.radians(55)),O[1])
s.circle(*O,r);s.line(O,A);s.line(O,B);s.line(A,B);s.line(A,T);s.line(B,T);s.line(A,C);s.line(B,C)
s.arc(O,20,-55,55,'110°')
for p,t,dx,dy in [(O,'O',-18,5),(A,'A',-1,-17),(B,'B',-2,25),(C,'C',14,5),(T,'T',18,5)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(465,30,'Not to scale',15)
s.save('new-tangents.svg')

s=SVG(600,300)
O=(70,55);A=(140,245);B=(300,155);C=(246.667,185);D=(460,65)
# D is exactly A + 2(B-A); use y=65 consistently.
s.poly([O,A,B]);s.line(B,D);s.line(O,D,dash=True)
for p,t,dx,dy in [(O,'O',-15,-12),(A,'A',-5,25),(B,'B',4,-15),(C,'C',0,23),(D,'D',16,0)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(83,157,'p',20,italic=True);s.text(191,87,'q',20,italic=True);s.text(468,283,'Not to scale',15)
s.save('new-vector-line.svg')
print('Created replacement-paper diagrams')
