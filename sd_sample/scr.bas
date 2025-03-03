10 cls
20 for i=1 to 7:print ink(i);int(i);:next i
25 for i=2 to 20: print at(i,1);"-";at(i,19);"-";: next i
30 key_ = inkey()
40 if key_ then ? at(10,10);key_;"  "
50 if key_ <> 48 then goto 30
60 stop
