5 list:print:print "+++++++++++++++"
10 print "Array test"
11 goto 15
15 i# = 2
20 dim ddd_[16] = 0,1,2,3,4,5,6,7,8,9,0xa,0xb,0xc,0xd,0xe,0xf
25 ddd_[7] = 7,127,208,4
30 for i=4 to 14: print "ddd_[";int(i);"] = ";ddd_[i]: next i
40 dim week$[7,7] = "Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"
50 for i=0 to 6: print week$[i]:next i
#40 dim bbb[2,4]
#50 dim cc_[8,8]
#100 stop
