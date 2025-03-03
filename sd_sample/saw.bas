10 v=0
20 dac$="aio:dac "+val$(v)
30 sys dac$
40 v=v+0.1:if v>2.9 then v=0
50 goto 20
