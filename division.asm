.data
  A: .word 44
  B: .word 10
.text
  main:
    lui $5, 0x1001
    ori $5, $5, 0x0000
    lw $6, 0($5)
    lw $7, 4($5)
    div $6, $7
    mflo $8
    mfhi $9

  finish:
    add $4, $0, $8
    addi $2, $0, 1
    syscall
    add $4, $0, $9
    syscall
    addi $2, $0, 10
    syscall
