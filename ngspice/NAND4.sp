.subckt Nand_4 Y A B C D vdd gnd
.param width_P={20*LAMBDA}
.param width_N={10*LAMBDA}
M1 Y A Y1 gnd CMOSN W={4*width_N} L={2*LAMBDA}
+ AS={5*(4*width_N)*LAMBDA} PS={10*LAMBDA+2*(4*width_N)}
+ AD={5*(4*width_N)*LAMBDA} PD={10*LAMBDA+2*(4*width_N)}
M2 Y1 B Y2 gnd CMOSN W={4*width_N} L={2*LAMBDA}
+ AS={5*(4*width_N)*LAMBDA} PS={10*LAMBDA+2*(4*width_N)}
+ AD={5*(4*width_N)*LAMBDA} PD={10*LAMBDA+2*(4*width_N)}
M3 Y2 C Y3 gnd CMOSN W={4*width_N} L={2*LAMBDA}
+ AS={5*(4*width_N)*LAMBDA} PS={10*LAMBDA+2*(4*width_N)}
+ AD={5*(4*width_N)*LAMBDA} PD={10*LAMBDA+2*(4*width_N)}
M4 Y3 D gnd gnd CMOSN W={4*width_N} L={2*LAMBDA}
+ AS={5*(4*width_N)*LAMBDA} PS={10*LAMBDA+2*(4*width_N)}
+ AD={5*(4*width_N)*LAMBDA} PD={10*LAMBDA+2*(4*width_N)}
M5 Y A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M6 Y B vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M7 Y C vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M8 Y D vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends Nand_4
