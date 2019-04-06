.text
.global __unmapself
.type   __unmapself,@function
__unmapself:
    // Function args:
    //   void* base  - %rdi
    //   size_t size - %rsi
    mov %rsi, %rdx
    mov %rdi, %rsi
    movl $11, %edi
    // mmap args
    //   num         - %rdi
    //   void* base  - %rsi
    //   size_t size - %rdx
    call __syscall
    // exit args
    //   num        - %rdi
    //   exit_code  - %rsi
    movl $60, %edi
    xor %esi, %esi
    call __syscall

    // This should never happen!
    hlt
