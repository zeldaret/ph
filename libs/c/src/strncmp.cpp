extern "C" int strncmp(char *str1, char *str2, unsigned long n) {
    const unsigned char *p1 = (unsigned char *)str1;
    const unsigned char *p2 = (unsigned char *)str2;
    unsigned int c1, c2;

    n++;

    while (--n) {
        if ((c1 = *p1++) != (c2 = *p2++)) {
            return c1 - c2;
        } else if (!c1) {
            break;
        }
    }

    return 0;
}
