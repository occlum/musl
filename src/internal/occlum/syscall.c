#include <stdarg.h>
#include "libc.h"

typedef long (*syscall_t)(long,long,long,long,long,long,long);

long __syscall(long n, ...)
{
	va_list ap;
	long a,b,c,d,e,f;
	va_start(ap, n);
	a=va_arg(ap, long);
	b=va_arg(ap, long);
	c=va_arg(ap, long);
	d=va_arg(ap, long);
	e=va_arg(ap, long);
	f=va_arg(ap, long);
	va_end(ap);
	syscall_t real_syscall = (syscall_t) __occlum_entry;
	return real_syscall(n,a,b,c,d,e,f);
}
