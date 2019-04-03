.section .init
	pop %rax
  popq %r11
  movq (%r11), %r10
  bndcu %r10, %bnd2
  bndcl %r10, %bnd2
  jmp *%r11
	/* ret */

.section .fini
  nopl 512(%rbx,%rbx)
	pop %rax
  pop %r11
  movq (%r11), %r10
  bndcu %r10, %bnd2
  bndcl %r10, %bnd2
  jmp *%r11
	/* ret */
