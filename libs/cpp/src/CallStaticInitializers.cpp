typedef void (*StaticInitializer)(void);

extern StaticInitializer ARM9_CTOR_START[];

extern "C" void CallStaticInitializers(void) {
    StaticInitializer s, *p;

    if (ARM9_CTOR_START == 0) {
        return;
    }

    for (p = ARM9_CTOR_START; p != 0 && (s = *p); p++) {
        s();
    }
}
