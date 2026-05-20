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
>Programmable  IO : These are the link beteen the peripherials and the fpga. They basically act as a bridge between the outer world and FPGA.
>CLB (Configurable Logic Block) : These consistsof LUT, FlipFlopsand Multiplexer. 
>Interconnects: These are connecting wires between the differnet CLBS and IO pads.
<img width="993" height="687" alt="image" src="https://github.com/user-attachments/assets/be715e02-6d4b-4c11-b97a-490de55b054a" />
>The FPGA may Have internal memory inteh form of RAM blocks and clock tiles as well.

### **LUT Structure**
It basically consists of muxes in side them, based on the input provided the data path is decided.  
If there is a 2:1 mux, the output of the truth table will act as an input to the LUT ( this is handled by the Tool)  
<img width="983" height="869" alt="image" src="https://github.com/user-attachments/assets/7232fc5a-7c60-45a3-9e8d-11465293e2a5" />  

### **FPGA Design Flow**
<img width="1051" height="909" alt="image" src="https://github.com/user-attachments/assets/52c1ec6c-ad77-493c-9785-0f0ea3adaec8" />
First the Architeure is to be finalized and decided. The the RTL code is written, the written code is supposed to be synthesisable, once the simulation is completed  
Synthesis is then done in which a timing analysis is performed, also the pin asignment is done in tis stage using the constraints file.  
Implmentation is then performed after a succesful synhtesis, in this stage also a timing analysis is performed, slack hold and setup should be possitve for the deisgn to behave correctly.  
### **What cannot be synthesised**
1. Delay interms of # ( only to be used in simulation).
2. initial statement
3. infinite loops
4. Dynamic Memory Allocation

### **Different ways of programming a FPGA board**
1. Using JTAG
2. Using VIO

##**UP_Counter in vivado**
**SIMULATION**
<img width="1910" height="653" alt="image" src="https://github.com/user-attachments/assets/db63b610-3201-4482-97cc-3ecf667281be" />

**Schematic_in_elaborated_design**
<img width="1888" height="902" alt="image" src="https://github.com/user-attachments/assets/f8d05f19-7ac7-4bd8-89de-6ec9629fa8de" />

Code and testbench can be found [here](https://github.com/Priy-Priyesh16/VSD_FPGA_labs/tree/main/UP_Counter/UP_Counter.srcs)

