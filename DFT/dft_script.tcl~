
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work


set_svf svf/SYS_TOP.svf
################## Design Compiler Library Files #setup ######################

lappend search_path /home/IC/Final_Project/std_cells
lappend search_path /home/IC/Final_Project/rtl/ALU
lappend search_path /home/IC/Final_Project/rtl/ASYNC_FIFO
lappend search_path /home/IC/Final_Project/rtl/CLK_DIV
lappend search_path /home/IC/Final_Project/rtl/CLK_GATE
lappend search_path /home/IC/Final_Project/rtl/DATA_SYNC
lappend search_path /home/IC/Final_Project/rtl/DELAY_PERIOD
lappend search_path /home/IC/Final_Project/rtl/MUX_PRESCALE
lappend search_path /home/IC/Final_Project/rtl/PULSE_GENERATOR
lappend search_path /home/IC/Final_Project/rtl/REG_FILE
lappend search_path /home/IC/Final_Project/rtl/RST_SYNC
lappend search_path /home/IC/Final_Project/rtl/SYSTEM_CONTROLLER
lappend search_path /home/IC/Final_Project/rtl/SYSTEM_TOP
lappend search_path /home/IC/Final_Project/rtl/UART/UART_RX
lappend search_path /home/IC/Final_Project/rtl/UART/UART_TOP
lappend search_path /home/IC/Final_Project/rtl/UART/UART_TX

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

#echo "###############################################"
#echo "############# Reading RTL Files  ##############"
#echo "###############################################"

set file_format1 verilog
set file_format2 sverilog

analyze -format $file_format1 {SYS_TOP_DFT.v mux2X1.v}
analyze -format $file_format1 SYN_CTRL.v
analyze -format $file_format1 UART_TOP.v
analyze -format $file_format1 {UART_TX_TOP.v serializer.v Parity_calc.v mux.v FSM_TX.v}   
analyze -format $file_format1 {data_sampling.v deserializer.v edge_bit_counter.v FSM_RX.v Parity_Check.v Stop_Check.v strt_Check.v UART_RX_TOP.v}
analyze -format $file_format2 {ASYNC_FIFO.sv DF_SYNC.sv FIFO_MEM_CNTRL.sv FIFO_RD.sv FIFO_WR.sv}
analyze -format $file_format1 ALU_16B.v
analyze -format $file_format1 Register_file_8_16.v
analyze -format $file_format1 {CLK_GATE_DFT.v ClkDiv.v delay_one_period.v Mux_Prescale.v PULSE_GEN.v}
analyze -format $file_format2 {RST_SYNC.sv DATA_SYNC.sv}

elaborate -lib WORK SYS_TOP

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl


#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix  \
                       -style multiplexed_flip_flop  \
                       -replace true  \
                       -max_length 100



###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -scan


################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {50 100}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #######################
                                           
create_test_protocol

###################### Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ##############################

insert_dft
compile -scan -incremental

###################### Design Rule Checking #######################

dft_drc -verbose -coverage_estimate


#############################################################################
# Write out Design after initial compile
#############################################################################
set_svf -off

write_file -format verilog -hierarchy -output netlists/SYS_TOP_DFT_netlist.v
write_file -format ddc -hierarchy -output netlists/SYS_TOP.ddc
write_sdc  -nosplit sdc/SYS_TOP.sdc
write_sdf           sdf/SYS_TOP.sdf

################# reporting #######################

report_area -hierarchy > reports/Area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -max_paths 100 -delay_type min > reports/hold.rpt
report_timing -max_paths 100 -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators > reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start
