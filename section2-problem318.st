| sketch r R ca cb cAlpha cBeta A1 A2 A3 B1 B2 B3 c1 C1 C2 C3 d1 D1 D2 alpha beta L1 A1A2 B1B2 L2 dL2 DL2 K L P D1C1 A1B1 A2B2 KO LO O gamma cGamma |

sketch _ DrGeoSketch new.
ca _ 0@0.
cAlpha _ sketch point:ca.
cAlpha cross.
cb _ 0@1.
cBeta _ sketch point:cb.
cBeta cross.
r _ 2@2.
R _ sketch point:r.
R cross. R name:'R'.
alpha _ sketch circleCenter: cAlpha to:R.
c1 _ -1@1.
C1 _ sketch point:c1.
C1 cross.C1 name:'C1'.
beta _ sketch circleCenter: cBeta to: C1.
L1 _ sketch line:cBeta to:C1.
L1 hide.
A1A2 _ sketch perpendicular: L1 at: C1.
A1 _ sketch intersectionOf: alpha and:A1A2.
A1 name:'A1'.
A2 _ sketch altIntersectionOf: alpha and: A1A2.
A2 name:'A2'.
dL2 _ 0.5@2.
DL2 _ sketch point:dL2.
DL2 cross.
L2 _ sketch line:cBeta to:DL2.
L2 dotted.
D1 _ sketch intersectionOf:beta and:L2.
D1 name:'D1'.
B1B2 _ sketch perpendicular: L2 at:D1.
B1 _ sketch altIntersectionOf:alpha and:B1B2.
B1 name:'B1'.
B2 _ sketch intersectionOf:alpha and:B1B2.
B2 name:'B2'.
D1C1 _ sketch line:D1 to:C1.
A1B1 _ sketch line:A1 to:B1.
A1B1 color:Color green.
A2B2 _ sketch line:A2 to:B2.
A2B2 color:Color green.
K _ sketch intersectionOf:D1C1 and:A1B1.
K name:'K'.
L _ sketch intersectionOf:D1C1 and:A2B2.
L name:'L'.
P _ sketch intersectionOf:A1B1 and:A2B2.
P name:'P'.
KO _ sketch perpendicular:A1B1 at:K.
KO dotted.
LO _ sketch perpendicular:A2B2 at:L.
LO dotted.
O _ sketch intersectionOf:KO and:LO.
O name:'O'.
gamma _ sketch circleCenter: O to:K.
gamma color:Color blue.
cGamma _ sketch line:O to:cAlpha.
cGamma color:Color red.