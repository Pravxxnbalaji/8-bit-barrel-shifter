## ===================================================================
## ZedBoard Zynq-7000 (XC7Z020-1CLG484-1)
## Constraints for switches SWA[7:0], SWB[7:0] and LEDs LED[7:0]
## ===================================================================

# Switches for A[7:0] (SWA)
set_property PACKAGE_PIN V17 [get_ports {SWA[0]}]
set_property PACKAGE_PIN V16 [get_ports {SWA[1]}]
set_property PACKAGE_PIN W16 [get_ports {SWA[2]}]
set_property PACKAGE_PIN W17 [get_ports {SWA[3]}]
set_property PACKAGE_PIN W15 [get_ports {SWA[4]}]
set_property PACKAGE_PIN V15 [get_ports {SWA[5]}]
set_property PACKAGE_PIN U17 [get_ports {SWA[6]}]
set_property PACKAGE_PIN U16 [get_ports {SWA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWA[*]}]

# Switches for B[7:0] (SWB)
set_property PACKAGE_PIN AB12 [get_ports {SWB[0]}]
set_property PACKAGE_PIN AA12 [get_ports {SWB[1]}]
set_property PACKAGE_PIN AB11 [get_ports {SWB[2]}]
set_property PACKAGE_PIN AA11 [get_ports {SWB[3]}]
set_property PACKAGE_PIN AB10 [get_ports {SWB[4]}]
set_property PACKAGE_PIN AA10 [get_ports {SWB[5]}]
set_property PACKAGE_PIN AB9  [get_ports {SWB[6]}]
set_property PACKAGE_PIN AA9  [get_ports {SWB[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWB[*]}]

# LEDs for Product[7:0]
set_property PACKAGE_PIN T22 [get_ports {LED[0]}]
set_property PACKAGE_PIN T21 [get_ports {LED[1]}]
set_property PACKAGE_PIN U22 [get_ports {LED[2]}]
set_property PACKAGE_PIN U21 [get_ports {LED[3]}]
set_property PACKAGE_PIN V22 [get_ports {LED[4]}]
set_property PACKAGE_PIN W22 [get_ports {LED[5]}]
set_property PACKAGE_PIN Y22 [get_ports {LED[6]}]
set_property PACKAGE_PIN AA22 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[*]}]

# Optional: Set global IOSTANDARD (usually safe for ZedBoard)
set_property CONFIG_VOLTAGE 3.3 [current_design]
