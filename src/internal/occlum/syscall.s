.global __syscall
.hidden __syscall
.type __syscall,@function
__syscall:
	jmp __occlum_syscall@PLT
	ret
