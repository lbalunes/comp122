       .data
N:     .word  34

       .text
       .globl whole2bin
       .include "macros/syscalls.s"
       .include "macros/stack.s"
       .include "macros/subroutine.s"

       lw $a0, N
       jal whole2bin
       exit()

     

whole2bin:              # int whole2bin(int number);

       # a0 : n             # The value of N
       # v0 : 0            # The return value, which is zero

       # t0 : n     
       # t1 : count
       # t2 : b 
       # t3 : r
       # t4 : d

       # Demarshall your input arguments
       move $t0, $a0

       # Insert your JAVA TAC code here as a comment.

              
              move $t1, $t0                      #int n = number; 
              li $t2, 2                          #int b = 2;
              li $t3, 0                          #int count = 0;
              li $t4, 0                          #int r = 0


      spot:   beq $t1, $zero, rover              #for (; n != 0 ;) {
      body:     nop                              #      ;
                div $t1, $t2                     #      (r,n) = n / b;
                mfhi $t4
                mflo $t1

                                               
                push($t4)                        #      mips.push(r);
                addi $t3, $t3, 1                 #      count = count + 1;  
              b spot                             #      continue spot;
                                                 #}

     rover:   nop                                #;
     apple:   ble $t3, $zero, core               #for(; count > 0 ;) {
                pop($t4)                         #      r = mips.pop();
                print_d($t4)                     #      mips.print_d(r);
                subi $t3, $t3, 1                 #      count = count - 1;
              b apple                            #      continue apple;
                                                 #}

      core:   nop                                 #;
              print_ci('\n')                      #mips.print_ci('\n');




       # Marshal your output arguements
       move $v0, $t1
       jr $ra

