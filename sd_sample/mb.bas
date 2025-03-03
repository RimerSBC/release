10 cls
20 ' L is the maximum iterations to try
30 L = 100
40 for I = 0 to 100
50 for J = 0 to 100
55 ' Map from pixel coordinates (I,J) to math (U,V)
60 U = I / 50 - 1.5
70 V = J / 50 - 1
80 X = U
90 Y = V
100 N = 0
110 ' Inner iteration loop starts here 
120 R = X * X
130 Q = Y * Y
140 if R + Q > 4 or N >= L then goto 190
150 Y = 2 * X * Y + V
160 X = R - Q + U
170 N = N + 1
180 goto 120
190 ' Compute the color to plot
200 if N < 10 then ink(0):goto 206
205 ink(16 * (N-10) / (L-10))
206 xD=I*2:yD=J*2
210 plot(xD,yD):plot(xD+1,yD+1)
212 plot(xD+1,yD):plot(xD,yD+1)
220 next J
230 next I
235 at(1,18)
240 stop
