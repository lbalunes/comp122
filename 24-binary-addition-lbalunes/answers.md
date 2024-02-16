# Binary Addition & Subraction:
### Name:                                <!-- response -->
### GitHub Account:                      <!-- response -->


## Questions

### Complements
Provide the 1's complement and 2 complement encodings for the following numbers.
(You can limit your answer to 8-bit encodings.)

1. -5
   - 1's: 1111 1010           <!-- response -->
   - 2's: 1111 1011           <!-- response -->

1. -22
   - 1's: 1111 1001                    <!-- response -->
   - 2's: 1111 1010                    <!-- response -->

1. 123
   - 1's: 0111 1011           <!-- response -->
   - 2's: 0111 1011           <!-- response -->

1. -2
   - 1's: 1111 1101           <!-- response -->
   - 2's: 1111 1110           <!-- response -->

1. -105
   - 1's: 1001 0110           <!-- response -->
   - 2's: 1001 0111           <!-- response -->


1. -122
   - 1's: 1000 0101           <!-- response -->
   - 2's: 1000 0110           <!-- response -->


### Binary Addition

Solve the following addition problems using binary arithmetic. Show your work by modifying the template provided.

1. 7 + 8:  
   ```
   0 0000 0000               <!-- response: carries -->
     0000 0111               <!-- response: op1 encoding -->
   + 0000 1000               <!-- response: op2 encoding -->
   ------ ----           
   0 0000 1111               <!-- response: sum encoding -->
   ```

1. 113 + 127: 
   ```
   0 1111  1110              <!-- response: carries -->
     0111  0001              <!-- response: op1 encoding -->
   + 0111  1111              <!-- response: op2 encoding -->
   ------  ----          
   0 1111  0000              <!-- response: sum encoding -->
   ```

1. 112 - 12: 
   ```
   1 1110  0000              <!-- response: carries -->
     0111  0000              <!-- response: op1 encoding -->
   + 1111  0100              <!-- response: op2 encoding -->
   ------  ----          
   1 0110  0100              <!-- response: sum encoding -->
   ```

1. -22 + 22: 
   ```
   1 1111  1100             <!-- response: carries -->
     1110  1010              <!-- response: op1 encoding -->
   + 0001  0110              <!-- response: op2 encoding -->
   ------  ----          
   1 0000  0000              <!-- response: sum encoding -->
   ```


### Status Bits:
Provide the values of the CPU's status bits after the each of the following additions.  (Note you calulate these additions in the previous section:

1. 113 + 127 
  - C: 0         <!-- response -->
  - V: 1         <!-- response -->
  - S: 1         <!-- response -->
  - Z: 0         <!-- response -->

1. -22 + 22
  - C: 1         <!-- response -->
  - V: 1         <!-- response -->
  - S: 0         <!-- response -->
  - Z: 0         <!-- response -->


### Conversion from Base 16, 8, 2 -> Decimal
1. Convert the following numbers to their base10 equivalent, using the left-to-right method.
Make sure you format your answers well!<br>
(Don't worry about the missing &lt!-- response: --&gt tags)

   1. 2# 1010 1101 

   | v      | = | v    | * base + |  digit |  glyph  | 
   |--------|---|----- |----------|--------|---------| 
   |   1    | = |  0   | * 2    + |   1    |   1     |    
   |   2    | = |  1   | * 2    + |   0    |   0     |    
   |   5    | = |  2   | * 2    + |   1    |   1     |    
   |  10    | = |  5   | * 2    + |   0    |   0     |    
   |  21    | = | 10   | * 2    + |   1    |   1     |    
   |  43    | = | 21   | * 2    + |   1    |   1     |    
   |  86    | = | 43   | * 2    + |   0    |   0     |    
   | 173    | = | 86   | * 2    + |   1    |   1     |    

   1. 8# 12131          
  
   | v      | = | v    | * base + |  digit |  glyph  | 
   |--------|---|----- |----------|--------|---------| 
   |    1   | = |   0  | * 8    + |   1    |   1     | 
   |   10   | = |   1  | * 8    + |   2    |   2     | 
   |   81   | = |  10  | * 8    + |   1    |   1     | 
   |  651   | = |  81  | * 8    + |   3    |   3     | 
   | 5209   | = | 651  | * 8    + |   1    |   1     | 


   1. 16# 28B1    

   | v      | = | v    | * base + |  digit |  glyph  | 
   |--------|---|----- |----------|--------|---------| 
   |     2  | = |    0 | * 16   + |    2   |    2    | 
   |    40  | = |    2 | * 16   + |    8   |    8    | 
   |   651  | = |   40 | * 16   + |   11   |    B    | 
   | 10417  | = |  651 | * 16   + |    1   |    1    | 


### Conversion from Decimal -> base N

 1. Convert 10# 43.5187 -> 2# 
    <br>Only provide a maximum of 16 digits in total
    ```
    number = 43                              <!-- response -->
     43 / 2 = 21, 1                          <!-- response -->
     21 / 2 = 10, 1                          <!-- response -->
     10 / 2 =  5, 0                          <!-- response -->
      5 / 2 =  2, 1                          <!-- response -->
      2 / 2 =  1, 0                          <!-- response -->
      1 / 2 =  0, 1                          <!-- response -->
    answer:  10 1011                         <!-- response -->
    ```
    ```
    number =   5187                          <!-- response -->
    max    =  10000                          <!-- response -->
     5187 * 2 =  1, 0374                     <!-- response -->
     0374 * 2 =  0, 0748                     <!-- response -->
     0748 * 2 =  0, 1496                     <!-- response -->
     1496 * 2 =  0, 2992                     <!-- response -->
     2992 * 2 =  0, 5984                     <!-- response -->
     5984 * 2 =  1, 1968                     <!-- response -->
     1968 * 2 =  0, 3936                     <!-- response -->
     3936 * 2 =  0, 7872                     <!-- response -->
     7872 * 2 =  1, 5744                     <!-- response -->
     5744 * 2 =  1, 1488                     <!-- response -->
    answer:  1000 0100 11                    <!-- response -->
    ```

 1. Convert 10# - 324.324 -> 2# 
    <br>Only provide a maximum of 16 digits in total
    ```
    number =  324                            <!-- response -->
      324 / 2 = 162, 0                       <!-- response -->
      162 / 2 =  81, 0                       <!-- response -->
       81 / 2 =  40, 1                       <!-- response -->
       40 / 2 =  20, 0                       <!-- response -->
       20 / 2 =  10, 0                       <!-- response -->
       10 / 2 =   5, 0                       <!-- response -->
        5 / 2 =   2, 1                       <!-- response -->
        2 / 2 =   1, 0                       <!-- response -->
        1 / 2 =   0, 1                       <!-- response -->
    answer:  1 0100 0100                     <!-- response -->
    ```
    ```
    number =  324                            <!-- response -->
    max    = 1000                            <!-- response -->
      324 * 2 = 0, 648                       <!-- response -->
      648 * 2 = 1, 296                       <!-- response -->
      296 * 2 = 0, 592                       <!-- response -->
      592 * 2 = 1, 184                       <!-- response -->
      184 * 2 = 0, 368                       <!-- response -->
      368 * 2 = 0, 736                       <!-- response -->
      736 * 2 = 1, 472                       <!-- response -->
    answer: 1001 010                         <!-- response -->
    ```



### Binary32

  1. Provide the Binary Scientific Notation for: 10# 43.5187
     -  2# 10 1011 .1000 0100 11                                  <!-- response -->
     -  2# 1.0 1011 1000 0100 11  x2^ 101 (5)                     <!-- response -->

  1. Provide the Binary Scientific Notation for: 10# - 324.324
     -  2# - 1 0100 0100 .1001 010                                <!-- response -->
     -  2# - 1 . 0100 0100 1001 010  x2^ 1 0000 (8)               <!-- response -->

  1. Provide the binary16 encoding pattern and then provide the encoding for: 10# 43.5187
     * | x | xxxxx | xxxx xxxx xx |                               <!-- response -->
     * | 0 | 10110 | 0101 1100 00 |                               <!-- response -->
     * 5 + 15 = 20 == 1 0110

  1. Provide the binary32 encoding pattern and then provide the encoding for: 10# - 324.324
     * | x | xxxx xxxx | xxxx xxxx xxxx xxxx xxxx xxx |   <!-- response -->
     * | 1 | 1000 0111 | 0100 0100 1001 0100 0000 000 |   <!-- response -->
     * 8 + 127 = 135 == 1000 0111


 

