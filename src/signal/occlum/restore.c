#include <features.h>
#include <stdlib.h>
#include "syscall.h"

hidden void __restore_rt()
{
    __syscall(SYS_rt_sigreturn);
    // This should never happen
    abort();
}
