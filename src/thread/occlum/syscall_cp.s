.text
.global __cp_begin
.hidden __cp_begin
.global __cp_end
.hidden __cp_end
.global __cp_x86_64
.hidden __cp_x86_64
.global __cp_cancel
.hidden __cp_cancel
.hidden __cancel
.global __syscall_cp_asm
.hidden __syscall_cp_asm
.type   __syscall_cp_asm,@function
__syscall_cp_asm:

__cp_begin:
	mov (%rdi),%eax
	test %eax,%eax
	jnz __cp_cancel
	// Prepare the registers for Linux syscalls
	mov %rdi,%r11
	mov %rsi,%rax
	mov %rdx,%rdi
	mov %rcx,%rsi
	mov %r8,%rdx
	mov %r9,%r10
	mov 8(%rsp),%r8
	mov 16(%rsp),%r9
	mov %r11,8(%rsp)
	// Is running on Occlum?
	cmpq $0, __occlum_entry(%rip)
	je __cp_syscall_x86_64
	// Do Occlum syscall
	call __occlum_entry(%rip)
	jmp __cp_end
__cp_syscall_x86_64:
	// Do Linux syscall
	syscall
__cp_end:
	ret
__cp_cancel:
	jmp __cancel

.hidden __occlum_entry
