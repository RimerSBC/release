10 XSIZE_=39 : YSIZE_=19 : MAX_LENGTH = 254: MAX_LEVEL = 9
15 def SNAKEDELAY#(lvl) = 200-lvl*20
20 print " Snake game V1.0 "," Use WASD keys for snake control" ' Greetings
30 input "Enter starting level (1-5)",lvl
40 if lvl > 5 then print "Don\'t flatter yourself...":sleep(2000):lvl = 5  
50 if lvl < 1 then print "Chicken...":sleep(2000):lvl = 1
60 LEVEL = lvl
80 dim snake_[256,2] = XSIZE_/2,YSIZE_/2+2 'use 256 so byte counter will roll over
90 head_ = 0 : length_ = 1 : dir_ = 0 rem 0 - up, 1 - down, 2 - right, 3 - left
100 gosub 950 ' Draw screen 
110 gosub 840 ' initialize snake's coordinates
130 print at(snake_[head_,0],snake_[head_,1]);ink(6);"O"
135 sleep(SNAKEDELAY#(LEVEL)):
140 gosub 500 ' check for collision
145 print at(snake_[head_,0],snake_[head_,1]);ink(2);"*"
150 head_ = head_ + 1
160 key_ = inkey() ' process keypress
#151 print at (1,YSIZE_+1);"key:";key_
161 if key_ = 119 or key_ = 65 then dir_ = 0: goto 170 ' W (Up)
162 if key_ = 115 or key_ = 66 then dir_ = 1: goto 170 ' S (Down)
163 if key_ = 100 or key_ = 67 then dir_ = 2: goto 170 ' D (Right)
164 if key_ = 97 or key_ = 68 then  dir_ = 3: goto 170 ' A (Left)
165 if key_ = 27 then goto 1000 ' Esc (Exit)
170 snake_[head_,0] = snake_[head_-1,0] : snake_[head_,1] = snake_[head_-1,1]
200 if dir_ = 0 then snake_[head_,1] = snake_[head_,1] - 1: goto 240
210 if dir_ = 1 then snake_[head_,1] = snake_[head_,1] + 1: goto 240
220 if dir_ = 2 then snake_[head_,0] = snake_[head_,0] + 1: goto 240
230 if dir_ = 3 then snake_[head_,0] = snake_[head_,0] - 1: goto 240
240 if snake_[head_,0] = rabbitX_ and snake_[head_,1] = rabbitY_ then gosub 800:goto 130 ' increase length and level
270 print at(snake_[head_-length_,0],snake_[head_-length_,1]);" " ' erase the tail
280 snake_[head_-length_,0] = 0 : snake_[head_-length_,1] = 0 ' clear the tail in array
290 goto 130
500 if (snake_[head_,0] = 1) or (snake_[head_,0] = XSIZE_) or (snake_[head_,1] = 1) or (snake_[head_,1] = YSIZE_) then goto 999 ' Hit fence, game over
510 for c=0 to 255:if c <> head_ and snake_[head_,0] = snake_[c,0] and snake_[head_,1] = snake_[c,1] then goto 999:' ate itself
520 next c 
530 return
666 goto 1000
800 gosub 900 ' put a new rabbit
810 length_ = length_ + 1:print ink(7);at(XSIZE_/2-5,YSIZE_);" LENGTH : ";length_;" "
820 if length_ < MAX_LENGTH then return ' snake didn't grow up yet 
830 LEVEL = LEVEL + 1: if LEVEL > MAX_LEVEL then print at(XSIZE_/2-5,YSIZE_/2);ink(5);"You WIN!": goto 1100
835 gosub 950
840 for r=0 to 255: snake_[r,0] = 0: snake_[r,1] = 0:next r ' clear the snake coordinates
850 snake_[0,0] = XSIZE_/2,YSIZE_/2+2
860 head_ = 0:length_ = 1
870 return
900 rabbitX_ = rnd(XSIZE_-2)+2 : rabbitY_ = rnd(YSIZE_-2)+2
910 for r=0 to 255:if rabbitX_ = snake_[r,0] and rabbitY_ = snake_[r,1] then goto 900 ' re-place the rabbit if there is snake in place
911 next r
920 print at(rabbitX_,rabbitY_);ink(3);"@":return
950 cls:print ink(7);
970 for i=2 to XSIZE_: print at(i,1);"-";at(i,YSIZE_);"-": next i
975 print at(XSIZE_/2-4,1);" LEVEL : ";int(LEVEL);" "
980 for i=2 to YSIZE_: print at(1,i);"|";at(XSIZE_,i);"|": next i
990 print at(1,1);"+";at(1,YSIZE_);"+";at(XSIZE_,1);"+";at(XSIZE_,YSIZE_);"+"
991 gosub 900 ' put a new rabbit
995 return
999 print at(snake_[head_,0],snake_[head_,1]);ink(1);"X" ' show the head hit 
1000 print at(XSIZE_/2-5,YSIZE_/2);ink(1);"Game OVER!"
1100 print ink(7);at(1,YSIZE_+1);"Press any key"
1110 if !inkey() then goto 1110 
1120 stop
