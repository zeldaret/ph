#include <global.h>
#include <types.h>

extern volatile u32 data_02076834;

asm u32 func_02042ad8(void) {
    ldr r12, =data_02076834
loop:
    ldr r0, [r12]
    cmp r0, #1
    beq loop
    bx lr
}
