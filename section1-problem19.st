| sketch a b c d o p q r s A B C D AB BC CD DA O P Q R S alpha OR TOR OP P1 TOP Q1 OQ TOQ S1 OS TOS AZ BZ CZ DZ BY DY F G |

sketch _ DrGeoSketch new.
o _ 0@0.
r _ 1@1.
p _ -2@-1.
q _ 0.3@2.2.
s _ 2@-3.
O _ sketch point:o.
O name:'O'.
R _ sketch point:r.
R name:'R'.
alpha _ sketch circleCenter: O to:R. 
OR _ sketch segment:O to:R.
OR hide.
TOR _ sketch perpendicular: OR at:R. 
P1 _ sketch point:p.
OP _ sketch line:O to:P1.
OP hide.
P _ sketch altIntersectionOf:alpha and:OP.
P name:'P'.
TOP _ sketch perpendicular: OP at: P.
Q1 _ sketch point:q.
OQ _ sketch line:O to:Q1.
OQ hide.
Q _ sketch altIntersectionOf:alpha and:OQ.
Q name:'Q'.
TOQ _ sketch perpendicular: OQ at: Q.
S1 _ sketch point:s.
OS _ sketch line:O to:S1.
OS hide.
S _ sketch altIntersectionOf:alpha and:OS.
S name:'S'.
TOS _ sketch perpendicular: OS at: S.
{O. R. P1. Q1.S1} do:[ :bis | bis cross. ].
A _ sketch intersectionOf:TOP and:TOQ.
B _ sketch intersectionOf:TOQ and:TOR.
C _ sketch intersectionOf:TOR and:TOS.
D _ sketch intersectionOf:TOS and:TOP.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
{ TOP. TOQ. TOR. TOS } do:[ :bis | bis hide. ].
AB _ sketch segment:A to:B.
BC _ sketch segment:B to:C.
CD _ sketch segment:C to:D.
DA _ sketch segment:D to:A.
{ AB. BC. CD. DA } do:[ :bis | bis large. ].
AZ _ sketch circleCenter: A to: Q.
BZ _ sketch circleCenter:B to:R.
CZ _ sketch circleCenter:C to:S.
DZ _ sketch circleCenter:D to:P.
{ AZ. BZ. CZ. DZ } do:[ :bis | bis color:Color green. ].
sketch value:'AB + CD' parents:{} at: -4@4.
sketch value:'BC + DA' parents:{} at: 2@4.
sketch value:[(AB mathItem length) + (CD mathItem length) ] parents:{} at: -4@3.
sketch value:[(BC mathItem length) + (DA mathItem length) ] parents:{} at: 2@3.
BY _ sketch circleCenter:B to:C.
BY dotted.
F _ sketch intersectionOf:AB and:BY.
F name:'F'.
DY _ sketch circleCenter:D to:C.
DY dotted.
G _ sketch altIntersectionOf:DA and:DY.
G name:'G'.
sketch segment:F to:C.
sketch segment:C to:G.
sketch segment:G to:F.
