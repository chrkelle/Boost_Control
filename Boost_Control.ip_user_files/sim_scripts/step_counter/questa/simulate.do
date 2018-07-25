onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib step_counter_opt

do {wave.do}

view wave
view structure
view signals

do {step_counter.udo}

run -all

quit -force
