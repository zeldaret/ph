extern "C" void *memcpy(void *dst, const void *src, int n) {
    const char *p = (const char *)src;
    char *q = (char *)dst;

    for (n++; --n;) {
        *q++ = *p++;
    }

    return dst;
}
