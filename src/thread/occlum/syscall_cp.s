.text
.global __cp_begin
.hidden __cp_begin
.global __cp_end
.hidden __cp_end
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
	// Prepare the instructions
	mov %rsi,%rdi
	mov %rdx,%rsi
	mov %rcx,%rdx
	mov %r8,%rcx
	mov %r9,%r8
	mov 0x08(%rsp),%r9
	mov 0x10(%rsp),%rax
	mov %rax,0x08(%rsp)
	// Do Occlum syscall
	movq __occlum_entry(%rip), %rax
	jmpq *%rax
__cp_end:
	// This should never happen!
	ud2
__cp_cancel:
	jmp __cancel

.hidden __occlum_entry
