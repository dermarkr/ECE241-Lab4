# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog main.v

#load simulation using mux as the top level simulation module
vsim bitregister

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# Case 1 test


force {clock} 0
force {Reset_b} 1
force {d[0]} 0
force {d[1]} 0
force {d[2]} 0
force {d[3]} 0
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 1
force {Reset_b} 1
force {d[0]} 0
force {d[1]} 0
force {d[2]} 0
force {d[3]} 0
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 0
force {Reset_b} 1
force {d[0]} 0
force {d[1]} 0
force {d[2]} 1
force {d[3]} 1
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 1
force {Reset_b} 1
force {d[0]} 0
force {d[1]} 0
force {d[2]} 1
force {d[3]} 1
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 0
force {Reset_b} 1
force {d[0]} 0
force {d[1]} 0
force {d[2]} 1
force {d[3]} 1
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 1
force {Reset_b} 1
force {d[0]} 0
force {d[1]} 1
force {d[2]} 0
force {d[3]} 0
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 0
force {Reset_b} 0
force {d[0]} 0
force {d[1]} 0
force {d[2]} 0
force {d[3]} 0
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns

force {clock} 1
force {Reset_b} 0
force {d[0]} 0
force {d[1]} 0
force {d[2]} 1
force {d[3]} 0
force {d[4]} 0
force {d[5]} 0
force {d[6]} 0
force {d[7]} 0
run 10ns