        .text
        .globl multiplication




multiplication:
        #public static int multiplication(int a, int b){

         # a0: a
         # a1: b
         # v0: a*b
         # -------
         # t0: a
         # t1: b
         # t2: sum
         # t3: bit
         # t4: 1 
  

    # demarshall ($t0, $t1)     
    move $t0, $a0
    move $t1, $a1


        li $t2, 0           #int sum = 0;
        li $t3, 0            #int bit = 0;
        li $t4, 1           #int $t4 = 1;

test:   beq $t1, $zero, proceed           #for (; b != 0 ; ) {
                                          #// pop off a bit from b
            andi $t3, $t1, 0x01           #bit = b & 0x01;  
            srl $t1, $t1, 1               #b = b >>> 1;  

            bne $t3, $t4, iffalse         #if ( bit == 1 ) {
iftrue:      nop                          #  ;
             add $t2, $t2, $t0            #  sum += a;
             b ifdone                     #  //goto ifdone;
                                          #} else {
iffalse:     nop                          #  ;
             b ifdone                     #  // goto ifdone;
                                          #}

ifdone:   nop                             #;
          sll $t0, $t0, 1                 #a = a << 1;
          b test                                # continue test;          
                                          
                                          #}

proceed:  nop                             #;
          move $v0, $t2                   #return sum;
          jr $ra

#} 
