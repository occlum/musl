#include <time.h>
#include <sys/time.h>
#include "syscall.h"

int gettimeofday(struct timeval *restrict tv, void *restrict tz)
{
#ifndef __OCCLUM
	struct timespec ts;
	if (!tv) return 0;
	clock_gettime(CLOCK_REALTIME, &ts);
	tv->tv_sec = ts.tv_sec;
	tv->tv_usec = (int)ts.tv_nsec / 1000;
#else
	__syscall(SYS_gettimeofday, tv, NULL);
#endif
	return 0;
}
