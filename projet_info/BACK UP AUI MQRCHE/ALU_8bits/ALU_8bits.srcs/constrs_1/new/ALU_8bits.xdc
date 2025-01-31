# Cheat sheet :
# Switches:
# R2, T1, U1, W2, R3, T2, T3, V2, W13, W14, V15, W15, W17, W16, V16, V17
# Buttons:
# T18, W19, U18, T17, U17
# LEDs:
# L1, P1, N3, P3, U3, W3, V3, V13, V14, U14, U15, W18, V19, U19, E19, U16
#Horloge sur un bouton
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets Clock]
#set_property -dict {PACKAGE_PIN NX IOSTANDARD LVCMOS33} [get_ports Clock]
#Horloge avec un oscillateur
#set_property -dist { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports { Clock } ]
#create_clock -add -name sysclk_pin -period 10.00 -waveform { 0 5 } [get_ports { Clock } ]
# Signal binaire
#set_property -dict {PACKAGE_PIN NX IOSTANDARD LVCMOS33} [get_ports NOM_SIGNAL]
# Signal vectoriel
#set_property -dict {PACKAGE_PIN NX IOSTANDARD LVCMOS33} [get_ports {NOM_SIGNAL_VECTEUR[INDICE]}]

#create_clock -period 1000.000 -name Clk -waveform {0.000 500.000} -add [get_ports Clk]


set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports C]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports O]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports N]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports Z]

set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {Ctrl_Alu[0]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {Ctrl_Alu[1]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {Ctrl_Alu[2]}]


set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {A[0]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {A[1]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {A[2]}]
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {A[3]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {A[4]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {A[5]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {A[6]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {A[7]}]

set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {B[0]}]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports {B[1]}]
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {B[2]}]
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports {B[3]}]
set_property -dict {PACKAGE_PIN W2 IOSTANDARD LVCMOS33} [get_ports {B[4]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {B[5]}]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {B[6]}]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {B[7]}]

set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {S[0]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {S[1]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {S[2]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {S[3]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {S[4]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {S[5]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {S[6]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {S[7]}]

