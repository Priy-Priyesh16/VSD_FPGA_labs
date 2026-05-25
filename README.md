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
---
## VTR FLOW
---
VTR basically has three stages 
   1. Elaboration & Synthesis (ODIN II)
   2. Logic Optimization & Technology Mapping (ABC)
   3. Packing, Placement, Routing & Timing Analysis (VPR)
---
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
| <img width="738" height="391" alt="image" src="https://github.com/user-attachments/assets/c5abd178-2866-4c38-b980-ef999f5c9fa6" /> | <img width="734" height="375" alt="image" src="https://github.com/user-attachments/assets/a8962855-aa09-470f-a663-fa2bea87c07e" /> |
| Block pin Utilization| Congestion with nets|
| <img width="814" height="688" alt="image" src="https://github.com/user-attachments/assets/df2c01a8-ece8-43e8-a905-c7425c6528f7" /> | <img width="968" height="939" alt="image" src="https://github.com/user-attachments/assets/2f02d994-e5a0-46aa-98c0-cb8ccd1800d3" /> |
|Total Routing Cost | post routing cost |
|<img width="973" height="936" alt="image" src="https://github.com/user-attachments/assets/93e619b1-4c46-4543-9ea5-4915de7b04ec" /> |<img width="1647" height="889" alt="image" src="https://github.com/user-attachments/assets/0eff587e-4362-4523-9d87-24c916670a90" /> |
----

Looking at the timing report we found that there was not constraint put up so we were getting a negative slack, as the time to arrive was not specified. 
<img width="1229" height="766" alt="image" src="https://github.com/user-attachments/assets/6dfc2222-1386-4663-b714-74fb831d74f3" />

So to fix this we added a timing constraint file 
```
create_clock -period 10 -name pclk
set_input_delay -clock pclk -max 0 [get_ports {*}]
set_output_delay -clock pclk -max 0 [get_ports {*}]
```
Now pass this command again in the working directory 

```
$VTR_ROOT/vpr/vpr \
$VTR_ROOT/vtr_flow/arch/timing/EArch.xml \
$VTR_ROOT/vtr_flow/benchmarks/blif/tseng.blif \
--route_chan_width 100 \
--sdc_file <complete file path here with out bracket without quotes> 

```

Doing this is now giving is slack based on the calulation done as per constraint file.

<img width="1218" height="654" alt="image" src="https://github.com/user-attachments/assets/9296f26e-a5a6-4e9f-b680-f22f50e66c48" />
---

## Running the entire flow manually yet using the python_flow.py script. 
---
Run this command

```
$VTR_ROOT/vtr_flow/scripts/run_vtr_flow.py <location of your design file> <location of rchfile>$VTR_ROOT/vtr_flow/arch/timing/EArch.xml <a temp dir to store nay file generated during run time for temporary purpiose>-temp_dir . --route_chan_width 100
```
<img width="743" height="249" alt="image" src="https://github.com/user-attachments/assets/e9fc1aac-0dc9-4ffe-9e96-a02d25907042" />

It can be seen in the above image thatcertain .blif file are generated. 

Now to perform rest of the steps. We will pass the generated .blif file and the architecture on which we wish to syht / PnR our design.
```
$VTR_ROOT/vpr/vpr $VTR_ROOT/vtr_flow/arch/timing/EArch.xml up_counter --circuit_file up_counter.pre-vpr.blif --route_chan_width 100 --analysis --disp on
```

|Block_inernals|Block Pin utilization|
|---|---|
| <img width="1600" height="560" alt="image" src="https://github.com/user-attachments/assets/6c8914c2-2e61-424c-baca-4c944e947df6" /> | <img width="1616" height="815" alt="image" src="https://github.com/user-attachments/assets/d94bab33-c71f-4a7a-97d0-17100cd03ad7" /> |
|Routing |Congestion with nets|
|<img width="906" height="832" alt="image" src="https://github.com/user-attachments/assets/cfb789c2-23c1-41a4-9b4b-37a48f7b545e" /> | <img width="862" height="812" alt="image" src="https://github.com/user-attachments/assets/a4b1114c-62aa-41bb-af5b-828bbd520af3" /> |

----
Generating post implemetation netlist
```
$VTR_ROOT/vpr/vpr $VTR_ROOT/vtr_flow/arch/timing/EArch.xml up_counter --circuit_file up_counter.pre-vpr.blif --gen_post_synthesis_netlist on
```
Runing this will generate a .v and .sdf file
<img width="731" height="87" alt="image" src="https://github.com/user-attachments/assets/27de1462-71ec-470f-abbe-a2c15014c7db" />
Running Thsi post synth file for simulation along with the sdf (delay file generated in the process) and the test bench file. 
<img width="1920" height="478" alt="image" src="https://github.com/user-attachments/assets/0acc93b2-c689-4b36-b144-7ed197b2991e" />
All the related code can be found here[/design/Day_2] & [[testbench/Day2](https://github.com/Priy-Priyesh16/VSD_FPGA_labs/blob/main/testbench/counter_tb.v)]

# Day 3
----
A 5 stage pipelined RISC-V core namely RVMYTH has been used to implement the addition of first 9 numbers in number system. The code was initallay developed in TL-Verilog to be used in another platforms. It has been converted to verilog code and has been used to implement a full RTL to bitstream in Vivado. 
---
RISC-V hasd multiple blocks namely 
   - Instruction Memeory
   - Data memory
   - Register Files
   - ALU
----
The execution on a RISC-V core happens in the following sequence:
   1. Fetch: PC fetches the instruction from Instruction Memory.
   2. Decode: Control Unit breaks down the instruction to determine operations (e.g., ALU, load/store) and reads required registers from the Register File.
   3. Execute: The ALU performs math or calculates the address.
   4. Memory: If it is a Load/Store instruction, the ALU result is passed to Data Memory to read/write data.
   5. Write Back: The result is saved back into the Register File
----
# Day 3 Lab
----
## **Behavioural Simulation** 
----
After runnging the code in vivado's behavioural simulation this wave form was generated. which shows that the output generated is 45 (sum of first 9 numbers)
<img width="1900" height="590" alt="image" src="https://github.com/user-attachments/assets/d0821770-9bbc-4ff8-8a83-9175ceade45b" />

----
## **Schematic Design**
----
After runnign the elaboration step teh schematic can be obtained
<img width="1625" height="925" alt="image" src="https://github.com/user-attachments/assets/53d5bcc2-491e-4e87-a020-8f4e6711c752" />

We can also get the io planning done so that the pins can be assigned to the ports. The ouutput ports are not assigned as they will be viewd on an ILA. 
<img width="1613" height="921" alt="image" src="https://github.com/user-attachments/assets/08101667-b77e-4f34-855a-8f1aa44d8aa1" />

----
## **Running Synthesis and Updating the Constraints**
----
> Constraints updated
<img width="1072" height="552" alt="image" src="https://github.com/user-attachments/assets/1e2f9f8b-8839-4266-b9ec-df5923ab5dda" />

> Timing Summary post synthesis
<img width="1305" height="346" alt="image" src="https://github.com/user-attachments/assets/4f4b8046-f7a8-4019-af5d-9c7ab9566fbd" />

> Utilization
<img width="1099" height="626" alt="image" src="https://github.com/user-attachments/assets/82947624-08d7-4579-b025-1145f8e4d0e5" />

----
During the entire flow of synthesis to Bitstream the design is converted into required logic and placed on the CLB of the fpga that is made up fo LUT, FLip Flops and MUX, ench clb getting connected via several interconnects, connecting one CLB to other and when nedded conecting the IO pads to CLB. 

----
## **Running Implementation and generating Bitstream**
----

> POST implementation view
<img width="1781" height="999" alt="image" src="https://github.com/user-attachments/assets/0ecaeffd-ffe3-4c67-b9c2-7b9f9de86be2" />

----

> Timing analysis after Implementation
<img width="1327" height="356" alt="image" src="https://github.com/user-attachments/assets/ff5d20ab-d886-4814-a690-b067c986b91b" />

----

> Resource utilization report
<img width="1521" height="647" alt="image" src="https://github.com/user-attachments/assets/d71cead4-6a7a-46f0-a9c8-89abc4e96e5d" />

----

> Power analysis after Implementation
<img width="1082" height="562" alt="image" src="https://github.com/user-attachments/assets/3783e271-b9e0-479e-96c4-c8b054857a5a" />

----
# Day 4
----

SOFA (Skywater Opensource FPGAs) are a series of open-source FPGA IPs using the open-source Skywater 130nm PDK and OpenFPGA framework.
This repository utilizes the FPGA1212_QLSOFA_HD_PNR FPGA IP design, capable of operating at a maximum frequency of 50MHz. The design features 1152 LUTs, 2304 Flip-flops, and 1152 soft adders. It is implemented using the OpenFPGA framework, through which various performance and implementation reports are generated.

----
# Day 4 LAB
----
After mapping the repo of SOFA. 
reaching till the directory of ``` /SOFA/FPGA1212_QLSOFA_HD_PNR/  ```
run the following command
```
make runOpenFPGA
```
Once this is successful, it will genererate several files. 
<img width="1908" height="256" alt="image" src="https://github.com/user-attachments/assets/66e80a89-8e00-4d3a-b2c4-fd8d30e56fa9" />

> The openfpgashell.log is a file that has all kinds of information, like the commands it has run, differnet kinds of report like tming, area power , if you have provided .sdc you will get timing report. 
<img width="1231" height="858" alt="image" src="https://github.com/user-attachments/assets/10dbb71e-40ed-4796-b8f0-2c6f14ca229c" />
<img width="1410" height="468" alt="image" src="https://github.com/user-attachments/assets/4f58b487-f372-4b14-95b3-629a49e3ef92" />

> To check the resource utilization one can use the vpr_stdout.log
<img width="1874" height="184" alt="image" src="https://github.com/user-attachments/assets/7b543525-9f26-49f7-b08b-fa4e7138961f" />
<img width="961" height="463" alt="image" src="https://github.com/user-attachments/assets/a235974f-7dc2-48de-af36-6a38799e10ba" />
<img width="612" height="504" alt="image" src="https://github.com/user-attachments/assets/c9a48515-0a51-484b-bf2b-a73d61410265" />

## Running timing analysis.
----
Modifying the VPR Command to the following now 
```
vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} --clock_modeling ideal --device ${OPENFPGA_VPR_DEVICE_LAYOUT} --route_chan_width ${OPENFPGA_VPR_ROUTE_CHAN_WIDTH} --absorb_buffer_luts off --sdc_file /home/priyeshpriyadarshi1600/vtr_flow_lab/Day_4/SOFA/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/BENCHMARK/up_counter_day4/counter.sdc
```
<img width="1619" height="749" alt="image" src="https://github.com/user-attachments/assets/b65e236f-e2c1-4bab-85d4-89ff1d91b22b" />

----
## Generating post Ipl Netlist
----
Modify the command inside "generate_testbench.openfpga"
```
vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} --clock_modeling ideal --device ${OPENFPGA_VPR_DEVICE_LAYOUT} --route_chan_width ${OPENFPGA_VPR_ROUTE_CHAN_WIDTH} --absorb_buffer_luts off --sdc_file /home/priyeshpriyadarshi1600/vtr_flow_lab/Day_4/SOFA/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/BENCHMARK/up_counter_day4/counter.sdc --gen_post_synthesis_netlist on
```
