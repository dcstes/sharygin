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
L _ C collect: [ :pt | sketch line: O to:pt . ].
L do: [ :line | line hide ].
T _ L collect: [ :line | sketch altIntersectionOf: alpha and: line ].
S _ OrderedCollection new.
1 to:n do: [ :i |  S add: (sketch perpendicular:(L at:i) at:(T at:i))  ].
S do:[ :s | s hide ].
V _ OrderedCollection new.
oldLine _ S at:n.
1 to: n do: [ :i | V add:(sketch intersectionOf:oldLine and:(S at:i)). oldLine _ S at:i. ].
1 to: n do:[ :i | (V at:i) name:(B at:i) ].
Q _ OrderedCollection new.
oldLine _ V at:n.
1 to: n do: [ :i | Q add:(sketch segment:oldLine to:(V at:i)). oldLine _ (V at:i). ].
D _ OrderedCollection new.
1 to:n do: [ :i | D add:(sketch segment:(V at:i) to: (T at:i))].
D do:[ :line | line hide].
W _ Set new.
1 to: n do: [ :i | i+2 to:n do: [ :j | (i = 1 and: j = n) ifFalse: [ W add:(sketch segment:(V at:i) to: (V at:j)) ]]].
W do:[ :line | line dotted].
AC _ W at:1.
BD _ W at:2.
M _ sketch intersectionOf:AC and:BD.
M name:'M'.
sketch value:'AM / MC' parents:{} at: -4@4.
sketch value:'a / c' parents:{} at: 2@4.
AM _ sketch segment:(V at:1) to:M.
AM hide.
MC _ sketch segment:M to:(V at:3).
MC hide.
TA _ D at:1.
TC _ D at:3.
sketch value:[(AM mathItem length) / (MC mathItem length) ] parents:{} at: -4@3.
sketch value:[(TA mathItem length) / (TC mathItem length) ] parents:{} at: 2@3.
