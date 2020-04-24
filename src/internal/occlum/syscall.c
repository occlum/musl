#include "libc.h"

long __syscall_on_x86_64(int num, long a, long b, long c, long d, long e, long f);

long __syscall(int num, long a, long b, long c, long d, long e, long f) {
        return __syscall_on_x86_64(num, a, b, c, d, e, f);
}
