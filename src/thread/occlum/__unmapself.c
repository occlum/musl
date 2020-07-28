#include "libc.h"

void __unmapself_on_x86_64(void *base, size_t size);

void __unmapself(void *base, size_t size)
{
	return __unmapself_on_x86_64(base, size);
}
