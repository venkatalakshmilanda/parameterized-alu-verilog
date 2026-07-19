# Parameterized ALU using Verilog HDL

## Overview

This project implements a parameterized Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU supports arithmetic, logical, and shift operations with configurable data width. The design also generates Carry Flag (CF), Zero Flag (ZF), and Overflow Flag (OF).

## Features

- Parameterized data width
- Addition
- Subtraction
- AND
- OR
- XOR
- NOT
- Left Shift
- Right Shift
- Carry Flag (CF)
- Zero Flag (ZF)
- Overflow Flag (OF)

## Supported Operations

| Opcode | Operation |
|--------|-----------|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | AND |
| 0011 | OR |
| 0100 | XOR |
| 0101 | NOT |
| 0110 | Left Shift |
| 0111 | Right Shift |

## Project Structure

```
parameterized-alu-verilog/
├── rtl/
│   └── alu.v
├── testbench/
│   └── tb.v
├── waveforms/
│   └── alu_waveform.png
├── README.md
└── LICENSE
```

## Tools Used

- Verilog HDL
- EDA Playground
- EPWave

## Simulation Waveform

Upload your waveform screenshot to the `waveforms` folder and then uncomment the line below:

```markdown
![ALU Waveform](waveforms/alu_waveform.png)
```

## Author

**Venkata Lakshmi**

- Electronics and Communication Engineering (ECE) Student
- Aspiring RTL Design Engineer
- Learning Verilog, Digital Design, and VLSI
