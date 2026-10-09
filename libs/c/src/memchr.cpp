#include <stddef.h>

extern "C" void *memchr(const void *src, int val, int n) {
    const unsigned char *p;
    unsigned int v = val & 0xff;

    for (p = (unsigned char *)src, n++; --n;) {
        if (*p++ == v) {
            return (void *)(p - 1);
        }
    }

    return NULL;
}
