
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/IC/Final_Project/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/Final_Project/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/Final_Project/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

########################## Search Path ############################
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

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_suto_setup true

# Formality Setup File
set_svf "/home/IC/Final_Project/Backend/Synthesis/svf/SYS_TOP.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container r  {SYS_TOP.v SYN_CTRL.v UART_TOP.v}
read_verilog -container r  {UART_TX_TOP.v serializer.v Parity_calc.v mux.v FSM_TX.v}   
read_verilog -container r  {data_sampling.v deserializer.v edge_bit_counter.v FSM_RX.v Parity_Check.v Stop_Check.v strt_Check.v UART_RX_TOP.v}
read_sverilog -container r  {ASYNC_FIFO.sv DF_SYNC.sv FIFO_MEM_CNTRL.sv FIFO_RD.sv FIFO_WR.sv}
read_verilog -container r  {ALU_16B.v Register_file_8_16.v}
read_verilog -container r  {CLK_GATE.v ClkDiv.v delay_one_period.v Mux_Prescale.v PULSE_GEN.v}
read_sverilog -container r  {RST_SYNC.sv DATA_SYNC.sv}

# Read Reference technology libraries
read_db -container r $TTLIB

# set the top Reference Design 
set_top SYS_TOP


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -netlist -container i "/home/IC/Final_Project/Backend/Synthesis/netlists/SYS_TOP_netlist.v"

# Read Implementation technology libraries
read_db -container i $TTLIB

# set the top Implementation Design
set_top SYS_TOP


###################### Matching Compare points ####################
match


######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui

