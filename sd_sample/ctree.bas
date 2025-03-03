1 list:for i=0 to 20: ? "-";:next i:? :? 
10 input "How big is your tree (3-40)?",size
20 if (size<3) or (size>40) then print "oi oi oi!":stop
25 size = size-1
110 ? ink(5);"Merry christmass !!!":? :? 
#115 print ink(2);
120 for i = 0 to size
130 for j = 0 to size-i:print " ";:next j ' space
135 if i = 0 then print ink(1);"@": next i
140 for j = 0 to i*2
143 print ink(rnd(3)+1);"*";
145 next j ' tree
148 'for j = 0 to size:print " ";:next j ' space
149 print 'next line
150 next i
153 print ink(7);
155 for j = 0 to 2
160 for i=0 to size-1: ? " ";:next i
170 print "|||"
180 next j
990 stop
