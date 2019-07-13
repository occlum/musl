#define _GNU_SOURCE
#include <unistd.h>
#include <errno.h>

pid_t vfork(void)
{
	/* Occlum does NOT support fork. Use posix_spawn instead. */
	errno = ENOSYS;
	return -1;
}
