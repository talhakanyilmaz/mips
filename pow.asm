.data
.text
  main:
    addi $5, $0, 5
    addi $6, $0, 3
    addi $8, $0, 1

  power:
    mult $5, $8
    mflo $8
    addi $6, $6, -1
    bgtz $6, power

  done:
    add $4, $0, $8
    addi $2, $0, 1
    syscall
    add $2, $0, 10
    syscall
