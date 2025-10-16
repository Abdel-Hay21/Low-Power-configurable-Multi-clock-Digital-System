#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Oct 10 02:37:42 2025                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

uiSetTool stretchWire
setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Final_Project/dft/SYS_TOP_DFT_netlist.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Final_Project/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Final_Project/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Final_Project/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Final_Project/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Final_Project/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Final_Project/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Final_Project/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Final_Project/dft/SYS_TOP_F.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name F_mode -sdc_files {../dft/SYS_TOP_F.sdc}
create_constraint_mode -name S_mode -sdc_files {../dft/SYS_TOP_S.sdc}
create_constraint_mode -name C_mode -sdc_files {../dft/SYS_TOP_C.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode F_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode F_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode S_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode S_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode C_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode C_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view} -hold {hold1_analysis_view hold2_analysis_view hold3_analysis_view}
floorPlan -d 240.47 160.47 6.0 6.0 6.0 6.0
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 40 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
zoomBox 27.022 90.013 -14.695 133.816
selectWire 7.6500 1.8250 8.6500 157.7450 6 VDD
deleteSelectedFromFPlan
selectWire 6.1500 3.3250 7.1500 156.2450 6 VSS
deleteSelectedFromFPlan
setDrawView ameba
setDrawView fplan
setDrawView place
setDrawView ameba
setDrawView ameba
setDrawView fplan
uiSetTool obstruct
uiSetTool select
setDrawView ameba
setDrawView place
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
setDrawView fplan
uiSetTool obstruct
zoomBox -8.438 163.800 253.078 136.945
createObstruct -1.153 153.718 243.266 163.233
zoomBox 254.904 -4.373 -20.953 23.265
createObstruct -4.330 -8.511 244.867 5.447
setDrawView ameba
setDrawView place
saveDesign /home/ahesham/Final_Project/pnr/SYS_TOP.enc
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
clearDrc
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
setNanoRouteMode -quiet -routeTopRoutingLayer 6
routeDesign -globalDetail -viaOpt -wireOpt
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
optDesign -postRoute -hold
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
verifyGeometry -noMinArea
verifyProcessAntenna -reportfile SYS_TOP.antenna.rpt -leffile SYS_TOP.antenna.lef -error 1000
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
checkFiller -highlight true
saveNetlist export/SYS_TOP.v
saveNetlist export/SYS_TOP_pg.v -includePowerGround
rcOut -spf export/SYS_TOP.spf
delayCal -sdf export/SYS_TOP.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/SYS_TOP.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
saveDesign /home/ahesham/Final_Project/pnr/SYS_TOP1.enc
