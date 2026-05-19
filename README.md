# VSD_FPGA_labs
Learnings and Lab Excersices 
----------------------------------------------
## Day 1
### **Basics of FPGA**
 History of Programmable logic devices
 1. Programmable logic array 
 2. CPLD - Complex Programmable Logic Device
 3. FPGA - Feild Programmable Gate Array
 These are all reprogrammable logic devices as per our design. Helpful in prototyping.
 ### **ASIC vs FPGA**
|                       _ASIC_                      |                  _FPGA_             |
| -------------------------------------------------- | ----------------------------------|    
One time Programmable                                |           Reprogrammable
Expensive when to be used in less quantity           |           Expensive when to be used in large quantity
Used for specific purposes                           |      Can be used for different applications as it is reprogramable
RTL to Layout                                        |      RTL to Bitstream
layout to be sent to the foundary                    |    bitstream can be directly programmed to a FPGA
### **Aplications of FPGA**
1. Hardware Acceleration
2. Space Technology
3. Defence & Research
4. High Speed Computing
5. ML & AI applications
### **FPGA Architecture**
<img width="1077" height="620" alt="image" src="https://github.com/user-attachments/assets/fc6461a4-8252-48f1-8df6-b9fcb6df94bf" />
Programmable  IO : These are the link beteen the peripherials and the fpga. They basically act as a bridge between the outer world and FPGA.
CLB (Configurable Logic Block) : These consistsof LUT, FlipFlopsand Multiplexer. 
Interconnects: These are connecting wires between the differnet CLBS and IO pads.
