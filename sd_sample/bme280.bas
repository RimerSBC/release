2 cls
5 sys "sio:"
10 sys "chan 2;pwr 1;mode 3"
15 sleep 100
20 sys "tx 0x76 0xf2 5"
25 sys "tx 0x76 0xf4 0xff"
30 lsb_=0:msb_=0:stat_=0
35 ink(5)
40 sys "rx 0x76 0xf3","stat_"
45 sleep 100
50 if stat_ and 0x08 then goto 40
60 sys "rx 0x76 0xfd 2","msb_","lsb_"
65 humi#=int(int(msb_)*256+lsb_)
70 print at(10,2);humi#;"   "
80 goto 40
