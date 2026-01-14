.subckt Nand_3 Y A B C vdd gnd
.param width_P={20*LAMBDA}
.param width_N={10*LAMBDA}
M1 Y A Y1 gnd CMOSN W={3*width_N} L={2*LAMBDA}
+ AS={5*(3*width_N)*LAMBDA} PS={10*LAMBDA+2*(3*width_N)}
+ AD={5*(3*width_N)*LAMBDA} PD={10*LAMBDA+2*(3*width_N)}
M2 Y1 B Y2 gnd CMOSN W={3*width_N} L={2*LAMBDA}
+ AS={5*(3*width_N)*LAMBDA} PS={10*LAMBDA+2*(3*width_N)}
+ AD={5*(3*width_N)*LAMBDA} PD={10*LAMBDA+2*(3*width_N)}
M3 Y2 C gnd gnd CMOSN W={3*width_N} L={2*LAMBDA}
+ AS={5*(3*width_N)*LAMBDA} PS={10*LAMBDA+2*(3*width_N)}
+ AD={5*(3*width_N)*LAMBDA} PD={10*LAMBDA+2*(3*width_N)}
M4 Y A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M5 Y B vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M6 Y C vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends Nand_3