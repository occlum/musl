BASE_SRCS :=
BASE_SRCS += ./crt/crt1.c
BASE_SRCS += ./crt/rcrt1.c
BASE_SRCS += ./crt/Scrt1.c
BASE_SRCS += ./crt/crti.c
BASE_SRCS += ./crt/crtn.c
BASE_SRCS += ./ldso/dlstart.c
BASE_SRCS += ./src/ctype/isdigit.c
BASE_SRCS += ./src/env/__environ.c
BASE_SRCS += ./src/env/__init_tls.c
BASE_SRCS += ./src/env/__libc_start_main.c
BASE_SRCS += ./src/errno/__errno_location.c
BASE_SRCS += ./src/errno/strerror.c
BASE_SRCS += ./src/exit/exit.c
BASE_SRCS += ./src/exit/_Exit.c
BASE_SRCS += ./src/internal/libc.c
BASE_SRCS += ./src/internal/syscall_ret.c
BASE_SRCS += ./src/linux/wait3.c
BASE_SRCS += ./src/linux/wait4.c
BASE_SRCS += ./src/stdio/__fdopen.c
BASE_SRCS += ./src/stdio/__lockfile.c
BASE_SRCS += ./src/stdio/__stdio_close.c
BASE_SRCS += ./src/stdio/__stdio_exit.c
BASE_SRCS += ./src/stdio/__stdio_read.c
BASE_SRCS += ./src/stdio/__stdio_seek.c
BASE_SRCS += ./src/stdio/__stdio_write.c
BASE_SRCS += ./src/stdio/__stdout_write.c
BASE_SRCS += ./src/stdio/__towrite.c
BASE_SRCS += ./src/stdio/ferror.c
BASE_SRCS += ./src/stdio/fwrite.c
BASE_SRCS += ./src/stdio/ofl.c
BASE_SRCS += ./src/stdio/printf.c
BASE_SRCS += ./src/stdio/stdin.c
BASE_SRCS += ./src/stdio/stdout.c
BASE_SRCS += ./src/stdio/stderr.c
BASE_SRCS += ./src/stdio/vfprintf.c
BASE_SRCS += ./src/string/memchr.c
BASE_SRCS += ./src/string/memcpy.c
BASE_SRCS += ./src/string/memset.c
BASE_SRCS += ./src/string/strlen.c
BASE_SRCS += ./src/string/strnlen.c
BASE_SRCS += ./src/thread/__lock.c
BASE_SRCS += ./src/thread/__syscall_cp.c
BASE_SRCS += ./src/thread/default_attr.c
BASE_SRCS += ./src/math/__fpclassify.c
BASE_SRCS += ./src/math/__fpclassifyl.c
BASE_SRCS += ./src/math/__fpclassifyf.c
BASE_SRCS += ./src/math/__signbit.c
BASE_SRCS += ./src/math/__signbitl.c
BASE_SRCS += ./src/math/__signbitf.c
BASE_SRCS += ./src/math/frexp.c
BASE_SRCS += ./src/math/frexpf.c
BASE_SRCS += ./src/math/frexpl.c
BASE_SRCS += ./src/malloc/aligned_alloc.c
BASE_SRCS += ./src/malloc/expand_heap.c
BASE_SRCS += ./src/malloc/lite_malloc.c
BASE_SRCS += ./src/malloc/malloc.c
BASE_SRCS += ./src/malloc/malloc_usable_size.c
BASE_SRCS += ./src/malloc/memalign.c
BASE_SRCS += ./src/malloc/posix_memalign.c
BASE_SRCS += ./src/misc/syscall.c
BASE_SRCS += ./src/mman/mmap.c
BASE_SRCS += ./src/mman/mremap.c
BASE_SRCS += ./src/mman/munmap.c
BASE_SRCS += ./src/multibyte/wcrtomb.c
BASE_SRCS += ./src/multibyte/wctomb.c
BASE_SRCS += ./src/process/posix_spawn_file_actions_addclose.c
BASE_SRCS += ./src/process/posix_spawn_file_actions_adddup2.c
BASE_SRCS += ./src/process/posix_spawn_file_actions_destroy.c
BASE_SRCS += ./src/process/posix_spawn_file_actions_init.c
BASE_SRCS += ./src/process/posix_spawn.c
BASE_SRCS += ./src/process/waitpid.c
BASE_SRCS += ./src/unistd/lseek.c
BASE_SRCS += ./src/unistd/getpid.c
BASE_SRCS += ./src/unistd/getppid.c
BASE_SRCS += ./src/unistd/write.c
BASE_SRCS += ./src/unistd/writev.c
BASE_SRCS += ./occlum_stub/__occlum_syscall.c
BASE_SRCS := $(sort $(BASE_SRCS))

ARCH_SRCS :=
ARCH_SRCS += ./crt/x86_64/crti.s
ARCH_SRCS += ./crt/x86_64/crtn.s
BASE_SRCS += ./src/string/x86_64/memcpy.s
BASE_SRCS += ./src/string/x86_64/memset.s
ARCH_SRCS += ./src/internal/occlum/syscall.s
ARCH_SRCS := $(sort $(ARCH_SRCS))
