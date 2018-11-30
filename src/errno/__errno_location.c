#include <errno.h>
#include "pthread_impl.h"

#ifndef __OCCLUM

int *__errno_location(void)
{
	return &__pthread_self()->errno_val;
}

#else

static int main_errno = 0;

int *__errno_location(void)
{
	return &main_errno;
}

#endif /* __OCCLUM */

weak_alias(__errno_location, ___errno_location);
