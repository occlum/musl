.text
.globl __syscall
.hidden __syscall,@function
.type __syscall,@function
__syscall:
	// Do Occlum syscall
	movq __occlum_entry(%rip), %rax
	jmpq *%rax
	// This should never happen!
	ud2

.hidden __occlum_entry
