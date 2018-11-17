BASE_SRCS =
BASE_SRCS += ./crt/crt1.c
BASE_SRCS += ./crt/rcrt1.c
BASE_SRCS += ./crt/Scrt1.c
BASE_SRCS += ./ldso/dlstart.c
BASE_SRCS += ./src/env/__environ.c
BASE_SRCS += ./src/env/__init_tls.c
BASE_SRCS += ./src/env/__libc_start_main.c
BASE_SRCS += ./src/internal/libc.c
BASE_SRCS += ./src/thread/default_attr.c
BASE_SRCS += ./src/exit/exit.c
BASE_SRCS += ./src/exit/_Exit.c

ARCH_SRCS =
ARCH_SRCS += ./crt/$(ARCH)/crti.s
ARCH_SRCS += ./crt/$(ARCH)/crtn.s
