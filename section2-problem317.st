| sketch O R n alpha A B C D Q T L S V oldLine triangle diagonal W AC BD M AM MC TA TC S1 S2 S3 P1 P2 P3 L1 L2 L3 simson | 
sketch _ DrGeoSketch new.
O _ sketch point:0@0.
O name:'O'.
O cross.
R _ sketch point:-2@2.
R name:'R'.
R cross.
alpha _ sketch circleCenter: O to: R.
A _ { -4@0. 0@4. 4@2. 1@-4 }.
n _ A size.
B _ { 'A'. 'B'. 'C'. 'D' }.
C _ A collect:  [ :pt | sketch point:pt ].
C do: [ :pt | pt cross. ].
V _ OrderedCollection new.
1 to: n do: [ :i | L _ sketch line:O to:(C at:i). L hide. V add:(sketch altIntersectionOf:L and:alpha). ].
1 to:n do:[ :i | (V at:i) name:(B at:i) ].
oldLine _ V at:n.
S _ OrderedCollection new.
1 to: n do: [ :i | S add:(sketch segment:oldLine to:(V at:i)). oldLine _ V at:i. ].
S do:[ :i | i large. ].
T _ OrderedCollection new.
oldLine _ V at:n.
1 to: n do: [ :i | T add:(sketch line:oldLine to:(V at:i)). oldLine _ V at:i. ].
W _ OrderedCollection new.
1 to: (n-2) do: [ :i | diagonal _ sketch line:(V at:i) to: (V at:(i + 2)). triangle _ { T at:(i+1). T at:(i+2). diagonal }. W add:triangle. ].
simson _ OrderedCollection new.
W do:[ :t |
       L1 _ t at:1.
       L2 _ t at:2.
       L3 _ t at:3.
	P1 _ sketch perpendicular:L1 at:R.
	P2 _ sketch perpendicular:L2 at:R.
	P3 _ sketch perpendicular:L3 at:R.
	P1 hide.
	P2 hide.
	P3 hide.
	S1 _ sketch intersectionOf:P1 and:L1.
	S2 _ sketch intersectionOf:P2 and:L2.
	S3 _ sketch intersectionOf:P3 and:L3.
	simson add:(sketch line:S1 to:S2).
].
simson do:[ :i | i color:(Color red). ].
L1 _ simson at:1.
L2 _ simson at:2.
P1 _ sketch perpendicular: L1 at: R.
P2 _ sketch perpendicular: L2 at: R.
P1 hide.
P2 hide.
S1 _ sketch intersectionOf:L1 and:P1.
S2 _ sketch intersectionOf:L2 and:P2.
(sketch line:S1 to:S2) color:(Color green).
