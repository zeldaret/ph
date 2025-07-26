#pragma once

#include "global.h"
#include "types.h"

class TilePos {
public:
    u8 x;
    u8 y;

    inline TilePos() :
        x(0),
        y(0) {}
    inline TilePos(u8 x, u8 y) :
        x(x),
        y(y) {}
};
