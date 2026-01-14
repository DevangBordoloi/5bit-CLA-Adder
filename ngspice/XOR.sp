.subckt Xor Y A B vdd gnd
.param width_P={40*LAMBDA}
.param width_N={20*LAMBDA}
x1 A_bar A vdd gnd inv 
x2 B_bar B vdd gnd inv 
M1 Y A Y1 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N}
+ AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 Y1 B gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N}                           
+ AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M3 Y A_bar Y2 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N}            
+ AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M4 Y2 B_bar gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N}                           
+ AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M5 Y3 A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M6 Y B_bar Y3 vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M7 Y4 A_bar vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}                           
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M8 Y B Y4 vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}                           
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends Xor
