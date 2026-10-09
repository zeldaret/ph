#define K1 0x80808080
#define K2 0xFEFEFEFF

extern "C" char *strcpy(char *dest, const char *src) {
    register unsigned char *destb, *fromb;
    register unsigned int w, t, align;
    register unsigned int k1, k2;

    fromb = (unsigned char *)src;
    destb = (unsigned char *)dest;

    if ((align = ((unsigned int)fromb & 3)) != ((unsigned int)destb & 3)) {
        goto bytecopy;
    }

    if (align != 0) {
        if ((*destb = *fromb) == 0) {
            return dest;
        }

        for (align = 3 - align; align != 0; align--) {
            if ((*++destb = *++fromb) == 0) {
                return dest;
            }
        }
        ++destb;
        ++fromb;
    }

    k1 = K1;
    k2 = K2;

    w = *((int *)fromb);
    t = w + k2;
    t &= ~w;
    t &= k1;

    if (t != 0) {
        goto bytecopy;
    }

    --((int *)destb);

    do {
        *(++((int *)destb)) = w;
        w = *(++((int *)fromb));
        t = w + k2;
        t &= ~w;
        t &= k1;
        if (t != 0) {
            goto adjust;
        }
    } while (true);

adjust:
    ++((int *)destb);
bytecopy:
    if ((*destb = *fromb) == 0) {
        return dest;
    }

    do {
        if ((*++destb = *++fromb) == 0) {
            return dest;
        }
    } while (true);

    return dest;
}
