5 cls
7 ink(7)
10 for n=0 to 3.14+0.314 step 0.314
20 circle(100-80*cos(n),100-80*sin(n),3,1)
30 next n
32 ink(5):circle(100,100,3,1):ink(6)
40 val=0
50 sys "aio:adc","val"
51 val#=val*100:val=val#:val=val/100
55 draw(100,100,100-70*cos(val),100-70*sin(val),1)
56 print at(10,10);val;" V "
60 sleep 100
75 draw(100,100,100-70*cos(val),100-70*sin(val),1)
90 goto 50
