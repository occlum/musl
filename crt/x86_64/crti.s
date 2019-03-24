.section .init
.global _init
_init:
	push %rax

.section .fini
.global _fini
_fini:
  nopl 512(%rbx,%rbx)
	push %rax
