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
## Name: Leonard Balunes                                           <!-- response -->
## GitHub Account:  lbalunes                                <!-- response -->

1. On a scratch piece of paper, draw the circuit for a 1-to-2 decoder.  This decoder should have two inputs: A and E; with two outputs: X and Y. Provide the Boolean expression for X and Y.
   * X: 
     - A'                                    <!-- response -->
   * Y: 
     -  A                                   <!-- response -->

1. A mux (multiplexer) is a type of digital device.  Briefly describe the purpose or use of this type of device within a CPU.  Your answer should include some information related to your knowledge of the MIPS architecture.

   >  Used as a data selector to select data line transmit.                             <!-- response -->
   >  brings data line to ALU.                               <!-- response -->
   >  choose an output from one of the inputs    <!-- response -->
   >  writes back to register files after executing and memory access.                           <!-- response -->

   <!-- As always, add or delete lines with response tags as necessary! -->

1. Simplify the following Boolean expression.

   - A'B'C + A'B'C' + ABC


   You answer, below, needs so show each step in the simplification process and also identify the property your used on each step.

   1. A'B(C+C') + ABC   ;  distribution property                               <!-- response -->
   1. A'B'1  + ABC      ;     complemennt property   (C+C')                                <!-- response -->
   1. A'B' + ABC      ;     identity law A'B'1 = A'B'                              <!-- response -->
   1. A'B' + ABC     ; final                                       <!-- response -->
   

   <!-- As always, add or delete lines with response tags as necessary! -->

1. Given the following Boolean algebra expression, provide both the one-d and two-d truth table. (In this question, you need not worry about the response tags.)

   *  A*(B' + C)                                    

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

   - PC: 8      <!-- response -->

   <!-- If you think you can NOT answer this question because you don't have a specific value for the PC, then you need to remember you can treat PC like a variable.  -->

