#include <sys/utsname.h>
#include "syscall.h"

weak int uname(struct utsname *uts)
{
	return syscall(SYS_uname, uts);
}
