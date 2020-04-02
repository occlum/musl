#include <features.h>
#include <stdlib.h>
#include "syscall.h"

hidden void __restore_rt()
{
    __syscall(SYS_rt_sigreturn);
    // This should never happen.
    // FIXME: However, based on tests, this syscall still returns and
    // will trigger abort and cause segmentation fault.
    // The reason is unknown but after removing abort, things
    // become normal.
    // abort();
}
