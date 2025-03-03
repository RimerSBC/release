2 cls
5 sys "sio:"
10 sys "chan 2;pwr 1;mode 3"
15 sleep 100
20 sys "tx 0x29 0xa0 0x03" 'RGBC enable
25 sys "tx 0x29 0xa1 0xec" '50 ms
30 lsb_=0:msb_=0:stat_=0
35 ink(5)
40 sys "rx 0x29 0xb3 1","stat_"
45 sleep 10
50 if not(stat_ and 0x01) then goto 40
60 sys "rx 0x29 0xb4 2","lsb_","msb_"
65 ambient=int(int(msb_)*256+lsb_)
70 sys "rx 0x29 0xb6 2","lsb_","msb_"
75 red=int(int(msb_)*256+lsb_) * 1.136
80 sys "rx 0x29 0xb8 2","lsb_","msb_"
85 green=int(int(msb_)*256+lsb_) * 1.538
90 sys "rx 0x29 0xba 2","lsb_","msb_"
95 blue=int(int(msb_)*256+lsb_) * 1.818
110 ink(8):print at(10,2);int(ambient);"   "
120 ink(10):print at(10,3);int(red);"   "
130 ink(12):print at(10,4);int(green);"   "
140 ink(byte(0x0f)):print at(10,5);int(blue);"   "
150 goto 40
