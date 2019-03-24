.section .init
	pop %rax
  pop %r11
  movq (%r11), %r10
  bndcu %r10, %bnd2
  bndcl %r10, %bnd2
	/* ret */

.section .fini
	pop %rax
  pop %r11
  movq (%r11), %r10
  bndcu %r10, %bnd2
  bndcl %r10, %bnd2
	/* ret */
