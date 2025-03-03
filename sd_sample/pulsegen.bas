5 sys "dio:pwr 1"
10 sys "dio:dir 3 1"
20 cls:print at(10,1); "*** Pulse generator ***"
30 print at(6,3); "'Q' and 'A' for pulse control"
40 print at(6,4); "'W' and 'S' for frequency control"
50 print at(6,5); "'0' for exit"
60 pulse = 1:freq = 33
100 print at(10,11);"Tp:";val$(pulse);" f:";val$(freq);"   "
105 sys "dio:pin 3 1":sleep pulse
110 sys "dio:pin 3 0":sleep 1000/freq-pulse
115 at(1,11)
120 key = inkey()
130 if not  key then goto 105
140 if key=113 and pulse<50 then pulse=pulse+1:goto 100
150 if key=97 and pulse>1 then pulse=pulse-1:goto 100
160 if key=119 and freq<50 then freq=freq+1:goto 100
170 if key=115 and freq>1 then freq=freq-1:goto 100
200 if key <> 48 then goto 100
