.macro push_args()
.end_macro
.macro push_args(%a0)
        nop                     # Marshaling Input Args
        move $a0, %a0           # On MIPS, the first four args are in registers
.end_macro
.macro push_args(%a0,%a1)
        nop                     # Marshaling Input Args
        move $a0, %a0           # On MIPS, the first four args are in registers
        move $a1, %a1
.end_macro
.macro push_args(%a0,%a1,%a2)
        nop                     # Marshaling Input Args
        move $a0, %a0           # On MIPS, the first four args are in registers
        move $a1, %a1
  move $a2, %a2
.end_macro
.macro push_args(%a0,%a1,%a2,%a3)
        nop                     # Marshaling Input Args
        move $a0, %a0           # On MIPS, the first four args are in registers
        move $a1, %a1
        move $a2, %a2
        move $a3, %a3
.end_macro
.macro push_args(%a0,%a1,%a2,%a3,%a4)
        nop                     # Marshaling Input Args
        move $a0, %a0           # On MIPS, the first four args are in registers
        move $a1, %a1
        move $a2, %a2
        move $a3, %a3
        nop                    # Remaing Args go on the Stack
        push(%a4)               
.end_macro