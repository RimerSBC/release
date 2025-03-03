10 ? "This program calculates one of the sides of a right triangle"
20 ? "Enter the sides (a,b for legs, c for hypothenuse)"
30 ? "Enter zero for unknown side"
40 input "a = ",a,"b = ",b,"c = ",c
50 if a and b then goto 100
60 if a and c then goto 120
70 if c and b then goto 130
80 print "Too many unknowns!":stop
100 print "Calculated c = ";sqr(a^2+b^2):stop
120 print "Calculated b = ";sqr(c^2-a^2):stop
130 print "Calculated a = ";sqr(c^2-b^2):stop
 
