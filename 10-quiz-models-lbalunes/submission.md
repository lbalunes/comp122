# Quiz #1: Models of Communication and Computation
### Date: February 17, 2023
### Estimated time: 1 hour
### Exam Time-frame
* Start: Friday: 15:00 (3:00pm)
* End: Sunday: 23:59 (midnight -1 min)

---
## Name: Leonard Balunes                                                 <!-- answer -->
## GitHub Account: lbalunes                                       <!-- answer -->


1. There are four theoretical machines that are built on top of combinational logic.  Enumerate each of these theoretical machines in the order of increasing computational power.  
   1.  Finite State Machine                                                  <!-- response -->
   1.  Pushdown Automata                                                   <!-- response -->
   1.  Linear Bounded Automata                                                   <!-- response -->
   1.  Turing Machines                                                   <!-- response -->
   

1. The OSI/ISO and TCP/IP models are closely aligned, where the OSI/ISO model is more theoretical and TCP/IP is a practical implementation of a subset of the OSI/ISO model.  These two models help us to better understand how messages can be effectively sent between to computers.  Answer the following questions:

   1. At which layer is the `http` protocol associated?
      *   Layer 7: Application                                                <!-- response -->

   1. At which layer is a MAC address used to name a communication end-point?
      *   Layer 2: Data Link/Link                                                <!-- response -->

   1. What layer is only concerned with the mechanism to send symbols (e.g., electric impulses) over some medium.
      *   Layer 1: Physical                                                <!-- response -->

   1. What layer is used to support the communication that performed by a USB hub?
      *   Layer 1: Physical                                                <!-- response -->

   1. What layer is used to ensure that a message that is sent is actually received by the intended receiver.
      *   Layer 4: Transport                                                <!-- response -->

1. The Process Status Diagram is used to model the life-cycle of a process.  This diagram contains the five states in which a process can be in.  Enumerate the names of each of these states:
   1.  New                                                   <!-- response -->
   1.  Waiting(Ready)                                                   <!-- response -->
   1.  Running                                                   <!-- response -->
   1.  Blocked                                                   <!-- response -->
   1.  Terminated                                                   <!-- response -->

1. What type of digit circuit introduces the notion of state?  Stated another way, what type of digit circuit is necessary to store a data value that is either a 0 or a 1?
   -  Sequential Circuits                                                    <!-- response -->

1. Define the following terms:
   1. interrupt
      - asynchronous events that can occur outside of a program or process. It may or may not be assoicated with the program.                                                 <!-- response -->
   1. trap
      -  Synchronous events that can occur inside of a program or process. Some of these events are can error conditions or requests.                                                  <!-- response -->
   1. lval
      -  The value or the address of a lable that located in the memory.                                                  <!-- response -->
   1. rval
      -  The value located at an address in memory that can either be "integer", "float", "char", etc                                                <!-- response -->
   1. kernel
      -  The core of a computer's operation system that manages the hardware and software of the computer.                                                 <!-- response -->

1. Provide the MIPS instruction that is equivalent to the following Java statements (which are written in TAC style).
   * $v0 = $v0 + $a0;          
     -   add $v0, $v0, $a0                                                   <!-- response -->
   * $v0 = $v0 + 4;
     -   addi $v0, $v0, 4                                                 <!-- response -->
   * $t0 = 1;
     -  li $t0, 1                                                  <!-- response -->
   * $t8 = $s2
     -  move $t8, $s2                                                  <!-- response -->

1. Explain why the MIPS microarchitecture is a physical implementation of the Harvard abstract model as opposed to the von Neumann abstract model.
  >   Based on the diagrams, Harvard architecture uses two separate memories <!-- response -->     (instruction memory and data memory) and Mips diagram showcasing two memories   <!-- response -->
  being used. Unlike Von Neuman which it seems like it shares only one memory. <!-- response -->
  MIPS microarchitecture shares various pathways of memory and <!-- response -->
  instructions being passed around the center of a control unit. <!-- response -->
  Similar to diagram showned in Harvard Model. The Five steps for MIPS  <!-- response -->
  architecture is also similar to the steps of the Execution Cycle of the Harvard <!-- response -->
  model. <!-- response -->
  
  <!-- You many use as many of lines as you want.  Make sure each line has the response tag at the end. -->


1. Given the following configuration of memory, answer the following questions:
   1. What is the value stored in memory at location `0x0101 0003`: 
      -   202                                                <!-- response -->
   1. What is the label associated with location `0x0101 0001` in memory
      -   A                                                <!-- response -->
   1. What is the lval associated with `B`:  
      -  0x0101 0003                                                 <!-- response -->
   1. What is the rval associated with `B`:
      -    202                                               <!-- response -->
   1. What is the rval associated with `D[1]`:
      -    253                                               <!-- response -->
   1. What is the lval associated with `D[0]`:
      -   0x0101 0009                                                 <!-- response -->

| labels  | memory |  address     |
|---------|--------|--------------|
|         | 253    |  0x0101 000A |
| D:      |  42    |  0x0101 0009 |
|         |   0    |  0x0101 0008 |
|         |   1    |  0x0101 0007 |
|         |   2    |  0x0101 0006 |
| C:      |   3    |  0x0101 0005 |
|         |  77    |  0x0101 0004 |
| B:      | 202    |  0x0101 0003 |
|         |  54    |  0x0101 0002 |
| A:      | 123    |  0x0101 0001 |


