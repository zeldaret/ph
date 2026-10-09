#include "nds/math.h"

void Mat4x3p_ScaleColumns(Mat4x3p *m, Mat4x3p *out, q20 x, q20 y, q20 z) {
    Mat3p_ScaleColumns((Mat3p *) m, (Mat3p *) out, x, y, z);
    out->wColumn.x = m->wColumn.x;
    out->wColumn.y = m->wColumn.y;
    out->wColumn.z = m->wColumn.z;
}
