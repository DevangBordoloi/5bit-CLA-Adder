.subckt Nand_6 Y A B C D E F vdd gnd
.param width_P={20*LAMBDA}
.param width_N={10*LAMBDA}
M1 Y A Y1 gnd CMOSN W={6*width_N} L={2*LAMBDA}
+ AS={5*(6*width_N)*LAMBDA} PS={10*LAMBDA+2*(6*width_N)}
+ AD={5*(6*width_N)*LAMBDA} PD={10*LAMBDA+2*(6*width_N)}
M2 Y1 B Y2 gnd CMOSN W={6*width_N} L={2*LAMBDA}
+ AS={5*(6*width_N)*LAMBDA} PS={10*LAMBDA+2*(6*width_N)}
+ AD={5*(6*width_N)*LAMBDA} PD={10*LAMBDA+2*(6*width_N)}
M3 Y2 C Y3 gnd CMOSN W={6*width_N} L={2*LAMBDA}
+ AS={5*(6*width_N)*LAMBDA} PS={10*LAMBDA+2*(6*width_N)}
+ AD={5*(6*width_N)*LAMBDA} PD={10*LAMBDA+2*(6*width_N)}
M4 Y3 D Y4 gnd CMOSN W={6*width_N} L={2*LAMBDA}
+ AS={5*(6*width_N)*LAMBDA} PS={10*LAMBDA+2*(6*width_N)}
+ AD={5*(6*width_N)*LAMBDA} PD={10*LAMBDA+2*(6*width_N)}
M5 Y4 E Y5 gnd CMOSN W={6*width_N} L={2*LAMBDA}
+ AS={5*(6*width_N)*LAMBDA} PS={10*LAMBDA+2*(6*width_N)}
+ AD={5*(6*width_N)*LAMBDA} PD={10*LAMBDA+2*(6*width_N)}
M6 Y5 F gnd gnd CMOSN W={6*width_N} L={2*LAMBDA}
+ AS={5*(6*width_N)*LAMBDA} PS={10*LAMBDA+2*(6*width_N)}
+ AD={5*(6*width_N)*LAMBDA} PD={10*LAMBDA+2*(6*width_N)}
M7 Y A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M8 Y B vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M9 Y C vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M10 Y D vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M11 Y E vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M12 Y F vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends Nand_6