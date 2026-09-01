set_property PACKAGE_PIN <PIN_SEG_A> [get_ports {seg[0]}]
set_property PACKAGE_PIN <PIN_SEG_B> [get_ports {seg[1]}]
set_property PACKAGE_PIN <PIN_SEG_C> [get_ports {seg[2]}]
set_property PACKAGE_PIN <PIN_SEG_D> [get_ports {seg[3]}]
set_property PACKAGE_PIN <PIN_SEG_E> [get_ports {seg[4]}]
set_property PACKAGE_PIN <PIN_SEG_F> [get_ports {seg[5]}]
set_property PACKAGE_PIN <PIN_SEG_G> [get_ports {seg[6]}]

set_property PACKAGE_PIN <PIN_AN0> [get_ports {an[0]}]
set_property PACKAGE_PIN <PIN_AN1> [get_ports {an[1]}]
set_property PACKAGE_PIN <PIN_AN2> [get_ports {an[2]}]
set_property PACKAGE_PIN <PIN_AN3> [get_ports {an[3]}]

set_property PACKAGE_PIN <PIN_DP> [get_ports dp]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports dp]