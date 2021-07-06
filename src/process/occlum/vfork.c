#define _GNU_SOURCE
#include <unistd.h>
#include <errno.h>
#include "libc.h"

int __vfork_on_x86_64();
int __vfork_on_occlum();

pid_t vfork(void)
{
	if (IS_RUNNING_ON_OCCLUM) {
		return __vfork_on_occlum();
	}
	else {
		return __vfork_on_x86_64();
	}
}
