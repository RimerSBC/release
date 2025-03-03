5 cls
7 ink(7)
10 for n=0 to 3.14+0.314 step 0.314
20 circle(100-80*cos(n),100-80*sin(n),3,1)
30 next n
32 ink(5):circle(100,100,3,1):ink(6)
40 val=0
50 draw(100,100,100-70*cos(val*0.0314),100-70*sin(val*0.0314),1)
55 print at(13,10);int(val);"  "
60 sleep 80
70 draw(100,100,100-70*cos(val*0.0314),100-70*sin(val*0.0314),1)
80 val=val+1:if val>100 then val=0
90 goto 50
