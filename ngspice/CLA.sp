.subckt CLA C5 S5 S4 S3 S2 S1 a5 a4 a3 a2 a1 b5 b4 b3 b2 b1 vdd gnd
* Generate Logic 
x1 G1_bar a1 b1 vdd gnd Nand_2
x2 G1 G1_bar vdd gnd inv
x3 G2_bar a2 b2 vdd gnd Nand_2
x4 G2 G2_bar vdd gnd inv
x5 G3_bar a3 b3 vdd gnd Nand_2
x6 G3 G3_bar vdd gnd inv
x7 G4_bar a4 b4 vdd gnd Nand_2
x8 G4 G4_bar vdd gnd inv
x9 G5_bar a5 b5 vdd gnd Nand_2
x10 G5 G5_bar vdd gnd inv

* Propagate Logic
x11 P1 a1 b1 vdd gnd Xor
x12 P2 a2 b2 vdd gnd Xor
x13 P3 a3 b3 vdd gnd Xor
x14 P4 a4 b4 vdd gnd Xor
x15 P5 a5 b5 vdd gnd Xor

* Carry Logic(C1)=G1
* Carry Logic (C2)
x21 t1_bar P2 G1 vdd gnd Nand_2
x22 C2 G2_bar t1_bar vdd gnd Nand_2
*Carry Logic (C3)
x23 t2_bar P3 P2 G1 vdd gnd Nand_3
x24 t3_bar P3 G2 vdd gnd Nand_2
x25 C3 G3_bar t2_bar t3_bar vdd gnd Nand_3
*Carry Logic (C4)
x26 t4_bar P4 P3 P2 G1 vdd gnd Nand_4
x27 t5_bar P4 P3 G2 vdd gnd Nand_3
x28 t6_bar P4 G3 vdd gnd Nand_2
x29 C4 G4_bar t4_bar t5_bar t6_bar vdd gnd Nand_4
*Carry Logic (C5)
x30 t7_bar P5 P4 P3 P2 G1 vdd gnd Nand_5
x31 t8_bar P5 P4 P3 G2 vdd gnd Nand_4
x32 t9_bar P5 P4 G3 vdd gnd Nand_3
x33 t10_bar P5 G4 vdd gnd Nand_2
x34 C5 G5_bar t7_bar t8_bar t9_bar t10_bar vdd gnd Nand_5

* Sum Logic
x16 S1 P1 gnd vdd gnd Xor
x17 S2 P2 G1 vdd gnd Xor
x18 S3 P3 C2 vdd gnd Xor
x19 S4 P4 C3 vdd gnd Xor
x20 S5 P5 C4 vdd gnd Xor
.ends CLA