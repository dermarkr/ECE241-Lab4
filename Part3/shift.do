# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog main.v

#load simulation using mux as the top level simulation module
vsim shift

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}


force {clock} 0
force {reset} 0
force {loadn} 1
force {rotateRight} 0
force {InR} 1
force {InL} 0
force {d} 0	
run 10 ns

force {clock} 1
force {reset} 0
force {loadn} 1
force {rotateRight} 0
force {InR} 1
force {InL} 0
force {d} 0	
run 10 ns

force {clock} 0
force {reset} 0
force {loadn} 1
force {rotateRight} 0
force {InR} 0
force {InL} 0
force {d} 0	
run 10 ns

force {clock} 1
force {reset} 0
force {loadn} 1
force {rotateRight} 0
force {InR} 0
force {InL} 0
force {d} 0	
run 10 ns

force {clock} 0
force {reset} 0
force {loadn} 0
force {rotateRight} 0
force {InR} 0
force {InL} 0
force {d} 1	
run 10 ns

force {clock} 1
force {reset} 0
force {loadn} 0
force {rotateRight} 0
force {InR} 0
force {InL} 0
force {d} 1	
run 10 ns

force {clock} 0
force {reset} 1
force {loadn} 0
force {rotateRight} 0
force {InR} 0
force {InL} 0
force {d} 1	
run 10 ns

force {clock} 1
force {reset} 1
force {loadn} 0
force {rotateRight} 0
force {InR} 0
force {InL} 0
force {d} 1	
run 10 ns