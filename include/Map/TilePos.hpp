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
    inline TilePos(bool) {}
    inline TilePos(u8 x, u8 y) :
        x(x),
        y(y) {}
};

inline bool operator==(TilePos a, TilePos b) {
    return (a.x == b.x && a.y == b.y);
}
