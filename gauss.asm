.data
.text
  main:
    addi $5, $0, 0
    addi $6, $0, 11
    addi $7, $0, 1

  loop:
    add $5, $5, $7
    addi $7, $7, 1
    sub $8, $6, $7
    bgtz $8, loop

    finish:
      add $4, $0, $5
      add $2, $0, 1
      syscall
      add $2, $0, 10
      syscall
