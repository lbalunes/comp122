# Quiz #3: Digital Logic
### Date: May 10 & April 11, 2023
### Estimated time: 1 hour and 45 minutes
### Exam Time-frames
* During Your Assigned Class Time 
  - Monday: 9:00 - 10:45
  - Monday: 2:00 - 3:45
  - Tuesday: 9:00 - 10:45
  - Tuesday: 2:00 - 3:45

### This is an open notes quiz.

---
## Name:   Answer Key                               <!-- response -->
## GitHub Account:                                  <!-- response -->

1. On a scratch piece of paper, draw the circuit for a 1-to-2 decoder.  This decoder should have two inputs: A and E; with two outputs: X and Y. Provide the Boolean expression for X and Y.
   * X: 
     -  AE                                   <!-- response -->
   * Y: A'E
     -  A'E                                <!-- response -->

1. A mux (multiplexer) is a type of digital device.  Briefly describe the purpose or use of this type of device within a CPU.  Your answer should include some information related to your knowledge of the MIPS architecture.

   >  It allows the value of one and only one input source         <!-- response -->
   >  to become the output of circuit.                             <!-- response -->
   >  The ALU includes a mux to select the desired output,         <!-- response -->
   >  each of the ALU functions are ALL computed in parellel.      <!-- response -->

   <!-- As always, add or delete lines with response tags as necessary! -->

1. Simplify the following Boolean expression.

   - A'B'C + A'B'C' + ABC

   You answer, below, needs so show each step in the simplification process and also identify the property your used on each step.

   1.  A'B'(C + C') + ABC : distributive   <!-- response -->
   1.  A'B'(1) + ABC      : complement     <!-- response -->
   1.  A'B' + ABC         : identity       <!-- response -->

   <!-- As always, add or delete lines with response tags as necessary! -->

1. Given the following Boolean algebra expression, provide both the one-d and two-d truth table. (In this question, you need not worry about the response tags.)

   *  A*(B' + C) 
      - If A is false, then the output is false.  Hence the first four rows inthe table are 0s.                                   

   1. the one-d truth table

      |  A |  B |  C | Output |
      |----|----|----| ------ |
      |  0 |  0 |  0 |   0    |
      |  0 |  0 |  1 |   0    |
      |  0 |  1 |  0 |   0    |
      |  0 |  1 |  1 |   0    |
      |  1 |  0 |  0 |   1    |
      |  1 |  0 |  1 |   1    |
      |  1 |  1 |  0 |   0    |
      |  1 |  1 |  1 |   1    |

   1. the two-d truth table

      |   |   | BC <br> 00 | BC <br> 01 | BC <br> 11 | BC <br> 10 | 
      |---|---|     --     |     --     |     --     |     --     | 
      | A | 0 |     0      |     0      |     0      |     0      | 
      | A | 1 |     1      |     1      |     1      |     0      | 


1. Consider the following MIPS code.

   ```mips
         li $s1, 5
         li $s2, -5
         beq  $s1, $s2, skip
           addi $t2, $t4, $t6
           lw $s2, 8($t2)
   skip: nop
         li $t2, 2
   ```

   What is the value of the PC after the `beq` instruction is executed?

   - PC:  PC + 4   
     * The branch is not taken, hence the branch is not taken, and the 'addi' instruction is executed next. <!-- response -->
     * As such, 4 is added to the PC since every instruction requires 4 bytes.  <!-- response -->

   <!-- If you think you can NOT answer this question because you don't have a specific value for the PC, then you need to remember you can treat PC like a variable.  -->

