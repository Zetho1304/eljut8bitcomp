# 8-bit Computer in VHDL

In this github link contains the necessary files for an 8 bit computer, as a requirement for the final project of Advanced Electronics. The nstruction set and architecture of 8-bit computer are available at Chapter 13 in the book "Introduction to Logic Circuit and Logic Design with VHDL" which is provided in simaster.



## Brief Explanation

To create this VHDL program for each element we need creating all entities, connection each of the component.

Structure of the program, the vhdl files
* data_path
* rom_128x8_sync
* cpu
* ALU
* rw_96x8_sync
* control_unit
* computer
* output_ports
         
## We then run this program using ghdl
To run this program we use ghdl and to simulate it's waveform with gtk wave.
```bash
ghdl -a --ieee=synopsys -fexplicit filename.vhdl
```
```bash
ghdl -e --ieee=synopsys -fexplicit entityname
```

## Simulate the program using gtk wave
We then create a VCD file for the waveform
```bash
ghdl -r entityname
```
``bash
ghdl -r files --vcd = 'filename.vcd'
```
run the vcd

```bash
gtkwave filename.vcd
```

References : 
https://www.fpga4student.com/2016/12/a-complete-8-bit-microcontroller-in-vhdl.html
