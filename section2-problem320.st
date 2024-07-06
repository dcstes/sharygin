| sketch p q r d A B C BC AB AC F G P Q R PQ RQ PR x1 X1 X y1 Y1 Y Z RX1 RX QX RY PY1 PY QZ PZ L M N XC YC ZC Q1 M1 RQ1 Z1 w1 v w J |

sketch _ DrGeoSketch new.
r _ -1@1.
q _ 3@1.
d _ 0@1.
x1 _ 0@1.5.
y1 _ -5@-0.6.
R _ sketch point:r.
R cross.R name:'R'.
Q _ sketch point:q.
Q cross.Q name:'Q'.
RQ _ sketch segment: R to: Q.
RQ large.
G _ sketch circleCenter: R to: Q.
G color:Color green.
H _ sketch circleCenter: Q to: R.
H color:Color green. 
P _ sketch intersectionOf: G and: H.
P name:'P'.
PQ _ sketch segment: P to: Q.
PQ large.
PR _ sketch segment: P to: R.
PR large.
L _ sketch perpendicularBisector: RQ.
L hide.
M _ sketch perpendicularBisector: PQ.
M hide.
N _ sketch perpendicularBisector: PR.
N hide.
X1 _ sketch point:x1.
X1 cross.
RX1 _ sketch line:R to:X1.
RX1 hide.
X _ sketch intersectionOf: RX1 and: L.
X name:'X'.
RX _ sketch line:R to:X.
RX dotted.
QX _ sketch line:Q to:X.
QX dotted.
Y1 _ sketch point:y1.
Y1 cross.
PY1 _ sketch line:P to:Y1.
PY1 hide.
Y _ sketch intersectionOf: PY1 and: N.
Y name:'Y'.
RY _ sketch line:R to:Y.
RY dotted.
J _ sketch segment:R to:Y.
J color:Color blue.
J _ sketch segment:Y to:P.
J color:Color blue.
J _ sketch segment:R to:X.
J color:Color blue.
J _ sketch segment:X to:Q.
J color:Color blue.
Q1 _ sketch intersectionOf:RY and:G.
Q1 hide.
RQ1 _ sketch segment:R to:Q1.
M1 _ sketch perpendicularBisector: RQ1.
M1 hide.
Z1 _ sketch intersectionOf:RX and:M1.
w1 _ sketch circleCenter:R to:Z1.
w1 color:Color yellow.
v _ sketch vector: R to: P.
v hide.
w1 hide.
Z1 hide.
J _ sketch segment:R to:Z1.
J color:Color blue.
J _ sketch segment:Q1 to:Z1.
J color:Color blue.
RQ1 color:Color blue.
w _ sketch translate:w1 vector:v.
w hide.
PY _ sketch line:P to:Y.
PY dotted.
Z _ sketch intersectionOf:w and:M.
Z name:'Z'.
QZ _ sketch line:Q to:Z.
QZ dotted.
PZ _ sketch line:P to:Z.
PZ dotted.
C _ sketch intersectionOf: PY and: QX.
C name:'C'.
A _ sketch intersectionOf: RY and: QZ.
A name:'A'.
B _ sketch intersectionOf: RX and: PZ.
B name:'B'.
AB _ sketch segment: A to: B.
AB color:Color red.
AC _ sketch segment: A to: C.
AC color:Color red.
BC _ sketch segment: B to: C.
BC color:Color red.
