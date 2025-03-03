#5 list:? "--------------------"
5 cls
8 offset#=9:amplitude=9
10 for x=1 to 40 
20 y# =  int(sin(rad(x*20))*amplitude)
30 print at(x,offset#+y#);"*" 
50 next x
90 at(1,offset#+amplitude)
200 stop

