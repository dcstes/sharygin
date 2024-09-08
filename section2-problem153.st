| sketch a b c A B C BC AB AC  F G H P Q R cAlpha alpha M N L O Z ABline ACline BCline simson1 simson2 S1 S2 S  MP NP LP|

sketch _ DrGeoSketch new.
sketch text: 'Simson line P pole' at:-4@4.
a _ -1@-2.
b _ 3@-2.
c _ 2@2.
simson1 _ 4@1.5.
simson2 _ -3.5@-2.5.
A _ sketch point:a.
A cross.A name:'A'.
B _ sketch point:b.
B cross.B name:'B'.
C _ sketch point:c.
C cross.C name:'C'.
S1 _ sketch point:simson1.
S1 cross.
S2 _ sketch point:simson2.
S2 cross.
S _ sketch line:S1 to:S2.
ABline _ sketch line:A to:B.
ACline _ sketch line:A to:C.
BCline _ sketch line:B to:C.
ABline dotted.
ACline dotted.
BCline dotted.
M _ sketch intersectionOf: S and: ACline.
M name:'M'.
N _ sketch intersectionOf: S and: ABline.
N name:'N'.
L _ sketch intersectionOf: S and: BCline.
L name:'L'.
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
NP _ sketch perpendicular: ABline at:N.
MP _ sketch perpendicular: ACline at:M.
LP _ sketch perpendicular: BCline at:L.
P _ sketch intersectionOf: NP and:MP.
P name:'P'.