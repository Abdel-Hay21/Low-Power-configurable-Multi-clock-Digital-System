
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load


# Prevent assign statements in the generated netlist (must be applied before compile command)
set verilogout_no_tri true
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set CLK_NAME_REF REF_CLK
set CLK_PER_REF 20

set CLK_NAME_UART UART_CLK
set CLK_PER_UART 271.2673611

set CLK_NAME_SCAN scan_clk
set CLK_PER_SCAN 100

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

#REF CLOCK
create_clock -name $CLK_NAME_REF -period $CLK_PER_REF -waveform "0 [expr $CLK_PER_REF/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME_REF]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK_NAME_REF]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK_NAME_REF]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK_NAME_REF]
set_clock_latency $CLK_LAT [get_clocks $CLK_NAME_REF]

#UART CLOCK
create_clock -name $CLK_NAME_UART -period $CLK_PER_UART -waveform "0 [expr $CLK_PER_UART/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME_UART]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK_NAME_UART]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK_NAME_UART]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK_NAME_UART]
set_clock_latency $CLK_LAT [get_clocks $CLK_NAME_UART]

#SCAN CLOCK
create_clock -name $CLK_NAME_SCAN -period $CLK_PER_SCAN -waveform "0 [expr $CLK_PER_SCAN/2]" [get_ports scan_clk]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME_SCAN]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK_NAME_SCAN]
set_clock_transition -rise $CLK_RISE  [get_clocks $CLK_NAME_SCAN]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK_NAME_SCAN]
set_clock_latency $CLK_LAT [get_clocks $CLK_NAME_SCAN]

################## GENERATED CLOCK #################

#ALU CLOCK
create_generated_clock -master_clock $CLK_NAME_REF -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_port CLOCK_GATING/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks ALU_CLK]


#UART_TX CLOCK
create_generated_clock -master_clock $CLK_NAME_UART -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_port CLK_DIV_TX/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks TX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks TX_CLK]


#UART_RX CLOCK
create_generated_clock -master_clock $CLK_NAME_UART -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_port CLK_DIV_RX/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks RX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks RX_CLK]


					   
set_dont_touch_network [get_clocks {$CLK_NAME_REF $CLK_NAME_UART $CLK_NAME_SCAN ALU_CLK TX_CLK RX_CLK}]
			  

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK_NAME_REF ALU_CLK"] -group [get_clocks "$CLK_NAME_UART RX_CLK TX_CLK"] -group [get_clock $CLK_NAME_SCAN] 

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay_SCAN  [expr 0.2 * $CLK_PER_SCAN]
set in_delay_RX  [expr 0.2 * $CLK_PER_UART]

set out_delay_RX [expr 0.2 * $CLK_PER_UART]
set out_delay_TX [expr 0.2 * [expr $CLK_PER_UART * 32]]
set out_delay_SCAN  [expr 0.2 * $CLK_PER_SCAN]

#Constrain Input Paths
set_input_delay $in_delay_RX -clock [get_clocks RX_CLK] [get_port UART_RX_IN]
set_input_delay $in_delay_SCAN -clock [get_clock $CLK_NAME_SCAN] [get_ports {SI SE}]

#Constrain Output Paths
set_output_delay $out_delay_TX -clock [get_clock TX_CLK] [get_port UART_TX_O]
set_output_delay $out_delay_RX -clock [get_clock RX_CLK] [get_port parity_error]
set_output_delay $out_delay_RX -clock [get_clock RX_CLK] [get_port framing_error]
set_output_delay $out_delay_SCAN -clock [get_clock $CLK_NAME_SCAN] [get_port SO]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports {UART_RX_IN SI SE}]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports {UART_TX_O parity_error framing_error SO}]


####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
			 -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
			 -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_port test_mode]

