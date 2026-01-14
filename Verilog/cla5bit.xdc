
# Clock: use on-board 100 MHz oscillator `mclk` (Boolean board -> F14)
set_property PACKAGE_PIN F14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name clk -waveform {0 5} [get_ports clk]

# Map inputs to on-board slide switches
# a_in[4:0] -> sw[0..4]
set_property PACKAGE_PIN V2  [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]

set_property PACKAGE_PIN U2  [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]

set_property PACKAGE_PIN U1  [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]

set_property PACKAGE_PIN T2  [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]

set_property PACKAGE_PIN T1  [get_ports {a[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[4]}]

# b_in[4:0] -> sw[5..9]
set_property PACKAGE_PIN R2  [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]

set_property PACKAGE_PIN R1  [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]

set_property PACKAGE_PIN P2  [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]

set_property PACKAGE_PIN P1  [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]

set_property PACKAGE_PIN N2  [get_ports {b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]

# Map outputs to on-board LEDs
# sum_out[4:0] -> led[0..4]
set_property PACKAGE_PIN G1  [get_ports {sum[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[0]}]
set_property SLEW SLOW [get_ports {sum[0]}]

set_property PACKAGE_PIN G2  [get_ports {sum[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[1]}]
set_property SLEW SLOW [get_ports {sum[1]}]

set_property PACKAGE_PIN F1  [get_ports {sum[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[2]}]
set_property SLEW SLOW [get_ports {sum[2]}]

set_property PACKAGE_PIN F2  [get_ports {sum[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[3]}]
set_property SLEW SLOW [get_ports {sum[3]}]

set_property PACKAGE_PIN E1  [get_ports {sum[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[4]}]
set_property SLEW SLOW [get_ports {sum[4]}]

# cout_out -> led[5]
set_property PACKAGE_PIN E2  [get_ports cout]
set_property IOSTANDARD LVCMOS33 [get_ports cout]
set_property SLEW SLOW [get_ports cout]

# End of file

