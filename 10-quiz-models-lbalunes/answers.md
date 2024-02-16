# Quiz #1: Models of Communication and Computation
### Date: February 17, 2023
### Estimated time: 1 hour
### Exam Time-frame
* Start: Friday: 15:00 (3:00pm)
* End: Sunday: 23:59 (midnight -1 min)

---
## Name: Steven Fitzgerald (Answer Key)                   <!-- answer -->
## GitHub Account: smf-steve                              <!-- answer -->


1. There are four theoretical machines that are built on top of combinational logic.  Enumerate each of these theoretical machines in the order of increasing computational power.  
   1. Finite State Machine                                <!-- response -->
   1. Push Down Automata                                  <!-- response -->
   1. Linear Bound Automata                               <!-- response -->
   1. Turning Machine                                     <!-- response -->

1. The OSI/ISO and TCP/IP models are closely aligned, where the OSI/ISO model is more theoretical and TCP/IP is a practical implementation of a subset of the OSI/ISO model.  These two models help us to better understand how messages can be effectively sent between to computers.  Answer the following questions:

   1. At which layer is the `http` protocol associated?
      * Layer 7, the Application Layer                    <!-- response -->

   1. At which layer is a MAC address used to name a communication end-point?
      * Layer 2, the Data Link Layer                      <!-- response -->

   1. What layer is only concerned with the mechanism to send symbols (e.g., electric impulses) over some medium.
      * Layer 1, the Physical Layer                       <!-- response -->

   1. What layer is used to support the communication that performed by a USB hub?
      * Layer 1, the Physical Layer                       <!-- response -->

   1. What layer is used to ensure that a message that is sent is actually received by the intended receiver.
      * Layer 4, the Transport Layer                      <!-- response -->

1. The Process Status Diagram is used to model the life-cycle of a process.  This diagram contains the five states in which a process can be in.  Enumerate the names of each of these states:
   1. New:  The process has been created.                 <!-- response -->
   1. Waiting: The process is waiting to use the CPU.     <!-- response -->
   1. Running: The process is executing in the CPU.       <!-- response -->
   1. Block: The process is waiting for the kernel/OS.    <!-- response -->
   1. Terminated: The process performed the 'exit' trap.  <!-- response -->

1. What type of digit circuit introduces the notion of state?  Stated another way, what type of digit circuit is necessary to store a data value that is either a 0 or a 1?
   - a sequential circuit                                 <!-- response -->

1. Define the following terms:
   1. interrupt
      - an asynchronous event that cause the current process to be moved out of the CPU.    <!-- response -->
   1. trap
      - a synchronous event associated with a process requiring the the kernel to execute.  <!-- response -->
   1. lval
      - the memory location associated with a label or variable.                            <!-- response -->
   1. rval
      - the value stored in memory associated with a label or variable.                     <!-- response -->
   1. kernel
      - the core component of the Operating System that always resides within main memory.  <!-- response -->

1. Provide the MIPS instruction that is equivalent to the following Java statements (which are written in TAC style).
   * $v0 = $v0 + $a0;          
     - add $v0, $v0, $a0                                  <!-- response -->
   * $v0 = $v0 + 4;
     - addi $v0, $v0, 4                                   <!-- response -->
   * $t0 = 1;
     - li $t0, 1                                          <!-- response -->
   * $t8 = $s2
     - move $t8, $s2                                      <!-- response -->

1. Explain why the MIPS microarchitecture is a physical implementation of the Harvard abstract model as opposed to the von Neumann abstract model.
  > The Harvard model contains two memories, where as the von Neumann model has one unified memory. <!-- response -->
  > The MIPS microarchitecture also contains two memories, one for instructions (code) and one for data (variables).                                                      <!-- response -->



1. Given the following configuration of memory, answer the following questions:
   1. What is the value stored in memory at location `0x0101 0003`: 
      - 202                                        <!-- response -->
   1. What is the label associated with location `0x0101 0001` in memory
      - A:                                         <!-- response -->
   1. What is the lval associated with `B`:  
      - 0x0101 0003                                <!-- response -->
   1. What is the rval associated with `B`:
      - 202                                        <!-- response -->
   1. What is the rval associated with `D[1]`:
      - 253                                        <!-- response -->
   1. What is the lval associated with `D[0]`:
      - 0x0101 0009                                <!-- response -->

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



