# VSD_FPGA_labs
Learnings and Lab Excersices 
----------------------------------------------
# Day 1
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

### **VIO- Virtual input output**
Theses are basically a virtual way of montioring the signals in real time on an ILA (integrated logic analyzer). 
## **Day_1_Lab**

> ## **UP_Counter in vivado**
> **SIMULATION**
> <img width="1910" height="653" alt="image" src="https://github.com/user-attachments/assets/db63b610-3201-4482-97cc-3ecf667281be" />

> **PIN_Mapping**
> <img width="1566" height="469" alt="image" src="https://github.com/user-attachments/assets/40a91643-ab59-4f2e-aefb-5e0d8fd10f65" />

> **Schematic_in_elaborated_design**
> <img width="1903" height="909" alt="image" src="https://github.com/user-attachments/assets/d7900ebc-3cc9-40aa-8c4d-c6b5ec45b985" />

> **Timing Summary**
> <img width="1568" height="654" alt="image" src="https://github.com/user-attachments/assets/275e2126-1fdf-42e0-aff0-85cf5ff92f2d" />

> **Utilization Report**
> <img width="1920" height="821" alt="image" src="https://github.com/user-attachments/assets/524af62c-03db-451d-865a-9dc49510c8f5" />

> **Implemented_design**
> <img width="1920" height="793" alt="image" src="https://github.com/user-attachments/assets/b19ab75a-7d60-4b11-bae1-4f54c0b322ca" />

> **Bitstream_generated_succssfully**
><img width="1920" height="834" alt="image" src="https://github.com/user-attachments/assets/63c340ff-3a07-460d-9d08-b6cb89231f19" />

> Code and testbench can be found [here](https://github.com/Priy-Priyesh16/VSD_FPGA_labs/tree/main/UP_Counter/UP_Counter.srcs)
---------------------------------------------------

# Day 2
### Open FPGA Introduction
OpenFPGA is the first open‑source FPGA IP generator, enabling highly customizable FPGA architectures. With built‑in Verilog‑to‑bitstream flows and self‑testing verification, it empowers agile prototyping and democratizes FPGA design for researchers and chip developers.
Open Source framework whcih can be used to quickly genreate a fabric fro a custom FPGA ready to be used in feilds where there is a need of custom fpga with quick results. 
How is this better that traditional FPGAs?
Automation technique is used heavily throughout the process, 
This reduces the Development cycle of a new FPGA
Also has accessto open source design tools. 
It is helpful in accelarating the domain specific needs since prototyping and customizing a FPGA is expensive and time consuming. 

### Flow of Process.
<img width="923" height="699" alt="image" src="https://github.com/user-attachments/assets/494bd7de-59f7-4ea3-8e2f-8ce07d9d23aa" />
Link to the above image is [here](https://openfpga.readthedocs.io/en/master/_images/openfpga_framework.svg)

---
Open FPGA supports the following
1. Verilog
2. SDC
3. Bitstream generation
4. FPGA-Spice
---
Key Stages duing the Process:
1. VTR
   - a. Verilog to Routing
   - Tools used:
   - I. Odin II (Elaboration & Synthesis)
   - II. ABC (Logic Optimization & technology Mapping to LUTs)
2. VPR
   - a. Pack the Netlist
   - b. Placement
   - c. Routing
   - d. Timing Analysis
3. After VTR & VPR : Output Statistics is also published like
   - a. Min no of tracks needed
   - b. route
   - c. total wire length
   - d. circuit speed
   - e. area
   - f. power
4. Post Synthesis netlist.

### VTR FLOW
<img width="905" height="681" alt="image" src="https://github.com/user-attachments/assets/47d96733-614c-4264-b57d-9f9e9dc2b31d" />

### Steps to run the tool 
   -Build Open FPGA [steps here](https://openfpga.readthedocs.io/en/master/tutorials/getting_started/compile/)
   -Build VTR [steps here](https://docs.verilogtorouting.org/en/latest/quickstart/#)
   -Run VPR on pre synthesised Circuit

   another path could be
   first two steps common (build open fpga and VTR (should be one time process))
   - run on a custom deisgn
   - also the entoire process can be automated using the scripts to automate the runs of odin II and ABC.
---
## Command to run VPR on a Pre_Synthesised circuit
COmmand: > $VTR_ROOT/vpr/vpr \
    $VTR_ROOT/vtr_flow/arch/timing/EArch.xml \
    $VTR_ROOT/vtr_flow/benchmarks/blif/tseng.blif \
    --route_chan_width 100
# Day 2 LAB
---
## Running VTR on pre synthesised circuit
---
Setting up the working directory
<img width="937" height="289" alt="image" src="https://github.com/user-attachments/assets/40cb9439-2e22-4e7d-b708-f933a3b7290f" />

   - RUnning the command 
   - $VTR_ROOT/vpr/vpr $VTR_ROOT/vtr_flow/arch/timing/EArch.xml $VTR_ROOT/vtr_flow/benchmarks/blif/tseng.blif  --route_chan_width 100 --disp on
   
   <img width="1908" height="913" alt="image" src="https://github.com/user-attachments/assets/910b34f1-ed0b-4a6d-b16d-51b4ba8d7ca8" />
   <img width="1346" height="873" alt="routing_pre_synth_circuit" src="https://github.com/user-attachments/assets/2a734421-7fa9-4c25-81fe-7f5c7f9fa735" />

**Once the Command above is ran. We get a full report**
---

<img width="1069" height="705" alt="image" src="https://github.com/user-attachments/assets/b7d23a7b-0ad0-47dd-9426-a467e254d291" />

**All the reports are generated and sved in the working directory**

<img width="998" height="200" alt="image" src="https://github.com/user-attachments/assets/da5d95c0-1c18-42ef-b629-6aa8a224d995" />

----
|critical_path_highilighted| critical_path_with_delays_highlighted|
|---|---|
| <img width="834" height="647" alt="image" src="https://github.com/user-attachments/assets/61255ef0-6d82-47d7-b9dd-e60c020b4d21" /> | <img width="541" height="369" alt="image" src="https://github.com/user-attachments/assets/673cddc2-c629-40d5-9e98-048941add737" /> |
| Routing Critical Paths | Routing critical path delays highlighted    |
| <img width="738" height="391" alt="image" src="https://github.com/user-attachments/assets/c5abd178-2866-4c38-b980-ef999f5c9fa6" /> | <img width="734" height="375" alt="image" src="https://github.com/user-attachments/assets/a8962855-aa09-470f-a663-fa2bea87c07e" />
    |
