.data
.text
  main:
    addi $6, $0, 5
    addi $7, $0, -1
    addi $8, $0, 1

  for:
    mult $6, $8
    mflo $8
    add $6, $6, $7
    bgtz $6, for

  finish:
    add $4, $0, $8
    addi $2, $0, 1
    syscall
    addi $2, $0, 10
    syscall
