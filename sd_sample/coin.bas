5 list
10 ? "**********************"
20 ? "*   Flip the coin    *"
30 ? "**********************"
40 input "Ready? (Y/N)":ans$
42 if ans$ <> "Y" and ans$ <> "y" then ? "Looooooser :)":stop
50 if rnd(2) then ? "HEADS": goto 70
60 ? "TAILS"
70 input "Another flip (Y/N)?":ans$
80 if ans$ = "y" or ans$ = "Y" then goto 50
85 ? "I'm sorry to see you go!","Bye,bye..."
90 stop
