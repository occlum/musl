.text
.global __set_thread_area
.hidden __set_thread_area
.type __set_thread_area,@function
__set_thread_area:
    // Func args:
    //  void* addr - %rdi

    // Pass addr
    mov %rdi, %rdx
    // Pass SET_FS
    mov $158, %edi
    // Pass syscall num
    mov $0x1002, %esi
    // arch_prctl syscall args:
    //  int num     - %rdi
    //  int code    - %rsi
    //  void* addr  - %rdx
    call __syscall
    ret
