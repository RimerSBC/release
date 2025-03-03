4 sys "dio:dir 6 0x3f"
5 sys "dio:pwr 1"
10 sys "dio:pin 6 0b10101"
15 sleep 300
20 sys "dio:pin 6 0b101010"
25 sleep 300
30 goto 10
