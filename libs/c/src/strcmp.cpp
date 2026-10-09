#define K1 0x80808080
#define K2 0xFEFEFEFF

extern "C" int strcmp(char *str1, char *str2) {
    register unsigned char *left = (unsigned char *)str1;
    register unsigned char *right = (unsigned char *)str2;
    unsigned int k1, k2, align, l1, r1, x;

    l1 = *left;
    r1 = *right;
    if (l1 - r1) {
        return l1 - r1;
    }

    if ((align = ((unsigned int)left & 3)) != ((unsigned int)right & 3)) {
        goto bytecopy;
    }
    if (align) {
        if (l1 == 0) {
            return 0;
        }
        for (align = 3 - align; align; align--) {
            l1 = *(++left);
            r1 = *(++right);
            if (l1 - r1) {
                return l1 - r1;
            }
            if (l1 == 0) {
                return 0;
            }
        }
        left++;
        right++;
    }

    k1 = K1;
    k2 = K2;

    l1 = *(unsigned int *)left;
    r1 = *(unsigned int *)right;
    x = l1 + k2;
    x &= ~l1;
    if (x & k1) {
        goto adjust;
    }
    while (l1 == r1) {
        l1 = *(++((unsigned int *)(left)));
        r1 = *(++((unsigned int *)(right)));
        x = l1 + k2;
        if (x & k1) {
            goto adjust;
        }
    }

    --left;
    --right;
    goto bytecopy;

adjust:
    l1 = *left;
    r1 = *right;
    if (l1 - r1) {
        return l1 - r1;
    }
bytecopy:
    if (l1 == 0) {
        return 0;
    }

    do {
        l1 = *(++left);
        r1 = *(++right);
        if (l1 - r1) {
            return l1 - r1;
        }
        if (l1 == 0) {
            return 0;
        }
    } while (true);
}
