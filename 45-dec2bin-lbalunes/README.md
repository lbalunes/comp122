# Real: Decimal to Binary Conversion
## Due Date: Apr 13 23:59:59

## Tasks:

  1. Write a Java program (using the Java TAC style) that converts a real number into a binary number.
     - Utilize the code discussed and developed in class, see
       * 05-whole2bin
       * 06-fractional2bin
     - Incorporate a new main method as provided in notes_04_05.md
       * recall that this code had numerous errors that were discussed and fixed in class.
     - Modify the program to ensure proper integration

  1. Write a MIPS program (transliterated from your Java code) that converts a real number into a binary number.
     - Utilize the code discussed and developed in class, see
       * 05-whole2bin
       * 06-fractional2bin
     - Create the dec2bin.s file by copying the code provided below
       * This code will be discussed in class
     - Modify the program to ensure proper integration

  In short, this assignment is to incorporate the information you have been learning in class over the last several weeks, and the code that we have developed in class.  Of course, this task also requires you to modify the code to fix any bugs, to ensure proper integration, and to produce the desired output.


## Example Program Usage:

 1. Convert 5.750 to 101.11

      - Program Inputs:  

        | Value   | Description                  |
        |--------:|------------------------------|
        | 5       | the whole number             |
        | .       | the radix symbol             |
        | 750     | The fractional component     |
        | 3       | The precision of the number  |

      - Java-based program
        ```
        $ java dec2bin 5 . 750  3
        101.11
        ```

      - MIPS-based program
        ```
        $ mips_subroutine dec2bin  5 . 750  3
        101.11
        #########################################
        # Above is the output from your program
        #########################################
        
        v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
        ```

   1. Convert 1234.1234567 to 10011010010.00011111100110101101101
      - Program Inputs:  

        | Value   | Description                  |
        |--------:|------------------------------|
        | 1234    | the whole number             |
        | .       | the radix symbol             |
        | 1234567 | The fractional component     |
        | 7       | The precision of the number  |

      - Java-based program
        ```
        $ java dec2bin 1234 . 1234567  7
        10011010010.00011111100110101101101
        ```
      - MIPS-based program
        ```
        $ mips_subroutine dec2bin  1234 . 1234567  7
        10011010010.00011111100110101101101
        #########################################
        # Above is the output from your program
        #########################################
        
        v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
        ```

   1. Use the following spread sheet to generate additional test cases
      - [Real: Decimal to Binary Conversion](https://docs.google.com/spreadsheets/d/1aMvlfw_rzvYBObT94dX8v_O0EgELHgWrmZgWKmoLY7s/edit#gid=1434558784)

## Deliverables:

The following files are to be included in your repository:
  1. dec2bin.java and dec2bin.s
  1. whole2bin.java and whole2bin.s
  1. fractional2bin.java and fractional2bin.java
  1. MIPS_OS_Interface.java and MIPS_OS_Interface.class
  1. README.md
  1. macros/*

## Requirements:

   * You *must* utilize the framework for developing MIPS code as provided in class.

   * You *must* following the software development process
     - where you make incremental improvements to your code.
     - where there are defined commits at various stages of development.

   * You *must* compile and test your final solution. 
     - Any submitted code that does not compile gets an automatic zero.
     - Any submitted code that does not execute gets an automatic zero.


## Prerequisites:
   1. Perform a `git pull` the following repositories to obtain any updated information.
      - comp122: note the mips_subroutine utility was updated
      - 05-whole2bin-{account}
      - 06-fractional2bin-{account}
      - 43-dec2bin-{account}: note the macros subdirectory was updated

## Implementation Steps:

   1. Finalize your `void whole2bin(number)` code.
      - Review your 05-whole2bin assignment.
      - Rename your dec2bin.java file to whole2bin.java
      - Rename your dec2bin.s file to whole2bin.s
      - Modify your two programs to ensure it works correctly given the name change.
      - Test your program to ensure it functions correctly.
        * Notice that the output of mips_subroutine has been revised.
        * It now more clearly separates your output to stdout and the value of the $v0 register.
        * Recall the $v0 register contains the value returned by the called subroutine.

      ```
      $ javac whole2bin.java
      $ java whole2bin 5
      101
      $ java whole2bin 1234
      10011010010
      $ mips_subroutine whole2bin 5
      101
      #########################################
      # Above is the output from your program
      #########################################
      
      v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
      
      $ mips_subroutine whole2bin 1234
      10011010010
      #########################################
      # Above is the output from your program
      #########################################
      
      v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
      ```

      - Copy these two files to your 45-dec2bin-{account} directory.
      - Add these files to your repository.


   1. Finalize your `void fractional2bin(fractional, precision, max_size)` code.
      - Review your 06-fractional2bin assignment.
      - Modify your two programs to ensure it works correctly.
        * For the MIPS code, you needed to build the `pow` macro:
          ```java
          result = 1;
          tmp = exp;
          for(; temp != 0 ;) { 
             result = result * base;
             tmp --;
          }
          ```
      - Test your Java program to ensure it works correctly.
        * Recall the main method for Java program expects the following inputs:
          1. the whole number, 
          1. the radix point,
          1. the fractional component,
          1. the number of digits in fractional component (or precision )

        ```
        $ javac fractional2bin.java 
        $ java fractional2bin 5 . 5 1
        1
        $ java fractional2bin 1234 . 5 1
        1
        $ java fractional2bin 1234 . 1234567 7
        00011111100110101101101
        ```

      - Test your MIPS program to ensure it works correctly.
        * Note that the input arguments for the MIPS program is different than what is provided in the Java program.
        * recall the arguments to the fractional2bin subroutine are
          1. the fractional component
          1. the number of digits in fractional component (or precision )
          1. the max number of binary digits to produce

        ```
        $ mips_subroutine fractional2bin 5 1 23
        1
        #########################################
        # Above is the output from your program
        # - note the last line of your
        #   output did not include a '\n'
        #########################################
        
        v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
        
        $ mips_subroutine fractional2bin 1234567 7 23
        00011111100110101101101
        #########################################
        # Above is the output from your program
        # - note the last line of your
        #   output did not include a '\n'
        #########################################
        
        v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;
        ```
     
      - Copy these two files to your 45-dec2bin directory
      - Add these files to your repository

   1. Build the dec2bin Java program.
      - Create a new file dec2bin.java file.
        1. You can use the main method from notes_04_05.md (line 135) 
      - Incorporate whole2bin method from whole2bin.java, by either
        * copying the method into your dec2bin.java code, or
        * creating an instance of the whole2bin object
          - e.g., `static whole2bin whole = new whole2bin();`
      - Incorporate fractional2bin method from fractional2bin.java, by either
        * copying the method into your dec2bin.java code, or
        * creating an instance of the fractional2bin object
          - e.g., `static fractional2bin frac = new fractional2bin();`

      - Modify your revised dec2bin program as necessary
      - Test your dec2bin Java program as follows:
        ```
        $ java dec2bin 5 . 5  1
        101.1
        $ java dec2bin 1234 . 1234567 7
        10011010010.00011111100110101101101
        ```

   1. Build the dec2bin MIPS program.
      - Create a new file dec2bin.s with the following contents:
        * Note this the professor will review this code with the class

      ```mips
             .text
             .globl dec2bin
             .include "macros/syscalls.s"
             .include "macros/stack.s" 
             .include "macros/subroutine.s"      
      
             li $a0, 1234
             li $a1, '.'
             li $a2, 1234567
             li $a3, 7
             jal dec2bin
             exit()
             # Your output should be
             # 10011010010.00011111100110101101101
      
      
      dec2bin:  # void dec2bin( whole, radix, fractional, precision )
             # a0: whole
             # a1: radix
             # a2: fractional
             # a3: precision
             # v0: 0
      
             # t0: whole
             # t1: radix
             # t2: fractional
             # t3: precision
             # t4: mantissa_size
      
      
             # Demarshal your input arguments
             move $t0, $a0
             move $t1, $a1
             move $t2, $a2
             move $t3, $a3
            
             li $t4, 23                    #     final int mantissa_size = 23;  
      
             marshal_args($t0)
             save_state()              
             jal whole2bin                 #     whole2bin( whole );
             restore_state()
             demarshal_results()
       
             print_c($t1)                  #     mips.print_c( radix );
      
             marshal_args($t2, $t3, $t4)
             save_state()
             jal fractional2bin            #     fractional2bin(fractional, precision, mantissa_size);
             restore_state()
             demarshal_results()
      
             print_ci('\n')                #     mips.print_c('\n');
      
      
             # Marshal your output arguments
             li $v0, 0
             jr $ra
      ```


      - Test your dec2bin MIPS program as follows:

        ```
        $ mips_subroutine dec2bin 5 . 5  1
        101.1
        #########################################
        # Above is the output from your program
        #########################################

        v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;

        $ mips_subroutine dec2bin 1234 . 1234567 7
        10011010010.00011111100110101101101
        #########################################
        # Above is the output from your program
        #########################################

        v0:          0; 0x00 00 00 00; 0b0000 0000 0000 0000 0000 0000 0000 0000;

        ```
