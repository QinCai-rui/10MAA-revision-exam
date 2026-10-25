from pathlib import Path
import math
import urllib.request

OUT = Path(__file__).parent / 'assets'
OUT.mkdir(exist_ok=True)

class SVG:
    def __init__(self, w=600, h=300):
        self.w, self.h = w, h
        self.items = []
    def line(self, a, b, dash=False, width=1.7, color='#111'):
        self.items.append(f'<line x1="{a[0]}" y1="{a[1]}" x2="{b[0]}" y2="{b[1]}" stroke="{color}" stroke-width="{width}"'+(' stroke-dasharray="6 5"' if dash else '')+'/>')
    def poly(self, pts, fill='none', width=1.7):
        self.items.append('<polygon points="'+' '.join(f'{x},{y}' for x,y in pts)+f'" fill="{fill}" stroke="#111" stroke-width="{width}"/>')
    def circle(self, x,y,r,fill='none',width=1.7):
        self.items.append(f'<circle cx="{x}" cy="{y}" r="{r}" fill="{fill}" stroke="#111" stroke-width="{width}"/>')
    def text(self,x,y,t,size=18,anchor='middle',italic=False):
        self.items.append(f'<text x="{x}" y="{y}" font-family="Liberation Serif, Times New Roman, serif" font-size="{size}" text-anchor="{anchor}"'+(' font-style="italic"' if italic else '')+f'>{t}</text>')
    def arc(self, o, r, a, b, label=None):
        # Screen coordinates: angles increase clockwise.
        while b < a:
            b += 360
        if b-a > 180:
            a,b = b,a+360
        x,y=o
        p=(x+r*math.cos(math.radians(a)),y+r*math.sin(math.radians(a)))
        q=(x+r*math.cos(math.radians(b)),y+r*math.sin(math.radians(b)))
        self.items.append(f'<path d="M {p[0]} {p[1]} A {r} {r} 0 {int(abs(b-a)>180)} 1 {q[0]} {q[1]}" fill="none" stroke="#111" stroke-width="1.3"/>')
        if label:
            t=math.radians((a+b)/2)
            self.text(x+(r+20)*math.cos(t),y+(r+20)*math.sin(t)+5,label,17)
    def save(self,name):
        (OUT/name).write_text(f'<svg xmlns="http://www.w3.org/2000/svg" width="{self.w}" height="{self.h}" viewBox="0 0 {self.w} {self.h}">'+''.join(self.items)+'</svg>')

# Original vector version of the sun / orbital emblem.
s=SVG(400,400)
for a in range(0,360,30):
    t=math.radians(a)
    def point(r,offset=0):
        return (200+r*math.cos(t+offset),200+r*math.sin(t+offset))
    s.poly([point(139,-.105),point(192),point(139,.105)],fill='#151515',width=0)
s.circle(200,200,127,fill='white',width=4)
for a in [0,60,120]:
    s.items.append(f'<ellipse cx="200" cy="200" rx="112" ry="39" transform="rotate({a} 200 200)" fill="none" stroke="#151515" stroke-width="4"/>')
s.circle(200,200,25,fill='#d4a52d',width=0)
for a in [30,150,270]:
    t=math.radians(a);s.circle(200+94*math.cos(t),200+94*math.sin(t),7,fill='#151515',width=0)
s.save('sol.svg')
# The separate OpenAI mark is saved from the official favicon source.

# Algebra: dimensions are labelled expressions, not inferred from scale.
s=SVG(560,195)
s.poly([(100,150),(380,150),(380,35)])
s.poly([(365,150),(365,135),(380,135)])
s.text(240,180,'(x + 3) cm');s.text(395,95,'(2x − 1) cm',anchor='start')
s.text(210,72,'Not to scale',15)
s.save('algebra-triangle.svg')

s=SVG(600,95)
s.line((35,45),(565,45));s.poly([(565,45),(555,40),(555,50)],fill='#111',width=0)
for n in range(-6,7):
    x=300+n*40;s.line((x,39),(x,51));s.text(x,73,str(n),16)
s.save('numberline.svg')

s=SVG(600,235)
s.poly([(25,10),(575,10),(575,225),(25,225)])
s.items.append('<ellipse cx="240" cy="120" rx="115" ry="78" fill="none" stroke="#111" stroke-width="1.7"/><ellipse cx="370" cy="120" rx="115" ry="78" fill="none" stroke="#111" stroke-width="1.7"/>')
s.text(162,36,'Python');s.text(451,36,'Rust');s.text(45,36,'U',18,italic=True)
s.save('venn.svg')

s=SVG(620,300)
pts=[((45,150),(240,70)),((45,150),(240,230)),((240,70),(470,25)),((240,70),(470,120)),((240,230),(470,180)),((240,230),(470,275))]
for a,b in pts:s.line(a,b)
for x,y in [(140,92),(140,210),(345,36),(345,107),(345,190),(345,266)]:s.text(x,y,'........',17)
s.text(225,48,'Pass',18,anchor='end');s.text(225,260,'Fail',18,anchor='end')
for x,y,t in [(486,30,'Pass'),(486,125,'Fail'),(486,185,'Pass'),(486,280,'Fail')]:s.text(x,y,t,18,anchor='start')
s.text(130,24,'First check',17);s.text(420,151,'Second check',17)
s.save('tree.svg')

def grid(name, xmin,xmax,ymin,ymax,w=620,h=360,curve=None,solution=False,xlabel='x',ylabel='y',stepx=1,stepy=1):
    s=SVG(w,h);L,R,T,B=55,w-30,22,h-45
    def pt(x,y):return (L+(x-xmin)/(xmax-xmin)*(R-L),B-(y-ymin)/(ymax-ymin)*(B-T))
    for n in range(round(xmin/stepx*5),round(xmax/stepx*5)+1):
        if n%5:
            s.line(pt(n*stepx/5,ymin),pt(n*stepx/5,ymax),width=.35,color='#dedede')
    for n in range(round(ymin/stepy*5),round(ymax/stepy*5)+1):
        if n%5:
            s.line(pt(xmin,n*stepy/5),pt(xmax,n*stepy/5),width=.35,color='#dedede')
    for n in range(round(xmin/stepx),round(xmax/stepx)+1):
        x=n*stepx;a,b=pt(x,ymin),pt(x,ymax);s.line(a,b,width=.55,color='#b9b9b9')
        if x!=0:s.text(a[0],pt(x,0 if ymin<=0<=ymax else ymin)[1]+19,str(x),13)
    for n in range(round(ymin/stepy),round(ymax/stepy)+1):
        y=n*stepy;a,b=pt(xmin,y),pt(xmax,y);s.line(a,b,width=.55,color='#b9b9b9')
        if y!=0:s.text(pt(0 if xmin<=0<=xmax else xmin,y)[0]-10,a[1]+4,str(y),13,anchor='end')
    xaxis=0 if ymin<=0<=ymax else ymin;yaxis=0 if xmin<=0<=xmax else xmin
    s.line(pt(xmin,xaxis),pt(xmax,xaxis),width=1.5)
    s.line(pt(yaxis,ymin),pt(yaxis,ymax),width=1.5)
    if len(xlabel)>1:
        s.text((L+R)/2,h-7,xlabel,16)
    else:
        s.text(pt(xmax,xaxis)[0]+15,pt(xmax,xaxis)[1]+5,xlabel,16)
    s.text(pt(yaxis,ymax)[0],12,ylabel,16,anchor='start' if len(ylabel)>1 else 'middle')
    origin=pt(yaxis,xaxis)
    s.text(origin[0]+7 if xmin<0 and ymin<0 else origin[0]-10,origin[1]+18,'0',13,anchor='start' if xmin<0 and ymin<0 else 'middle')
    if curve:
        for f,lo,hi in curve:
            seg=[]
            for i in range(501):
                x=lo+(hi-lo)*i/500;y=f(x)
                if ymin<=y<=ymax:seg.append(pt(x,y))
                elif len(seg)>1:
                    s.items.append('<polyline points="'+' '.join(f'{a},{b}' for a,b in seg)+'" fill="none" stroke="#111" stroke-width="2"/>');seg=[]
            if len(seg)>1:s.items.append('<polyline points="'+' '.join(f'{a},{b}' for a,b in seg)+'" fill="none" stroke="#111" stroke-width="2"/>')
    s.save(name)

grid('cf-grid.svg',0,100,0,160,h=390,xlabel='Time (s)',ylabel='Cumulative frequency',stepx=10,stepy=20)
grid('quadratic-grid.svg',-3,4,-6,10,h=510)
grid('quadratic-answer.svg',-3,4,-6,10,h=510,curve=[(lambda x:x*x-x-4,-2,3)])
grid('transform-grid.svg',-6,6,-5,12,h=500)
grid('transform-answer.svg',-6,6,-5,12,h=500,curve=[(lambda x:(x+2)**2-4,-6,6),(lambda x:(x-1)**2-1,-6,6)])

s=SVG(560,280)
s.line((75,220),(435,220));s.line((435,220),(435,28.585));s.line((75,220),(435,28.585))
s.poly([(422,220),(422,207),(435,207)])
s.arc((75,220),55,-28,0,'28°')
s.text(265,251,'36 m');s.text(455,125,'h',20,italic=True)
s.text(75,244,'A');s.text(437,17,'B');s.text(449,239,'C');s.text(200,35,'Not to scale',15)
s.save('elevation.svg')

# Bearings: all three sides and the 060 degree bearing determine the geometry.
s=SVG(600,325)
theta=math.acos((80**2+120**2-60**2)/(2*80*120))
P=(70,255)
Q=(70+3.7*80*math.sin(math.pi/3),255-3.7*80*math.cos(math.pi/3))
R=(70+3.7*120*math.sin(math.pi/3+theta),255-3.7*120*math.cos(math.pi/3+theta))
s.poly([P,Q,R]);s.line(P,(110,25),dash=True)
s.items.pop() # Replace north line with a true vertical through P.
s.line(P,(70,25),dash=True)
s.text(70,17,'N');s.text(52,273,'P');s.text(Q[0],Q[1]-13,'Q');s.text(R[0]+18,R[1]+5,'R')
s.text(181,170,'80 km');s.text(440,151,'60 km');s.text(301,264,'120 km')
s.arc(P,62,-90,-30,'060°');s.text(450,306,'Not to scale',15)
s.save('bearings.svg')

s=SVG(540,260)
s.poly([(75,45),(455,45),(455,205),(75,205)],fill='#ddd')
for x in [205,325]:s.circle(x,125,46,fill='white')
s.text(265,28,'24 cm');s.text(475,132,'10 cm',anchor='start');s.line((159,125),(251,125),dash=True);s.text(205,115,'6 cm',16)
s.save('plate.svg')

s=SVG(520,245)
A=(95,200);D=(450,200);C=(310,30);B=(224,98);E=(308,200)
# A is apex at left; B lies on AC and E lies on AD, BE parallel CD.
s.poly([A,D,C]);s.line(B,E)
for p,t,dx,dy in [(A,'A',-16,17),(D,'D',15,15),(C,'C',5,-12),(B,'B',-14,-8),(E,'E',0,20)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(143,137,'12 cm',16);s.text(291,148,'9 cm',16);s.text(411,116,'15 cm',16)
s.text(425,30,'Not to scale',15)
s.save('similar.svg')

s=SVG(600,250)
cx,top,bottom,rx,ry=150,70,190,75,22
s.items.append(f'<ellipse cx="{cx}" cy="{top}" rx="{rx}" ry="{ry}" fill="none" stroke="#111" stroke-width="1.7"/><path d="M 75 190 A 75 22 0 0 0 225 190" fill="none" stroke="#111" stroke-width="1.7"/>')
s.line((75,top),(75,bottom));s.line((225,top),(225,bottom));s.line((150,70),(225,70),dash=True)
s.text(185,38,'6 cm',16);s.text(245,135,'20 cm',anchor='start');s.text(150,235,'Cylinder')
s.circle(445,130,75);s.items.append('<ellipse cx="445" cy="130" rx="75" ry="18" fill="none" stroke="#111" stroke-width="1.2" stroke-dasharray="5 4"/>')
s.line((445,130),(514,101),dash=True);s.text(490,108,'3 cm',16);s.text(445,235,'Sphere')
s.save('solids.svg')

s=SVG(600,280)
# Isosceles triangle with an exterior angle at B.
A=(300,35);B=(143.743,235);C=(456.257,235)
s.poly([A,B,C]);s.line((30,235),B)
for u,v in [(A,B),(A,C)]:
    mx,my=(u[0]+v[0])/2,(u[1]+v[1])/2
    dx,dy=v[0]-u[0],v[1]-u[1]
    length=math.hypot(dx,dy)
    px,py=-dy/length,dx/length
    s.line((mx-7*px,my-7*py),(mx+7*px,my+7*py))
s.text(300,20,'A');s.text(141,260,'B');s.text(468,259,'C');s.text(24,259,'D')
s.arc(B,38,180,308,'128°');s.arc(A,38,52,128,'e')
s.text(510,40,'Not to scale',15)
s.save('isosceles.svg')

s=SVG(580,325)
O=(270,155);rad=120
def cp(deg):return (O[0]+rad*math.cos(math.radians(deg)),O[1]-rad*math.sin(math.radians(deg)))
A,B,C,D=[cp(a) for a in [160,90,20,-100]]
s.circle(*O,rad);s.poly([A,B,C,D]);s.line(A,C)
# Extend BC through C to E. Set the diagram by actual circle geometry.
E=(C[0]+.55*(C[0]-B[0]),C[1]+.55*(C[1]-B[1]));s.line(C,E)
for p,t,dx,dy in [(A,'A',-19,-6),(B,'B',9,-11),(C,'C',18,-3),(D,'D',-8,23),(E,'E',10,10)]:s.text(p[0]+dx,p[1]+dy,t)
def direction(a,b):return math.degrees(math.atan2(b[1]-a[1],b[0]-a[0]))%360
s.arc(B,27,direction(B,C),direction(B,A),'110°')
s.arc(D,28,direction(D,A),direction(D,C),'m')
s.arc(C,32,direction(C,A),direction(C,E),'j')
s.arc(A,34,direction(A,B),direction(A,C),'35°')
s.text(475,35,'Not to scale',15)
s.save('cyclic.svg')

s=SVG(580,300)
O=(85,235);A=(365,235);B=(475,55);C=(195,55);M=(420,145);N=(335,55)
s.poly([O,A,B,C]);s.line(A,C,dash=True);s.line(M,N,width=2.2)
for p,t,dx,dy in [(O,'O',-16,17),(A,'A',10,22),(B,'B',16,-7),(C,'C',-10,-12),(M,'M',20,5),(N,'N',0,-12)]:s.text(p[0]+dx,p[1]+dy,t)
s.text(225,260,'p',19,italic=True);s.text(112,137,'q',19,italic=True);s.text(470,285,'Not to scale',15)
s.save('vectors.svg')

print(f'Created {len(list(OUT.glob("*.svg")))} vector assets')
