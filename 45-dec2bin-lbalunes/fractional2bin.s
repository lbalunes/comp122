       .data
N:     .word  34

       .text
       .globl fractional2bin
       .include "macros/syscalls.s"
       .include "macros/stack.s"
       .include "macros/subroutine.s"

       lw $a0, 23
       li $a1, 2
       li $a2, 10
       jal fractional2bin
       exit()
 
.macro pow(%result, %base, %exp) # dst = base ** exp
                                    
        li %result, 1                            # result = 1; //creating pow method
        move $t8, %exp                           #      tmp = exp;
 
 loop:  beq $t8, $zero, done1                    #      for(; temp != 0 ;){
            mul %result, %result, %base          #        result = result * base;
            subi $t8, $t8, 1                     #        tmp --;
               b loop                            #      }
 done1:     nop

.end_macro

    


fractional2bin:              

       # fractional2bin(int fractional)
       #                int precision,
       #                int max_size)

       # a0 : fractional
       # a1 : precision
       # v0 : max_size       # The return value, which is zero

       # t0 : fractional      
       # t1 : precision
       # t2 : max_size
       # t3 : max
       # t4 : n
       # t5 : count
       # t6 : loop_max
       # t7 : 10 --base 

       # Demarshall your input arguments
       move $t0, $a0
       move $t1, $a1
       move $t2, $a2

       # Insert your JAVA TAC code here as a comment.

          li $t3, 0                          # int max = 0;
          li $t4, 0                          # int n = 0;
          li $t5, 0                          # int count = 0;
          move $t6, $t2                      # int loop_max = max_size;
          li $t7, 10                         # $t7 holds 10 for max = (in)  Math.pow (10, precision)

          pow($t3,$t7, $t1)                  # max = (int) Math.pow(10, precision);
          move $t4, $t0                      # n = fractional;               // the fractional
          li $t5, 0                          # count = 0;
  
  dog:    bge $t5, $t6, cat                  # for(; count < max_size ;) {
           sll $t4, $t4, 1                   #   n = n * 2;
           beq $t4, $zero, cat               #   if (n == 0) break;
             
          blt $t4, $t3, alt                  #    if ( n >= max ) {
           nop                               #       ;  
           print_ci('1')                     #       mips.print_ci('1');
           sub $t4, $t4, $t3                 #       n = n - max; 
           b fi                              #       //gotto fi
                                             #    }  else {
  alt:     nop                               #         ;
           print_ci('0')                     #         mips.print_ci('0');
           b fi                              #         // goto fi
                                             #    }     
  fi:      nop                               #    ;
           addi $t5, $t5, 1                  #    count = count++;
          b dog                              #    continue dog;
                                             # }
  cat:    nop                                # ;   
                                             



       # Marshal your output arguements
       li $v0, 0
       jr $ra

