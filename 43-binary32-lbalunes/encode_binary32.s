                .globl encode_binary32
                .include "macros/syscalls.s"
                .include "position_of_msb.s"


                # The following is test input to help you in your initial debugging
                li $a0, '+'    # 0x2b (43)
                li $a1, 0x34E1 # (0011 0100 1110 0001) 
                li $a2, '-'    # 0x2d   (45)
                li $a3, 0x29   # (41)



encode_binary32: nop
                # Prototype:  encode_binary32( sign, coefficient, expon_sign, expon )
                # Formal Parameters:
                # a0: sign -- an ASCII character
                # a1: coefficient (representing, in total,:  1.\<mantissa\>) 
                # a2: expon_sign -- an ASCII character
                # a3: exponent (unbiased)
                # v0: the encoded binary32 value
        
                # Initial Register Allocation
                # t0: sign (sign_shift)
                # t1: coefficient 
                # t2: expon_sign
                # t3: exponent

                # Additional Register Allocation
                # t4: encoded_sign
                # t5: encoded_ mantissa
                # t6: encoded_exponent
                # t7: pos_msb
                # t8: '-'
                # t9: 0

                li $t8,'-'
                li $t9, 0

                

                # Demarshall your input arguments
                move $t0, $a0
                move $t1, $a1
                move $t2, $a2
                move $t3, $a3

                

                # Insert a copy of your Java TAC code here and then comment it out!

                #1. Encode each of the three fields of the floating point format:

                #1.1 Sign Encoding: 
                    #- Based upon the sign, encode the sign as a binary value



                 top: nop
                     bne $t0, $t8, alt      #if ($a0 == $t8) {                 
                 
                 con: nop
                     li $t4, 1              #$t4 = 0b1; the '1' is 0b1                   
                     b done                 # } else {                   
                                                
                 
                 alt: nop                                
                     li $t4, 0              #$t4 = 0b0;  the '0' is  0b0 
                     b done2                

                 done: nop                 #}                                

                 # //1.2 Exponent Expanding
                 #     - Make the exponent a signed quanitity
                 #      - Add the bias
                 
                 top2:  nop
                        bne $t2, $t8, alt       #if ($a2  == $t8){                   
                 
                 con2:  nop                     
                        sub $t6, $t9, $a3      #$t6 = - $a3;                   
                        b done2                #} else {                                     
                                                  
                 
                 alt2:  nop                    
                        move $t6, $a3           #$t6 =  $a3;                          
                        b done2                 #}                
                        

                 done2: nop                     #}
                        
                     addi $t6, $t6, 127         #$t6 = $t6 + 127;                    

                #1.3 Mantissa encoding
                    #//      - Determ the number of bits in the coefficient
                    #//      - Shift the coefficient to the left to obtain the mantissa
                
                position_of_msb($t1)    
                move $t7, $v0       #$t7 = position_most_significant_bit($a1)
                
                li $t5, 32              #$t5 = 32;             
                sub $t5 $t5, $t7        #$t5 = $t5 - $t7;         
                addi $t5, $t5,1         #$t5 = $t5 + 1;      
                sllv $t5, $t1, $t5      #$t5 = $a1 << $t5;        

                #2 Shift pieces into place: sign, exponent,mantissa

                sll $t4, $t4, 31        # $t4 = $t4 << $t0;           
                sll $t6, $t6, 23        #$t6 = $t6 << $t3;  
                srl $t5, $t5, 9         #$t5 = $t5 >>> $t2; 


                #3 Merge pieces together

                move $v0,$t4                #$v0 = $t4 | $t6 | $t5;
                add $v0, $v0, $t6
                add $v0, $v0, $t5






                
                            




                # Provide some output for initial testing
                print_t($v0)
                print_ci('\n')

                # Marshall  your output arguements
                move $v0, $v0

                jr $ra
                # With the test input, the value of v0 should be:
                # v0: 0x2B538400
