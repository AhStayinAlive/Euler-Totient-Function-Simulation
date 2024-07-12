# Euler-Totient-Function-Simulation
This project simulates the Euler Totient function using Verilog. It involves designing the EulerTotient module, which takes clock (clk_0) and reset (R) signals to output values (A-G) for a 7-segment display. The TestBench module tests this design by simulating various inputs and verifying the corresponding outputs.


# Project Files
# Counter Module:

- Takes a clock (clk_0) and reset (R) signals.
- Outputs WO, XO, YO, ZO, ISO based on the clock signal using D flip-flops.
  
# EulerTotient Module:
- Takes clock (clk_0) and reset (R) signals.
- Outputs values (A-G) representing a 7-segment display.
- Uses the Counter module and XOR gates to process the input.
- Uses a ROM (Read-Only Memory) to decode the 4-bit address into 8-bit data for display segments.
  
# DflipFlop Module:
- Implements a D flip-flop for state storage in the Counter module.

# Rom0 Module:
- Implements a ROM that decodes 4-bit addresses into 8-bit data for the 7-segment display.

# TestBench Module:
- Simulates the EulerTotient module.
- Generates a clock signal and applies reset to the design.
- Displays the outputs (A-G) for verification at various simulation times.
  
# CircuitVerse File
- The CircuitVerse file is an autogenerated netlist code for the Euler Totient function simulation. It includes the following components:

# Counter Module:

- Utilizes D flip-flops to count based on clock and reset signals.
- Outputs intermediate signals for further processing.

# EulerTotient Module:
- Processes the counter outputs using XOR gates.
- Decodes the processed signals using ROM to generate 7-segment display outputs.
  
# DflipFlop Module:
- Implements the state storage mechanism used in the Counter module.

# Rom0 Module:
- Decodes the 4-bit address into 8-bit data for 7-segment display segments.
  
# How to Use
# Simulation:
- Use a Verilog simulator like Icarus Verilog at https://www.edaplayground.com/ to run the simulation.
- Load the EulerTotient and TestBench modules into the simulator.
- Observe the outputs (A-G) for various input combinations to ensure the function works correctly.
- 
# Testing:

- The TestBench module generates a clock signal and applies reset.
- Displays the 7-segment outputs (A-G) at various times to verify the correctness.
- Compare the displayed outputs with the expected results.
