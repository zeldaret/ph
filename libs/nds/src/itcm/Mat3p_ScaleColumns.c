#include "nds/math.h"

void Mat3p_ScaleColumns(Mat3p *m, Mat3p *out, q20 x, q20 y, q20 z) {
    out->xColumn.x = (q20) (((s64) x * m->xColumn.x) >> 12);
    out->xColumn.y = (q20) (((s64) x * m->xColumn.y) >> 12);
    out->xColumn.z = (q20) (((s64) x * m->xColumn.z) >> 12);
    out->yColumn.x = (q20) (((s64) y * m->yColumn.x) >> 12);
    out->yColumn.y = (q20) (((s64) y * m->yColumn.y) >> 12);
    out->yColumn.z = (q20) (((s64) y * m->yColumn.z) >> 12);
    out->zColumn.x = (q20) (((s64) z * m->zColumn.x) >> 12);
    out->zColumn.y = (q20) (((s64) z * m->zColumn.y) >> 12);
    out->zColumn.z = (q20) (((s64) z * m->zColumn.z) >> 12);
}
