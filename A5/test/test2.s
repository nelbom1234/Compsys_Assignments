.Start:
    leaq data, %rsi
    movq $0, %rax
    movq $0, %rax
    leaq (%rsi, %rax, 8), %r11
    movq (%r11), %rdx
    addq $1, %rax
    addq %rdx, %rbp
    leaq (%rsi, %rax, 8), %r11
    movq (%r11), %rdx
    addq $1, %rdx
    addq %rdx, %rbp
    stop
.align 8
.data:
    .quad 42
    .quad 21