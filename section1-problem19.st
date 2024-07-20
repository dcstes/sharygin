| sketch a b c d o p q r s A B C D AB BC CD DA O P Q R S alpha OR TOR OP P1 TOP Q1 OQ TOQ S1 OS TOS |

sketch _ DrGeoSketch new.
o _ 0@0.
r _ 1@1.
p _ -2@-1.
q _ -1@2.
s _ 2@-3.
O _ sketch point:o.
O name:'O'.O cross.
R _ sketch point:r.
R name:'R'.R cross.
alpha _ sketch circleCenter: O to:R. 
OR _ sketch segment:O to:R.
OR hide.
TOR _ sketch perpendicular: OR at:R. 
P1 _ sketch point:p.
P1 cross.
OP _ sketch line:O to:P1.
OP hide.
P _ sketch altIntersectionOf:alpha and:OP.
P name:'P'.
TOP _ sketch perpendicular: OP at: P.
Q1 _ sketch point:q.
Q1 cross.
OQ _ sketch line:O to:Q1.
OQ hide.
Q _ sketch altIntersectionOf:alpha and:OQ.
Q name:'Q'.
TOQ _ sketch perpendicular: OQ at: Q.
S1 _ sketch point:s.
S1 cross.
OS _ sketch line:O to:S1.
OS hide.
S _ sketch altIntersectionOf:alpha and:OS.
S name:'S'.
TOS _ sketch perpendicular: OS at: S.
A _ sketch intersectionOf:TOP and:TOQ.
B _ sketch intersectionOf:TOQ and:TOR.
C _ sketch intersectionOf:TOR and:TOS.
D _ sketch intersectionOf:TOS and:TOP.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
TOP hide.
TOQ hide.
TOR hide.
TOS hide.
AB _ sketch segment:A to:B.
AB large.
BC _ sketch segment:B to:C.
BC large.
CD _ sketch segment:C to:D.
CD large.
DA _ sketch segment:D to:A.
DA large.
a _ [ AB mathItem length ].
b _ [ BC mathItem length ].
c _ [ CD mathItem length ].
d _ [ DA mathItem length ].
sketch value:'AB' parents:{} at: -4@-4.
sketch value:'BC' parents:{} at: -2@-4.
sketch value:'CD' parents:{} at:0@-4.
sketch value:'DA' parents:{} at:2@-4.
sketch value:a parents:{} at: -4@-3.
sketch value:b parents:{} at: -2@-3.
sketch value:c parents:{} at:0@-3.
sketch value:d parents:{} at:2@-3.
sketch value:'AB + CD' parents:{} at: -4@4.
sketch value:'BC + DA' parents:{} at: 0@4.
sketch value:[(AB mathItem length) + (CD mathItem length) ] parents:{} at: -4@3.
sketch value:[(BC mathItem length) + (DA mathItem length) ] parents:{} at: 0@3.

