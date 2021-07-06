.include "occlum_syscall.h"

.global __vfork_on_occlum
.hidden __vfork_on_occlum
.type __vfork_on_occlum,@function

# Instead of just call "syscall" function, vfork must be implemented
# individually to obtain a specific address because it will return twice.
__vfork_on_occlum:
	pop %rdx
	mov $58,%eax
	OCCLUM_SYSCALL
	push %rdx
	mov %rax,%rdi
	ret
