.data
  A: .word 10
  B: .word 20
  C: .word 30
.text
  main:
    lui $5, 0x1001
    ori $5, $5, 0x0000
    lw $6, 0($5)
    lw $7, 4($5)
    lw $8, 8($5)
    addi $9, $0, 0
    add $9, $6, $7
    add $9, $9, $8
    addi $10, $0, 3
    div $9, $10
    mflo $9
    add $4, $0, $9

  finish:
    addi $2, $0, 1
    syscall
    addi $2, $0, 10
    syscall
