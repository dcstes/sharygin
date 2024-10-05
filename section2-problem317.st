| sketch O R n alpha A B C D Q T L S V oldLine W AC BD M AM MC TA TC | 
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
