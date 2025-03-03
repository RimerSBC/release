2 clear
5 def rgb_(r,g,b)=r*64+g*8+b
10 cls
15 colour_=rnd(4)
16 ink(rgb_(colour_,colour_,colour_))
20 plot(rnd(64),rnd(32))
22 if inkey = 32 then cls
30 goto 15
