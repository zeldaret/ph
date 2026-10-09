extern "C" char *strchr(const char *str, int chr) {
    const char *p = str;
    char c = chr;
    char ch;

    while ((ch = *p++)) {
        if (ch == c) {
            return (char *)(p - 1);
        }
    }

    return c ? 0 : (char *)(p - 1);
}
