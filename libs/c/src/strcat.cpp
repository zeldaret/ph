extern "C" char *strcat(char *dest, const char *src) {
    const char *p = src;
    char *q = dest;

    while (*q++ != 0)
        ;
    q--;
    while ((*q++ = *p++) != 0)
        ;
    return dest;
}
