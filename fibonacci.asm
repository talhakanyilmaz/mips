.data
  A: .word 20
  Line: .asciiz "\n"
.text
  main:
    lui $5, 0x1001
    ori $5, $5, 0x0000
    lw $6, 0($5)
    lw $10, 4($5)
    addi $7, $0, 0
    addi $8, $8, 1
    addi $9, $9, 1

  loop:
    add $7, $8, $9
    add $8, $0, $9
    add $9, $0, $7
    addi $6, $6, -1
    add $4, $0, $7
    addi $2, $0, 1
    syscall
    la $4, 4($5)
    addi $2, $0, 4
    syscall
    bgtz $6, loop

  finish:
    addi $2, $0, 10
    syscall
