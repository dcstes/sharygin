| sketch a b c A B C BC AB AC  F G H P Q R cAlpha alpha M N L O Z ABline ACline BCline P1 P2 pole1 pole2 Pline S1 S2 S  MP NP LP MQ NQ LQ M2 N2 L2 T ST |

sketch _ DrGeoSketch new.
sketch text: 'Angle 2 Simson lines' at:-4@4.
a _ -1@-2.
b _ 3@-2.
c _ 2@2.
pole1 _ 4@1.5.
pole2 _ -0.2@-4.
A _ sketch point:a.
A cross.A name:'A'.
B _ sketch point:b.
B cross.B name:'B'.
C _ sketch point:c.
C cross.C name:'C'.
P1 _ sketch point:pole1.
P1 cross.
P2 _ sketch point:pole2.
P2 cross.
Pline _ sketch line:P1 to:P2.
ABline _ sketch line:A to:B.
ACline _ sketch line:A to:C.
BCline _ sketch line:B to:C.
ABline dotted.
ACline dotted.
BCline dotted.
AB _ sketch segment: A to: B.
AB large.
AC _ sketch segment:A to:C.
AC large.
BC _ sketch segment:B to:C.
BC large.
F _ sketch perpendicularBisector: AC.
G _ sketch perpendicularBisector:AB.
H _ sketch perpendicularBisector:BC.
F hide.
G hide.
H hide.
cAlpha _ sketch intersectionOf:F and:G.
alpha _ sketch circleCenter:cAlpha to:A.
alpha color:Color green.
P _ sketch intersectionOf:alpha and:Pline.
P name:'P'.
Q _ sketch altIntersectionOf:alpha and:Pline.
Q name:'Q'.
MP _ sketch perpendicular:ACline at:P.
NP _ sketch perpendicular:ABline at:P.
LP _ sketch perpendicular:BCline at:P. 
M _ sketch intersectionOf:MP and:ACline.
N _ sketch intersectionOf:NP and:ABline.
L _ sketch intersectionOf:LP and:BCline.
M name:'M'.
N name:'N'.
L name:'L'.
S _ sketch line:M to:L.
S color:Color red.
MQ _ sketch perpendicular:ACline at:Q.
NQ _ sketch perpendicular:ABline at:Q.
LQ _ sketch perpendicular:BCline at:Q. 
M2 _ sketch intersectionOf:MQ and:ACline.
N2 _ sketch intersectionOf:NQ and:ABline.
L2 _ sketch intersectionOf:LQ and:BCline.
M2 name:'M2'.
N2 name:'N2'.
L2 name:'L2'.
T _ sketch line:M2 to:L2.
T color:Color red.
sketch segment:cAlpha to:P.
sketch segment:cAlpha to:Q.
sketch angle: Q to:cAlpha  to:P. 
ST _ sketch intersectionOf:S and:T.
sketch angle:M to:ST to:M2.