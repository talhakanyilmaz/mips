.data
  A: .word 12
  B: .word 4
.text
  main:
    lui $5, 0x1001
    ori $5, $5, 0x0000
    lw $6, 0($5)
    lw $7, 4($5)
    mult $6, $7
    mflo $8

  finish:
    addi $2, $0, 1
    add $4, $0, $8
    syscall
    addi $2, $0, 10
    syscall
