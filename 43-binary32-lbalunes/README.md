# Binary32


## Overview:

In this assignment, you are to develop three versions of a method/subroutine that encodes a real number into binary32 format.  This real number can be represented in scientific notation.  For example:

    ```
    + 1.1 0100 1110 0001  x2^  - 10 1001
    ```

Your method/subroutine is provided with four arguments that correspond to the four fields in the number's scientific notation representation.  These four fields are:
   1. the sign of the real number: '+'
   1. the coefficient: 1.1 0100 1110 0001
      - the coefficient is an integer value provided in fix point.
      - the radix point is set after the first digit from the left. 
   1. the sign of the exponent: '-'
   1. the exponent: 41

Review the file `encode_float.md` for the process to follow to encode a real binary number into binary32.


## Deliverables

The final deliverable of this project is a MIPS subroutine called `encode_binary32`.  

There are, however, two other deliverables that are Java programs.  The purpose of these Java programs are to ease the development of your MIPS subroutine. Once you have these programs working, you can then begin to develop your MIPS program.

The deliverables are

  1. encode_binary32.java 
     - Language: Java 
     - Description:
       * Straight foreword implementation of encode_binary32
     - Tag: java_v1

  1. encode_binary32.java 
     - Language: Java 
     - Description: 
       * The re-implementation first deliverable using the Java TAC style of coding
     - Tag: java_v2

  1. encode_binary32.s
     - Language: MIPS
     - Description: A transliteration of your java_v2 program
     - Tag: mips_v1


### Java Version #1
   1. Using the starter code, and the walk through the professor provided,
      develop your implementation of encode_binary32.

  1. Commit your Java code

     ```
      git add encode_binary32.java
      git commit -m 'first attempt at java_v1'
      ```

  1. Test your Java code

     ```
     javac encode_binary32.java
     java encode_binary32
     ```

  1. Ensure the output of your program is: 

     ```
     00101011010100111000010000000000
     ```

  1. Continue to update, commit, and test your program until it is working 100%

  1. Review your program one last time 
      - make any appropriate corrections, e.g., formatting changes
      - RE-TEST you code again
      - Commit and Push your final version of your code

      ```
      javac encode_binary32.java
      java encode_binary32
      git add encode_binary32.java
      git commit -m 'final version: java_v1'
      git push
      ```

  1. Tag and Push your Java code

     ```
     git tag java_v1
     git push --tags
     ```

### Java Version #2
   1. Using the starter code, and the walk through the professor provided,
      develop your implementation of encode_binary32.

  1. Commit your Java code

     ```
      git add encode_binary32.java
      git commit -m 'first attempt at java_v2'
      ```

  1. Test your Java code

     ```
     javac encode_binary32.java
     java encode_binary32
     ```

  1. Ensure the output of your program is: 

     ```
     00101011010100111000010000000000
     ```

  1. Continue to update, commit, and test your program until it is working 100%

  1. Review your program one last time 
      - make any appropriate corrections, e.g., formatting changes
      - RE-TEST you code again
      - Commit and Push your final version of your code

      ```
      javac encode_binary32.java
      java encode_binary32
      git add encode_binary32.java
      git commit -m 'final version: java_v2'
      git push
      ```

  1. Tag and Push your Java code

     ```
     git tag java_v2
     git push --force --tags
     ```

### MIPS Version #1
  1. Copy-and-paste your the CODE of INTEREST from your `encode_binary32` method into the appropriate place in `encode_binary32.s`
  1. Comment out the lines you just inserted
  1. Perform register allocation for all of your local variables
     - this is a bookkeeping task 

  1. Transliterate your Java code into MIPS
     - insert your MIPS code directly to the left of your Java code
     - only use the instructions provided in the following table. <br>

     TAC Instructions and Corresponding MIPS Instructions

      | TAC Equations                 | MIPS Instructions         |
      |-------------------------------|---------------------------|
      | `x = imm;`                    | `li x, imm`               |
      | `x = a;`                      | `move x, a`               |
      | `x = a + imm; `               | `addi x, a, imm`          |
      | `x = a - imm; `               | `subi x, a, imm`          |
      | `x = a + b;`                  | `add x, a, b`             |
      | `x = a - b;`                  | `sub x, a, b`             |
      | `x = a * b;`                  | `mul x, a, b`             |
      | `x = a >>> imm;`              | `srl a, imm`              |
      | `x = a >> imm;`               | `sra a, imm`              |
      | `x = a << imm;`               | `sll a, imm`              |

      | TAC Instruction               | MIPS Instruction          |
      |-------------------------------|---------------------------|
      | `if (a <cond> b) {`           | `b<! cond> a, b, alt`     |
      | `else {`                      | `# end of block`          |
      | `for(; a <cond> b ;) {`       | `b<! cond> a, b, done`    |
      | `while(a <cond> b) {`         | `b<! cond> a, b, done`    |
      | `continue;`                   | `b loop`                  |
      | `// break;`                   | `b done`                  |
      | `break;`                      | `b done`                  |
      | `}`                           | `# end of block`          |


      | `TAC <cond>` | `MIPS <cond>` | `MIPS <! cond>` |`TAC <! cond>` |
      |:------------:|:-------------:|:---------------:|:-------------:|
      | `<`          | `lt`          | `ge`            |  `>=`         |
      | `<=`         | `le`          | `gt`            |  `>`          |
      | `!=`         | `ne`          | `eq`            |  `==`         |
      | `==`         | `eq`          | `ne`            |  `!=`         |
      | `>=`         | `ge`          | `lt`            |  `<`          |
      | `>`          | `gt`          | `le`            |  `>=`         |
   


  1. Commit your MIPS code

     ```
     git add encode_binary32.s
     git commit -m 'first attempt at mips_v1'
     ```

  1. Launch MARS and test your code

  1. Ensure the output of your program is:

     ```
     00101011010100111000010000000000
     ```

  1. Continue to update, commit, and test your program until it is working 100%

  1. Review your program one last time 
      - make any appropriate corrections, e.g., formatting changes
      - RETEST you code again
      - Commit and Push your final version of your code

      ```
      mars encode_binary32.s
      git add encode_binary32.s
      git commit -m 'final version: mips_v2'
      git push
      ```

  1. Tag and Push your MIPS code
  
     ```
     git tag mips_v1
     git push --force --tags
     ```

---
## Files Provided:
   * encode_binary32.java: initial file to provide the method `encode_binary32`
   * encode_binary32.s: initial file to provide the subroutine `encode_binary32`
   * position_of_msb.s: macro to find the position of the most significant bit in a word
   * macros: a set of macros to make the life of student's a bit easier
     - syscalls.s
     - stack.s
     - subroutine.s
   * MIPS_OS_Interface.class: a class file that provides the equivalent of the MIPS macros

