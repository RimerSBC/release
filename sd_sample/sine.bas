10 ampl=2048:res=3.14/30
15 dim lut#[360]
20 for i=0 to 359
30 lut#[i]=ampl+ampl*sin(res*i)
40 next i
60 i=i+1:if i>359 then i=0
70 poke(0x43002410,word(lut#[i]))
80 goto 60
