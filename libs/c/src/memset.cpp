extern "C" void __memset_impl(void *dest, int val, unsigned int n);

extern "C" void *memset(void *dest, int val, int n) {
    __memset_impl(dest, val, n);
    return dest;
}
