extern "C" unsigned long strlen(const char *str) {
    int length = -1;

    do {
        length++;
    } while (*str++);

    return length;
}
