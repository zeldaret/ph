#pragma once

#include "types.h"

#define SCREEN_WIDTH 32
#define SCREEN_HEIGHT 24

struct Screen {
    /* 000 */ unk16 mUnk_00;
    /* 002 */ unk16 mUnk_02;
    /* 004 */ unk16 mUnk_04;
    /* 004 */ unk16 mUnk_06;
    /* 008 */ unk32 mUnk_08;
    /* 00c */ u16 data[SCREEN_WIDTH * SCREEN_HEIGHT];
    /* 60c */
};

class UnkStruct_0206322c {
public:
    /* 000 */ UNK_PTR mUnk_00; // tile
    /* 004 */ UNK_PTR mUnk_04; // palette
    /* 008 */ Screen topScreen;
    /* 614 */ Screen bottomScreen;
    /* c20 */

    // loads the debug font (palette and tile files)
    void func_02030354(bool doTopScreen, bool doBottomScreen);

    // ctor?
    void *func_02030408(void);

    // copy the screen data to VRAM
    void func_02030464(bool doTopScreen, bool doBottomScreen);

    // reset screen data
    void func_020304a8(bool doTopScreen, bool doBottomScreen);
};

extern UnkStruct_0206322c data_0206322c;
