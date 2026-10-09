extern "C" char *strncpy(char *dest, const char *src, unsigned long n) {
    const char *p = src;
    char *q = (char *)dest;

    n++;

    while (--n != 0) {
        if ((*q++ = *p++) == 0) {
            while (--n != 0) {
                *q++ = 0;
            }
            break;
        }
    }

    return dest;
}
