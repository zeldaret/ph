extern "C" int memcmp(const void *src1, const void *src2, int n) {
    const unsigned char *p1;
    const unsigned char *p2;

    for (p1 = (const unsigned char *)src1, p2 = (const unsigned char *)src2, n++; --n;) {
        if (*p1++ != *p2++) {
            return (*--p1 < *--p2) ? -1 : +1;
        }
    }

    return 0;
}
