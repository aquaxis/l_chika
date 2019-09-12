set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { RST_N }]; #IO_L16P_T2_35 Sch=ck_rst
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { LED }]; #IO_L19N_T3_VREF_35 Sch=led0_g

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { CLK }];
