.macro position_of_msb(%reg)
              li $a0, 0               #        counter = 0;
              move $a1, %reg          #        number = %reg;
    loop:     beq $a1, $zero, done    # loop:  for(; number != zero ;) {
                addi $a0, $a0, 1      #           counter ++
                srl $a1, $a1, 1       #           number = number >> 1;
              b loop                  #           continue;
                                      #        }
    done:     nop                     # done:  nop
              move $v0, $a0           #        $v0 = counter;
.end_macro

## The following macro was added to match up with the subroutine call in Java
.macro position_most_significant_bit(%reg)
    position_of_msb(%reg)
.end_macro
