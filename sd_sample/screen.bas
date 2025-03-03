1 cls
2 for i=1 to 7:print ink(i);int(i);:next i
3 key_ = inkey()
4 if key_ then ? at(10,10);key_;"  "
5 if key_ <> 48 then goto 3
9 stop
10 xMax_ = 45:yMax_ = 20
20 x_ = rnd(xMax_)+1:y_ = rnd(yMax_)+1
#22 ? x_;" ";y_
30 dirX_ = rnd(2):dirY_ = rnd(2)
40 if x_ = xMax_ + int(rnd(6)-3) or x_>xMax_+6 then dirX_ = 0:goto 60
50 if x_ = 1 then dirX_ = 1
60 if y_ = yMax_ then dirY_ = 0: goto 80
70 if y_ = 1 then dirY_ = 1 
80 if dirX_ then x_ = x_+1: goto 100
90 x_ = x_-1
100 if dirY_ then y_ = y_+1: goto 120
110 y_ = y_-1
120 print at(x_,y_);"O"'Put the character
130 sleep(50)
140 print ink(rnd(8));at(x_,y_);"*"' erase the character
150 if inkey <> 27 then goto 40


