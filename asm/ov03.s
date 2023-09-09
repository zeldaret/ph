    .include "macros/function.inc"
    .include "global.inc"

	.text

	thumb_func_start func_ov03_020eed40
func_ov03_020eed40: ; 0x020eed40
	ldr r0, _020eed50 ; =data_ov03_02100a80
	ldr r1, [r0]
	cmp r1, #1
	beq _020eed4c
	mov r1, #1
	str r1, [r0]
_020eed4c:
	bx lr
	nop
	thumb_func_end func_ov03_020eed40
_020eed50: .word data_ov03_02100a80

	thumb_func_start func_ov03_020eed54
func_ov03_020eed54: ; 0x020eed54
	push {lr}
	sub sp, #0x24
	add r3, sp, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, sp, #0x20
	add r1, sp, #0x1c
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl func_ov03_020eee50
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	bl func_ov03_020eeedc
	add sp, #0x24
	pop {pc}
	thumb_func_end func_ov03_020eed54

	thumb_func_start func_ov03_020eed7c
func_ov03_020eed7c: ; 0x020eed7c
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r0, #0x34
	add r4, r2, #0
	str r0, [sp]
	add r7, r3, #0
	str r4, [sp, #4]
	add r6, r1, #0
	add r1, r5, #0
	add r3, r5, #0
	ldr r0, [sp, #0x48]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x14
	add r1, #0x2c
	add r2, r5, #4
	add r3, #0x30
	bl func_ov03_020eee50
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [sp]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x2c]
	add r0, sp, #0x10
	bl func_ov03_020eef08
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x48]
	str r1, [r5]
	ldr r1, [sp, #0x14]
	str r1, [r5, #8]
	ldr r1, [sp, #0x18]
	str r1, [r5, #0xc]
	ldr r1, [sp, #0x1c]
	str r1, [r5, #0x10]
	ldr r1, [sp, #0x20]
	str r1, [r5, #0x18]
	ldr r1, [sp, #0x24]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x28]
	str r1, [r5, #0x20]
	ldr r1, [sp, #0x2c]
	str r1, [r5, #0x24]
	ldr r1, [sp, #0x30]
	str r1, [r5, #0x28]
	ldr r1, [r4, #0x10]
	str r1, [r5, #0x38]
	str r4, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r0, [r5, #0x44]
	add r0, r5, #0
	add r1, r7, #0
	bl func_ov03_020eef58
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020eed7c

	thumb_func_start func_ov03_020eedf4
func_ov03_020eedf4: ; 0x020eedf4
	ldr r3, _020eedf8 ; =func_ov03_020ef00c
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020eedf4
_020eedf8: .word func_ov03_020ef00c

	thumb_func_start func_ov03_020eedfc
func_ov03_020eedfc: ; 0x020eedfc
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r3, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r3, [sp, #0x40]
	add r0, sp, #4
	add r2, r7, #0
	add r4, r1, #0
	bl func_ov03_020ef034
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x40]
	str r1, [r5, #4]
	ldr r1, [sp, #8]
	add r2, r7, #0
	str r1, [r5, #8]
	ldr r1, [sp, #0xc]
	str r1, [r5, #0xc]
	ldr r1, [sp, #0x10]
	str r1, [r5, #0x10]
	ldr r1, [sp, #0x14]
	str r1, [r5, #0x14]
	ldr r1, [sp, #0x18]
	str r1, [r5, #0x18]
	ldr r1, [sp, #0x1c]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x20]
	str r1, [r5, #0x20]
	ldr r1, [sp, #0x24]
	str r1, [r5, #0x28]
	str r4, [r5, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	bl func_ov03_020ef080
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020eedfc

	thumb_func_start func_ov03_020eee50
func_ov03_020eee50: ; 0x020eee50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r2, [sp, #8]
	mov r2, #0
	str r0, [sp, #0x34]
	add r0, r2, #0
	str r0, [sp, #0x14]
	str r1, [sp, #4]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0xc]
	ldr r3, [r0]
	ldr r0, [r0, #4]
	str r2, [sp, #0x10]
	add r6, r2, #0
	add r7, r2, #0
	add r1, r2, #0
	cmp r0, #0
	ble _020eeebe
	ble _020eeebe
	ldr r0, [sp, #0x38]
	mov ip, r0
	ldr r0, [sp, #0x3c]
	mov lr, r0
_020eee82:
	ldr r0, [r3]
	cmp r0, #0
	bne _020eee8e
	mov r0, lr
	cmp r0, #0
	bne _020eeeb2
_020eee8e:
	ldr r4, [r3, #4]
	mov r0, ip
	tst r0, r4
	beq _020eeeb2
	ldr r4, [sp, #0x10]
	ldrh r0, [r3, #0x14]
	ldrh r5, [r3, #0x16]
	add r4, r4, #1
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x14]
	add r6, r6, r0
	add r2, r2, r5
	cmp r4, r0
	bge _020eeeac
	str r0, [sp, #0x14]
_020eeeac:
	cmp r7, r5
	bge _020eeeb2
	add r7, r5, #0
_020eeeb2:
	ldr r0, [sp, #0x34]
	add r1, r1, #1
	ldr r0, [r0, #4]
	add r3, #0x18
	cmp r1, r0
	blt _020eee82
_020eeebe:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	str r6, [r0]
	ldr r0, [sp, #4]
	str r2, [r0]
	ldr r0, [sp, #8]
	str r1, [r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r0, [sp, #0x30]
	str r7, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020eee50

	thumb_func_start func_ov03_020eeedc
func_ov03_020eeedc: ; 0x020eeedc
	push {r3, r4}
	mov r3, #0x38
	mov r4, #0
	mul r3, r2
	add r0, r0, #1
	add r3, r4, r3
	lsl r2, r0, #2
	add r2, r3, r2
	lsl r3, r1, #2
	add r2, r2, r3
	add r2, r2, r3
	add r3, r2, r3
	lsl r2, r1, #3
	add r3, r3, r2
	lsl r2, r0, #1
	add r0, r3, r2
	add r2, r0, r2
	lsl r0, r1, #1
	add r0, r2, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020eeedc

	thumb_func_start func_ov03_020eef08
func_ov03_020eef08: ; 0x020eef08
	push {r3, r4, r5, r6}
	ldr r6, [sp, #0x10]
	mov r5, #0x38
	mov r4, #0
	mul r5, r6
	add r5, r4, r5
	str r1, [r0]
	add r4, r1, r5
	str r4, [r0, #4]
	add r4, r2, #1
	lsl r2, r4, #2
	add r5, r5, r2
	add r2, r1, r5
	str r2, [r0, #0x10]
	lsl r2, r3, #2
	add r6, r5, r2
	add r5, r1, r6
	add r6, r6, r2
	str r5, [r0, #0x14]
	add r5, r1, r6
	str r5, [r0, #0x18]
	add r5, r6, r2
	add r2, r1, r5
	str r2, [r0, #0x20]
	lsl r2, r3, #3
	add r6, r5, r2
	lsl r5, r4, #1
	add r2, r1, r6
	add r4, r6, r5
	str r2, [r0, #8]
	add r2, r1, r4
	str r2, [r0, #0xc]
	add r2, r4, r5
	add r1, r1, r2
	str r1, [r0, #0x1c]
	lsl r0, r3, #1
	add r0, r2, r0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020eef08

	thumb_func_start func_ov03_020eef58
func_ov03_020eef58: ; 0x020eef58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r7, #0
	ldr r6, [r0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r4, [r5]
	str r7, [sp, #0x10]
	cmp r0, #0
	ble _020ef004
	ble _020ef004
_020eef78:
	ldr r0, [r6]
	cmp r0, #0
	bne _020eef84
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020eeff4
_020eef84:
	ldr r1, [r6, #4]
	ldr r0, [sp]
	tst r0, r1
	beq _020eeff4
	str r6, [r4, #0x34]
	ldrh r0, [r6, #0x16]
	strh r0, [r4]
	ldrh r0, [r6, #0x14]
	strh r0, [r4, #2]
	ldr r0, [r5, #0x3c]
	ldr r1, [r0, #8]
	ldr r0, [r6, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r1, [r5, #0x18]
	lsl r0, r7, #2
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r5, #0x1c]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r1, [r5, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r5, #0x24]
	lsl r0, r7, #1
	add r0, r1, r0
	str r0, [r4, #0x20]
	ldr r1, [r5, #0x28]
	lsl r0, r7, #3
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r1, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl func_ov03_020ef400
	ldrh r1, [r6, #0x14]
	ldr r0, [sp, #0xc]
	add r4, #0x38
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldrh r0, [r6, #0x16]
	add r7, r7, r0
_020eeff4:
	ldr r0, [sp, #0x10]
	add r6, #0x18
	add r0, r0, #1
	str r0, [sp, #0x10]
	add r1, r0, #0
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _020eef78
_020ef004:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020eef58

	thumb_func_start func_ov03_020ef00c
func_ov03_020ef00c: ; 0x020ef00c
	push {r3, r4}
	mov r3, #0
	lsl r2, r0, #2
	add r2, r3, r2
	lsl r4, r1, #2
	add r2, r2, r4
	add r3, r0, #1
	add r2, r2, r4
	lsl r0, r3, #2
	add r0, r2, r0
	add r2, r0, r4
	lsl r0, r1, #3
	add r0, r2, r0
	lsl r2, r3, #1
	add r0, r0, r2
	add r2, r0, r2
	lsl r0, r1, #1
	add r0, r2, r0
	pop {r3, r4}
	bx lr
	thumb_func_end func_ov03_020ef00c

	thumb_func_start func_ov03_020ef034
func_ov03_020ef034: ; 0x020ef034
	push {r3, r4, r5, r6}
	lsl r4, r2, #2
	mov r5, #0
	add r6, r5, r4
	lsl r5, r3, #2
	add r4, r1, r6
	str r1, [r0]
	add r6, r6, r5
	str r4, [r0, #4]
	add r4, r1, r6
	str r4, [r0, #8]
	add r4, r6, r5
	add r6, r1, r4
	add r2, r2, #1
	str r6, [r0, #0xc]
	lsl r6, r2, #2
	add r6, r4, r6
	add r4, r1, r6
	add r5, r6, r5
	str r4, [r0, #0x18]
	add r4, r1, r5
	str r4, [r0, #0x20]
	lsl r4, r3, #3
	add r6, r5, r4
	add r4, r1, r6
	lsl r5, r2, #1
	str r4, [r0, #0x10]
	add r4, r6, r5
	add r2, r1, r4
	str r2, [r0, #0x14]
	add r2, r4, r5
	add r1, r1, r2
	str r1, [r0, #0x1c]
	lsl r0, r3, #1
	add r0, r2, r0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020ef034

	thumb_func_start func_ov03_020ef080
func_ov03_020ef080: ; 0x020ef080
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x68]
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	cmp r1, #0
	bne _020ef09e
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x30]
	mov r0, #5
	b _020ef0a8
_020ef09e:
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #4]
	str r0, [sp, #0x30]
	ldr r0, [r1, #8]
_020ef0a8:
	mov ip, r0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _020ef12c
	ldr r0, [sp, #0x10]
	mov r6, #2
	ldr r7, _020ef354 ; =0xfffffe00
	ldr r3, [r0]
	ldr r0, [r0, #4]
	lsl r6, r6, #8
	add r5, r6, #0
	add r4, r7, #0
	mov r2, #0
	str r0, [sp, #0x44]
	cmp r0, #0
	ble _020ef100
_020ef0c8:
	mov r0, #0
	ldrsh r1, [r3, r0]
	sub r0, r0, #1
	cmp r1, r0
	beq _020ef0f2
	mov r0, #0
	ldrsh r0, [r3, r0]
	cmp r0, r6
	bge _020ef0dc
	add r6, r0, #0
_020ef0dc:
	cmp r0, r7
	ble _020ef0e2
	add r7, r0, #0
_020ef0e2:
	mov r0, #2
	ldrsh r0, [r3, r0]
	cmp r0, r5
	bge _020ef0ec
	add r5, r0, #0
_020ef0ec:
	cmp r0, r4
	ble _020ef0f2
	add r4, r0, #0
_020ef0f2:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp, #0x44]
	add r3, r3, #4
	cmp r2, r0
	blt _020ef0c8
_020ef100:
	sub r0, r7, r6
	sub r1, r4, r5
	str r0, [sp, #0x20]
	cmp r0, r1
	bge _020ef10c
	str r1, [sp, #0x20]
_020ef10c:
	ldr r0, [sp, #0x20]
	add r2, r6, r7
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	sub r1, r1, r0
	add r2, r5, r4
	str r1, [sp, #0x38]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	sub r0, r1, r0
	str r0, [sp, #0x34]
_020ef12c:
	ldr r0, [sp, #0xc]
	mov r4, #0
	ldr r7, [r0, #0x18]
	ldr r0, [sp, #0x30]
	str r4, [sp, #0x4c]
	cmp r0, #0
	bne _020ef15c
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	str r4, [sp, #4]
	ldr r0, [r0, #4]
	ldr r3, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, sp, #0x4c
	bl func_ov03_020efaf4
	cmp r0, #0
	bne _020ef1f8
	add r0, r4, #0
	str r0, [sp, #0x4c]
	b _020ef1f8
_020ef15c:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _020ef188
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _020ef16c
	cmp r0, #3
	bne _020ef188
_020ef16c:
	mov r0, ip
	cmp r0, #0
	ble _020ef188
	ldr r0, [sp, #0x20]
	mov r1, ip
	mul r0, r1
	ldr r1, [sp, #0x1c]
	blx func_02002c14
	mov ip, r0
	cmp r0, #0
	bne _020ef188
	mov r0, #1
	mov ip, r0
_020ef188:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _020ef198
	cmp r0, #2
	beq _020ef1b6
	cmp r0, #3
	beq _020ef1d4
	b _020ef1f0
_020ef198:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	ldr r0, [r0, #4]
	add r1, sp, #0x4c
	str r0, [sp, #8]
	add r0, r7, #0
	bl func_ov03_020efb48
	add r4, r0, #0
	b _020ef1f0
_020ef1b6:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	ldr r0, [r0, #4]
	add r1, sp, #0x4c
	str r0, [sp, #8]
	add r0, r7, #0
	bl func_ov03_020efc68
	add r4, r0, #0
	b _020ef1f0
_020ef1d4:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	ldr r0, [r0, #4]
	add r1, sp, #0x4c
	str r0, [sp, #8]
	add r0, r7, #0
	bl func_ov03_020efe54
	add r4, r0, #0
_020ef1f0:
	cmp r4, #0
	bne _020ef1f8
	mov r0, #0
	str r0, [sp, #0x4c]
_020ef1f8:
	mov r4, #0
	str r4, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x24]
	cmp r0, #0
	ble _020ef2ec
	ldr r0, [sp, #0x10]
	sub r1, r4, #1
	ldr r0, [r0]
	add r6, r4, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	ldr r5, [r0, #4]
	add r0, sp, #0x48
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _020ef2ee
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	add r1, r1, #1
	blx func_02002e20
	str r0, [sp, #0x40]
	add r0, r4, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	ble _020ef2ec
_020ef234:
	ldrh r0, [r7]
	ldr r1, [sp, #0x28]
	lsl r2, r0, #2
	add r1, r1, r2
	ldr r2, _020ef358 ; =0x0000ffff
	cmp r0, r2
	beq _020ef24e
	mov r0, #0
	ldrsh r0, [r1, r0]
	mov r2, #0
	sub r2, r2, #1
	cmp r0, r2
	bne _020ef290
_020ef24e:
	cmp r6, #2
	blt _020ef278
	mov r0, #0
	mvn r0, r0
	add r1, sp, #0x48
	strh r0, [r1]
	strh r0, [r5]
	strh r0, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r5, #2]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x3c]
	add r5, r5, #4
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x3c]
	b _020ef28c
_020ef278:
	mov r1, #0
	cmp r6, #0
	ble _020ef28c
_020ef27e:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	add r1, r1, #1
	sub r5, r5, #4
	lsr r4, r0, #0x10
	cmp r1, r6
	blt _020ef27e
_020ef28c:
	mov r6, #0
	b _020ef2de
_020ef290:
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [sp, #0x38]
	sub r2, r2, r0
	ldr r0, [sp, #0x40]
	mul r2, r0
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	mov r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #0x34]
	add r2, sp, #0x48
	sub r1, r1, r0
	ldr r0, [sp, #0x40]
	mul r1, r0
	lsr r0, r1, #0x10
	mov r1, #0
	lsl r0, r0, #0x10
	ldrsh r1, [r2, r1]
	asr r0, r0, #0x10
	cmp r1, r3
	bne _020ef2c6
	mov r1, #2
	ldrsh r1, [r2, r1]
	cmp r1, r0
	beq _020ef2de
_020ef2c6:
	add r1, sp, #0x48
	strh r3, [r1]
	strh r3, [r5]
	strh r0, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r6, r6, #1
	strh r0, [r5, #2]
	add r0, r4, #1
	lsl r0, r0, #0x10
	add r5, r5, #4
	lsr r4, r0, #0x10
_020ef2de:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x4c]
	add r0, r0, #1
	add r7, r7, #2
	str r0, [sp, #0x2c]
	cmp r0, r1
	blt _020ef234
_020ef2ec:
	b _020ef39e
_020ef2ee:
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	cmp r0, #0
	ble _020ef39e
_020ef2f6:
	ldrh r1, [r7]
	ldr r0, [sp, #0x28]
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r2, _020ef358 ; =0x0000ffff
	cmp r1, r2
	beq _020ef310
	mov r1, #0
	ldrsh r1, [r0, r1]
	mov r2, #0
	sub r2, r2, #1
	cmp r1, r2
	bne _020ef35c
_020ef310:
	cmp r6, #2
	blt _020ef33a
	mov r0, #0
	mvn r0, r0
	add r1, sp, #0x48
	strh r0, [r1]
	strh r0, [r5]
	strh r0, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r5, #2]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x3c]
	add r5, r5, #4
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x3c]
	b _020ef34e
_020ef33a:
	mov r0, #0
	cmp r6, #0
	ble _020ef34e
_020ef340:
	sub r1, r4, #1
	lsl r1, r1, #0x10
	add r0, r0, #1
	sub r5, r5, #4
	lsr r4, r1, #0x10
	cmp r0, r6
	blt _020ef340
_020ef34e:
	mov r6, #0
	b _020ef394
	nop
	thumb_func_end func_ov03_020ef080
_020ef354: .word 0xfffffe00
_020ef358: .word 0x0000ffff
_020ef35c:
	add r2, sp, #0x48
	mov r1, #0
	ldrsh r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r0, r2]
	cmp r1, r2
	bne _020ef378
	add r2, sp, #0x48
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #2
	ldrsh r2, [r0, r2]
	cmp r1, r2
	beq _020ef394
_020ef378:
	ldrh r2, [r0]
	add r1, sp, #0x48
	add r6, r6, #1
	strh r2, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	add r0, r4, #1
	lsl r0, r0, #0x10
	add r5, r5, #4
	lsr r4, r0, #0x10
_020ef394:
	ldr r0, [sp, #0x4c]
	add r3, r3, #1
	add r7, r7, #2
	cmp r3, r0
	blt _020ef2f6
_020ef39e:
	ldr r0, [sp, #0xc]
	cmp r4, #0
	strh r4, [r0, #2]
	ldr r1, [sp, #0x3c]
	strh r1, [r0]
	bne _020ef3c0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bgt _020ef3b4
	mov r0, #1
	str r0, [sp, #0x1c]
_020ef3b4:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	add sp, #0x50
	str r1, [r0, #0x34]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020ef3c0:
	bl func_ov03_020ef400
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _020ef3d2
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x34]
	b _020ef3f8
_020ef3d2:
	ldr r1, [sp, #0xc]
	mov r0, #4
	add r1, #0x2c
	ldrsh r3, [r1, r0]
	ldr r0, [sp, #0xc]
	mov r2, #0x2c
	ldrsh r0, [r0, r2]
	ldr r2, [sp, #0xc]
	sub r0, r3, r0
	str r0, [r2, #0x34]
	mov r2, #6
	ldrsh r3, [r1, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	sub r1, r3, r1
	cmp r0, r1
	bge _020ef3f8
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x34]
_020ef3f8:
	mov r0, #1
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start func_ov03_020ef400
func_ov03_020ef400: ; 0x020ef400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r4, r0, #0
	mov r1, #0
	mov r0, #2
	str r1, [r4, #0x24]
	lsl r0, r0, #8
	strh r0, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	ldr r0, _020ef730 ; =0xfffffe00
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #2]
	ldr r5, [r4, #4]
	str r0, [sp, #0x48]
	cmp r0, #2
	blt _020ef446
	mov r2, #4
	ldrsh r0, [r5, r2]
	sub r2, r2, #5
	cmp r0, r2
	beq _020ef446
	ldrsh r1, [r5, r1]
	lsl r1, r1, #1
	sub r0, r1, r0
	add r1, sp, #0x60
	strh r0, [r1]
	mov r0, #2
	ldrsh r0, [r5, r0]
	lsl r2, r0, #1
	mov r0, #6
	ldrsh r0, [r5, r0]
	sub r0, r2, r0
	strh r0, [r1, #2]
	b _020ef450
_020ef446:
	ldrh r1, [r5]
	add r0, sp, #0x60
	strh r1, [r0]
	ldrh r1, [r5, #2]
	strh r1, [r0, #2]
_020ef450:
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bgt _020ef460
	b _020ef682
_020ef460:
	ldr r0, [sp, #0x4c]
	add r6, sp, #0x60
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x50]
	add r0, #0x24
	str r0, [sp, #0x50]
_020ef474:
	mov r0, #0
	ldrsh r1, [r5, r0]
	sub r0, r0, #1
	cmp r1, r0
	beq _020ef53c
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _020ef4b8
	ldr r2, [r4, #8]
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x20]
	mov r7, #0
	str r1, [r2, r0]
	add r0, r7, #0
	ldrsh r1, [r5, r0]
	str r0, [sp, #0x44]
	mov r0, #2
	strh r1, [r6, #4]
	ldrsh r0, [r5, r0]
	add r2, r7, #0
	str r2, [sp, #0x40]
	strh r0, [r6, #6]
	strh r1, [r6, #8]
	strh r0, [r6, #0xa]
	mov r2, #2
	ldrsh r2, [r6, r2]
	sub r0, r0, r2
	add r2, r7, #0
	ldrsh r2, [r6, r2]
	sub r1, r1, r2
	blx func_01ffa0f4
	str r0, [sp, #0x5c]
	b _020ef524
_020ef4b8:
	mov r0, #4
	ldrsh r0, [r6, r0]
	cmp r1, r0
	bge _020ef4c2
	strh r1, [r6, #4]
_020ef4c2:
	mov r0, #8
	ldrsh r0, [r6, r0]
	cmp r1, r0
	ble _020ef4cc
	strh r1, [r6, #8]
_020ef4cc:
	mov r0, #2
	mov r2, #6
	ldrsh r0, [r5, r0]
	ldrsh r2, [r6, r2]
	cmp r0, r2
	bge _020ef4da
	strh r0, [r6, #6]
_020ef4da:
	mov r2, #0xa
	ldrsh r2, [r6, r2]
	cmp r0, r2
	ble _020ef4e4
	strh r0, [r6, #0xa]
_020ef4e4:
	mov r2, #2
	ldrsh r2, [r6, r2]
	str r2, [sp, #0x10]
	sub r0, r2, r0
	mov r2, #0
	ldrsh r2, [r6, r2]
	sub r1, r2, r1
	str r2, [sp, #0xc]
	add r2, r1, #0
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	blx func_01ff9958
	str r0, [sp, #0x40]
	cmp r0, #0
	bne _020ef50e
	mov r0, #1
	str r0, [sp, #0x40]
_020ef50e:
	mov r0, #2
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
	mov r1, #0
	ldrsh r2, [r5, r1]
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	blx func_01ffa0f4
	str r0, [sp, #0x5c]
_020ef524:
	ldr r0, [sp, #0x40]
	add r7, r7, r0
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	ldrh r0, [r5]
	strh r0, [r6]
	ldrh r0, [r5, #2]
	strh r0, [r6, #2]
	mov r0, #0
	str r0, [sp, #0x54]
	b _020ef656
_020ef53c:
	cmp r7, #0
	bne _020ef542
	mov r7, #1
_020ef542:
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	str r7, [r1, r0]
	ldr r2, [r4, #0xc]
	ldr r1, [sp, #0x44]
	str r1, [r2, r0]
	ldr r0, [sp, #0x4c]
	add r1, r0, #1
	ldr r0, [sp, #0x48]
	cmp r1, r0
	bge _020ef5a6
	mov r0, #2
	ldrsh r0, [r6, r0]
	str r0, [sp, #8]
	mov r0, #6
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #8]
	sub r0, r0, r1
	mov r1, #0
	ldrsh r1, [r6, r1]
	str r1, [sp, #4]
	mov r1, #4
	ldrsh r2, [r5, r1]
	ldr r1, [sp, #4]
	sub r1, r1, r2
	add r2, r1, #0
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	blx func_01ff9958
	str r0, [sp, #0x40]
	cmp r0, #0
	bne _020ef58e
	mov r0, #1
	str r0, [sp, #0x40]
_020ef58e:
	mov r0, #6
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	mov r1, #4
	ldrsh r2, [r5, r1]
	ldr r1, [sp, #4]
	sub r1, r2, r1
	blx func_01ffa0f4
	str r0, [sp, #0x5c]
	b _020ef5e4
_020ef5a6:
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x4c]
	cmp r0, #2
	blt _020ef5e0
	mov r0, #7
	mvn r0, r0
	ldrsh r1, [r5, r0]
	add r0, r0, #7
	cmp r1, r0
	bne _020ef5e0
	mov r0, #3
	mvn r0, r0
	ldrsh r3, [r5, r0]
	add r0, r0, #3
	cmp r3, r0
	bne _020ef5e0
	mov r0, #1
	mov r2, #5
	mvn r0, r0
	mvn r2, r2
	ldrsh r0, [r5, r0]
	ldrsh r2, [r5, r2]
	sub r1, r3, r1
	sub r0, r0, r2
	blx func_01ffa0f4
	str r0, [sp, #0x5c]
	b _020ef5e4
_020ef5e0:
	mov r0, #0
	str r0, [sp, #0x5c]
_020ef5e4:
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #0x1c]
	mov ip, r0
	add r3, r0, r1
	ldrh r0, [r6, #4]
	mov r2, ip
	str r0, [sp, #0x58]
	add r0, r1, #0
	ldr r1, [sp, #0x58]
	strh r1, [r2, r0]
	ldrh r0, [r6, #6]
	strh r0, [r3, #2]
	ldrh r0, [r6, #8]
	strh r0, [r3, #4]
	ldrh r0, [r6, #0xa]
	strh r0, [r3, #6]
	mov r0, #4
	ldrsh r1, [r6, r0]
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _020ef612
	strh r1, [r4, #0x2c]
_020ef612:
	mov r0, #8
	ldrsh r1, [r6, r0]
	mov r0, #0x30
	ldrsh r0, [r4, r0]
	cmp r1, r0
	ble _020ef620
	strh r1, [r4, #0x30]
_020ef620:
	mov r0, #6
	ldrsh r1, [r6, r0]
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _020ef62e
	strh r1, [r4, #0x2e]
_020ef62e:
	mov r0, #0xa
	ldrsh r1, [r6, r0]
	mov r0, #0x32
	ldrsh r0, [r4, r0]
	cmp r1, r0
	ble _020ef63c
	strh r1, [r4, #0x32]
_020ef63c:
	ldr r0, [sp, #0x50]
	ldr r0, [r0]
	add r1, r0, r7
	ldr r0, [sp, #0x50]
	str r1, [r0]
	ldr r0, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #8
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x54]
_020ef656:
	ldr r2, [r4, #0x10]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x18]
	add r5, r5, #4
	str r1, [r2, r0]
	ldr r2, [r4, #0x18]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x5c]
	strh r0, [r2, r1]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	add r1, r0, #1
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	cmp r1, r0
	bge _020ef682
	b _020ef474
_020ef682:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _020ef68c
	mov r0, #1
	str r0, [r4, #0x24]
_020ef68c:
	mov r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x38]
	str r0, [sp, #0x34]
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x48]
	ldr r7, [r4, #4]
	ldr r6, [sp, #0x38]
	cmp r0, #0
	ble _020ef72a
	add r0, r6, #0
	str r0, [sp, #0x2c]
	add r5, r6, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
_020ef6ae:
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x2c]
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x3c]
	add r0, r0, r1
	ldr r1, [r4, #0x1c]
	str r0, [sp, #0x3c]
	ldr r1, [r1, r5]
	blx func_01ff98e0
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	ldr r0, [sp, #0x34]
	ldr r1, [r4, #0x14]
	sub r2, r3, r0
	ldr r0, [sp, #0x28]
	strh r2, [r1, r0]
	str r3, [sp, #0x34]
	mov r0, #0
	ldrsh r1, [r7, r0]
	sub r0, r0, #1
	cmp r1, r0
	beq _020ef708
	ldr r0, [sp]
	cmp r0, #0
	beq _020ef714
	ldr r0, [r4, #0x1c]
	ldr r1, [r0, r5]
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	ldr r1, [r4, #0x24]
	str r0, [sp, #0x38]
	blx func_01ff98e0
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	ldr r0, [sp, #0x30]
	ldr r1, [r4, #0x20]
	sub r2, r3, r0
	ldr r0, [sp, #0x24]
	strh r2, [r1, r0]
	mov r0, #0
	str r3, [sp, #0x30]
	str r0, [sp]
	b _020ef714
_020ef708:
	ldr r0, [sp, #0x24]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp]
_020ef714:
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r7, r7, #4
	add r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x48]
	cmp r6, r0
	blt _020ef6ae
_020ef72a:
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
	thumb_func_end func_ov03_020ef400
_020ef730: .word 0xfffffe00

	thumb_func_start func_ov03_020ef734
func_ov03_020ef734: ; 0x020ef734
	mov r0, #1
	bx lr
	thumb_func_end func_ov03_020ef734

	thumb_func_start func_ov03_020ef738
func_ov03_020ef738: ; 0x020ef738
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp]
	ldr r0, [sp, #0x70]
	str r2, [sp, #8]
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x74]
	str r1, [sp, #4]
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x78]
	mov r2, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _020ef768
	ldr r3, [sp]
	add r4, r1, #0
	add r1, r2, #0
_020ef75c:
	stmia r3!, {r1}
	ldr r0, [sp, #8]
	add r2, r2, #1
	stmia r4!, {r1}
	cmp r2, r0
	blt _020ef75c
_020ef768:
	ldr r0, [sp, #0x74]
	ldr r1, [r0, #0x38]
	ldr r0, [sp, #0x70]
	ldr r0, [r0, #0x34]
	cmp r1, r0
	bge _020ef776
	add r1, r0, #0
_020ef776:
	lsl r0, r1, #1
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x74]
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x74]
	ldr r0, [r0, #4]
	cmp r0, #0
	bgt _020ef792
	b _020efa80
_020ef792:
	ldr r0, [sp, #8]
	sub r0, r0, #1
	lsl r0, r0, #2
	str r0, [sp, #0x4c]
_020ef79a:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x34]
	ldr r0, [r1]
	cmp r0, #0
	beq _020ef7b8
	ldr r1, [r1, #4]
	ldr r0, [sp, #0x78]
	tst r0, r1
	beq _020ef7b8
	ldr r0, [sp, #0x70]
	ldrh r1, [r0]
	ldr r0, [sp, #0x44]
	ldrh r0, [r0]
	cmp r1, r0
	beq _020ef7ba
_020ef7b8:
	b _020efa68
_020ef7ba:
	mov r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #0x34]
	str r0, [sp, #0x3c]
	cmp r1, #0
	bgt _020ef7c8
	b _020ef9da
_020ef7c8:
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
_020ef7cc:
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #8]
	ldr r0, [sp, #0x24]
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x44]
	ldr r2, [r0, #4]
	lsl r0, r1, #2
	add r0, r2, r0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x70]
	lsl r1, r1, #1
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x24]
	ldr r0, [r2, r0]
	ldr r2, [sp, #0x70]
	ldr r3, [r2, #4]
	lsl r2, r0, #2
	add r2, r3, r2
	mov ip, r2
	ldr r2, [sp, #0x44]
	lsl r0, r0, #1
	ldr r2, [r2, #0x18]
	add r7, r2, r1
	ldr r2, [sp, #0x70]
	ldr r2, [r2, #0x18]
	add r2, r2, r0
	str r2, [sp, #0x54]
	ldr r2, [sp, #0x44]
	ldr r2, [r2, #0x14]
	add r4, r2, r1
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x70]
	ldr r3, [r2, #0xc]
	ldr r2, [sp, #0x24]
	ldr r1, [r1, #0x14]
	ldr r6, [r3, r2]
	add r5, r1, r0
	ldr r2, [sp, #0x70]
	mov r0, #2
	ldr r3, [r2, #0xc]
	ldr r2, [sp, #0x24]
	mov r1, #2
	ldr r2, [r3, r2]
	ldrsh r0, [r4, r0]
	add r2, r6, r2
	sub r2, r2, #3
	ldrsh r1, [r5, r1]
	str r2, [sp, #0x10]
	cmp r2, #0
	bgt _020ef83a
	b _020ef992
_020ef83a:
	ldr r2, [sp, #0x54]
	mov r3, ip
	add r2, r2, #2
	str r2, [sp, #0x1c]
	add r2, r7, #2
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x50]
	add r4, r4, #2
	add r7, r5, #2
	add r2, r2, #4
	add r3, r3, #4
	str r4, [sp, #0x14]
_020ef852:
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	ldrh r4, [r4]
	ldrh r5, [r5]
	sub r4, r4, r5
	lsl r4, r4, #0x10
	asr r5, r4, #0x10
	bpl _020ef864
	neg r5, r5
_020ef864:
	mov r4, #2
	lsl r4, r4, #0xe
	sub r4, r4, r5
	asr r5, r4, #6
	lsr r5, r5, #0x19
	add r5, r4, r5
	asr r4, r5, #7
	str r4, [sp, #0x2c]
	cmp r0, r1
	bgt _020ef900
	mov r4, #0
	ldrsh r5, [r7, r4]
	sub r1, r1, r0
	lsl r1, r1, #0x10
	lsr r4, r5, #0x1f
	add r4, r5, r4
	asr r1, r1, #0x10
	asr r4, r4, #1
	cmp r1, r4
	bge _020ef8b4
	mov r4, #0
	mov r5, #0
	ldrsh r4, [r3, r4]
	ldrsh r5, [r2, r5]
	mov r6, #2
	ldrsh r6, [r2, r6]
	sub r5, r4, r5
	mov r4, #2
	ldrsh r4, [r3, r4]
	sub r4, r4, r6
	cmp r5, #0
	bge _020ef8a6
	neg r5, r5
_020ef8a6:
	cmp r4, #0
	bge _020ef8ac
	neg r4, r4
_020ef8ac:
	add r5, r5, r4
	ldr r4, [sp, #0x28]
	sub r5, r4, r5
	b _020ef8de
_020ef8b4:
	mov r4, #3
	mvn r4, r4
	mov r5, #0
	ldrsh r4, [r3, r4]
	ldrsh r5, [r2, r5]
	mov r6, #2
	ldrsh r6, [r2, r6]
	sub r5, r4, r5
	mov r4, #1
	mvn r4, r4
	ldrsh r4, [r3, r4]
	sub r4, r4, r6
	cmp r5, #0
	bge _020ef8d2
	neg r5, r5
_020ef8d2:
	cmp r4, #0
	bge _020ef8d8
	neg r4, r4
_020ef8d8:
	add r5, r5, r4
	ldr r4, [sp, #0x28]
	sub r5, r4, r5
_020ef8de:
	ldr r4, [sp, #0x2c]
	add r2, r2, #4
	mul r5, r4
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	mul r4, r5
	add r0, r0, r4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r0, #2
	mov r0, #0
	str r4, [sp, #0x14]
	ldrsh r0, [r4, r0]
	b _020ef984
_020ef900:
	ldr r5, [sp, #0x14]
	mov r4, #0
	ldrsh r5, [r5, r4]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r4, r5, #0x1f
	add r4, r5, r4
	asr r0, r0, #0x10
	asr r4, r4, #1
	cmp r0, r4
	bge _020ef93e
	mov r4, #0
	mov r5, #0
	ldrsh r4, [r3, r4]
	ldrsh r5, [r2, r5]
	mov r6, #2
	ldrsh r6, [r2, r6]
	sub r5, r4, r5
	mov r4, #2
	ldrsh r4, [r3, r4]
	sub r4, r4, r6
	cmp r5, #0
	bge _020ef930
	neg r5, r5
_020ef930:
	cmp r4, #0
	bge _020ef936
	neg r4, r4
_020ef936:
	add r5, r5, r4
	ldr r4, [sp, #0x28]
	sub r5, r4, r5
	b _020ef968
_020ef93e:
	mov r5, #3
	mov r4, #0
	mvn r5, r5
	ldrsh r4, [r3, r4]
	ldrsh r5, [r2, r5]
	mov r6, #1
	mvn r6, r6
	sub r5, r4, r5
	mov r4, #2
	ldrsh r4, [r3, r4]
	ldrsh r6, [r2, r6]
	sub r4, r4, r6
	cmp r5, #0
	bge _020ef95c
	neg r5, r5
_020ef95c:
	cmp r4, #0
	bge _020ef962
	neg r4, r4
_020ef962:
	add r5, r5, r4
	ldr r4, [sp, #0x28]
	sub r5, r4, r5
_020ef968:
	ldr r4, [sp, #0x2c]
	add r7, r7, #2
	mul r5, r4
	add r4, r1, #0
	ldr r1, [sp, #0x30]
	mul r4, r5
	add r1, r1, r4
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x1c]
	add r3, r3, #4
	add r1, r1, #2
	str r1, [sp, #0x1c]
	mov r1, #0
	ldrsh r1, [r7, r1]
_020ef984:
	ldr r4, [sp, #0xc]
	add r5, r4, #1
	ldr r4, [sp, #0x10]
	str r5, [sp, #0xc]
	cmp r5, r4
	bge _020ef992
	b _020ef852
_020ef992:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x20]
	ldr r0, [sp, #0x20]
	ldrsh r4, [r1, r0]
	ldr r0, [sp, #0x70]
	ldr r1, [r0, #0x20]
	ldr r0, [sp, #0x20]
	ldrsh r0, [r1, r0]
	cmp r4, r0
	bge _020ef9a8
	add r4, r0, #0
_020ef9a8:
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	blx func_0200388c
	ldr r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, r0, r4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	ldrh r1, [r0]
	ldr r0, [sp, #0x3c]
	cmp r0, r1
	bge _020ef9da
	b _020ef7cc
_020ef9da:
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x38]
	mul r1, r2
	blx func_01ff98e0
	asr r1, r0, #7
	lsr r1, r1, #0x18
	add r1, r0, r1
	asr r0, r1, #8
	ldr r1, [sp, #0x44]
	ldr r2, [r1, #0x34]
	mov r1, #0xa
	ldrsh r2, [r2, r1]
	cmp r2, #0
	beq _020efa0e
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r1, r2
	blx func_0200388c
	ldr r1, [sp, #0x44]
	ldr r2, [r1, #0x34]
	mov r1, #0xa
	ldrsh r1, [r2, r1]
	add r0, r1, r0
_020efa0e:
	cmp r0, #0
	bge _020efa14
	mov r0, #0
_020efa14:
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _020efa1e
	add r0, r1, #0
_020efa1e:
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #4]
	add r1, r1, #1
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r1, [r2, r1]
	cmp r1, r0
	bge _020efa68
	ldr r1, [sp, #0x4c]
	str r0, [r2, r1]
	ldr r0, [sp, #0x44]
	ldr r1, [sp]
	ldr r2, [r0, #0x34]
	ldr r0, [sp, #0x4c]
	str r2, [r1, r0]
	ldr r0, [sp, #8]
	sub r1, r0, #2
	bmi _020efa68
	ldr r0, [sp, #4]
	lsl r3, r1, #2
	ldr r2, [sp]
	add r0, r0, r3
	add r4, r2, r3
_020efa4c:
	ldr r3, [r0, #4]
	ldr r2, [r0]
	cmp r2, r3
	bge _020efa60
	str r3, [r0]
	str r2, [r0, #4]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	str r2, [r4]
	str r3, [r4, #4]
_020efa60:
	sub r0, r0, #4
	sub r4, r4, #4
	sub r1, r1, #1
	bpl _020efa4c
_020efa68:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	add r0, #0x38
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x74]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x40]
	cmp r0, r1
	bge _020efa80
	b _020ef79a
_020efa80:
	ldr r0, [sp, #0x48]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020ef738

	thumb_func_start func_ov03_020efa88
func_ov03_020efa88: ; 0x020efa88
	push {r4, r5, r6, r7}
	add r5, r1, #0
	ldr r4, [r5]
	add r6, r0, #0
	ldr r1, [r3]
	cmp r4, #2
	bge _020efa9e
	mov r0, #0
	str r0, [r5]
	pop {r4, r5, r6, r7}
	bx lr
_020efa9e:
	sub r0, r4, #1
	lsl r0, r0, #1
	ldrh r3, [r6, r0]
	lsl r3, r3, #2
	ldrsh r7, [r1, r3]
	mov r3, #0
	mvn r3, r3
	cmp r7, r3
	beq _020efaea
	sub r7, r4, #2
	lsl r7, r7, #1
	ldrh r7, [r6, r7]
	lsl r7, r7, #2
	ldrsh r7, [r1, r7]
	cmp r7, r3
	beq _020efae8
	cmp r4, r2
	bge _020efacc
	lsl r0, r4, #1
	lsr r1, r3, #0x10
	strh r1, [r6, r0]
	add r4, r4, #1
	b _020efaea
_020efacc:
	cmp r4, #3
	blt _020efae4
	sub r2, r4, #3
	lsl r2, r2, #1
	ldrh r2, [r6, r2]
	lsl r2, r2, #2
	ldrsh r1, [r1, r2]
	cmp r1, r3
	beq _020efae4
	lsr r1, r3, #0x10
	strh r1, [r6, r0]
	b _020efaea
_020efae4:
	sub r4, r4, #2
	b _020efaea
_020efae8:
	sub r4, r4, #1
_020efaea:
	str r4, [r5]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020efa88

	thumb_func_start func_ov03_020efaf4
func_ov03_020efaf4: ; 0x020efaf4
	push {r4, r5, r6, lr}
	ldr r3, [sp, #0x10]
	add r4, r1, #0
	ldr r5, [r3, #4]
	cmp r5, r2
	ble _020efb02
	add r5, r2, #0
_020efb02:
	cmp r5, #2
	bge _020efb0c
	mov r0, #0
	str r0, [r4]
	b _020efb38
_020efb0c:
	mov r6, #0
	cmp r5, #0
	ble _020efb20
_020efb12:
	lsl r1, r6, #1
	strh r6, [r0, r1]
	add r1, r6, #1
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	cmp r6, r5
	blt _020efb12
_020efb20:
	str r6, [r4]
	sub r5, r5, #1
	ldr r1, [r3]
	lsl r5, r5, #2
	ldrsh r5, [r1, r5]
	mov r1, #0
	mvn r1, r1
	cmp r5, r1
	beq _020efb38
	add r1, r4, #0
	bl func_ov03_020efa88
_020efb38:
	ldr r0, [r4]
	cmp r0, #0
	ble _020efb42
	mov r0, #1
	pop {r4, r5, r6, pc}
_020efb42:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov03_020efaf4

	thumb_func_start func_ov03_020efb48
func_ov03_020efb48: ; 0x020efb48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r3, [sp, #8]
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r3, #0
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r2, [sp, #4]
	ldr r1, [r1, #4]
	mov ip, r3
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x30]
	add r4, r3, #0
	ldr r5, [r1]
	mov r1, #1
	str r1, [sp, #0x14]
	b _020efc0a
_020efb70:
	mov r1, #0
	ldrsh r2, [r5, r1]
	sub r1, r1, #1
	cmp r2, r1
	beq _020efbce
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _020efb8e
	lsl r1, r3, #1
	strh r4, [r0, r1]
	mov r1, #0
	add r3, r3, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	b _020efbc2
_020efb8e:
	mov r1, #2
	add r2, sp, #0x18
	ldrsh r6, [r5, r1]
	ldrsh r1, [r2, r1]
	sub r6, r6, r1
	bpl _020efb9c
	neg r6, r6
_020efb9c:
	mov r1, #0
	add r2, sp, #0x18
	ldrsh r7, [r5, r1]
	ldrsh r1, [r2, r1]
	sub r1, r7, r1
	bpl _020efbaa
	neg r1, r1
_020efbaa:
	add r2, r1, r6
	ldr r1, [sp, #0xc]
	add r2, r1, r2
	ldr r1, [sp, #0x34]
	str r2, [sp, #0xc]
	cmp r2, r1
	blt _020efbc2
	lsl r1, r3, #1
	strh r4, [r0, r1]
	mov r1, #0
	add r3, r3, #1
	str r1, [sp, #0xc]
_020efbc2:
	ldrh r2, [r5]
	add r1, sp, #0x18
	strh r2, [r1]
	ldrh r2, [r5, #2]
	strh r2, [r1, #2]
	b _020efc06
_020efbce:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _020efc06
	lsl r1, r3, #1
	add r6, r0, r1
	sub r2, r6, #2
	ldrh r2, [r2]
	sub r1, r4, #1
	cmp r1, r2
	beq _020efbec
	strh r1, [r6]
	ldr r1, [sp, #4]
	add r3, r3, #1
	cmp r3, r1
	bge _020efc16
_020efbec:
	lsl r1, r3, #1
	strh r4, [r0, r1]
	mov r1, #1
	str r1, [sp, #0x14]
	mov r1, ip
	add r2, r1, #1
	ldr r1, [sp, #8]
	add r3, r3, #1
	mov ip, r2
	cmp r2, r1
	blt _020efc06
	add r4, r4, #1
	b _020efc16
_020efc06:
	add r4, r4, #1
	add r5, r5, #4
_020efc0a:
	ldr r1, [sp, #0x10]
	cmp r4, r1
	bge _020efc16
	ldr r1, [sp, #4]
	cmp r3, r1
	blt _020efb70
_020efc16:
	ldr r1, [sp]
	str r3, [r1]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _020efc52
	cmp r3, #0
	ble _020efc48
	sub r2, r3, #1
	lsl r2, r2, #1
	ldrh r2, [r0, r2]
	sub r1, r4, #1
	cmp r1, r2
	beq _020efc48
	ldr r2, [sp, #4]
	cmp r3, r2
	bge _020efc48
	ldr r2, [sp]
	ldr r2, [r2]
	lsl r2, r2, #1
	strh r1, [r0, r2]
	ldr r1, [sp]
	ldr r1, [r1]
	add r2, r1, #1
	ldr r1, [sp]
	str r2, [r1]
_020efc48:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x30]
	bl func_ov03_020efa88
_020efc52:
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	ble _020efc60
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020efc60:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020efb48

	thumb_func_start func_ov03_020efc68
func_ov03_020efc68: ; 0x020efc68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	ldr r0, [sp, #0x48]
	mov r5, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r1, [sp]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	str r2, [sp, #4]
	ldr r0, [r0, #4]
	str r3, [sp, #8]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x48]
	str r5, [sp, #0x28]
	ldr r4, [r0]
	mov r0, #1
	str r0, [sp, #0x20]
	add r6, r5, #0
	b _020efdf2
_020efc92:
	mov r0, #0
	ldrsh r1, [r4, r0]
	sub r0, r0, #1
	cmp r1, r0
	bne _020efc9e
	b _020efdb6
_020efc9e:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020efce6
	lsl r0, r5, #1
	strh r6, [r7, r0]
	ldrh r1, [r4]
	add r0, sp, #0x2c
	add r5, r5, #1
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r1, r6, #1
	cmp r1, r0
	blt _020efcc6
	b _020efdee
_020efcc6:
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	mov r2, #0
	ldrsh r2, [r4, r2]
	sub r0, r1, r0
	mov r1, #4
	ldrsh r1, [r4, r1]
	lsl r0, r0, #0xc
	sub r1, r1, r2
	lsl r1, r1, #0xc
	blx func_01ffa0f4
	str r0, [sp, #0x1c]
	b _020efdee
_020efce6:
	add r1, sp, #0x2c
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x14]
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x14]
	mov ip, r1
	sub r2, r1, r0
	bmi _020efcfe
	add r3, r2, #0
	b _020efd00
_020efcfe:
	neg r3, r2
_020efd00:
	add r1, sp, #0x2c
	mov r0, #0
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x10]
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	sub r1, r1, r0
	bmi _020efd18
	add r0, r1, #0
	b _020efd1a
_020efd18:
	neg r0, r1
_020efd1a:
	add r0, r0, r3
	cmp r0, #6
	blt _020efdee
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _020efd88
	ldr r0, [sp, #0x24]
	add r1, r6, #1
	cmp r1, r0
	bge _020efd82
	mov r0, #4
	ldrsh r1, [r4, r0]
	sub r0, r0, #5
	cmp r1, r0
	beq _020efd82
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, ip
	sub r0, r1, r0
	mov r1, #4
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r1, r2, r1
	lsl r1, r1, #0xc
	blx func_01ffa0f4
	ldr r1, [sp, #0x1c]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	bpl _020efd5c
	neg r1, r1
_020efd5c:
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _020efd82
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r1, r2, r1
	lsl r1, r1, #0xc
	blx func_01ffa0f4
	str r0, [sp, #0x1c]
	lsl r0, r5, #1
	strh r6, [r7, r0]
	add r5, r5, #1
_020efd82:
	mov r0, #0
	str r0, [sp, #0x18]
	b _020efdaa
_020efd88:
	lsl r0, r2, #0xc
	lsl r1, r1, #0xc
	blx func_01ffa0f4
	ldr r1, [sp, #0x1c]
	sub r1, r1, r0
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	bpl _020efd9c
	neg r2, r2
_020efd9c:
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	blt _020efdaa
	lsl r1, r5, #1
	strh r6, [r7, r1]
	add r5, r5, #1
	str r0, [sp, #0x1c]
_020efdaa:
	ldrh r1, [r4]
	add r0, sp, #0x2c
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	b _020efdee
_020efdb6:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020efdee
	lsl r0, r5, #1
	add r1, r7, r0
	sub r2, r1, #2
	ldrh r2, [r2]
	sub r0, r6, #1
	cmp r0, r2
	beq _020efdd4
	strh r0, [r1]
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	bge _020efe00
_020efdd4:
	lsl r0, r5, #1
	strh r6, [r7, r0]
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0x28]
	cmp r1, r0
	blt _020efdee
	add r6, r6, #1
	b _020efe00
_020efdee:
	add r6, r6, #1
	add r4, r4, #4
_020efdf2:
	ldr r0, [sp, #0x24]
	cmp r6, r0
	bge _020efe00
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _020efe00
	b _020efc92
_020efe00:
	ldr r0, [sp]
	str r5, [r0]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020efe3e
	cmp r5, #0
	ble _020efe32
	sub r1, r5, #1
	lsl r1, r1, #1
	ldrh r1, [r7, r1]
	sub r0, r6, #1
	cmp r0, r1
	beq _020efe32
	ldr r1, [sp, #4]
	cmp r5, r1
	bge _020efe32
	ldr r1, [sp]
	ldr r1, [r1]
	lsl r1, r1, #1
	strh r0, [r7, r1]
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0]
_020efe32:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x48]
	add r0, r7, #0
	bl func_ov03_020efa88
_020efe3e:
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	ble _020efe4c
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020efe4c:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020efc68

	thumb_func_start func_ov03_020efe54
func_ov03_020efe54: ; 0x020efe54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r1, [sp, #4]
	ldr r1, [sp, #0x70]
	str r0, [sp]
	str r1, [sp, #0x34]
	add r1, r2, #0
	str r2, [sp, #8]
	lsl r2, r1, #1
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x68]
	add r1, r1, r2
	ldr r2, [sp, #0x6c]
	str r1, [sp, #0x30]
	add r1, r2, #0
	mul r1, r2
	str r1, [sp, #0x2c]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x44]
	str r1, [sp, #0x40]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r3, [sp, #0xc]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
_020efe88:
	ldr r0, [sp, #0x40]
	add r1, r0, #3
	ldr r0, [sp, #8]
	cmp r1, r0
	bgt _020eff3c
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bgt _020eff3c
	mov r2, #0
	mvn r2, r2
	b _020efeaa
_020efea0:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_020efeaa:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _020efebe
	add r0, r1, #0
	lsl r1, r0, #2
	ldr r0, [sp, #0x38]
	ldrsh r0, [r0, r1]
	cmp r0, r2
	beq _020efea0
_020efebe:
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	add r1, r2, #0
	cmp r1, r0
	bge _020eff3c
	mov r0, #0
	mvn r0, r0
	b _020efed8
_020efece:
	ldr r1, [sp, #0x10]
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x10]
_020efed8:
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x3c]
	cmp r3, r1
	bge _020efeec
	add r1, r3, #0
	lsl r3, r1, #2
	ldr r1, [sp, #0x38]
	ldrsh r1, [r1, r3]
	cmp r1, r0
	bne _020efece
_020efeec:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _020eff04
	ldr r0, [sp, #0x40]
	lsl r3, r0, #1
	ldr r0, [sp]
	strh r1, [r0, r3]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020eff14
_020eff04:
	ldr r0, [sp, #0x40]
	ldr r3, _020f00ec ; =0x0000ffff
	lsl r1, r0, #1
	ldr r0, [sp]
	strh r3, [r0, r1]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
_020eff14:
	ldr r0, [sp, #0x40]
	lsl r3, r0, #1
	ldr r0, [sp]
	add r1, r0, r3
	strh r2, [r0, r3]
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldr r1, [sp, #0x40]
	add r1, r1, #2
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x40]
	add r1, r1, #1
	str r1, [sp, #0x44]
	ldr r1, [sp, #8]
	cmp r3, r1
	blt _020eff3e
_020eff3c:
	b _020f009a
_020eff3e:
	ldr r1, [sp, #0x10]
	sub r1, r1, r2
	cmp r1, #2
	ble _020efe88
	ldr r1, [sp, #0x34]
	strh r2, [r1]
	ldr r1, [sp, #0x30]
	strh r0, [r1]
	mov r0, #1
	mov lr, r0
	mov r0, #0
	str r0, [sp, #0x4c]
	mov r0, lr
	str r0, [sp, #0x48]
	add r0, r3, #0
	lsl r1, r0, #1
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0x14]
_020eff64:
	ldr r0, [sp, #0x4c]
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0, r1]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	ldrh r6, [r0, r1]
	ldr r0, [sp, #0x4c]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0x4c]
	cmp r1, r0
	blt _020eff82
	mov r0, #0
	str r0, [sp, #0x4c]
_020eff82:
	mov r0, lr
	sub r0, r0, #1
	mov lr, r0
	ldr r0, [sp, #0x28]
	sub r0, r6, r0
	cmp r0, #1
	ble _020f0090
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x38]
	lsl r1, r0, #2
	ldr r0, [sp, #0x38]
	add r2, r0, r1
	ldrsh r1, [r0, r1]
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r2, r6, #2
	add r4, r3, r2
	ldrsh r3, [r3, r2]
	mov r2, #2
	ldrsh r2, [r4, r2]
	sub r4, r3, r1
	str r4, [sp, #0x24]
	sub r4, r2, r0
	mul r2, r1
	mul r0, r3
	sub r0, r2, r0
	mov r1, #0
	neg r0, r0
	mvn r1, r1
	str r0, [sp, #0x1c]
	lsr r0, r1, #0x10
	str r0, [sp, #0x18]
	add r0, r1, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x28]
	str r4, [sp, #0x20]
	add r0, r0, #1
	add r7, r1, #0
	cmp r0, r6
	bge _020f0018
	ldr r2, [sp, #0x38]
	lsl r3, r0, #2
	add r4, r2, r3
_020effd8:
	mov r2, #0
	ldrsh r2, [r4, r2]
	ldr r5, [sp, #0x50]
	mov r3, #2
	ldrsh r3, [r4, r3]
	cmp r5, r2
	bne _020effea
	cmp r7, r3
	beq _020f0010
_020effea:
	ldr r5, [sp, #0x20]
	str r2, [sp, #0x50]
	mul r5, r2
	ldr r2, [sp, #0x24]
	mov ip, r5
	add r7, r3, #0
	mul r2, r3
	mov r3, ip
	sub r3, r3, r2
	ldr r2, [sp, #0x1c]
	add r2, r2, r3
	bpl _020f0004
	neg r2, r2
_020f0004:
	cmp r1, r2
	bge _020f0010
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x18]
	add r1, r2, #0
_020f0010:
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, r6
	blt _020effd8
_020f0018:
	add r0, r1, #0
	mul r0, r1
	ldr r1, [sp, #0x24]
	add r3, r1, #0
	mul r3, r1
	ldr r1, [sp, #0x20]
	add r2, r1, #0
	mul r2, r1
	ldr r1, [sp, #0x2c]
	add r2, r3, r2
	mul r2, r1
	cmp r0, r2
	blt _020f0090
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	strh r1, [r0]
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x48]
	lsl r2, r0, #1
	ldr r0, [sp, #0x34]
	strh r1, [r0, r2]
	ldr r0, [sp, #0x30]
	strh r6, [r0, r2]
	ldr r0, [sp, #0x48]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0x48]
	cmp r1, r0
	blt _020f0060
	mov r0, #0
	str r0, [sp, #0x48]
_020f0060:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x28]
	lsl r2, r0, #1
	ldr r0, [sp, #0x34]
	strh r1, [r0, r2]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x30]
	strh r1, [r0, r2]
	ldr r0, [sp, #0x48]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0x48]
	cmp r1, r0
	blt _020f0080
	mov r0, #0
	str r0, [sp, #0x48]
_020f0080:
	mov r0, lr
	add r0, r0, #2
	mov lr, r0
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _020f0090
	b _020efe88
_020f0090:
	mov r0, lr
	cmp r0, #0
	ble _020f0098
	b _020eff64
_020f0098:
	b _020efe88
_020f009a:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0]
	ldr r0, [sp, #0x40]
	mov r1, #0
	sub r0, r0, #1
	cmp r0, #0
	ble _020f00d8
	ldr r3, [sp]
_020f00ac:
	ldr r4, [sp, #0x40]
	add r2, r1, #1
	cmp r2, r4
	bge _020f00d0
	ldr r4, [sp]
	lsl r5, r2, #1
	add r4, r4, r5
_020f00ba:
	ldrh r6, [r4]
	ldrh r5, [r3]
	cmp r5, r6
	bls _020f00c6
	strh r6, [r3]
	strh r5, [r4]
_020f00c6:
	ldr r5, [sp, #0x40]
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, r5
	blt _020f00ba
_020f00d0:
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, r0
	blt _020f00ac
_020f00d8:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	ble _020f00e6
	add sp, #0x54
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020f00e6:
	mov r0, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020efe54
_020f00ec: .word 0x0000ffff

	thumb_func_start func_ov03_020f00f0
func_ov03_020f00f0: ; 0x020f00f0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r2, #0
	ldr r1, _020f0148 ; =data_ov03_02100050
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r2, [sp, #8]
	mov r2, #2
	add r3, r1, #0
	add r5, r0, #0
	bl func_ov04_02105ff0
	ldr r0, _020f014c ; =data_027e0d38
	str r4, [r5, #0x2c]
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	cmp r0, #0xb
	bne _020f0136
	ldr r1, _020f0150 ; =data_027e0ce0
	mov r0, #8
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f0138
	ldr r2, _020f0148 ; =data_ov03_02100050
	add r1, r5, #0
	bl func_ov26_021761b4
	b _020f0138
_020f0136:
	mov r0, #0
_020f0138:
	str r0, [r5, #0x30]
	mov r0, #2
	strh r0, [r5, #0x34]
	ldr r0, _020f0154 ; =0x0000ffff
	strh r0, [r5, #0x36]
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f00f0
_020f0148: .word data_ov03_02100050
_020f014c: .word data_027e0d38
_020f0150: .word data_027e0ce0
_020f0154: .word 0x0000ffff

	thumb_func_start func_ov03_020f0158
func_ov03_020f0158: ; 0x020f0158
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x30]
	cmp r4, #0
	beq _020f016e
	add r0, r4, #0
	bl func_ov26_021761dc
	add r0, r4, #0
	blx func_0202ea0c
_020f016e:
	add r0, r5, #0
	bl func_ov04_02106054
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end func_ov03_020f0158

	thumb_func_start func_ov03_020f0178
func_ov03_020f0178: ; 0x020f0178
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r3, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	blx func_02007a44
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r5, [sp, #0x10]
	ldr r1, [r0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r7, [r0, #4]
	ldr r0, [r0, #0xc]
	add r0, r7, r0
	str r0, [sp, #8]
	cmp r7, r0
	bge _020f01ec
_020f01a8:
	ldr r0, [sp, #4]
	ldr r4, [r0]
	ldr r0, [sp, #0xc]
	cmp r4, r0
	bge _020f01e4
_020f01b2:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	blx func_ov00_02079ab4
	cmp r0, #0
	beq _020f01da
	mov r2, #0x1f
	add r3, r5, #0
	asr r0, r5, #5
	and r3, r2
	lsl r1, r0, #2
	sub r3, r2, r3
	mov r2, #1
	ldr r0, [r6, r1]
	lsl r2, r3
	orr r0, r2
	str r0, [r6, r1]
	mov r0, #1
	str r0, [sp, #0x10]
_020f01da:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, r0
	blt _020f01b2
_020f01e4:
	ldr r0, [sp, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _020f01a8
_020f01ec:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f0178

	thumb_func_start func_ov03_020f01f4
func_ov03_020f01f4: ; 0x020f01f4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r0, [sp]
	str r3, [sp, #8]
	blx func_ov00_020798e8
	ldr r0, [sp, #4]
	mov r5, #0
	ldr r1, [r0]
	ldr r0, [r0, #8]
	add r7, r1, r0
	ldr r0, [sp, #4]
	ldr r6, [r0, #4]
	ldr r0, [r0, #0xc]
	add r0, r6, r0
	str r0, [sp, #0x10]
	cmp r6, r0
	bge _020f025c
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	str r0, [sp, #0xc]
_020f0220:
	ldr r0, [sp, #4]
	ldr r4, [r0]
	cmp r4, r7
	bge _020f0254
_020f0228:
	mov r0, #0x1f
	add r1, r5, #0
	and r1, r0
	sub r1, r0, r1
	mov r0, #1
	lsl r0, r1
	asr r1, r5, #5
	lsl r2, r1, #2
	ldr r1, [sp, #8]
	ldr r1, [r1, r2]
	tst r0, r1
	beq _020f024c
	ldr r0, [sp]
	ldr r3, [sp, #0xc]
	add r1, r4, #0
	add r2, r6, #0
	blx func_ov00_02079a90
_020f024c:
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, r7
	blt _020f0228
_020f0254:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blt _020f0220
_020f025c:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end func_ov03_020f01f4

	thumb_func_start func_ov03_020f0260
func_ov03_020f0260: ; 0x020f0260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldrh r2, [r0, #0x36]
	ldr r1, _020f03f8 ; =0x0000ffff
	str r0, [sp, #4]
	cmp r2, r1
	beq _020f0272
	cmp r2, #0x3c
	blo _020f0274
_020f0272:
	b _020f03f4
_020f0274:
	ldr r2, _020f03fc ; =0x00001290
	ldr r1, _020f0400 ; =data_020691a0
	ldr r3, _020f0400 ; =data_020691a0
	add r1, r1, r2
	str r1, [sp, #0x38]
	add r1, r1, r2
	str r1, [sp, #0x34]
	ldr r1, _020f0404 ; =data_ov03_02100040
	bl func_ov03_020f0178
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, _020f0408 ; =data_ov03_020fc454
	str r0, [sp, #0x1c]
	ldr r0, _020f040c ; =data_ov03_020fc458
	str r0, [sp, #0x18]
_020f0296:
	ldr r0, [sp, #0x34]
	ldr r1, _020f03fc ; =0x00001290
	str r0, [sp]
	ldr r0, _020f0400 ; =data_020691a0
	ldr r2, [sp, #0x38]
	mov r3, #4
	bl func_02008094
	cmp r0, #0
	beq _020f02d0
	ldr r1, _020f0410 ; =0x00000ffc
	cmp r0, r1
	bhi _020f02d0
	sub r2, r1, r0
	beq _020f02be
	ldr r1, [sp, #0x38]
	add r0, r1, r0
	mov r1, #0
	blx func_02007a44
_020f02be:
	ldr r2, [sp, #4]
	ldr r0, _020f0414 ; =data_027e0d54
	ldrh r2, [r2, #0x36]
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x30]
	bl func_ov03_020f3758
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_020f02d0:
	ldr r0, [sp, #0x2c]
	cmp r0, #3
	blt _020f02d8
	b _020f03dc
_020f02d8:
	ldr r0, _020f0418 ; =data_ov03_02100020
	ldr r0, [r0, #0x20]
	str r0, [sp, #8]
	ldr r0, _020f0418 ; =data_ov03_02100020
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r0, _020f0418 ; =data_ov03_02100020
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x14]
	ldr r0, _020f0418 ; =data_ov03_02100020
	ldr r1, [r0, #0x2c]
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	cmp r1, r0
	bge _020f03dc
	add r0, r1, #0
	mov ip, r0
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0]
	str r0, [sp, #0x3c]
	add r0, r1, #0
	str r0, [sp, #0x10]
_020f0314:
	ldr r0, _020f0418 ; =data_ov03_02100020
	ldr r7, [r0, #0x20]
	ldr r0, [sp, #0x28]
	cmp r7, r0
	bge _020f03d0
_020f031e:
	mov r5, #0
	add r3, r5, #0
_020f0322:
	ldr r0, [sp, #0x14]
	mov r4, #0
	add r1, r0, r3
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	ldr r0, [sp, #0xc]
	add r6, r0, #0
	mul r6, r1
_020f0332:
	ldr r0, [sp, #8]
	add r1, r7, r4
	sub r0, r1, r0
	add r2, r0, r6
	mov r0, #0x1f
	add r1, r2, #0
	and r1, r0
	sub r0, r0, r1
	mov r1, #1
	lsl r1, r0
	asr r0, r2, #5
	lsl r2, r0, #2
	ldr r0, _020f0400 ; =data_020691a0
	ldr r0, [r0, r2]
	tst r0, r1
	beq _020f0354
	add r5, r5, #1
_020f0354:
	add r4, r4, #1
	cmp r4, #2
	blt _020f0332
	add r3, r3, #1
	cmp r3, #2
	blt _020f0322
	ldr r0, [sp, #0x3c]
	cmp r0, r5
	bne _020f03c8
	mov r1, #0
_020f0368:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r3, r0, r1
	mov r0, ip
	sub r3, r3, r0
	ldr r0, [sp, #0xc]
	add r6, r0, #0
	mul r6, r3
_020f0378:
	ldr r0, [sp, #8]
	add r3, r7, r2
	sub r0, r3, r0
	ldr r3, [sp, #0x20]
	add r0, r0, r6
	cmp r3, #0
	beq _020f03a0
	asr r3, r0, #5
	mov r5, #0x1f
	lsl r4, r3, #2
	ldr r3, _020f0400 ; =data_020691a0
	and r5, r0
	mov r0, #0x1f
	sub r5, r0, r5
	mov r0, #1
	ldr r3, [r3, r4]
	lsl r0, r5
	orr r3, r0
	ldr r0, _020f0400 ; =data_020691a0
	b _020f03ba
_020f03a0:
	mov r5, #0x1f
	asr r3, r0, #5
	and r5, r0
	mov r0, #0x1f
	lsl r4, r3, #2
	ldr r3, _020f0400 ; =data_020691a0
	sub r5, r0, r5
	mov r0, #1
	lsl r0, r5
	ldr r3, [r3, r4]
	mvn r0, r0
	and r3, r0
	ldr r0, _020f0400 ; =data_020691a0
_020f03ba:
	add r2, r2, #1
	str r3, [r0, r4]
	cmp r2, #2
	blt _020f0378
	add r1, r1, #1
	cmp r1, #2
	blt _020f0368
_020f03c8:
	ldr r0, [sp, #0x28]
	add r7, r7, #2
	cmp r7, r0
	blt _020f031e
_020f03d0:
	ldr r0, [sp, #0x14]
	add r1, r0, #2
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _020f0314
_020f03dc:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	bge _020f03f4
	b _020f0296
_020f03f4:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f0260
_020f03f8: .word 0x0000ffff
_020f03fc: .word 0x00001290
_020f0400: .word data_020691a0
_020f0404: .word data_ov03_02100040
_020f0408: .word data_ov03_020fc454
_020f040c: .word data_ov03_020fc458
_020f0410: .word 0x00000ffc
_020f0414: .word data_027e0d54
_020f0418: .word data_ov03_02100020

	thumb_func_start func_ov03_020f041c
func_ov03_020f041c: ; 0x020f041c
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	strh r1, [r5, #0x36]
	ldrh r1, [r5, #0x36]
	ldr r0, _020f0478 ; =0x0000ffff
	cmp r1, r0
	beq _020f0430
	cmp r1, #0x3c
	blo _020f0438
_020f0430:
	add r0, r5, #0
	blx func_ov00_020798e8
	b _020f046e
_020f0438:
	ldr r0, _020f047c ; =data_027e0d54
	bl func_ov03_020f3548
	mov r1, #1
	lsl r1, r1, #0xc
	add r4, r0, #0
	bl func_0202f154
	cmp r0, #0
	bne _020f0454
	add r0, r5, #0
	blx func_ov00_020798e8
	b _020f046e
_020f0454:
	ldr r6, _020f0480 ; =data_020691a0
	add r0, r4, #0
	add r1, r6, #0
	blx func_02007cb4
	mov r0, #1
	str r0, [sp]
	ldr r1, _020f0484 ; =data_ov03_02100040
	ldr r2, _020f0488 ; =0x00001290
	add r0, r5, #0
	add r3, r6, #0
	bl func_ov03_020f01f4
_020f046e:
	add r0, r5, #0
	blx func_ov00_02079b34
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f041c
_020f0478: .word 0x0000ffff
_020f047c: .word data_027e0d54
_020f0480: .word data_020691a0
_020f0484: .word data_ov03_02100040
_020f0488: .word 0x00001290

	arm_func_start func_ov03_020f048c
func_ov03_020f048c: ; 0x020f048c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r2, _020f05b0 ; =data_027e077c
	mov r6, r0
	ldr r4, [r2]
	mov r5, r1
	cmp r4, #0x38
	bne _020f04b8
	bl unk_02176234
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
_020f04b8:
	cmp r4, #0x39
	addeq sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020f05b4 ; =data_027e0d78
	ldrh r1, [r0, #0x34]
	tst r1, #1
	beq _020f0518
	ldr r0, [r0, #0x10]
	cmp r0, #0x20
	blt _020f0518
	ldrh r1, [r6, #0x36]
	ldr r0, _020f05b8 ; =0x0000ffff
	cmp r1, r0
	bne _020f0508
	cmp r4, #4
	cmpne r4, #8
	bne _020f0518
	ldr r0, [r6, #0x2c]
	bl func_ov03_020f7f1c
	b _020f0518
_020f0508:
	cmp r4, #8
	bne _020f0518
	ldr r0, [r6, #0x2c]
	bl func_ov03_020f7f2c
_020f0518:
	cmp r4, #8
	addeq sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0x2c]
	bl func_ov03_020f7f00
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0x2c]
	bl func_ov03_020f7f0c
	cmp r0, #0
	beq _020f057c
	mov r0, #0x20
	str r0, [sp]
	sub r2, r0, #0x23
	str r2, [sp, #4]
	mov r4, #2
	mov r0, r6
	mov r1, r5
	mov r2, #0
	mov r3, #6
	str r4, [sp, #8]
	bl func_ov05_0210d324
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
_020f057c:
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrh r2, [r6, #0x34]
	mov r0, r6
	mov r1, r5
	and r3, r2, #0xff
	mov r2, #1
	bl func_ov05_0210d324
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f048c
_020f05b0: .word data_027e077c
_020f05b4: .word data_027e0d78
_020f05b8: .word 0x0000ffff

	thumb_func_start func_ov03_020f05bc
func_ov03_020f05bc: ; 0x020f05bc
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	mov r3, #1
	lsl r3, r3, #0xc
	str r0, [r4, #4]
	mov r1, #6
	str r3, [r4, #8]
	lsl r2, r3, #7
	str r2, [r4, #0xc]
	lsl r1, r1, #0x10
	str r1, [r4, #0x10]
	str r3, [r4, #0x14]
	str r2, [r4, #0x18]
	str r1, [r4, #0x1c]
	add r1, r4, #0
	mov r2, #1
	add r1, #0x68
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x6a
	strh r0, [r1]
	sub r0, r2, #2
	str r0, [r4, #0x6c]
	str r0, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x20
	blx func_ov09_02116620
	mov r5, #0
	add r6, r4, #0
_020f05fc:
	add r2, r6, #0
	ldr r3, _020f0620 ; =data_027e0184
	add r2, #0x48
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r5, r5, #1
	add r6, #0x10
	stmia r2!, {r0, r1}
	cmp r5, #2
	blt _020f05fc
	mov r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x78]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
	thumb_func_end func_ov03_020f05bc
_020f0620: .word data_027e0184

	thumb_func_start func_ov03_020f0624
func_ov03_020f0624: ; 0x020f0624
	push {r4, lr}
	mov r1, #0
	add r2, r1, #0
	add r4, r0, #0
	blx func_ov03_020f0b8c
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x6c]
	str r0, [r4, #0x7c]
	mov r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x78]
	ldr r0, _020f0668 ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	cmp r0, #0x32
	bne _020f0664
	ldr r1, _020f066c ; =data_027e0ce0
	mov r0, #4
	ldr r1, [r1, #4]
	add r2, r0, #0
	blx func_0202e9dc
	cmp r0, #0
	beq _020f0662
	mov r1, #0
	str r1, [r0]
_020f0662:
	str r0, [r4]
_020f0664:
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f0624
_020f0668: .word data_027e0d38
_020f066c: .word data_027e0ce0

	thumb_func_start func_ov03_020f0670
func_ov03_020f0670: ; 0x020f0670
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _020f069e
	blx func_0202ea0c
	mov r0, #0
	str r0, [r4]
	add r4, #0x20
	add r0, r4, #0
	blx func_ov09_02116620
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _020f06a4 ; =0x04001030
	ldr r1, _020f06a8 ; =data_027e0184
	mov r2, #0x80
	mov r3, #0x60
	blx func_02005234
_020f069e:
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f0670
_020f06a4: .word 0x04001030
_020f06a8: .word data_027e0184

	arm_func_start func_ov03_020f06ac
func_ov03_020f06ac: ; 0x020f06ac
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r7, [sp, #0x28]
	mov sb, r0
	mov r8, r1
	cmp r7, #0
	ldr r6, [sp, #0x2c]
	mov r4, #1
	beq _020f075c
	mov r0, r2
	mov r1, r3
	bl func_01ff9b24
	ldr r0, [sb, #0xc]
	add r0, r0, #0x800
	mov r5, r0, asr #0xc
	bl func_01ff9a18
	ldr ip, [sb, #8]
	rsb r2, r5, #0
	rsb r1, r5, #0x100
	mul r3, r2, ip
	mul r2, r1, ip
	add r1, r3, #0x80000
	add r2, r2, #0x80000
	sub r2, r2, r1
	smull r3, r0, r2, r0
	adds r2, r3, #0x800
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r1, r2
	str r0, [r7]
	cmp r8, #0
	beq _020f0748
	ldr r0, _020f083c ; =data_027e0c38
	ldr r1, [r7]
	ldr r0, [r0, #0x14]
	add r1, r1, #0x800
	rsb r0, r0, r1, asr #12
	str r0, [r7]
	b _020f075c
_020f0748:
	ldr r0, _020f083c ; =data_027e0c38
	ldr r1, [r7]
	ldr r0, [r0, #0x14]
	sub r0, r1, r0, lsl #12
	str r0, [r7]
_020f075c:
	cmp r6, #0
	beq _020f0834
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl func_01ff9b24
	ldr r0, [sb, #0x10]
	add r0, r0, #0x800
	mov r7, r0, asr #0xc
	bl func_01ff9a18
	ldr r5, [sb, #8]
	rsb r2, r7, #0
	mul r3, r2, r5
	rsb r1, r7, #0xc0
	mul r2, r1, r5
	add r3, r3, #0x60000
	add r1, r2, #0x60000
	sub r1, r1, r3
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r6]
	cmp r8, #0
	ldr r1, [r6]
	beq _020f0818
	add r1, r1, #0x800
	mov r1, r1, asr #0xc
	ldr r0, _020f0840 ; =data_027e080c
	str r1, [r6]
	ldr r0, [r0, #4]
	cmp r0, #1
	cmpne r0, #2
	bne _020f0834
	ldr r1, [r6]
	cmp r1, #0xa
	blt _020f07fc
	cmp r1, #0xb6
	blt _020f0800
_020f07fc:
	mov r4, #0
_020f0800:
	ldr r0, _020f0840 ; =data_027e080c
	bl func_0202ed14
	ldr r1, [r6]
	sub r0, r1, r0
	str r0, [r6]
	b _020f0834
_020f0818:
	add r1, r1, #0x800
	ldr r0, _020f0840 ; =data_027e080c
	mov r1, r1, asr #0xc
	bl func_0202ed14
	ldr r1, [r6]
	sub r0, r1, r0, lsl #12
	str r0, [r6]
_020f0834:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov03_020f06ac
_020f083c: .word data_027e0c38
_020f0840: .word data_027e080c

	arm_func_start func_ov03_020f0844
func_ov03_020f0844: ; 0x020f0844
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	movs sb, r1
	mov sl, r0
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x30]
	beq _020f0884
	ldr r1, _020f0a9c ; =data_027e0c38
	ldr r0, _020f0aa0 ; =data_027e080c
	ldr r2, [r1, #0x14]
	mov r1, r7
	add r8, r8, r2
	bl func_0202ed14
	add r7, r7, r0
	b _020f08a4
_020f0884:
	ldr r0, _020f0a9c ; =data_027e0c38
	add r1, r7, #0x800
	ldr r2, [r0, #0x14]
	ldr r0, _020f0aa0 ; =data_027e080c
	mov r1, r1, asr #0xc
	add r8, r8, r2, lsl #12
	bl func_0202ed14
	add r7, r7, r0, lsl #12
_020f08a4:
	ldr r0, _020f0aa4 ; =data_027e0e60
	ldr r5, [r0]
	mov r0, r5
	bl func_ov00_02083394
	mov fp, r0
	mov r0, r5
	bl func_ov00_020833a0
	str r0, [sp]
	mov r0, r5
	bl func_ov00_020833ac
	sub r0, r0, fp
	add r4, r0, r0, lsr #31
	mov r0, r5
	mov r5, r4, asr #0x1
	bl func_ov00_020833b8
	ldr r1, [sp]
	sub r0, r0, r1
	mov r1, r5, asr #0x6
	add r0, r0, r0, lsr #31
	add r1, r5, r1, lsr #25
	str r0, [sp, #4]
	mov r5, r1, asr #0x7
	mov r0, r0, asr #0x1
	mov r1, #0x60
	bl func_01ff9b4c
	add r3, fp, r4, asr #1
	mov r4, r0
	ldr r2, [sp]
	ldr r1, [sp, #4]
	str r3, [r6]
	add r1, r2, r1, asr #1
	mov r0, #0
	stmib r6, {r0, r1}
	ldr r0, [sl, #8]
	bl func_01ff991c
	cmp sb, #0
	beq _020f097c
	sub r1, r8, #0x80
	mul r1, r5, r1
	smull r3, r2, r1, r0
	adds r3, r3, #0x800
	ldr r1, [sl, #0xc]
	adc r2, r2, #0
	add r1, r1, #0x800
	mov r3, r3, lsr #0xc
	mov r1, r1, asr #0xc
	orr r3, r3, r2, lsl #20
	sub r1, r1, #0x80
	mla r1, r5, r1, r3
	ldr r2, [r6]
	mov r3, r0, asr #0x1f
	add r1, r2, r1
	str r1, [r6]
	b _020f09d8
_020f097c:
	ldr r2, [sl, #0xc]
	sub r1, r8, #0x80000
	sub r2, r2, #0x80000
	smull r3, r8, r2, r5
	adds r2, r3, #0x800
	smull r5, r3, r1, r5
	adc r1, r8, #0
	adds r5, r5, #0x800
	adc r3, r3, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r3, lsl #20
	smull r8, r3, r5, r0
	adds r5, r8, #0x800
	mov r8, r2, lsr #0xc
	adc r2, r3, #0
	mov r3, r5, lsr #0xc
	orr r8, r8, r1, lsl #20
	orr r3, r3, r2, lsl #20
	ldr r2, [r6]
	add r1, r8, r3
	add r1, r2, r1
	str r1, [r6]
	mov r3, r0, asr #0x1f
_020f09d8:
	cmp sb, #0
	beq _020f0a30
	sub r1, r7, #0x60
	mul r1, r4, r1
	umull r7, r5, r1, r0
	mla r5, r1, r3, r5
	mov r2, r1, asr #0x1f
	mla r5, r2, r0, r5
	ldr r1, [sl, #0x10]
	adds r3, r7, #0x800
	add r0, r1, #0x800
	mov r0, r0, asr #0xc
	adc r1, r5, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r0, r0, #0x60
	mla r0, r4, r0, r2
	ldr r1, [r6, #8]
	add sp, sp, #8
	add r0, r1, r0
	str r0, [r6, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f0a30:
	ldr r2, [sl, #0x10]
	sub r1, r7, #0x60000
	sub r2, r2, #0x60000
	smull r5, r7, r2, r4
	adds r2, r5, #0x800
	smull r5, r4, r1, r4
	adc r1, r7, #0
	adds r5, r5, #0x800
	adc r4, r4, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	umull r7, r4, r5, r0
	mov r8, r2, lsr #0xc
	mla r4, r5, r3, r4
	mov r2, r5, asr #0x1f
	orr r8, r8, r1, lsl #20
	mla r4, r2, r0, r4
	adds r7, r7, #0x800
	adc r0, r4, #0
	mov r2, r7, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r1, [r6, #8]
	add r0, r8, r2
	add r0, r1, r0
	str r0, [r6, #8]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f0844
_020f0a9c: .word data_027e0c38
_020f0aa0: .word data_027e080c
_020f0aa4: .word data_027e0e60

	arm_func_start func_ov03_020f0aa8
func_ov03_020f0aa8: ; 0x020f0aa8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	ldr r0, _020f0b80 ; =data_027e1054
	mov r5, r1
	ldr r0, [r0]
	mov r4, r2
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x96]
	cmp r0, #0
	ldreqb r0, [r1, #0x97]
	cmpeq r0, #0
	bne _020f0b74
	ldrb r0, [r1, #0x98]
	cmp r0, #0
	ldreqb r0, [r1, #0x99]
	cmpeq r0, #0
	beq _020f0b74
	ldrb r0, [r1, #0x95]
	cmp r0, #0
	beq _020f0b18
	ldr r0, _020f0b84 ; =data_027e0e60
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	bl func_ov00_0208315c
	add sp, sp, #0x40
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f0b18:
	ldr r0, _020f0b84 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02082d40
	ldr r1, _020f0b84 ; =data_027e0e60
	mov r2, r0
	ldr r0, [r1]
	add r1, sp, #0
	bl func_ov00_02082614
	ldr r0, _020f0b88 ; =data_027e0d3c
	add r1, sp, #0
	ldr r0, [r0]
	add r0, r0, #4
	bl func_0204716c
	cmp r0, #0
	bne _020f0b74
	ldr r0, _020f0b84 ; =data_027e0e60
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	bl func_ov00_0208306c
	add sp, sp, #0x40
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f0b74:
	mov r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f0aa8
_020f0b80: .word data_027e1054
_020f0b84: .word data_027e0e60
_020f0b88: .word data_027e0d3c

	arm_func_start func_ov03_020f0b8c
func_ov03_020f0b8c: ; 0x020f0b8c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xe4
	ldr r3, _020f0e2c ; =data_027e0c54
	mov r8, r0
	ldrb r0, [r3]
	mov r7, r1
	mov r6, r2
	cmp r0, #0
	beq _020f0bbc
	cmp r7, #2
	addeq sp, sp, #0xe4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020f0bbc:
	cmp r6, #1
	movls r0, #1
	strlsh r0, [r8, #0x68]
	strhih r6, [r8, #0x68]
	ldr r0, [r8, #4]
	cmp r0, r7
	bne _020f0bfc
	addne sp, sp, #0xe4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrh r0, [r8, #0x6a]
	cmp r0, #0
	addeq sp, sp, #0xe4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #1
	addhi sp, sp, #0xe4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020f0bfc:
	cmp r7, #4
	addls pc, pc, r7, lsl #2
	b _020f0e08
_020f0c08: ; jump table
	b _020f0c1c ; case 0
	b _020f0c38 ; case 1
	b _020f0c7c ; case 2
	b _020f0d98 ; case 3
	b _020f0ddc ; case 4
_020f0c1c:
	mov r0, #0x1000
	str r0, [r8, #0x14]
	mov r0, #0x80000
	str r0, [r8, #0x18]
	mov r0, #0x60000
	str r0, [r8, #0x1c]
	b _020f0e08
_020f0c38:
	mov r1, #1
	str r1, [sp]
	ldr r0, _020f0e30 ; =data_027e0d3c
	ldr r1, _020f0e34 ; =data_027e0f94
	ldr r0, [r0]
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl func_ov00_0207914c
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r0, _020f0e38 ; =0x00001ccd
	mov r1, r1, lsl #0xc
	str r0, [r8, #0x14]
	str r1, [r8, #0x18]
	mov r0, r2, lsl #0xc
	str r0, [r8, #0x1c]
	b _020f0e08
_020f0c7c:
	ldr r1, [r8, #0x6c]
	mov r0, #0
	mov r4, r0
	cmp r1, #0
	blt _020f0ca4
	ldr r0, _020f0e3c ; =data_027e0e60
	add r2, sp, #0x24
	ldr r0, [r0]
	mov r3, #8
	bl func_ov00_020836cc
_020f0ca4:
	cmp r0, #0
	ble _020f0d74
	mov r1, #1
	str r1, [sp]
	ldr r0, _020f0e30 ; =data_027e0d3c
	add r1, sp, #0x24
	ldr r0, [r0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl func_ov00_0207914c
	mov r1, #1
	str r1, [sp]
	ldr r0, _020f0e30 ; =data_027e0d3c
	add r1, sp, #0x30
	ldr r0, [r0]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl func_ov00_0207914c
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	sub r5, r3, r2
	sub r0, r1, r0
	cmp r5, #0
	cmpgt r0, #0
	ble _020f0d74
	add r1, r0, #0x10
	mov r0, #0xc0000
	bl func_01ff9b4c
	mov sb, r0
	add r1, r5, #0x10
	mov r0, #0x100000
	bl func_01ff9b4c
	cmp r0, sb
	movge r0, sb
	cmp r0, #0x2000
	movgt r0, #0x2000
	cmp r0, #0x1000
	ble _020f0d74
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r4, [sp, #0x14]
	ldr r3, [sp, #0xc]
	add r1, r2, r1
	add r2, r4, r3
	str r0, [r8, #0x14]
	mov r0, r1, lsl #0xb
	str r0, [r8, #0x18]
	mov r0, r2, lsl #0xb
	str r0, [r8, #0x1c]
	mov r4, #1
_020f0d74:
	cmp r4, #0
	bne _020f0e08
	mov r0, #0x1000
	str r0, [r8, #0x14]
	mov r0, #0x80000
	str r0, [r8, #0x18]
	mov r0, #0x60000
	str r0, [r8, #0x1c]
	b _020f0e08
_020f0d98:
	mov r1, #1
	str r1, [sp]
	ldr r0, _020f0e30 ; =data_027e0d3c
	add r2, sp, #8
	ldr r0, [r0]
	add r3, sp, #4
	add r1, r8, #0x70
	bl func_ov00_0207914c
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	ldr r0, _020f0e40 ; =0x00002ccd
	mov r1, r1, lsl #0xc
	str r0, [r8, #0x14]
	str r1, [r8, #0x18]
	mov r0, r2, lsl #0xc
	str r0, [r8, #0x1c]
	b _020f0e08
_020f0ddc:
	ldr r2, [r8, #0x7c]
	ldr r1, _020f0e44 ; =data_ov03_020fc45c
	ldr r0, _020f0e48 ; =data_ov03_020fc460
	ldrb r1, [r1, r2]
	ldrb r0, [r0, r2]
	mov r2, #0x2000
	str r2, [r8, #0x14]
	mov r1, r1, lsl #0xc
	str r1, [r8, #0x18]
	mov r0, r0, lsl #0xc
	str r0, [r8, #0x1c]
_020f0e08:
	ldrh r0, [r8, #0x68]
	cmp r6, #0
	strh r0, [r8, #0x6a]
	bne _020f0e20
	mov r0, r8
	bl func_ov03_020f0e5c
_020f0e20:
	str r7, [r8, #4]
	add sp, sp, #0xe4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov03_020f0b8c
_020f0e2c: .word data_027e0c54
_020f0e30: .word data_027e0d3c
_020f0e34: .word data_027e0f94
_020f0e38: .word 0x00001ccd
_020f0e3c: .word data_027e0e60
_020f0e40: .word 0x00002ccd
_020f0e44: .word data_ov03_020fc45c
_020f0e48: .word data_ov03_020fc460

	arm_func_start func_ov03_020f0e4c
func_ov03_020f0e4c: ; 0x020f0e4c
	ldr ip, _020f0e58 ; =func_ov15_0217d604
	ldr r0, [r0]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f0e4c
_020f0e58: .word func_ov15_0217d604

	arm_func_start func_ov03_020f0e5c
func_ov03_020f0e5c: ; 0x020f0e5c
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r2, [r4, #0x6a]
	cmp r2, #1
	bhi _020f0e90
	ldr r1, [r4, #0x14]
	mov r0, #0
	str r1, [r4, #8]
	ldr r1, [r4, #0x18]
	str r1, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	str r1, [r4, #0x10]
	b _020f0ea8
_020f0e90:
	add r0, r4, #8
	add r1, r4, #0x14
	mov r2, r2, lsl #0xc
	bl func_ov09_0211656c
	ldrh r0, [r4, #0x6a]
	sub r0, r0, #1
_020f0ea8:
	strh r0, [r4, #0x6a]
	ldr r5, [r4, #8]
	mov r0, #0x1000
	cmp r5, #0x1000
	beq _020f0ec4
	mov r0, r5
	bl func_01ff991c
_020f0ec4:
	str r0, [r4, #0x54]
	str r0, [r4, #0x48]
	cmp r5, #0x1800
	ldrgt r0, _020f0ee4 ; =data_ov03_02100060
	ldrgt r0, [r0]
	str r0, [r4, #0x64]
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f0e5c
_020f0ee4: .word data_ov03_02100060

	arm_func_start func_ov03_020f0ee8
func_ov03_020f0ee8: ; 0x020f0ee8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020f0f0c
	bl func_ov15_0217d650
	add sp, sp, #0x28
	ldmia sp!, {r4, pc}
_020f0f0c:
	ldr r1, _020f0f9c ; =data_027e0c38
	add r0, sp, #0
	ldr r2, [r1, #0x14]
	add r1, r4, #8
	mov r3, #0
	bl func_ov09_02116664
	add r1, sp, #0
	add r0, r4, #0x20
	mov r2, #0x28
	bl func_0204366c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmia sp!, {r4, pc}
	add r0, sp, #0
	bl func_01ffff08
	ldr r1, [sp]
	add r0, sp, #8
	str r1, [r4, #0x20]
	ldr r1, [sp, #4]
	add ip, r4, #0x28
	str r1, [r4, #0x24]
	ldmia r0!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x38]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x40]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x44]
	add sp, sp, #0x28
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f0ee8
_020f0f9c: .word data_027e0c38

	arm_func_start func_ov03_020f0fa0
func_ov03_020f0fa0: ; 0x020f0fa0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020f104c ; =data_027e0c68
	mov r4, r1
	bl func_020366c4
	ldrh r1, [r4, #2]
	add r0, r0, #0x500
	ldrh r2, [r0, #0x76]
	cmp r1, #1
	cmpne r1, #2
	ldr r0, [r5, #0x14]
	cmpne r1, #3
	bne _020f103c
	ldrb r1, [r0, #0xe9]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _020f0ff8
	cmp r1, #1
	beq _020f101c
	b _020f103c
_020f0ff8:
	cmp r2, #0
	beq _020f1010
	cmp r2, #1
	moveq r1, #3
	streqb r1, [r0, #0xea]
	b _020f103c
_020f1010:
	mov r1, #1
	strb r1, [r0, #0xea]
	b _020f103c
_020f101c:
	cmp r2, #0
	beq _020f103c
	cmp r2, #1
	bne _020f103c
	mov r2, #4
	mov r1, #5
	strb r2, [r0, #0xea]
	bl func_ov03_020f13b0
_020f103c:
	mov r0, r5
	mov r1, r4
	bl func_0203878c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f0fa0
_020f104c: .word data_027e0c68

	arm_func_start func_ov03_020f1050
func_ov03_020f1050: ; 0x020f1050
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #1]
	mov r5, r0
	cmp r1, #0x11
	bne _020f10a0
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x14]
	cmp r1, #0
	beq _020f1084
	cmp r1, #1
	beq _020f1090
	b _020f10a0
_020f1084:
	mov r1, #1
	strb r1, [r0, #0xe8]
	b _020f10a0
_020f1090:
	mov r2, #0
	mov r1, #6
	strb r2, [r0, #0xe8]
	bl func_ov03_020f13b0
_020f10a0:
	mov r0, r5
	mov r1, r4
	bl func_02037f58
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov03_020f1050

	thumb_func_start func_ov03_020f10b0
func_ov03_020f10b0: ; 0x020f10b0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	blx func_ov00_020cef40
	add r4, r5, #0
	mov r0, #0
	add r4, #8
	str r0, [r5, #4]
	add r0, r4, #0
	blx func_020386d8
	ldr r0, _020f11fc ; =data_ov03_021000ac
	ldr r3, _020f1200 ; =func_ov03_020f1220
	str r0, [r5, #8]
	ldr r0, _020f1204 ; =func_ov03_020f121c
	str r5, [r4, #0x14]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x44
	mov r1, #3
	mov r2, #0x18
	blx func_0204f614
	ldr r0, _020f1204 ; =func_ov03_020f121c
	ldr r3, _020f1200 ; =func_ov03_020f1220
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x8c
	mov r1, #3
	mov r2, #0x18
	blx func_0204f614
	add r0, r5, #0
	add r0, #0xd4
	blx func_ov00_020d0460
	add r0, r5, #0
	mov r1, #0x37
	mov r3, #0
	add r0, #0xdc
	str r3, [r0]
	add r0, r5, #0
	lsl r1, r1, #0xe
	add r0, #0xe0
	str r1, [r0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0xe4
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xe8
	strb r3, [r0]
	add r0, r5, #0
	add r0, #0xe9
	strb r3, [r0]
	add r0, r5, #0
	add r0, #0xea
	strb r3, [r0]
	mov r0, #0xd8
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xd4
	strh r1, [r0]
	mov r0, #0x50
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, r5, #0
	str r3, [sp, #8]
	add r0, #0x44
	mov r1, #0x14
	str r3, [sp, #0xc]
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #3
	add r0, #0x57
	strb r1, [r0]
	mov r0, #0x51
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #0x14
	mov r2, #2
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #4
	add r0, #0x6f
	strb r1, [r0]
	mov r0, #0x52
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x74
	mov r1, #0x15
	mov r2, #2
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #4
	add r0, #0x87
	strb r1, [r0]
	mov r0, #0x50
	str r0, [sp]
	mov r2, #1
	add r0, r5, #0
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	add r0, #0x8c
	mov r1, #0xe1
	str r3, [sp, #0xc]
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #3
	add r0, #0x9f
	strb r1, [r0]
	mov r0, #0x51
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xa4
	mov r1, #0xe1
	mov r2, #2
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #4
	add r0, #0xb7
	strb r1, [r0]
	mov r0, #0x52
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xbc
	mov r1, #0xe2
	mov r2, #2
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #4
	add r0, #0xcf
	strb r1, [r0]
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f10b0
_020f11fc: .word data_ov03_021000ac
_020f1200: .word func_ov03_020f1220
_020f1204: .word func_ov03_020f121c

	arm_func_start func_ov03_020f1208
func_ov03_020f1208: ; 0x020f1208
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f1208

	arm_func_start func_ov03_020f121c
func_ov03_020f121c: ; 0x020f121c
	bx lr
	arm_func_end func_ov03_020f121c

	arm_func_start func_ov03_020f1220
func_ov03_020f1220: ; 0x020f1220
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d05dc
	ldr r0, _020f1258 ; =data_ov00_020e899c
	mov r1, #0
	str r0, [r4]
	strb r1, [r4, #0x10]
	sub r0, r1, #1
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x12]
	strb r0, [r4, #0x13]
	mov r0, r4
	str r1, [r4, #0x14]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f1220
_020f1258: .word data_ov00_020e899c

	arm_func_start func_ov03_020f125c
func_ov03_020f125c: ; 0x020f125c
	stmdb sp!, {r4, lr}
	ldr r1, _020f1394 ; =data_027e077c
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0x39
	bne _020f128c
	ldr r0, _020f1398 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf0bc
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f1358
_020f128c:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _020f1350
	ldr r0, _020f139c ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020f1350
	ldr r0, _020f139c ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097bbc
	cmp r0, #0
	bne _020f1350
	ldr r0, _020f13a0 ; =data_027e0c68
	bl func_02036798
	cmp r0, #0
	bne _020f1350
	ldr r0, _020f13a4 ; =data_027e0e28
	bl func_ov00_0207bc48
	cmp r0, #0
	bne _020f1350
	ldr r0, _020f1398 ; =data_027e103c
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _020f1350
	bl func_ov00_02079e04
	cmp r0, #0
	bne _020f1350
	ldr r0, _020f1394 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0x3b
	beq _020f1350
	ldr r0, _020f13a8 ; =data_027e0fc8
	ldr r0, [r0]
	cmp r0, #0
	beq _020f1330
	ldrsh r0, [r0, #0x5a]
	cmp r0, #0
	bgt _020f1350
_020f1330:
	ldr r0, _020f13ac ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	beq _020f1358
	ldr r0, _020f1394 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0xd
	bne _020f1358
_020f1350:
	mov r0, #0
	b _020f135c
_020f1358:
	mov r0, #1
_020f135c:
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	mov r1, #0
	strb r1, [r4, #0xe8]
	strb r1, [r4, #0xe9]
	mov r0, r4
	strb r1, [r4, #0xea]
	bl func_ov05_021041c4
	mov r0, r4
	mov r1, #1
	bl func_ov03_020f13b0
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f125c
_020f1394: .word data_027e077c
_020f1398: .word data_027e103c
_020f139c: .word data_027e0f74
_020f13a0: .word data_027e0c68
_020f13a4: .word data_027e0e28
_020f13a8: .word data_027e0fc8
_020f13ac: .word data_ov09_0211f5b4

	arm_func_start func_ov03_020f13b0
func_ov03_020f13b0: ; 0x020f13b0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #1
	beq _020f13d0
	cmp r4, #5
	beq _020f13e8
	b _020f13f0
_020f13d0:
	ldr r0, _020f13f8 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf20c
	ldrsh r0, [r5, #0xd6]
	strh r0, [r5, #0xd4]
	b _020f13f0
_020f13e8:
	ldr r0, _020f13fc ; =data_ov09_0211f5b4
	blx func_ov03_020f4054
_020f13f0:
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f13b0
_020f13f8: .word data_027e103c
_020f13fc: .word data_ov09_0211f5b4

	arm_func_start func_ov03_020f1400
func_ov03_020f1400: ; 0x020f1400
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #1
	ldmia sp!, {r4, pc}
	ldr r3, [r4, #4]
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _020f1604
_020f1420: ; jump table
	b _020f1604 ; case 0
	b _020f143c ; case 1
	b _020f14e0 ; case 2
	b _020f155c ; case 3
	b _020f157c ; case 4
	b _020f15c0 ; case 5
	b _020f14e0 ; case 6
_020f143c:
	mov r2, #0
	ldr r0, _020f1650 ; =data_027e1054
	strb r2, [r4, #0xea]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x95]
	cmp r0, #0
	beq _020f146c
	ldr r0, _020f1654 ; =data_027e0cbc
	mov r1, #0xe
	bl func_ov03_020fa874
	b _020f14c8
_020f146c:
	ldr r0, _020f1658 ; =data_027e0d3c
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	blt _020f1490
	ldr r0, _020f1654 ; =data_027e0cbc
	mov r1, #0xc
	bl func_ov03_020fa874
	b _020f14c8
_020f1490:
	ldr r0, _020f165c ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #1
	cmpne r0, #3
	mov r2, #0
	bne _020f14bc
	ldr r0, _020f1654 ; =data_027e0cbc
	mov r1, #0xd
	bl func_ov03_020fa874
	b _020f14c8
_020f14bc:
	ldr r0, _020f1654 ; =data_027e0cbc
	mov r1, #0xb
	bl func_ov03_020fa874
_020f14c8:
	ldrsh r2, [r4, #0xd6]
	mov r0, r4
	mov r1, #2
	strh r2, [r4, #0xd4]
	bl func_ov03_020f13b0
	b _020f1604
_020f14e0:
	mov r1, #0x10000
	ldr r2, [r4, #0x20]
	rsb r1, r1, #0
	and r1, r2, r1
	cmp r1, #0x1000000
	ldreqb r1, [r4, #0xe8]
	cmpeq r1, #0
	beq _020f150c
	add r0, r4, #0xd4
	bl func_ov00_020d054c
	b _020f1528
_020f150c:
	cmp r3, #6
	bne _020f1520
	mov r1, #3
	bl func_ov03_020f13b0
	b _020f1528
_020f1520:
	add r0, r4, #0xd4
	bl func_ov00_020d0594
_020f1528:
	mov r0, #0x10000
	ldr r1, [r4, #0x20]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	beq _020f1550
	ldr r0, _020f1660 ; =data_027e0c68
	add r1, r4, #8
	bl func_02036888
	b _020f1604
_020f1550:
	mov r0, r4
	bl func_ov03_020f166c
	b _020f1604
_020f155c:
	ldr r0, _020f1654 ; =data_027e0cbc
	mov r2, #0
	ldr r1, [r0, #0x20]
	bl func_ov03_020fa874
	mov r0, r4
	mov r1, #4
	bl func_ov03_020f13b0
	b _020f1604
_020f157c:
	mov r1, #0
	strb r1, [r4]
	ldrsb r0, [r4, #0xea]
	cmp r1, #1
	moveq r1, #1
	cmp r0, #2
	moveq r2, #1
	movne r2, #0
	mov r0, r4
	bl func_ov00_020cef50
	mov r0, r4
	mov r1, #0
	bl func_ov03_020f13b0
	mov r0, r4
	mov r1, #0
	bl func_ov03_020f13b0
	b _020f1604
_020f15c0:
	ldr r0, _020f1664 ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	bne _020f1604
	mov r1, #0
	strb r1, [r4]
	cmp r1, #1
	moveq r1, #1
	mov r0, r4
	mov r2, #1
	bl func_ov00_020cef50
	mov r0, r4
	mov r1, #0
	bl func_ov03_020f13b0
	mov r0, r4
	mov r1, #0
	bl func_ov03_020f13b0
_020f1604:
	ldr r0, [r4, #4]
	cmp r0, #2
	ldmia sp!, {r4, pc}
	mov r0, #0x10000
	ldr r1, [r4, #0x20]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	ldmia sp!, {r4, pc}
	ldr r0, _020f1668 ; =data_027e05f8
	ldrh r0, [r0, #2]
	tst r0, #0xa
	ldmia sp!, {r4, pc}
	mov r2, #2
	mov r0, r4
	mov r1, #3
	strb r2, [r4, #0xea]
	bl func_ov03_020f13b0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f1400
_020f1650: .word data_027e1054
_020f1654: .word data_027e0cbc
_020f1658: .word data_027e0d3c
_020f165c: .word data_027e0d38
_020f1660: .word data_027e0c68
_020f1664: .word data_ov09_0211f5b4
_020f1668: .word data_027e05f8

	arm_func_start func_ov03_020f166c
func_ov03_020f166c: ; 0x020f166c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #4]
	cmp r0, #2
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _020f182c ; =data_027e0c54
	ldr r0, _020f1830 ; =data_ov09_0211f5b4
	ldrb r5, [r1]
	bl func_ov03_020f3f94
	ldr r1, _020f1834 ; =data_027e103c
	mov r4, r0
	ldr r0, [r1]
	bl func_ov00_020cfcf8
	cmp r4, #0
	cmpeq r0, #0
	ldr r0, _020f1838 ; =data_027e077c
	moveq sb, #0x1e
	ldr r1, _020f183c ; =data_02056be4
	ldr r0, [r0]
	movne sb, #0
	ldrb r0, [r1, r0]
	tst r0, #1
	beq _020f1780
	cmp r5, #0
	bne _020f1780
	mov r0, #0x10000
	ldr r1, [sl, #0x20]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x1000000
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #0
	mov r7, sl
	add r8, sl, #0x8c
	mov fp, r5
_020f1700:
	cmp r5, #1
	bne _020f1710
	cmp r4, #0
	bne _020f1768
_020f1710:
	cmp r5, #2
	cmpeq r4, #0
	beq _020f1768
	mov r0, r8
	ldr ip, [r0]
	ldrh r6, [r7, #0x96]
	ldr ip, [ip]
	mov r1, fp
	mov r2, sb
	mov r3, fp
	blx ip
	mov r2, r0
	mov r0, sl
	mov r1, r6
	bl func_ov03_020f1840
	cmp r0, #0
	beq _020f1768
	mov r0, sl
	mov r1, #3
	bl func_ov03_020f13b0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f1768:
	add r5, r5, #1
	cmp r5, #3
	add r7, r7, #0x18
	add r8, r8, #0x18
	blt _020f1700
	b _020f1824
_020f1780:
	mov fp, #0x10000
	mov r7, sl
	add r8, sl, #0x44
	mov r5, #0
	rsb fp, fp, #0
_020f1794:
	ldr r0, [sl, #0x20]
	and r0, r0, fp
	cmp r0, #0x1000000
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #1
	bne _020f17b8
	cmp r4, #0
	bne _020f1810
_020f17b8:
	cmp r5, #2
	cmpeq r4, #0
	beq _020f1810
	mov r0, r8
	ldr ip, [r0]
	ldrh r6, [r7, #0x4e]
	mov r1, #0
	ldr ip, [ip]
	mov r2, sb
	mov r3, r1
	blx ip
	mov r2, r0
	mov r1, r6
	mov r0, sl
	bl func_ov03_020f1840
	cmp r0, #0
	beq _020f1810
	mov r0, sl
	mov r1, #3
	bl func_ov03_020f13b0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f1810:
	add r5, r5, #1
	cmp r5, #3
	add r7, r7, #0x18
	add r8, r8, #0x18
	blt _020f1794
_020f1824:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f166c
_020f182c: .word data_027e0c54
_020f1830: .word data_ov09_0211f5b4
_020f1834: .word data_027e103c
_020f1838: .word data_027e077c
_020f183c: .word data_02056be4

	arm_func_start func_ov03_020f1840
func_ov03_020f1840: ; 0x020f1840
	stmdb sp!, {r4, lr}
	mov r4, r0
	tst r2, #8
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f190c ; =data_027e077c
	ldr r2, _020f1910 ; =data_02056be4
	ldr r0, [r0]
	ldrb r0, [r2, r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	strb r0, [r4, #0x41]
	cmp r1, #0x50
	beq _020f1890
	cmp r1, #0x51
	beq _020f18ac
	cmp r1, #0x52
	beq _020f18e4
	b _020f1904
_020f1890:
	mov r2, #2
	mov r0, r4
	mov r1, #3
	strb r2, [r4, #0xea]
	bl func_ov03_020f13b0
	mov r0, #1
	ldmia sp!, {r4, pc}
_020f18ac:
	ldr r0, _020f1914 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfcf8
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f1918 ; =data_027e0c68
	mov r3, #0
	ldr r2, _020f191c ; =0x00020008
	add r1, r4, #8
	strb r3, [r4, #0xe9]
	bl func_02036ce4
	mov r0, #0
	ldmia sp!, {r4, pc}
_020f18e4:
	ldr r0, _020f1918 ; =data_027e0c68
	mov r3, #1
	ldr r2, _020f1920 ; =0x0002000c
	add r1, r4, #8
	strb r3, [r4, #0xe9]
	bl func_02036ce4
	mov r0, #0
	ldmia sp!, {r4, pc}
_020f1904:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f1840
_020f190c: .word data_027e077c
_020f1910: .word data_02056be4
_020f1914: .word data_027e103c
_020f1918: .word data_027e0c68
_020f191c: .word 0x00020008
_020f1920: .word 0x0002000c

	arm_func_start func_ov03_020f1924
func_ov03_020f1924: ; 0x020f1924
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r2, _020f1cdc ; =data_027e0618
	mov r8, r0
	ldrb r0, [r2, #0x101]
	mov r7, r1
	cmp r0, #0
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #4]
	cmp r0, #2
	cmpne r0, #5
	addne sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r0, [r7]
	tst r0, #8
	beq _020f1970
	tst r0, #1
	bne _020f1980
_020f1970:
	tst r0, #4
	beq _020f19b4
	tst r0, #2
	beq _020f19b4
_020f1980:
	mov r1, #0
	mov r2, r1
	mov r3, r1
	mov r0, #0xe1
	str r1, [sp]
	bl func_0203493c
	mov r1, #0
	mov r2, r1
	mov r3, r1
	mov r0, #0x14
	str r1, [sp]
	bl func_0203493c
	b _020f19dc
_020f19b4:
	tst r0, #1
	bne _020f19c4
	tst r0, #2
	beq _020f19dc
_020f19c4:
	mov r1, #0
	mov r2, r1
	mov r3, r1
	mov r0, #0x14
	str r1, [sp]
	bl func_0203493c
_020f19dc:
	ldr r0, _020f1ce0 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfcf8
	mov r4, r0
	ldr r0, _020f1ce4 ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	movs r5, r0
	cmpeq r4, #0
	moveq r6, #0x1e
	ldrh r0, [r7]
	movne r6, #0
	tst r0, #8
	beq _020f1b70
	ldrsh r0, [r8, #0xd4]
	ldrsh r2, [r8, #0xd6]
	cmp r0, r2
	moveq r3, #0
	beq _020f1a4c
	ldrsh r1, [r8, #0xd8]
	cmp r0, r1
	moveq r3, #0x1000
	beq _020f1a4c
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f1a4c:
	ldrb r0, [r8, #0xe4]
	ldr r1, [r8, #0xdc]
	ldr r2, [r8, #0xe0]
	bl func_ov00_020d02bc
	add r0, r0, #0x800
	mov r1, r0, asr #0xc
	mov r3, #0
	mov r2, r6
	add r0, r8, #0x8c
	rsb r1, r1, #0
	str r3, [sp]
	bl func_ov00_020d00c4
	cmp r5, #0
	beq _020f1af4
	ldrsh r0, [r8, #0xd4]
	ldrsh r2, [r8, #0xd6]
	cmp r0, r2
	moveq r3, #0
	beq _020f1ac0
	ldrsh r1, [r8, #0xd8]
	cmp r0, r1
	moveq r3, #0x1000
	beq _020f1ac0
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f1ac0:
	ldrb r0, [r8, #0xe4]
	ldr r1, [r8, #0xdc]
	ldr r2, [r8, #0xe0]
	bl func_ov00_020d02bc
	mov r2, #0
	add r1, r0, #0x800
	mov r3, r2
	add r0, r8, #0xbc
	mov r1, r1, asr #0xc
	str r2, [sp]
	bl func_ov00_020d00c4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020f1af4:
	cmp r4, #0
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrsh r0, [r8, #0xd4]
	ldrsh r2, [r8, #0xd6]
	cmp r0, r2
	moveq r3, #0
	beq _020f1b3c
	ldrsh r1, [r8, #0xd8]
	cmp r0, r1
	moveq r3, #0x1000
	beq _020f1b3c
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f1b3c:
	ldrb r0, [r8, #0xe4]
	ldr r1, [r8, #0xdc]
	ldr r2, [r8, #0xe0]
	bl func_ov00_020d02bc
	mov r2, #0
	add r1, r0, #0x800
	mov r3, r2
	add r0, r8, #0xa4
	mov r1, r1, asr #0xc
	str r2, [sp]
	bl func_ov00_020d00c4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020f1b70:
	tst r0, #2
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrsh r0, [r8, #0xd4]
	ldrsh r2, [r8, #0xd6]
	cmp r0, r2
	moveq r3, #0
	beq _020f1bb8
	ldrsh r1, [r8, #0xd8]
	cmp r0, r1
	moveq r3, #0x1000
	beq _020f1bb8
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f1bb8:
	ldrb r0, [r8, #0xe4]
	ldr r1, [r8, #0xdc]
	ldr r2, [r8, #0xe0]
	bl func_ov00_020d02bc
	add r0, r0, #0x800
	mov r1, r0, asr #0xc
	mov r3, #0
	mov r2, r6
	add r0, r8, #0x44
	rsb r1, r1, #0
	str r3, [sp]
	bl func_ov00_020d00c4
	cmp r5, #0
	beq _020f1c60
	ldrsh r0, [r8, #0xd4]
	ldrsh r2, [r8, #0xd6]
	cmp r0, r2
	moveq r3, #0
	beq _020f1c2c
	ldrsh r1, [r8, #0xd8]
	cmp r0, r1
	moveq r3, #0x1000
	beq _020f1c2c
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f1c2c:
	ldrb r0, [r8, #0xe4]
	ldr r1, [r8, #0xdc]
	ldr r2, [r8, #0xe0]
	bl func_ov00_020d02bc
	mov r2, #0
	add r1, r0, #0x800
	mov r3, r2
	add r0, r8, #0x74
	mov r1, r1, asr #0xc
	str r2, [sp]
	bl func_ov00_020d00c4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020f1c60:
	cmp r4, #0
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrsh r0, [r8, #0xd4]
	ldrsh r2, [r8, #0xd6]
	cmp r0, r2
	moveq r3, #0
	beq _020f1ca8
	ldrsh r1, [r8, #0xd8]
	cmp r0, r1
	moveq r3, #0x1000
	beq _020f1ca8
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f1ca8:
	ldrb r0, [r8, #0xe4]
	ldr r1, [r8, #0xdc]
	ldr r2, [r8, #0xe0]
	bl func_ov00_020d02bc
	mov r2, #0
	add r1, r0, #0x800
	mov r3, r2
	add r0, r8, #0x5c
	mov r1, r1, asr #0xc
	str r2, [sp]
	bl func_ov00_020d00c4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov03_020f1924
_020f1cdc: .word data_027e0618
_020f1ce0: .word data_027e103c
_020f1ce4: .word data_ov09_0211f5b4

	arm_func_start func_ov03_020f1ce8
func_ov03_020f1ce8: ; 0x020f1ce8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f1ce8

	arm_func_start func_ov03_020f1d04
func_ov03_020f1d04: ; 0x020f1d04
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _020f1db0 ; =data_027e0d38
	mov r4, #0
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #2
	cmpne r0, #3
	moveq r4, #1
	cmp r4, #0
	mov r4, #1
	bne _020f1da8
	ldr r0, _020f1db4 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020f1da8
	ldr r0, _020f1db8 ; =data_027e0c68
	bl func_02036798
	cmp r0, #0
	bne _020f1da8
	ldr r0, _020f1dbc ; =data_027e0e28
	bl func_ov00_0207bc48
	cmp r0, #0
	bne _020f1da8
	ldr r0, _020f1dc0 ; =data_ov09_0211f5b4
	bl func_ov03_020f3fb4
	cmp r0, #0
	bne _020f1da8
	ldr r0, _020f1dc4 ; =data_027e0900
	ldr r1, _020f1dc8 ; =0x0000001d
	ldr r0, [r0, #0x18]
	mov r5, #0
	cmp r0, r1
	bne _020f1da0
	ldr r0, _020f1dcc ; =data_ov29_0217a4ac
	bl func_ov09_021136c4
	cmp r0, #0
	movne r5, r4
_020f1da0:
	cmp r5, #0
	moveq r4, #0
_020f1da8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f1d04
_020f1db0: .word data_027e0d38
_020f1db4: .word data_027e0f74
_020f1db8: .word data_027e0c68
_020f1dbc: .word data_027e0e28
_020f1dc0: .word data_ov09_0211f5b4
_020f1dc4: .word data_027e0900
_020f1dc8: .word 0x0000001d
_020f1dcc: .word data_ov29_0217a4ac

	thumb_func_start func_ov03_020f1dd0
func_ov03_020f1dd0: ; 0x020f1dd0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0xff
	mvn r1, r1
	mov r2, #0
	add r4, r0, #0
	bl func_ov09_0211b778
	ldr r0, _020f1e94 ; =data_ov03_02100148
	ldr r1, _020f1e98 ; =data_027e0ce0
	str r0, [r4]
	strb r5, [r4, #0x1d]
	mov r0, #0x18
	mul r0, r5
	ldr r1, [r1, #4]
	add r0, #8
	mov r2, #4
	blx func_0202e9f4
	cmp r0, #0
	beq _020f1e0e
	ldr r1, _020f1e9c ; =func_ov03_020f1220
	mov r2, #0x18
	str r1, [sp]
	ldr r1, _020f1ea0 ; =func_ov03_020f121c
	mov r3, #8
	str r1, [sp, #4]
	add r1, r5, #0
	blx func_0204f558
_020f1e0e:
	add r5, r4, #0
	add r5, #0x24
	str r0, [r4, #0x20]
	add r0, r5, #0
	blx func_ov00_020d05dc
	ldr r0, _020f1ea4 ; =data_ov00_020e899c
	mov r1, #0
	str r0, [r4, #0x24]
	strb r1, [r5, #0x10]
	sub r0, r1, #1
	strb r0, [r5, #0x11]
	strb r0, [r5, #0x12]
	strb r0, [r5, #0x13]
	str r1, [r5, #0x14]
	mov r0, #0xb
	str r0, [sp]
	mov r3, #1
	ldr r0, _020f1ea8 ; =func_ov03_020f23b4
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r1, #4
	mov r2, #2
	blx func_ov00_020cfed0
	mov r1, #4
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r2, #1
	add r0, #0x18
	blx func_ov00_020cfed0
	ldr r0, [r4, #0x20]
	mov r1, #6
	add r0, #0x2b
	strb r1, [r0]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #4
	add r0, #0x24
	mov r2, #5
	add r3, r1, #0
	blx func_ov00_020cfed0
	add r0, r4, #0
	mov r1, #7
	add r0, #0x37
	strb r1, [r0]
	add r0, r4, #0
	bl func_ov03_020f1f38
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f1dd0
_020f1e94: .word data_ov03_02100148
_020f1e98: .word data_027e0ce0
_020f1e9c: .word func_ov03_020f1220
_020f1ea0: .word func_ov03_020f121c
_020f1ea4: .word data_ov00_020e899c
_020f1ea8: .word func_ov03_020f23b4

	thumb_func_start func_ov03_020f1eac
func_ov03_020f1eac: ; 0x020f1eac
	thumb_func_end func_ov03_020f1eac
_020f1eac:
	.byte 0x10
data_ov03_020f1ead: ; 0x020f1ead
	.byte 0xb5, 0x04, 0x1c
	.byte 0x07, 0x48, 0x08, 0x4b, 0x20, 0x60, 0x20, 0x6a, 0x18, 0x21, 0x08, 0x22, 0x5d, 0xf7, 0x78, 0xec
	.byte 0x20, 0x1c, 0x29, 0xf0, 0x06, 0xee, 0x20, 0x1c, 0x29, 0xf0, 0x92, 0xfc, 0x20, 0x1c, 0x10, 0xbd
_020f1ed0: .word data_ov03_02100148
_020f1ed4: .word func_ov03_020f121c

	thumb_func_start func_ov03_020f1ed8
func_ov03_020f1ed8: ; 0x020f1ed8
	thumb_func_end func_ov03_020f1ed8
_020f1ed8:
	.byte 0x10
data_ov03_020f1ed9: ; 0x020f1ed9
	.byte 0xb5, 0x04, 0x1c, 0x09, 0x48, 0x0a, 0x4b
	.byte 0x20, 0x60, 0x20, 0x6a, 0x18, 0x21, 0x08, 0x22, 0x5d, 0xf7, 0x62, 0xec, 0x20, 0x1c, 0x29, 0xf0
	.byte 0xf0, 0xed, 0x20, 0x1c, 0x29, 0xf0, 0x7c, 0xfc, 0x20, 0x1c, 0x3c, 0xf7, 0x88, 0xed, 0x20, 0x1c
	.byte 0x10, 0xbd, 0xc0, 0x46
_020f1f04: .word data_ov03_02100148
_020f1f08: .word func_ov03_020f121c

	thumb_func_start func_ov03_020f1f0c
func_ov03_020f1f0c: ; 0x020f1f0c
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f1f30 ; =data_ov03_02100148
	ldr r3, _020f1f34 ; =func_ov03_020f121c
	str r0, [r4]
	ldr r0, [r4, #0x20]
	mov r1, #0x18
	mov r2, #8
	blx func_0204f7b0
	add r0, r4, #0
	blx func_ov09_0211bad0
	add r0, r4, #0
	bl func_ov09_0211b7f0
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f1f0c
_020f1f30: .word data_ov03_02100148
_020f1f34: .word func_ov03_020f121c

	thumb_func_start func_ov03_020f1f38
func_ov03_020f1f38: ; 0x020f1f38
	mov r2, #0
	strb r2, [r0, #0x14]
	mov r1, #6
	ldrsh r1, [r0, r1]
	strh r1, [r0, #4]
	mov r1, #0xa
	ldrsh r1, [r0, r1]
	strh r1, [r0, #0xe]
	strb r2, [r0, #0x1c]
	bx lr
	thumb_func_end func_ov03_020f1f38

	arm_func_start func_ov03_020f1f4c
func_ov03_020f1f4c: ; 0x020f1f4c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r3, _020f2130 ; =data_027e0d78
	ldr r2, _020f2134 ; =data_ov03_02100100
	ldr r5, [r3, #0x2c]
	mov r1, #0
	ldr r4, [r2, #0x30]
	mov r7, r0
	mov r6, r1
	mov r8, r1
	cmp r4, r5
	ldr r0, [r3, #0x30]
	bgt _020f1f8c
	ldr r2, [r2, #0x38]
	add r2, r4, r2
	cmp r5, r2
	movlt r8, #1
_020f1f8c:
	cmp r8, #0
	beq _020f1fa4
	ldr r2, _020f2134 ; =data_ov03_02100100
	ldr r2, [r2, #0x34]
	cmp r2, r0
	movle r6, #1
_020f1fa4:
	cmp r6, #0
	beq _020f1fc4
	ldr r2, _020f2134 ; =data_ov03_02100100
	ldr r3, [r2, #0x34]
	ldr r2, [r2, #0x3c]
	add r2, r3, r2
	cmp r0, r2
	movlt r1, #1
_020f1fc4:
	cmp r1, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [r7, #0x14]
	mov r1, #1
	cmp r0, #1
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	bl func_ov03_020f26bc
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020f2138 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf4f4
	cmp r0, #0
	beq _020f2034
	ldr r0, _020f2138 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020ceffc
	ldrsb r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020f2034:
	ldr r0, _020f2138 ; =data_027e103c
	ldr r1, _020f213c ; =0x0000019f
	ldr r0, [r0]
	bl func_ov00_020cf8fc
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020f2140 ; =data_027e077c
	ldr r1, [r0]
	mov r0, r1
	cmp r1, #1
	cmpne r0, #0x37
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [r7, #0x14]
	cmp r0, #0
	beq _020f20e8
	ldrb r0, [r7, #0x1d]
	ldrsh r6, [r7, #0xe]
	mov r4, #0
	cmp r0, #0
	ble _020f2128
	mov r5, r4
	mov r8, r4
_020f2094:
	ldr r0, [r7, #0x20]
	mov r1, r6
	ldr ip, [r0, r5]!
	ldrh sb, [r0, #0xa]
	ldr ip, [ip]
	mov r2, r8
	mov r3, r8
	blx ip
	mov r2, r0
	mov r0, r7
	mov r1, sb
	bl func_ov03_020f2188
	cmp r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r7, #0x1d]
	add r4, r4, #1
	add r5, r5, #0x18
	cmp r4, r0
	blt _020f2094
	b _020f2128
_020f20e8:
	bne _020f2128
	add r0, r7, #0x24
	ldr r4, [r0]
	ldrh r5, [r7, #0x2e]
	mov r1, #0
	ldr r4, [r4]
	mov r2, r1
	mov r3, r1
	blx r4
	mov r2, r0
	mov r0, r7
	mov r1, r5
	bl func_ov03_020f2188
	cmp r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020f2128:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov03_020f1f4c
_020f2130: .word data_027e0d78
_020f2134: .word data_ov03_02100100
_020f2138: .word data_027e103c
_020f213c: .word 0x0000019f
_020f2140: .word data_027e077c

	arm_func_start func_ov03_020f2144
func_ov03_020f2144: ; 0x020f2144
	ldrb r1, [r0, #0x1d]
	mov r3, #0
	cmp r1, #0
	ble _020f217c
	mov ip, r3
	mov r2, #1
_020f215c:
	ldr r1, [r0, #0x20]
	add r3, r3, #1
	add r1, r1, ip
	strb r2, [r1, #0xd]
	ldrb r1, [r0, #0x1d]
	add ip, ip, #0x18
	cmp r3, r1
	blt _020f215c
_020f217c:
	mov r1, #1
	strb r1, [r0, #0x31]
	bx lr
	arm_func_end func_ov03_020f2144

	arm_func_start func_ov03_020f2188
func_ov03_020f2188: ; 0x020f2188
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r2, #1
	movne r0, #1
	strneb r0, [r4, #0x1c]
	tst r2, #8
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldrsb r0, [r4, #0x14]
	cmp r0, #0
	bne _020f21e4
	cmp r1, #3
	bne _020f21fc
	ldr r0, _020f2204 ; =data_ov00_020eec9c
	mov r1, #0x10
	bl func_ov00_020d77e4
	mov r0, r4
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #8]
	blx r2
	mov r0, #1
	ldmia sp!, {r4, pc}
_020f21e4:
	beq _020f21fc
	mov r0, r4
	ldr r3, [r0]
	ldr r3, [r3, #0x34]
	blx r3
	ldmia sp!, {r4, pc}
_020f21fc:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2188
_020f2204: .word data_ov00_020eec9c

	arm_func_start func_ov03_020f2208
func_ov03_020f2208: ; 0x020f2208
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl func_ov09_0211b914
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r1, #0
	ldr r0, _020f2290 ; =data_027e103c
	strb r1, [r4, #0x1c]
	ldr r0, [r0]
	bl func_ov00_020cf4f4
	cmp r0, #0
	beq _020f2268
	ldr r0, _020f2290 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020ceffc
	ldrsb r1, [r4, #0x14]
	cmp r1, #1
	ldreqsb r0, [r0, #0x14]
	cmpeq r0, #2
	bne _020f2268
	ldr r0, _020f2290 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf398
_020f2268:
	ldrsb r0, [r4, #0x14]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f2290 ; =data_027e103c
	mov r1, #1
	ldr r0, [r0]
	bl func_ov00_020cf374
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2208
_020f2290: .word data_027e103c

	arm_func_start func_ov03_020f2294
func_ov03_020f2294: ; 0x020f2294
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f26bc
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f2314 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	beq _020f22d0
	ldr r0, _020f2318 ; =data_027e0f90
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	ldmia sp!, {r4, pc}
_020f22d0:
	ldr r0, _020f231c ; =data_027e103c
	ldr r1, _020f2320 ; =0x0000019f
	ldr r0, [r0]
	bl func_ov00_020cf864
	mov r2, r0
	mov r0, #0
	mov r1, #0x3c000
	bl func_ov00_020d03f8
	mov r1, r0
	mov r0, r4
	ldr r2, [r0]
	ldrsh r3, [r4, #0xe]
	add r1, r1, #0x800
	ldr r2, [r2, #0x2c]
	sub r1, r3, r1, asr #12
	blx r2
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2294
_020f2314: .word data_027e0f74
_020f2318: .word data_027e0f90
_020f231c: .word data_027e103c
_020f2320: .word 0x0000019f

	arm_func_start func_ov03_020f2324
func_ov03_020f2324: ; 0x020f2324
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f26bc
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f23a4 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	beq _020f2360
	ldr r0, _020f23a8 ; =data_027e0f90
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	ldmia sp!, {r4, pc}
_020f2360:
	ldr r0, _020f23ac ; =data_027e103c
	ldr r1, _020f23b0 ; =0x0000019f
	ldr r0, [r0]
	bl func_ov00_020cf864
	mov r2, r0
	mov r0, #0
	mov r1, #0x3c000
	bl func_ov00_020d03f8
	mov r1, r0
	mov r0, r4
	ldr r2, [r0]
	ldrsh r3, [r4, #0xe]
	add r1, r1, #0x800
	ldr r2, [r2, #0x30]
	sub r1, r3, r1, asr #12
	blx r2
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2324
_020f23a4: .word data_027e0f74
_020f23a8: .word data_027e0f90
_020f23ac: .word data_027e103c
_020f23b0: .word 0x0000019f

	arm_func_start func_ov03_020f23b4
func_ov03_020f23b4: ; 0x020f23b4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r1
	ldrh r0, [r6, #0xa]
	mov r5, r2
	mov r4, r3
	cmp r0, #6
	beq _020f23e8
	cmp r0, #7
	beq _020f2460
	cmp r0, #0xb
	beq _020f24cc
	b _020f250c
_020f23e8:
	ldr r0, _020f2518 ; =data_027e0fb4
	mov r1, #0x21
	ldr r0, [r0]
	bl func_ov00_020ada78
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020f251c ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf750
	cmp r0, #0
	bne _020f250c
	ldrsh r0, [r6, #8]
	ldrsb r1, [r6, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl func_02034698
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r2, r1, r5
	add r3, r0, r4
	mov r0, #4
	mov r1, #9
	bl func_02034984
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020f2460:
	bl func_ov03_020f1d04
	cmp r0, #0
	beq _020f250c
	ldr r0, _020f2520 ; =data_027e0d38
	mov r6, #4
	ldr r0, [r0]
	mov r7, r6
	bl func_ov00_02078b40
	cmp r0, #2
	moveq r6, #5
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r6
	mov r1, r7
	bl func_02034698
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r2, r1, r5
	add r3, r0, r4
	mov r0, #4
	mov r1, #0xa
	bl func_02034984
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020f24cc:
	ldr r0, _020f251c ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfcf8
	cmp r0, #0
	bne _020f250c
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrsb r2, [r6, #0x10]
	mov r3, r5
	mov r0, #4
	mov r1, #8
	bl func_020349cc
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020f250c:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f23b4
_020f2518: .word data_027e0fb4
_020f251c: .word data_027e103c
_020f2520: .word data_027e0d38

	arm_func_start func_ov03_020f2524
func_ov03_020f2524: ; 0x020f2524
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x1d]
	mov r4, r1
	mov r2, #0
	cmp r0, #0
	ble _020f2568
	mov r3, r2
	mov r1, #1
_020f2548:
	ldr r0, [r5, #0x20]
	add r2, r2, #1
	add r0, r0, r3
	strb r1, [r0, #0xd]
	ldrb r0, [r5, #0x1d]
	add r3, r3, #0x18
	cmp r2, r0
	blt _020f2548
_020f2568:
	mov r0, #1
	strb r0, [r5, #0x31]
	cmp r4, #4
	bne _020f2588
	ldr r0, _020f2598 ; =data_027e103c
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020cf374
_020f2588:
	mov r0, r5
	mov r1, r4
	bl func_ov09_0211b7f4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2524
_020f2598: .word data_027e103c

	arm_func_start func_ov03_020f259c
func_ov03_020f259c: ; 0x020f259c
	bx lr
	arm_func_end func_ov03_020f259c

	arm_func_start func_ov03_020f25a0
func_ov03_020f25a0: ; 0x020f25a0
	bx lr
	arm_func_end func_ov03_020f25a0

	arm_func_start func_ov03_020f25a4
func_ov03_020f25a4: ; 0x020f25a4
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _020f26a4
_020f25b8: ; jump table
	b _020f26a4 ; case 0
	b _020f26a4 ; case 1
	b _020f26a4 ; case 2
	b _020f26a4 ; case 3
	b _020f263c ; case 4
	b _020f26a4 ; case 5
	b _020f25e8 ; case 6
	b _020f2630 ; case 7
	b _020f26a4 ; case 8
	b _020f26a4 ; case 9
	b _020f26a4 ; case 10
	b _020f2664 ; case 11
_020f25e8:
	ldr r0, _020f26ac ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf750
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f26b0 ; =data_027e1054
	mov r1, #1
	ldr r0, [r0]
	blx func_ov03_020f4718
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f26ac ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf330
	mov r0, #1
	ldmia sp!, {r4, pc}
_020f2630:
	mov r1, #1
	bl func_ov03_020f2848
	ldmia sp!, {r4, pc}
_020f263c:
	ldr r0, _020f26b4 ; =data_ov00_020eec9c
	mov r1, #0x11
	bl func_ov00_020d77e4
	mov r0, r4
	ldr r2, [r0]
	mov r1, #4
	ldr r2, [r2, #8]
	blx r2
	mov r0, #1
	ldmia sp!, {r4, pc}
_020f2664:
	ldr r0, _020f26ac ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfcf8
	cmp r0, #0
	beq _020f26a4
	ldr r0, _020f26ac ; =data_027e103c
	ldr r1, _020f26b8 ; =0x00020006
	ldr r0, [r0]
	mov r2, #1
	mov r3, #0
	bl func_ov05_02103f3c
	cmp r0, #0
	bne _020f26a4
	ldr r0, _020f26b4 ; =data_ov00_020eec9c
	mov r1, #0xc
	bl func_ov00_020d77e4
_020f26a4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f25a4
_020f26ac: .word data_027e103c
_020f26b0: .word data_027e1054
_020f26b4: .word data_ov00_020eec9c
_020f26b8: .word 0x00020006

	arm_func_start func_ov03_020f26bc
func_ov03_020f26bc: ; 0x020f26bc
	ldr r0, _020f26d4 ; =data_027e0618
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020f26bc
_020f26d4: .word data_027e0618

	arm_func_start func_ov03_020f26d8
func_ov03_020f26d8: ; 0x020f26d8
	stmdb sp!, {r4, lr}
	ldrb r3, [r0, #0x1c]
	cmp r3, #0
	movne r0, #0
	ldmia sp!, {r4, pc}
	ldrsb r0, [r0, #0x14]
	cmp r0, #0
	beq _020f2768
	ldr r0, _020f2770 ; =data_ov03_02100100
	mov ip, #0
	ldr r3, [r0, #0x20]
	mov lr, ip
	mov r4, ip
	cmp r3, r1
	bgt _020f2724
	ldr r0, [r0, #0x28]
	add r0, r3, r0
	cmp r1, r0
	movlt r4, #1
_020f2724:
	cmp r4, #0
	beq _020f273c
	ldr r0, _020f2770 ; =data_ov03_02100100
	ldr r0, [r0, #0x24]
	cmp r0, r2
	movle lr, #1
_020f273c:
	cmp lr, #0
	beq _020f275c
	ldr r0, _020f2770 ; =data_ov03_02100100
	ldr r1, [r0, #0x24]
	ldr r0, [r0, #0x2c]
	add r0, r1, r0
	cmp r2, r0
	movlt ip, #1
_020f275c:
	cmp ip, #0
	movne r0, #0
	ldmia sp!, {r4, pc}
_020f2768:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f26d8
_020f2770: .word data_ov03_02100100

	arm_func_start func_ov03_020f2774
func_ov03_020f2774: ; 0x020f2774
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f26bc
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f27dc ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfa64
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f27e0 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	beq _020f27d0
	ldr r0, _020f27e4 ; =data_027e0fb8
	ldr r0, [r0]
	ldrb r0, [r0, #0x79]
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r4, pc}
_020f27d0:
	mov r0, r4
	bl func_ov09_0211baf4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2774
_020f27dc: .word data_027e103c
_020f27e0: .word data_027e0d38
_020f27e4: .word data_027e0fb8

	arm_func_start func_ov03_020f27e8
func_ov03_020f27e8: ; 0x020f27e8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldrb r0, [r6, #0x1d]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	mov r7, #0
	ble _020f2834
	mov r8, r7
_020f280c:
	ldr r0, [r6, #0x20]
	mov r1, r4
	mov r2, r5
	add r0, r0, r8
	bl func_ov00_020d0a14
	ldrb r0, [r6, #0x1d]
	add r7, r7, #1
	add r8, r8, #0x18
	cmp r7, r0
	blt _020f280c
_020f2834:
	mov r1, r4
	mov r2, r5
	add r0, r6, #0x24
	bl func_ov00_020d0a14
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov03_020f27e8

	arm_func_start func_ov03_020f2848
func_ov03_020f2848: ; 0x020f2848
	stmdb sp!, {r4, lr}
	ldr r0, _020f28f0 ; =data_027e077c
	mov r4, r1
	ldr r0, [r0]
	mov r1, #0
	cmp r0, #1
	moveq r1, #1
	cmp r1, #0
	beq _020f28b8
	bl func_ov03_020f1d04
	cmp r0, #0
	bne _020f28b8
	ldr r0, _020f28f4 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cfa64
	cmp r0, #0
	bne _020f28b8
	ldr r0, _020f28f8 ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	bne _020f28b8
	ldr r0, _020f28fc ; =data_027e0fc8
	ldr r0, [r0]
	cmp r0, #0
	beq _020f28d4
	ldrsh r0, [r0, #0x5a]
	cmp r0, #0
	ble _020f28d4
_020f28b8:
	cmp r4, #0
	bne _020f28cc
	ldr r0, _020f2900 ; =data_ov00_020eec9c
	mov r1, #0xc
	bl func_ov00_020d77e4
_020f28cc:
	mov r0, #0
	ldmia sp!, {r4, pc}
_020f28d4:
	ldr r0, _020f2900 ; =data_ov00_020eec9c
	mov r1, #0x71
	bl func_ov00_020d77e4
	mov r0, #0
	blx func_ov03_020f9ef4
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2848
_020f28f0: .word data_027e077c
_020f28f4: .word data_027e103c
_020f28f8: .word data_ov09_0211f5b4
_020f28fc: .word data_027e0fc8
_020f2900: .word data_ov00_020eec9c

	thumb_func_start func_ov03_020f2904
func_ov03_020f2904: ; 0x020f2904
	thumb_func_end func_ov03_020f2904
_020f2904:
	.byte 0x38
data_ov03_020f2905: ; 0x020f2905
	.byte 0xb5, 0x05, 0x1c, 0x0c, 0x48, 0x0c, 0x1c, 0x43, 0xf7, 0xda, 0xee
	.byte 0x0b, 0x49, 0x42, 0x5a, 0x60, 0x88, 0xe9, 0x6b, 0x01, 0x28, 0x03, 0xd0, 0x02, 0x28, 0x01, 0xd0
	.byte 0x03, 0x28, 0x06, 0xd1
_020f2924:
	cmp r2, #0
	beq _020f292c
	cmp r2, #2
	bne _020f2932
_020f292c:
	mov r0, #1
	add r1, #0x84
	strb r0, [r1]
_020f2932:
	add r0, r5, #0
	add r1, r4, #0
	blx func_0203878c
	pop {r3, r4, r5, pc}
	.align 2, 0
_020f293c: .word data_027e0c68
_020f2940: .word 0x00000576

	thumb_func_start func_ov03_020f2944
func_ov03_020f2944: ; 0x020f2944
	thumb_func_end func_ov03_020f2944
_020f2944:
	.byte 0x10
data_ov03_020f2945: ; 0x020f2945
	.byte 0xb5, 0x4a, 0x78, 0x11, 0x2a, 0x11, 0xd1, 0x4b, 0x68, 0xc2, 0x6b
	.byte 0x00, 0x2b, 0x02, 0xd0, 0x01, 0x2b, 0x04, 0xd0, 0x0a, 0xe0
_020f295a:
	mov r3, #1
	add r2, #0x84
	strb r3, [r2]
	b _020f2970
_020f2962:
	add r3, r2, #0
	mov r4, #0
	add r3, #0x84
	strb r4, [r3]
	mov r3, #1
	add r2, #0x85
	strb r3, [r2]
_020f2970:
	blx func_02037f58
	pop {r4, pc}
	.align 2, 0

	thumb_func_start func_ov03_020f2978
func_ov03_020f2978: ; 0x020f2978
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r1, _020f2a0c ; =func_ov03_020f121c
	ldr r3, _020f2a10 ; =func_ov03_020f1220
	str r1, [sp]
	add r5, r0, #0
	mov r1, #2
	mov r2, #0x18
	blx func_0204f614
	add r4, r5, #0
	add r4, #0x30
	add r0, r4, #0
	blx func_020386d8
	ldr r0, _020f2a14 ; =data_ov03_02100188
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x70
	str r5, [r4, #0x3c]
	blx func_ov00_020d0460
	mov r3, #0
	mov r0, #0x37
	str r3, [r5, #0x78]
	lsl r0, r0, #0xe
	str r0, [r5, #0x7c]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x80
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	strb r3, [r0]
	add r0, r5, #0
	add r0, #0x85
	strb r3, [r0]
	mov r0, #0x74
	ldrsh r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x70
	strh r1, [r0]
	mov r0, #0x53
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	mov r1, #0x14
	str r3, [sp, #0xc]
	blx func_ov00_020cfed0
	mov r0, #3
	strb r0, [r5, #0x13]
	mov r0, #0x54
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x18
	mov r1, #0x14
	mov r2, #2
	blx func_ov00_020cfed0
	add r0, r5, #0
	mov r1, #4
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f2978
_020f2a0c: .word func_ov03_020f121c
_020f2a10: .word func_ov03_020f1220
_020f2a14: .word data_ov03_02100188

	arm_func_start func_ov03_020f2a18
func_ov03_020f2a18: ; 0x020f2a18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f2a18

	thumb_func_start func_ov03_020f2a2c
func_ov03_020f2a2c: ; 0x020f2a2c
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020f2ab8 ; =data_027e0698
	mov r4, #0
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _020f2aa4
	cmp r0, #1
	bne _020f2ab2
	ldr r0, _020f2abc ; =data_027e071c
	blx func_0202d7ac
	cmp r0, #0
	bne _020f2ab2
	ldr r1, [r5, #0x48]
	ldr r0, _020f2ac0 ; =0xffff0000
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0x18
	cmp r1, r0
	beq _020f2a62
	add r1, r5, #0
	ldr r0, _020f2ac4 ; =data_027e0c68
	add r1, #0x30
	blx func_02036888
	b _020f2a68
_020f2a62:
	add r0, r5, #0
	bl func_ov03_020f2b84
_020f2a68:
	ldr r1, [r5, #0x48]
	ldr r0, _020f2ac0 ; =0xffff0000
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0x18
	cmp r1, r0
	bne _020f2a80
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f2a8a
_020f2a80:
	add r5, #0x70
	add r0, r5, #0
	blx func_ov00_020d054c
	b _020f2ab2
_020f2a8a:
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f2a9a
	bl func_ov03_020f9f1c
	b _020f2ab2
_020f2a9a:
	add r5, #0x70
	add r0, r5, #0
	blx func_ov00_020d0594
	b _020f2ab2
_020f2aa4:
	ldr r0, _020f2ac8 ; =data_027e0718
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _020f2ab0
	mov r4, #2
	b _020f2ab2
_020f2ab0:
	mov r4, #3
_020f2ab2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f2a2c
_020f2ab8: .word data_027e0698
_020f2abc: .word data_027e071c
_020f2ac0: .word 0xffff0000
_020f2ac4: .word data_027e0c68
_020f2ac8: .word data_027e0718

	thumb_func_start func_ov03_020f2acc
func_ov03_020f2acc: ; 0x020f2acc
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	add r4, r0, #0
	mov r0, #0xe5
	add r2, r1, #0
	blx func_0203490c
	mov r0, #0x70
	ldrsh r3, [r4, r0]
	mov r0, #0x72
	ldrsh r2, [r4, r0]
	cmp r3, r2
	bne _020f2aec
	mov r3, #0
	b _020f2b08
_020f2aec:
	mov r0, #0x74
	ldrsh r1, [r4, r0]
	cmp r3, r1
	bne _020f2afa
	mov r3, #1
	lsl r3, r3, #0xc
	b _020f2b08
_020f2afa:
	sub r0, r3, r2
	sub r1, r1, r2
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	blx func_01ff98e0
	add r3, r0, #0
_020f2b08:
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	ldr r1, [r4, #0x78]
	ldr r2, [r4, #0x7c]
	blx func_ov00_020d02bc
	mov r1, #2
	add r3, r0, #0
	lsl r1, r1, #0xa
	add r1, r3, r1
	mov r2, #0
	asr r1, r1, #0xc
	add r0, r4, #0
	neg r1, r1
	add r3, r2, #0
	str r2, [sp]
	blx func_ov00_020d00c4
	mov r0, #0x70
	ldrsh r3, [r4, r0]
	mov r0, #0x72
	ldrsh r2, [r4, r0]
	cmp r3, r2
	bne _020f2b3e
	mov r3, #0
	b _020f2b5a
_020f2b3e:
	mov r0, #0x74
	ldrsh r1, [r4, r0]
	cmp r3, r1
	bne _020f2b4c
	mov r3, #1
	lsl r3, r3, #0xc
	b _020f2b5a
_020f2b4c:
	sub r0, r3, r2
	sub r1, r1, r2
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	blx func_01ff98e0
	add r3, r0, #0
_020f2b5a:
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	ldr r1, [r4, #0x78]
	ldr r2, [r4, #0x7c]
	blx func_ov00_020d02bc
	mov r1, #2
	mov r2, #0
	add r3, r0, #0
	lsl r1, r1, #0xa
	add r1, r3, r1
	add r4, #0x18
	add r0, r4, #0
	asr r1, r1, #0xc
	add r3, r2, #0
	str r2, [sp]
	blx func_ov00_020d00c4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end func_ov03_020f2acc

	thumb_func_start func_ov03_020f2b84
func_ov03_020f2b84: ; 0x020f2b84
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x70
	ldrsh r2, [r0, r1]
	mov r1, #0x72
	str r0, [sp]
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _020f2b98
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020f2b98:
	ldr r4, [sp]
	mov r6, #0
_020f2b9c:
	add r0, r4, #0
	ldr r5, [r0]
	mov r1, #0
	ldrh r7, [r4, #0xa]
	ldr r5, [r5]
	add r2, r1, #0
	add r3, r1, #0
	blx r5
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	bl func_ov03_020f2bcc
	cmp r0, #0
	beq _020f2bbe
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020f2bbe:
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #2
	blt _020f2b9c
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f2b84

	thumb_func_start func_ov03_020f2bcc
func_ov03_020f2bcc: ; 0x020f2bcc
	push {r3, lr}
	add r3, r0, #0
	mov r0, #8
	tst r0, r2
	bne _020f2bda
	mov r0, #0
	pop {r3, pc}
_020f2bda:
	cmp r1, #0x53
	beq _020f2be4
	cmp r1, #0x54
	beq _020f2bf4
	b _020f2c0c
_020f2be4:
	bl func_ov03_020f9f1c
	ldr r0, _020f2c10 ; =data_ov00_020eec9c
	mov r1, #4
	blx func_ov00_020d77e4
	mov r0, #1
	pop {r3, pc}
_020f2bf4:
	add r0, r3, #0
	mov r1, #0
	add r0, #0x69
	strb r1, [r0]
	add r3, #0x30
	ldr r0, _020f2c14 ; =data_027e0c68
	ldr r2, _020f2c18 ; =0x00020008
	add r1, r3, #0
	blx func_02036ce4
	mov r0, #0
	pop {r3, pc}
_020f2c0c:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f2bcc
_020f2c10: .word data_ov00_020eec9c
_020f2c14: .word data_027e0c68
_020f2c18: .word 0x00020008

	arm_func_start func_ov03_020f2c1c
func_ov03_020f2c1c: ; 0x020f2c1c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203780c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f2c1c

	arm_func_start func_ov03_020f2c38
func_ov03_020f2c38: ; 0x020f2c38
	bx lr
	arm_func_end func_ov03_020f2c38

	arm_func_start func_ov03_020f2c3c
func_ov03_020f2c3c: ; 0x020f2c3c
	stmdb sp!, {r3, r4, r5, lr}
	ldrb ip, [sp, #0x10]
	mov r4, r0
	mov r0, r1
	str ip, [sp]
	ldr ip, [r0]
	mov r1, r4
	ldr ip, [ip, #0x10]
	mov r5, r2
	mov r4, r3
	blx ip
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f2c90 ; =data_ov00_020ee6f8
	mov r1, r5
	mov r2, r4
	mov r3, #0x23
	bl func_ov00_020d61b0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2c3c
_020f2c90: .word data_ov00_020ee6f8

	arm_func_start func_ov03_020f2c94
func_ov03_020f2c94: ; 0x020f2c94
	stmdb sp!, {r3, lr}
	mov lr, r0
	mov r0, r1
	ldr ip, [r0]
	mov r1, lr
	ldr ip, [ip, #0x14]
	blx ip
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, pc}
	ldr r0, _020f2cd8 ; =data_ov00_020ee6f8
	mov r1, #0x80
	mov r2, #0x60
	mov r3, #0x23
	bl func_ov00_020d61b0
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2c94
_020f2cd8: .word data_ov00_020ee6f8

	arm_func_start func_ov03_020f2cdc
func_ov03_020f2cdc: ; 0x020f2cdc
	bx lr
	arm_func_end func_ov03_020f2cdc

	arm_func_start func_ov03_020f2ce0
func_ov03_020f2ce0: ; 0x020f2ce0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f2ce0

	arm_func_start func_ov03_020f2cf4
func_ov03_020f2cf4: ; 0x020f2cf4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r0, _020f2d58 ; =data_027e0f64
	mov r4, r1
	ldr r0, [r0]
	mov r6, r2
	mov r5, r3
	bl func_ov00_0208b180
	ldrsh r3, [r0, #4]
	add r2, r0, #0x260
	add r1, r0, #0x1c
	str r3, [sp]
	ldr r0, [r0, #8]
	ldrb r3, [sp, #0x2c]
	stmib sp, {r0, r2}
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r4, #0
	ldr r2, [sp, #0x28]
	mov r0, r6
	mov r1, r5
	str r4, [sp, #0x14]
	bl func_01ffb7ec
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2cf4
_020f2d58: .word data_027e0f64

	arm_func_start func_ov03_020f2d5c
func_ov03_020f2d5c: ; 0x020f2d5c
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	arm_func_end func_ov03_020f2d5c

	arm_func_start func_ov03_020f2d68
func_ov03_020f2d68: ; 0x020f2d68
	stmdb sp!, {r3, lr}
	mov r3, r0
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldr r0, [r3, #4]
	cmp r0, #1
	ldmia sp!, {r3, pc}
	ldr r0, _020f2d98 ; =data_027e0de4
	ldr r2, _020f2d9c ; =func_ov03_020f2da0
	mov r1, #6
	bl func_ov00_0207bb1c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2d68
_020f2d98: .word data_027e0de4
_020f2d9c: .word func_ov03_020f2da0

	arm_func_start func_ov03_020f2da0
func_ov03_020f2da0: ; 0x020f2da0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov sl, r0
	ldrb r0, [sl, #0xa]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl func_01ffa8d4
	ldr r2, _020f2f8c ; =0x04000444
	mov r3, #0
	ldr r0, _020f2f90 ; =0x21230000
	str r3, [r2]
	str r0, [r2, #0x64]
	ldrh r1, [sl, #0xc]
	ldr r0, _020f2f94 ; =data_ov03_02100688
	orr r1, r1, #0x8000
	str r1, [r2, #0x7c]
	str r3, [r2, #0x80]
	ldrb r1, [sl, #0xa]
	str r0, [sp, #8]
	mov r0, r1, lsl #0x10
	orr r0, r0, #0xc0
	str r0, [r2, #0x60]
	ldr r0, [sl, #4]
	ldrh sb, [sl, #8]
	sub r0, r0, #1
	cmp sb, r0
	bhs _020f2f78
_020f2e10:
	ldr r0, _020f2f98 ; =0x04000500
	mov r1, #3
	str r1, [r0]
	mov r8, #0
	sub r4, r0, #0x74
	mov fp, r8
_020f2e28:
	mov r0, sl
	ldr r2, [r0]
	mov r1, sb
	ldr r2, [r2, #0x20]
	blx r2
	ldr ip, [r0, #4]
	ldr r6, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r5, [r0, #0x10]
	ldr r3, [sl, #0x10]
	add r0, ip, r6
	add r1, r3, r0
	ldr r2, [sl, #0x14]
	sub r0, ip, r6
	str r6, [sp, #0x14]
	add r6, r7, r5
	add r6, r2, r6
	str ip, [sp, #0xc]
	str r6, [sp, #0x2c]
	sub ip, r7, r5
	str r7, [sp, #0x10]
	str r5, [sp, #0x18]
	add r7, r3, r0
	add r6, r1, #0x800
	add r5, r2, ip
	mov r0, r6, asr #0xc
	str r3, [sp]
	str r2, [sp, #4]
	str r1, [sp, #0x28]
	str r8, [sp, #0x30]
	str r7, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r8, [sp, #0x24]
	bl func_ov05_0210e288
	ldr r1, [sp, #0x2c]
	mov r7, r0
	add r0, r1, #0x800
	mov r0, r0, asr #0xc
	bl func_ov05_0210e2a4
	ldr r1, [sp, #0x1c]
	mov r6, r0
	add r0, r1, #0x800
	mov r0, r0, asr #0xc
	bl func_ov05_0210e288
	mov r1, r5
	mov r5, r0
	add r0, r1, #0x800
	mov r0, r0, asr #0xc
	bl func_ov05_0210e2a4
	mov r2, r6, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r1, r7, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r2, r2, r1, lsr #16
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	str r2, [r4]
	mov r0, r5, lsl #0x10
	mov r1, r1, lsl #0x10
	str fp, [r4]
	orr r0, r1, r0, lsr #16
	str r0, [r4]
	str fp, [r4]
	ldr r0, [sl, #4]
	add sb, sb, #1
	cmp sb, r0
	bhs _020f2f5c
	mov r0, sl
	ldr r2, [r0]
	sub r1, sb, #1
	ldr r2, [r2, #0x20]
	blx r2
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldreq r0, [r0, #0x10]
	cmpeq r0, #0
	bne _020f2e28
_020f2f5c:
	ldr r0, _020f2f9c ; =0x04000504
	mov r1, #0
	str r1, [r0]
	ldr r0, [sl, #4]
	sub r0, r0, #1
	cmp sb, r0
	blo _020f2e10
_020f2f78:
	ldr r0, _020f2fa0 ; =0x04000448
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f2da0
_020f2f8c: .word 0x04000444
_020f2f90: .word 0x21230000
_020f2f94: .word data_ov03_02100688
_020f2f98: .word 0x04000500
_020f2f9c: .word 0x04000504
_020f2fa0: .word 0x04000448

	arm_func_start func_ov03_020f2fa4
func_ov03_020f2fa4: ; 0x020f2fa4
	bx lr
	arm_func_end func_ov03_020f2fa4

	arm_func_start func_ov03_020f2fa8
func_ov03_020f2fa8: ; 0x020f2fa8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r6, [r0]
	mov r5, r0
	ldr r6, [r6, #0x18]
	mov r4, r1
	mov r8, r2
	mov r7, r3
	blx r6
	ldr r1, [r5, #4]
	cmp r1, r0
	addhs sp, sp, #0xc
	movhs r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r3, [sp, #0x28]
	mov r6, r8, lsl #0xc
	mov lr, r7, lsl #0xc
	mov ip, #0
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	str r6, [sp]
	str lr, [sp, #4]
	str ip, [sp, #8]
	bl func_ov03_020f3064
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end func_ov03_020f2fa8

	arm_func_start func_ov03_020f3014
func_ov03_020f3014: ; 0x020f3014
	mov r0, #0
	bx lr
	arm_func_end func_ov03_020f3014

	arm_func_start func_ov03_020f301c
func_ov03_020f301c: ; 0x020f301c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, [r0]
	mov r7, r0
	ldr ip, [ip, #0x18]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	blx ip
	ldr r1, [r7, #4]
	cmp r1, r0
	movhs r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl func_ov03_020f3064
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov03_020f301c

	arm_func_start func_ov03_020f3064
func_ov03_020f3064: ; 0x020f3064
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	movs r5, r3
	mov r7, r0
	mov r6, r1
	mov r4, r2
	beq _020f30b8
	ldr r1, [r7, #4]
	cmp r1, #1
	blo _020f30b8
	ldr r2, [r0]
	sub r1, r1, #1
	ldr r2, [r2, #0x20]
	blx r2
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldreq r0, [r0, #0x10]
	cmpeq r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f30b8:
	mov r0, r7
	ldr r2, [r0]
	ldr r1, [r7, #4]
	ldr r2, [r2, #0x28]
	blx r2
	ldmia r4!, {r1, r2}
	mov r4, r0
	stmib r4, {r1, r2}
	cmp r5, #0
	bne _020f3198
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _020f3198
	mov r0, r7
	ldr r2, [r0]
	sub r1, r1, #1
	ldr r2, [r2, #0x20]
	blx r2
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldreq r0, [r0, #0x10]
	cmpeq r0, #0
	beq _020f3198
	mov r0, r7
	ldr r2, [r0]
	ldr r1, [r7, #4]
	ldr r2, [r2, #0x20]
	sub r1, r1, #1
	blx r2
	ldr r2, [r4, #8]
	ldr r1, [r0, #8]
	ldr r8, [r4, #4]
	sub r1, r2, r1
	ldr r2, [r0, #4]
	smull r3, r0, r1, r1
	sub r1, r8, r2
	smlal r3, r0, r1, r1
	mov r0, r0, lsl #0x2
	ldr r2, _020f3508 ; =0x040002b0
	mov r1, #1
	strh r1, [r2]
	mov r1, r3, lsl #0x2
	str r1, [r2, #8]
	orr r0, r0, r3, lsr #30
	str r0, [r2, #0xc]
_020f316c:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _020f316c
	ldr r1, _020f350c ; =0x040002b4
	ldr r0, [r6, #8]
	ldr r1, [r1]
	add r1, r1, #1
	cmp r0, r1, asr #1
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f3198:
	cmp r5, #0
	beq _020f31b0
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	b _020f34e0
_020f31b0:
	ldr r1, [r7, #4]
	cmp r1, #0
	bne _020f31d4
	ldr r1, [r6, #4]
	mov r0, #0
	mov r1, r1, asr #0x1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	b _020f34e0
_020f31d4:
	mov r0, r7
	ldr r2, [r0]
	sub r1, r1, #1
	ldr r2, [r2, #0x28]
	blx r2
	mov r5, r0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldreq r0, [r5, #0x10]
	cmpeq r0, #0
	bne _020f3218
	ldr r1, [r6, #4]
	mov r0, #0
	mov r1, r1, asr #0x1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	b _020f34e0
_020f3218:
	ldr r0, [r5, #4]
	ldmib r4, {r1, r8}
	sub r3, r1, r0
	rsb r0, r3, #0
	ldr r2, [r5, #8]
	smull r1, sl, r0, r0
	sub r2, r8, r2
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r8, [r4, #0xc]
	ldr r0, _020f3510 ; =0x04000280
	smlal r1, sl, r8, r8
	mov sb, #2
	strh sb, [r0]
	mov sb, #0
	str sb, [r0, #0x10]
	mov sb, #0x1000000
	str sb, [r0, #0x14]
	str r1, [r0, #0x18]
	mov r8, sl, lsl #0x2
	str sl, [r0, #0x1c]
	mov sb, #1
	strh sb, [r0, #0x30]
	mov sb, r1, lsl #0x2
	str sb, [r0, #0x38]
	orr r8, r8, r1, lsr #30
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r8, [r0, #0x3c]
_020f328c:
	ldrh r1, [r0, #0x30]
	tst r1, #0x8000
	bne _020f328c
	ldr r0, _020f350c ; =0x040002b4
	ldr sl, [r0]
	sub r1, r0, #0x34
_020f32a4:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020f32a4
	ldr fp, _020f3514 ; =0x040002a0
	ldr r1, [r4, #0xc]
	ldr sb, [fp]
	mov ip, sl, asr #0x1f
	umull r8, lr, sb, sl
	umull r3, r2, r8, r1
	mov r0, r1, asr #0x1f
	mla lr, sb, ip, lr
	ldr sb, [fp, #4]
	mla r2, r8, r0, r2
	mla lr, sb, sl, lr
	mla r2, lr, r1, r2
	adds r0, r3, #0
	adc r0, r2, #0x1000
	mov r0, r0, asr #0xd
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	umull r3, r2, r8, r1
	mov r0, r1, asr #0x1f
	mla r2, r8, r0, r2
	mla r2, lr, r1, r2
	adds r0, r3, #0
	adc r0, r2, #0x1000
	mov r0, r0, asr #0xd
	str r0, [r4, #0x10]
	ldr r1, [r6, #4]
	ldr r0, [r4, #0xc]
	mov r3, r1, asr #0x1
	smull r2, r1, r0, r3
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	smull r2, r1, r0, r3
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0x10]
	ldr r1, [r7, #4]
	cmp r1, #1
	bls _020f34e0
	mov r0, r7
	ldr r2, [r0]
	sub r1, r1, #2
	ldr r2, [r2, #0x20]
	blx r2
	ldmib r0, {r1, r3}
	ldmib r5, {r2, r4}
	sub r1, r2, r1
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r1, r1, r0
	sub r0, r4, r3
	add r0, r0, r2
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	cmpeq r0, #0
	bne _020f33b8
	sub r1, r1, r3
	sub r0, r0, r2
	str r1, [sp]
	str r0, [sp, #4]
_020f33b8:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	rsb r1, r1, #0
	smull r4, r3, r1, r1
	str r0, [r5, #0xc]
	str r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r2, _020f3510 ; =0x04000280
	smlal r4, r3, r0, r0
	mov r1, #2
	strh r1, [r2]
	mov r1, #0
	str r1, [r2, #0x10]
	mov r1, #0x1000000
	str r1, [r2, #0x14]
	str r4, [r2, #0x18]
	mov r0, r3, lsl #0x2
	str r3, [r2, #0x1c]
	mov r1, #1
	strh r1, [r2, #0x30]
	mov r1, r4, lsl #0x2
	str r1, [r2, #0x38]
	orr r0, r0, r4, lsr #30
	str r0, [r2, #0x3c]
_020f3418:
	ldrh r0, [r2, #0x30]
	tst r0, #0x8000
	bne _020f3418
	ldr r0, _020f350c ; =0x040002b4
	ldr r2, [r0]
	sub r1, r0, #0x34
_020f3430:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020f3430
	ldr ip, _020f3514 ; =0x040002a0
	ldr r4, [r5, #0xc]
	ldr fp, [ip]
	mov sl, r2, asr #0x1f
	umull r1, r0, fp, r2
	umull sb, r8, r1, r4
	mov r3, r4, asr #0x1f
	mla r0, fp, sl, r0
	ldr sl, [ip, #4]
	mla r8, r1, r3, r8
	mla r0, sl, r2, r0
	mla r8, r0, r4, r8
	adds r2, sb, #0
	adc r2, r8, #0x1000
	mov r2, r2, asr #0xd
	str r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	umull r8, r4, r1, r3
	mov r2, r3, asr #0x1f
	mla r4, r1, r2, r4
	mla r4, r0, r3, r4
	adds r0, r8, #0
	adc r0, r4, #0x1000
	mov r0, r0, asr #0xd
	str r0, [r5, #0x10]
	ldr r1, [r6, #4]
	ldr r0, [r5, #0xc]
	mov r3, r1, asr #0x1
	smull r2, r1, r0, r3
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	smull r2, r1, r0, r3
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r5, #0x10]
_020f34e0:
	ldrb r1, [r6, #0xe]
	mov r0, #1
	strb r1, [r7, #0xa]
	ldrh r1, [r6, #0xc]
	strh r1, [r7, #0xc]
	ldr r1, [r7, #4]
	add r1, r1, #1
	str r1, [r7, #4]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f3064
_020f3508: .word 0x040002b0
_020f350c: .word 0x040002b4
_020f3510: .word 0x04000280
_020f3514: .word 0x040002a0

	arm_func_start func_ov03_020f3518
func_ov03_020f3518: ; 0x020f3518
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f3518

	arm_func_start func_ov03_020f352c
func_ov03_020f352c: ; 0x020f352c
	bx lr
	arm_func_end func_ov03_020f352c

	arm_func_start func_ov03_020f3530
func_ov03_020f3530: ; 0x020f3530
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f3530

	arm_func_start func_ov03_020f3544
func_ov03_020f3544: ; 0x020f3544
	bx lr
	arm_func_end func_ov03_020f3544

	thumb_func_start func_ov03_020f3548
func_ov03_020f3548: ; 0x020f3548
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	ldr r6, _020f3608 ; =data_ov00_020eb218
	cmp r0, #0
	beq _020f356a
	mov r2, #1
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0xc
	blx func_02007938
	add sp, #0x14
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_020f356a:
	ldrh r0, [r5, #0x14]
	bl func_020400f4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r0, [r5, #0x16]
	ldr r1, _020f360c ; =0x0003f500
	lsl r2, r2, #0xc
	mul r1, r0
	mov r0, #0xa
	lsl r0, r0, #0xa
	add r1, r1, r0
	lsl r0, r4, #0xc
	add r0, r1, r0
	add r1, r6, #0
	bl func_02040464
	cmp r0, #0
	bne _020f35b2
	mov r2, #1
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0xc
	blx func_02007938
	bl func_020400c0
	str r0, [r5, #0x10]
	mov r0, #1
	strb r0, [r5, #0xf]
_020f35b2:
	lsr r0, r4, #5
	lsl r1, r0, #2
	mov r3, #1
	mov r0, #0x1f
	add r2, r4, #0
	and r2, r0
	add r0, r3, #0
	lsl r0, r2
	ldr r2, [r5, r1]
	tst r2, r0
	bne _020f35fc
	ldr r2, [r5, r1]
	orr r0, r2
	ldr r2, _020f3610 ; =0x00000ffe
	str r0, [r5, r1]
	ldrh r0, [r6, r2]
	cmp r0, #0
	beq _020f35fc
	mov r0, #0
	add r1, r6, #0
	add r2, r2, #2
	blx func_02007938
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _020f35fc
	add r0, r5, #0
	add r1, r4, #0
	bl func_ov03_020f3614
	cmp r0, #0
	bne _020f35fc
	bl func_020400c0
	str r0, [r5, #0x10]
	mov r0, #2
	strb r0, [r5, #0xf]
_020f35fc:
	ldrh r0, [r5, #0x14]
	bl func_02040100
	add r0, r6, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3548
_020f3608: .word data_ov00_020eb218
_020f360c: .word 0x0003f500
_020f3610: .word 0x00000ffe

	thumb_func_start func_ov03_020f3614
func_ov03_020f3614: ; 0x020f3614
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	str r3, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	ldrh r5, [r4, #0x16]
	ldr r4, _020f3654 ; =0x0003f500
	ldr r0, _020f3658 ; =data_ov03_020ff5a0
	add r6, r5, #0
	mul r6, r4
	ldr r4, _020f365c ; =0x000037fe
	lsl r1, r1, #0xc
	add r4, r6, r4
	add r1, r4, r1
	bl func_02040464
	cmp r0, #0
	beq _020f364c
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_020f364c:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
	thumb_func_end func_ov03_020f3614
_020f3654: .word 0x0003f500
_020f3658: .word data_ov03_020ff5a0
_020f365c: .word 0x000037fe

	thumb_func_start func_ov03_020f3660
func_ov03_020f3660: ; 0x020f3660
	thumb_func_end func_ov03_020f3660
_020f3660:
	.byte 0xf8
data_ov03_020f3661: ; 0x020f3661
	.byte 0xb5, 0x86, 0xb0, 0x07, 0x1c, 0x38, 0x48, 0x80, 0x8a, 0x4c, 0xf7, 0x43, 0xfd, 0x00, 0x20
	.byte 0x00, 0x90, 0x01, 0x90, 0x06, 0x21, 0x02, 0x91, 0x01, 0x22, 0x03, 0x92, 0x05, 0xa9, 0x03, 0x1c
	.byte 0x04, 0x90, 0x4c, 0xf7, 0xef, 0xfe, 0x00, 0x28, 0x04, 0xd1, 0x4c, 0xf7, 0x19, 0xfd, 0x2e, 0x49
	.byte 0x08, 0x61, 0x47, 0xe0
_020f3694:
	mov r0, #2
	lsl r0, r0, #0x1e
	tst r0, r7
	beq _020f36a0
	mov r2, #1
	b _020f36a2
_020f36a0:
	mov r2, #0
_020f36a2:
	ldr r0, _020f374c ; =0x00007fff
	lsr r1, r7, #0x10
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r2, #0
	bne _020f36c4
	ldr r0, _020f3748 ; =data_027e0d54
	bl func_ov03_020f3614
	cmp r0, #0
	bne _020f3724
	bl func_020400c0
	ldr r1, _020f3748 ; =data_027e0d54
	str r0, [r1, #0x10]
	b _020f3724
_020f36c4:
	ldr r0, _020f3748 ; =data_027e0d54
	ldr r6, _020f3750 ; =data_ov00_020eb218
	ldrh r2, [r0, #0x16]
	ldr r0, _020f3754 ; =0x0003f500
	mov r5, #0
	add r3, r2, #0
	mul r3, r0
	mov r0, #0xa
	lsl r0, r0, #0xa
	add r2, r3, r0
	lsl r0, r1, #0xc
	add r4, r2, r0
	lsl r0, r7, #0x10
	lsr r7, r0, #0x10
_020f36e0:
	mov r0, #1
	lsl r0, r5
	tst r0, r7
	beq _020f3716
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	mov r2, #1
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #8
	mov r3, #0
	bl func_02040464
	cmp r0, #0
	bne _020f3716
	bl func_020400c0
	ldr r1, _020f3748 ; =data_027e0d54
	str r0, [r1, #0x10]
	b _020f3724
_020f3716:
	mov r0, #1
	lsl r0, r0, #8
	add r5, r5, #1
	add r6, r6, r0
	add r4, r4, r0
	cmp r5, #0x10
	blo _020f36e0
_020f3724:
	ldr r0, _020f3748 ; =data_027e0d54
	ldrh r0, [r0, #0x14]
	bl func_02040100
	ldr r0, _020f3748 ; =data_027e0d54
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020f373a
	ldr r0, _020f3748 ; =data_027e0d54
	mov r1, #2
	strb r1, [r0, #0xf]
_020f373a:
	ldr r0, _020f3748 ; =data_027e0d54
	mov r1, #0
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020f3748: .word data_027e0d54
_020f374c: .word 0x00007fff
_020f3750: .word data_ov00_020eb218
_020f3754: .word 0x0003f500

	thumb_func_start func_ov03_020f3758
func_ov03_020f3758: ; 0x020f3758
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #4]
	str r0, [sp]
	str r3, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, _020f385c ; =0x00000ffe
	ldr r0, _020f3860 ; =data_ov00_020eb218
	add r6, r1, #0
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _020f3798
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020f377e
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020f377e:
	ldr r0, _020f3864 ; =0x0000ffff
	ldr r1, _020f3860 ; =data_ov00_020eb218
	str r0, [sp, #0x10]
	add r0, r6, #0
	sub r2, r2, #2
	blx func_02007984
	mov r1, #1
	ldr r0, _020f3860 ; =data_ov00_020eb218
	lsl r1, r1, #0xc
	bl func_0202f134
	b _020f3818
_020f3798:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020f37a6
	ldr r1, [sp, #0x10]
	ldr r0, _020f3860 ; =data_ov00_020eb218
	strh r1, [r0, r2]
	b _020f3818
_020f37a6:
	ldr r0, [sp, #0x10]
	ldr r7, _020f3860 ; =data_ov00_020eb218
	sub r4, r2, #2
	str r0, [sp, #0xc]
_020f37ae:
	mov r0, #1
	lsl r0, r0, #8
	cmp r4, r0
	blo _020f37ba
	add r5, r0, #0
	b _020f37bc
_020f37ba:
	add r5, r4, #0
_020f37bc:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	blx func_0204366c
	cmp r0, #0
	beq _020f37e4
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r1, r0
	ldr r0, [sp, #0x10]
	add r2, r5, #0
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	blx func_02007984
_020f37e4:
	ldr r0, [sp, #0xc]
	add r7, r7, r5
	add r0, r0, #1
	add r6, r6, r5
	sub r4, r4, r5
	str r0, [sp, #0xc]
	cmp r0, #0x10
	blt _020f37ae
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _020f3800
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020f3800:
	mov r1, #1
	ldr r0, _020f3860 ; =data_ov00_020eb218
	lsl r1, r1, #0xc
	bl func_0202f134
	mov r1, #2
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_020f3818:
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020f3826
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020f3826:
	ldr r0, [sp, #4]
	lsl r1, r0, #0x10
	ldr r0, [sp, #0x10]
	add r4, r0, #0
	ldr r0, [sp, #8]
	orr r4, r1
	cmp r0, #0
	beq _020f383c
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r4, r0
_020f383c:
	ldr r0, [sp]
	blx func_ov00_0207a2d8
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	ldr r0, _020f3868 ; =data_027e08e4
	ldr r2, _020f386c ; =func_ov03_020f3660
	mov r1, #0
	add r3, r4, #0
	bl func_0202f360
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3758
_020f385c: .word 0x00000ffe
_020f3860: .word data_ov00_020eb218
_020f3864: .word 0x0000ffff
_020f3868: .word data_027e08e4
_020f386c: .word func_ov03_020f3660

	thumb_func_start func_ov03_020f3870
func_ov03_020f3870: ; 0x020f3870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, r4
	beq _020f388c
	cmp r4, #2
	bne _020f388a
	ldr r0, _020f3890 ; =data_027e0e58
	mov r1, #2
	ldr r0, [r0]
	bl func_ov00_0207c5b0
_020f388a:
	str r4, [r5, #4]
_020f388c:
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f3870
_020f3890: .word data_027e0e58

	thumb_func_start func_ov03_020f3894
func_ov03_020f3894: ; 0x020f3894
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _020f390c ; =data_027e0900
	ldr r2, _020f3910 ; =0x00000004
	mov r1, #2
	bl func_0202ff64
	add r0, r4, #0
	mov r1, #0
	bl func_ov03_020f3870
	ldr r0, _020f3914 ; =data_027e0d54
	mov r1, #0
	bl func_ov09_02114554
	mov r2, #0
	mov r0, #0x47
	str r0, [sp]
	sub r0, r2, #2
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r0, sp, #0
	strh r2, [r0, #0x10]
	mov r1, #0xff
	strb r1, [r0, #0x12]
	strb r2, [r0, #0x13]
	strb r2, [r0, #0x14]
	strb r2, [r0, #0x15]
	ldr r2, _020f3918 ; =data_ov00_020eab04
	ldr r1, [r2]
	str r1, [sp]
	ldrb r1, [r2, #4]
	strb r1, [r0, #0x12]
	ldrb r1, [r2, #5]
	mov r2, #1
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl func_ov00_0207b55c
	add r0, r4, #0
	mov r1, #1
	bl func_ov04_02100d90
	bl func_ov04_02104ba4
	add r0, r4, #0
	mov r1, #1
	bl func_ov04_02100c6c
	ldr r0, _020f390c ; =data_027e0900
	ldr r2, _020f391c ; =0x00000005
	mov r1, #2
	bl func_0202ff64
	add sp, #0x18
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f3894
_020f390c: .word data_027e0900
_020f3910: .word 0x00000004
_020f3914: .word data_027e0d54
_020f3918: .word data_ov00_020eab04
_020f391c: .word 0x00000005

	thumb_func_start func_ov03_020f3920
func_ov03_020f3920: ; 0x020f3920
	ldrh r3, [r1]
	ldr r2, [r0, #8]
	lsl r1, r3, #0x10
	lsr r1, r1, #0x1b
	cmp r2, r1
	bne _020f3944
	lsl r1, r3, #0x15
	ldr r2, [r0, #4]
	lsr r1, r1, #0x1c
	cmp r2, r1
	bne _020f3944
	ldr r1, [r0]
	lsl r0, r3, #0x19
	lsr r0, r0, #0x19
	cmp r1, r0
	bne _020f3944
	mov r0, #1
	bx lr
_020f3944:
	mov r0, #0
	bx lr
	thumb_func_end func_ov03_020f3920

	thumb_func_start func_ov03_020f3948
func_ov03_020f3948: ; 0x020f3948
	push {r3, lr}
	sub sp, #0x10
	ldrh r1, [r0]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	str r1, [sp]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1c
	str r1, [sp, #4]
	ldrh r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1b
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl func_02042b40
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3948

	thumb_func_start func_ov03_020f3974
func_ov03_020f3974: ; 0x020f3974
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _020f3b30 ; =data_ov00_020e9ec0
	add r1, r5, #0
	mov r2, #0x48
	blx func_02007984
	add r0, r5, #0
	add r7, r5, #0
	mov r6, #0
	add r0, #0x48
	strh r6, [r0]
	sub r0, r6, #1
	str r0, [r5, #0x4c]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x48
	add r7, #0xc
	str r0, [sp, #8]
_020f399e:
	add r0, r4, #0
	add r1, r7, #0
	bl func_ov03_020f3920
	cmp r0, #0
	beq _020f39b8
	ldr r0, [sp, #8]
	ldrh r1, [r0]
	mov r0, #1
	lsl r0, r6
	orr r1, r0
	ldr r0, [sp, #8]
	strh r1, [r0]
_020f39b8:
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #0xa
	blt _020f399e
	add r0, r5, #0
	add r0, #0x48
	ldrh r1, [r0]
	mov r0, #8
	tst r0, r1
	beq _020f39d0
	mov r0, #1
	b _020f39d2
_020f39d0:
	mov r0, #0
_020f39d2:
	cmp r0, #0
	bne _020f3a02
	add r0, r5, #4
	bl func_ov03_020fab64
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	add r2, r4, #0
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r5, #4]
	ldrb r0, [r1, #6]
	strb r0, [r5, #6]
	ldrb r0, [r1, #7]
	mov r1, #3
	strb r0, [r5, #7]
	add r0, r5, #0
	bl func_ov03_020f3bbc
_020f3a02:
	ldrh r0, [r5, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1b
	bne _020f3a0e
	mov r0, #1
	b _020f3a30
_020f3a0e:
	add r0, r5, #0
	add r0, #0x20
	bl func_ov03_020f3948
	add r6, r0, #0
	add r0, r4, #0
	bl func_02042b40
	cmp r0, r6
	blt _020f3a2a
	ldr r1, [r4, #0xc]
	sub r0, r0, r1
	cmp r6, r0
	bge _020f3a2e
_020f3a2a:
	mov r0, #1
	b _020f3a30
_020f3a2e:
	mov r0, #0
_020f3a30:
	cmp r0, #0
	beq _020f3a44
	blx func_ov03_020f3cc8
	str r0, [r5]
	add r0, r5, #0
	mov r1, #0xa
	add r2, r4, #0
	bl func_ov03_020f3b6c
_020f3a44:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x22
	bl func_ov03_020f3920
	cmp r0, #0
	bne _020f3a88
	ldr r3, _020f3b34 ; =data_027e0764
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	ldmia r3!, {r2, r3}
	blx func_02002bf4
	ldr r3, _020f3b34 ; =data_027e0764
	ldr r6, [r3, #0x10]
	ldr r2, [r3, #0x14]
	add r0, r6, r0
	adc r2, r1
	str r0, [r3]
	mov r1, #0
	lsr r0, r2, #0x1c
	lsl r1, r1, #4
	str r2, [r3, #4]
	orr r1, r0
	bne _020f3a7a
	mov r0, #1
	b _020f3a7c
_020f3a7a:
	mov r0, #0
_020f3a7c:
	strb r0, [r5, #0xa]
	add r0, r5, #0
	mov r1, #0xb
	add r2, r4, #0
	bl func_ov03_020f3b6c
_020f3a88:
	ldrh r0, [r5, #0x24]
	add r2, r5, #0
	add r2, #0x24
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1b
	beq _020f3aa0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl func_ov03_020f3b38
	b _020f3ab6
_020f3aa0:
	ldrh r0, [r5, #0x26]
	add r2, r5, #0
	add r2, #0x26
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1b
	beq _020f3ab6
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl func_ov03_020f3b38
_020f3ab6:
	add r7, r5, #0
	add r7, #0xc
	mov r6, #0xe
	add r7, #0x1c
_020f3abe:
	add r0, r4, #0
	add r1, r7, #0
	bl func_ov03_020f3920
	cmp r0, #0
	bne _020f3ae8
	add r0, r6, #0
	str r0, [sp, #4]
	sub r0, #0xe
	str r0, [sp, #4]
	blx func_ov03_020f55e4
	ldr r1, [sp, #4]
	add r2, r4, #0
	add r1, r5, r1
	add r1, #0x40
	strb r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	bl func_ov03_020f3b6c
_020f3ae8:
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #0x11
	blt _020f3abe
	add r7, r5, #0
	add r7, #0xc
	mov r6, #0x11
	add r7, #0x22
_020f3af8:
	add r0, r4, #0
	add r1, r7, #0
	bl func_ov03_020f3920
	cmp r0, #0
	bne _020f3b22
	add r0, r6, #0
	str r0, [sp]
	sub r0, #0x11
	str r0, [sp]
	blx func_ov03_020f5400
	ldr r1, [sp]
	add r2, r4, #0
	add r1, r5, r1
	add r1, #0x43
	strb r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	bl func_ov03_020f3b6c
_020f3b22:
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #0x13
	blt _020f3af8
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3974
_020f3b30: .word data_ov00_020e9ec0
_020f3b34: .word data_027e0764

	thumb_func_start func_ov03_020f3b38
func_ov03_020f3b38: ; 0x020f3b38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	add r7, r3, #0
	bl func_ov03_020f3948
	add r4, r0, #0
	add r0, r6, #0
	bl func_02042b40
	cmp r0, r4
	bge _020f3b5c
	add r0, r5, #0
	add r1, r6, #0
	bl func_ov03_020f3c08
	pop {r3, r4, r5, r6, r7, pc}
_020f3b5c:
	sub r0, r0, r4
	str r0, [r5, #0x4c]
	cmp r7, #0
	beq _020f3b6a
	ldr r0, [r5, #0x4c]
	add r0, r0, #1
	str r0, [r5, #0x4c]
_020f3b6a:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end func_ov03_020f3b38

	thumb_func_start func_ov03_020f3b6c
func_ov03_020f3b6c: ; 0x020f3b6c
	push {r4, r5}
	add r0, #0xc
	lsl r3, r1, #1
	ldrh r1, [r0, r3]
	mov r4, #0x7f
	bic r1, r4
	ldr r4, [r2]
	lsl r4, r4, #0x10
	lsr r5, r4, #0x10
	mov r4, #0x7f
	and r4, r5
	orr r1, r4
	strh r1, [r0, r3]
	ldrh r4, [r0, r3]
	ldr r1, _020f3bb4 ; =0xfffff87f
	and r1, r4
	ldr r4, [r2, #4]
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x15
	orr r1, r4
	strh r1, [r0, r3]
	ldr r2, [r2, #8]
	ldrh r4, [r0, r3]
	lsl r2, r2, #0x10
	ldr r1, _020f3bb8 ; =0xffff07ff
	lsr r2, r2, #0x10
	lsl r2, r2, #0x1b
	and r1, r4
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r4, r5}
	bx lr
	nop
	thumb_func_end func_ov03_020f3b6c
_020f3bb4: .word 0xfffff87f
_020f3bb8: .word 0xffff07ff

	thumb_func_start func_ov03_020f3bbc
func_ov03_020f3bbc: ; 0x020f3bbc
	push {r4, lr}
	add r3, r0, #0
	add r3, #0x48
	ldrh r4, [r3]
	mov r3, #1
	lsl r3, r1
	orr r4, r3
	add r3, r0, #0
	add r3, #0x48
	strh r4, [r3]
	bl func_ov03_020f3b6c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3bbc

	thumb_func_start func_ov03_020f3bd8
func_ov03_020f3bd8: ; 0x020f3bd8
	cmp r1, #0
	ble _020f3bec
	ldrb r2, [r0, #7]
	add r1, r2, r1
	cmp r1, #0xff
	ble _020f3bea
	mov r1, #0xff
	strb r1, [r0, #7]
	bx lr
_020f3bea:
	strb r1, [r0, #7]
_020f3bec:
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f3bd8

	thumb_func_start func_ov03_020f3bf0
func_ov03_020f3bf0: ; 0x020f3bf0
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _020f3c04
	mov r1, #0
	str r1, [r0, #0x4c]
	mov r1, #0xc
	bl func_ov03_020f3b6c
_020f3c04:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3bf0

	thumb_func_start func_ov03_020f3c08
func_ov03_020f3c08: ; 0x020f3c08
	push {r3, lr}
	add r2, r1, #0
	mov r1, #0
	ldr r3, [r0, #0x4c]
	mvn r1, r1
	cmp r3, r1
	bne _020f3c24
	mov r1, #1
	str r1, [r0, #0x4c]
	mov r1, #0
	strh r1, [r0, #0x24]
	mov r1, #0xd
	bl func_ov03_020f3b6c
_020f3c24:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3c08

	thumb_func_start func_ov03_020f3c28
func_ov03_020f3c28: ; 0x020f3c28
	push {r3, lr}
	mov r3, #0x1a
	cmp r1, #0x7f
	bgt _020f3c4e
	cmp r1, #0x7d
	blt _020f3c40
	beq _020f3c64
	cmp r1, #0x7e
	beq _020f3c68
	cmp r1, #0x7f
	beq _020f3c6c
	b _020f3c76
_020f3c40:
	cmp r1, #0x2c
	bgt _020f3c48
	beq _020f3c5c
	b _020f3c76
_020f3c48:
	cmp r1, #0x58
	beq _020f3c60
	b _020f3c76
_020f3c4e:
	cmp r1, #0x99
	bgt _020f3c56
	beq _020f3c70
	b _020f3c76
_020f3c56:
	cmp r1, #0x9c
	beq _020f3c74
	b _020f3c76
_020f3c5c:
	mov r3, #0x13
	b _020f3c76
_020f3c60:
	mov r3, #0x14
	b _020f3c76
_020f3c64:
	mov r3, #0x15
	b _020f3c76
_020f3c68:
	mov r3, #0x16
	b _020f3c76
_020f3c6c:
	mov r3, #0x17
	b _020f3c76
_020f3c70:
	mov r3, #0x18
	b _020f3c76
_020f3c74:
	mov r3, #0x19
_020f3c76:
	cmp r3, #0x1a
	beq _020f3c80
	add r1, r3, #0
	bl func_ov03_020f3b6c
_020f3c80:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3c28

	thumb_func_start func_ov03_020f3c84
func_ov03_020f3c84: ; 0x020f3c84
	add r1, #0x13
	add r0, #0xc
	lsl r1, r1, #1
	ldrh r3, [r0, r1]
	cmp r3, #0
	beq _020f3cc2
	lsl r0, r3, #0x19
	ldr r1, [r2]
	lsr r0, r0, #0x19
	cmp r0, r1
	bhs _020f3c9e
	mov r0, #1
	bx lr
_020f3c9e:
	cmp r0, r1
	bne _020f3cc2
	lsl r0, r3, #0x15
	ldr r1, [r2, #4]
	lsr r0, r0, #0x1c
	cmp r0, r1
	bhs _020f3cb0
	mov r0, #1
	bx lr
_020f3cb0:
	cmp r0, r1
	bne _020f3cc2
	lsl r0, r3, #0x10
	lsr r1, r0, #0x1b
	ldr r0, [r2, #8]
	cmp r1, r0
	bhs _020f3cc2
	mov r0, #1
	bx lr
_020f3cc2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f3c84

	arm_func_start func_ov03_020f3cc8
func_ov03_020f3cc8: ; 0x020f3cc8
	mov r0, #0
	bx lr
	arm_func_end func_ov03_020f3cc8

	arm_func_start func_ov03_020f3cd0
func_ov03_020f3cd0: ; 0x020f3cd0
	stmdb sp!, {r3, lr}
	cmp r0, #2
	bne _020f3d4c
	ldr r0, _020f3d54 ; =data_027e0f74
	mov r1, #0x2b
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	beq _020f3d0c
	ldr r0, _020f3d54 ; =data_027e0f74
	mov r1, #0xa7
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	bne _020f3d14
_020f3d0c:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020f3d14:
	ldr r0, _020f3d54 ; =data_027e0f74
	mov r1, #0xb4
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	beq _020f3d4c
	ldr r0, _020f3d58 ; =data_027e0d38
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	add r0, r0, #0x1c
	bl func_ov00_020a5e9c
	cmp r0, #8
	movne r0, #0
	ldmia sp!, {r3, pc}
_020f3d4c:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f3cd0
_020f3d54: .word data_027e0f74
_020f3d58: .word data_027e0d38

	thumb_func_start func_ov03_020f3d5c
func_ov03_020f3d5c: ; 0x020f3d5c
	ldr r0, [r0, #0x24]
	add r0, #0x48
	ldrh r3, [r0]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	add r1, r3, #0
	tst r1, r2
	bne _020f3d70
	mov r0, #0
_020f3d70:
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f3d5c

	thumb_func_start func_ov03_020f3d74
func_ov03_020f3d74: ; 0x020f3d74
	ldr r3, _020f3d7c ; =func_ov03_020f3bbc
	add r2, r0, #0
	ldr r0, [r2, #0x24]
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f3d74
_020f3d7c: .word func_ov03_020f3bbc

	thumb_func_start func_ov03_020f3d80
func_ov03_020f3d80: ; 0x020f3d80
	ldr r3, _020f3d88 ; =func_ov03_020f3bd8
	ldr r0, [r0, #0x24]
	bx r3
	nop
	thumb_func_end func_ov03_020f3d80
_020f3d88: .word func_ov03_020f3bd8

	thumb_func_start func_ov03_020f3d8c
func_ov03_020f3d8c: ; 0x020f3d8c
	ldr r0, [r0, #0x24]
	strh r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f3d8c

	thumb_func_start func_ov03_020f3d94
func_ov03_020f3d94: ; 0x020f3d94
	ldr r0, [r0, #0x24]
	strb r1, [r0, #0xb]
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f3d94

	thumb_func_start func_ov03_020f3d9c
func_ov03_020f3d9c: ; 0x020f3d9c
	ldr r0, [r0, #0x24]
	ldr r0, [r0, #0x4c]
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f3d9c

	thumb_func_start func_ov03_020f3da4
func_ov03_020f3da4: ; 0x020f3da4
	ldr r3, _020f3dac ; =func_ov03_020f3bf0
	add r1, r0, #0
	ldr r0, [r1, #0x24]
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f3da4
_020f3dac: .word func_ov03_020f3bf0

	thumb_func_start func_ov03_020f3db0
func_ov03_020f3db0: ; 0x020f3db0
	ldr r3, _020f3db8 ; =func_ov03_020f3c08
	add r1, r0, #0
	ldr r0, [r1, #0x24]
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f3db0
_020f3db8: .word func_ov03_020f3c08

	thumb_func_start func_ov03_020f3dbc
func_ov03_020f3dbc: ; 0x020f3dbc
	ldr r3, _020f3dc4 ; =func_ov03_020f3c84
	add r2, r0, #0
	ldr r0, [r2, #0x24]
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f3dbc
_020f3dc4: .word func_ov03_020f3c84

	thumb_func_start func_ov03_020f3dc8
func_ov03_020f3dc8: ; 0x020f3dc8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f3de4 ; =data_ov00_020e9f08
	add r1, r4, #0
	mov r2, #8
	blx func_020078d8
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0xc]
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f3dc8
_020f3de4: .word data_ov00_020e9f08

	thumb_func_start func_ov03_020f3de8
func_ov03_020f3de8: ; 0x020f3de8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _020f3dfe
	add r0, r4, #0
	bl func_ov03_020f4178
	add r0, r4, #0
	blx func_0202ea0c
_020f3dfe:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3de8

	thumb_func_start func_ov03_020f3e04
func_ov03_020f3e04: ; 0x020f3e04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _020f3e64 ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	ldr r2, _020f3e68 ; =data_ov03_020ff5a4
	mov r4, #0
_020f3e1a:
	ldr r1, [r2, #4]
	cmp r0, r1
	bne _020f3e58
	cmp r4, #2
	bne _020f3e2e
	mov r1, #1
	ldr r0, _020f3e6c ; =data_027e0900
	lsl r1, r1, #0xe
	bl func_ov03_020faa64
_020f3e2e:
	ldr r1, _020f3e70 ; =data_027e0ce0
	mov r0, #0x50
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f3e50
	mov r2, #0x1c
	add r3, r4, #0
	mul r3, r2
	ldr r2, _020f3e68 ; =data_ov03_020ff5a4
	add r1, r4, #0
	add r2, r2, r3
	ldrb r2, [r2, #0x14]
	bl func_ov03_020f4110
_020f3e50:
	str r0, [r5, #8]
	mov r0, #0
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_020f3e58:
	add r4, r4, #1
	add r2, #0x1c
	cmp r4, #4
	blt _020f3e1a
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f3e04
_020f3e64: .word data_027e0d38
_020f3e68: .word data_ov03_020ff5a4
_020f3e6c: .word data_027e0900
_020f3e70: .word data_027e0ce0

	thumb_func_start func_ov03_020f3e74
func_ov03_020f3e74: ; 0x020f3e74
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _020f3e90
	beq _020f3e8c
	add r0, r5, #0
	bl func_ov03_020f4178
	add r0, r5, #0
	blx func_0202ea0c
_020f3e8c:
	mov r0, #0
	str r0, [r4, #8]
_020f3e90:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3e74

	thumb_func_start func_ov03_020f3e94
func_ov03_020f3e94: ; 0x020f3e94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #8]
	add r5, r1, #0
	cmp r0, #0
	bne _020f3f56
	mov r0, #1
	strb r0, [r7, #0xc]
	ldr r0, _020f3f5c ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	ldr r2, _020f3f60 ; =data_ov03_020ff5a4
	mov r4, #0
_020f3eb4:
	ldr r1, [r2, #8]
	cmp r0, r1
	bne _020f3ee6
	ldr r1, _020f3f64 ; =data_027e0ce0
	mov r0, #0x50
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f3edc
	mov r2, #0x1c
	add r3, r4, #0
	mul r3, r2
	ldr r2, _020f3f60 ; =data_ov03_020ff5a4
	add r1, r4, #0
	add r2, r2, r3
	ldrb r2, [r2, #0x14]
	bl func_ov03_020f4110
_020f3edc:
	str r0, [r7, #8]
	mov r0, #0
	add sp, #0xc
	strb r0, [r7, #0xc]
	pop {r4, r5, r6, r7, pc}
_020f3ee6:
	add r4, r4, #1
	add r2, #0x1c
	cmp r4, #4
	blt _020f3eb4
	add r0, sp, #8
	mov r1, #0
	mov r2, #4
	blx func_02007a44
	add r0, sp, #0
	add r1, r5, #0
	blx func_ov00_020d1594
	ldr r4, _020f3f60 ; =data_ov03_020ff5a4
	mov r6, #0
	add r5, sp, #8
_020f3f06:
	ldr r1, [r4, #0xc]
	ldr r0, _020f3f68 ; =0x4e554c4c
	cmp r1, r0
	beq _020f3f16
	add r0, sp, #0
	blx func_ov00_020d15e0
	strb r0, [r5]
_020f3f16:
	add r6, r6, #1
	add r4, #0x1c
	add r5, r5, #1
	cmp r6, #4
	blt _020f3f06
	add r0, sp, #0
	blx func_ov00_020d15c0
	mov r4, #0
	add r1, sp, #8
_020f3f2a:
	ldrb r0, [r1]
	cmp r0, #0
	beq _020f3f4e
	ldr r1, _020f3f64 ; =data_027e0ce0
	mov r0, #0x50
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f3f48
	add r1, r4, #0
	mov r2, #0
	bl func_ov03_020f4110
_020f3f48:
	add sp, #0xc
	str r0, [r7, #8]
	pop {r4, r5, r6, r7, pc}
_020f3f4e:
	add r4, r4, #1
	add r1, r1, #1
	cmp r4, #4
	blt _020f3f2a
_020f3f56:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
	thumb_func_end func_ov03_020f3e94
_020f3f5c: .word data_027e0d38
_020f3f60: .word data_ov03_020ff5a4
_020f3f64: .word data_027e0ce0
_020f3f68: .word 0x4e554c4c

	thumb_func_start func_ov03_020f3f6c
func_ov03_020f3f6c: ; 0x020f3f6c
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _020f3f90
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _020f3f90
	cmp r4, #0
	beq _020f3f8c
	add r0, r4, #0
	bl func_ov03_020f4178
	add r0, r4, #0
	blx func_0202ea0c
_020f3f8c:
	mov r0, #0
	str r0, [r5, #8]
_020f3f90:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f3f6c

	arm_func_start func_ov03_020f3f94
func_ov03_020f3f94: ; 0x020f3f94
	ldr r1, [r0, #8]
	mov r0, #0
	cmp r1, #0
	ldrne r2, [r1, #0x40]
	subne r1, r0, #1
	cmpne r2, r1
	movne r0, #1
	bx lr
	arm_func_end func_ov03_020f3f94

	arm_func_start func_ov03_020f3fb4
func_ov03_020f3fb4: ; 0x020f3fb4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl func_ov03_020f3f94
	cmp r0, #0
	beq _020f3fec
	ldr r0, [r5, #8]
	ldr r1, _020f3ff4 ; =data_ov03_020ff5a4
	ldr r2, [r0, #0x40]
	mov r0, #0x1c
	mla r0, r2, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	movne r4, #1
_020f3fec:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f3fb4
_020f3ff4: .word data_ov03_020ff5a4

	arm_func_start func_ov03_020f3ff8
func_ov03_020f3ff8: ; 0x020f3ff8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl func_ov03_020f3f94
	cmp r0, #0
	beq _020f4030
	ldr r0, [r5, #8]
	ldr r1, _020f4038 ; =data_ov03_020ff5a4
	ldr r2, [r0, #0x40]
	mov r0, #0x1c
	mla r0, r2, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	moveq r4, #1
_020f4030:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f3ff8
_020f4038: .word data_ov03_020ff5a4

	thumb_func_start func_ov03_020f403c
func_ov03_020f403c: ; 0x020f403c
	ldr r3, _020f4044 ; =func_ov03_020f4324
	ldr r0, [r0, #8]
	bx r3
	nop
	thumb_func_end func_ov03_020f403c
_020f4044: .word func_ov03_020f4324

	thumb_func_start func_ov03_020f4048
func_ov03_020f4048: ; 0x020f4048
	ldr r3, _020f4050 ; =func_ov03_020f43a0
	ldr r0, [r0, #8]
	bx r3
	nop
	thumb_func_end func_ov03_020f4048
_020f4050: .word func_ov03_020f43a0

	thumb_func_start func_ov03_020f4054
func_ov03_020f4054: ; 0x020f4054
	ldr r3, _020f405c ; =func_ov03_020f441c
	ldr r0, [r0, #8]
	bx r3
	nop
	thumb_func_end func_ov03_020f4054
_020f405c: .word func_ov03_020f441c

	arm_func_start func_ov03_020f4060
func_ov03_020f4060: ; 0x020f4060
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov03_020f4428
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f4060

	arm_func_start func_ov03_020f4078
func_ov03_020f4078: ; 0x020f4078
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov03_020f3f94
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	mov r1, r4
	bl func_ov03_020f4470
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov03_020f4078

	arm_func_start func_ov03_020f40a0
func_ov03_020f40a0: ; 0x020f40a0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f3f94
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl func_ov03_020f4488
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f40a0

	arm_func_start func_ov03_020f40c0
func_ov03_020f40c0: ; 0x020f40c0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov03_020f3f94
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	mov r1, r4
	bl func_ov03_020f44a0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov03_020f40c0

	arm_func_start func_ov03_020f40e8
func_ov03_020f40e8: ; 0x020f40e8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov03_020f3f94
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	mov r1, r4
	bl func_ov03_020f44b8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov03_020f40e8

	thumb_func_start func_ov03_020f4110
func_ov03_020f4110: ; 0x020f4110
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0x10
	add r4, r1, #0
	mov r1, #0
	add r3, r2, #0
	add r5, r0, #0
	bl func_ov09_02113620
	ldr r0, _020f4170 ; =data_ov03_02100698
	add r1, r4, #0
	str r0, [r5]
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x40]
	add r0, r5, #0
	str r4, [r5, #0x44]
	add r0, #0x48
	strb r6, [r0]
	mov r0, #0x1c
	mul r1, r0
	ldr r0, _020f4174 ; =data_ov03_020ff5a4
	ldr r0, [r0, r1]
	blx r0
	str r0, [r5, #0x4c]
	add r0, r5, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f416c
	ldr r0, [r5, #0x38]
	cmp r0, #2
	beq _020f415e
_020f4152:
	add r0, r5, #0
	blx func_ov09_02113650
	ldr r0, [r5, #0x38]
	cmp r0, #2
	bne _020f4152
_020f415e:
	add r0, r5, #0
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	add r0, r5, #0
	blx func_ov09_02113650
_020f416c:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4110
_020f4170: .word data_ov03_02100698
_020f4174: .word data_ov03_020ff5a4

	thumb_func_start func_ov03_020f4178
func_ov03_020f4178: ; 0x020f4178
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f41bc ; =data_ov03_02100698
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f41a4
	ldr r0, [r4, #0x38]
	cmp r0, #6
	beq _020f419c
_020f4190:
	add r0, r4, #0
	blx func_ov09_02113650
	ldr r0, [r4, #0x38]
	cmp r0, #6
	bne _020f4190
_020f419c:
	add r0, r4, #0
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_020f41a4:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020f41b0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020f41b0:
	add r0, r4, #4
	bl func_0202ab64
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f4178
_020f41bc: .word data_ov03_02100698

	thumb_func_start func_ov03_020f41c0
func_ov03_020f41c0: ; 0x020f41c0
	thumb_func_end func_ov03_020f41c0
_020f41c0:
	.byte 0x38
data_ov03_020f41c1: ; 0x020f41c1
	.byte 0xb5, 0x00, 0x22, 0x05, 0x1c, 0xd2, 0x43, 0x0c, 0x1c, 0x95, 0x42, 0x2e, 0xd0, 0x0e, 0xf0
	.byte 0x58, 0xec, 0x00, 0x2d, 0x02, 0xd0, 0x01, 0x2d, 0x19, 0xd0, 0x38, 0xbd
_020f41dc:
	mov r0, #0
	ldr r1, [r4, #0x40]
	mvn r0, r0
	cmp r1, r0
	bne _020f41fa
	add r0, r4, #0
	blx func_ov09_02113650
	add r0, r4, #0
	bl func_ov03_020f4230
	add r0, r4, #0
	blx func_ov09_02113650
	pop {r3, r4, r5, pc}
_020f41fa:
	add r0, r4, #0
	blx func_ov09_02113650
	add r0, r4, #0
	bl func_ov03_020f4268
	add r0, r4, #0
	blx func_ov09_02113650
	pop {r3, r4, r5, pc}
_020f420e:
	mov r0, #0
	ldr r1, [r4, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _020f4220
	add r0, r4, #0
	blx func_ov09_02113650
	pop {r3, r4, r5, pc}
_020f4220:
	add r0, r4, #0
	blx func_ov09_02113650
	add r0, r4, #0
	bl func_ov03_020f430c
_020f422c:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start func_ov03_020f4230
func_ov03_020f4230: ; 0x020f4230
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x44]
	mov r0, #0x1c
	add r1, r2, #0
	mul r1, r0
	ldr r0, _020f4264 ; =data_ov03_020ff5a4
	str r2, [r4, #0x40]
	add r1, r0, r1
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	beq _020f425a
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	beq _020f425a
	add r0, r4, #0
	ldr r1, [r1, #0x10]
	add r0, #0x3c
	mov r2, #0
	bl func_ov00_0207c0ac
_020f425a:
	ldr r0, [r4, #0x4c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4230
_020f4264: .word data_ov03_020ff5a4

	thumb_func_start func_ov03_020f4268
func_ov03_020f4268: ; 0x020f4268
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r3, [r5, #0x40]
	mov r1, #0
	mov r0, #0x1c
	add r2, r3, #0
	mul r2, r0
	ldr r0, _020f42f0 ; =data_ov03_020ff5a4
	add r4, r1, #0
	add r2, r0, r2
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	beq _020f4292
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	beq _020f4292
	add r0, r5, #0
	add r0, #0x3c
	mov r4, #1
	bl func_ov00_0207c0cc
_020f4292:
	ldr r0, _020f42f4 ; =data_027e0718
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020f42b2
	ldr r0, _020f42f8 ; =data_027e103c
	mov r1, #0
	ldr r0, [r0]
	blx func_ov00_020cf1d4
	cmp r4, #0
	bne _020f42b2
	ldr r0, _020f42fc ; =data_027e0cbc
	mov r2, #0
	ldr r1, [r0, #0x20]
	blx func_ov03_020fa874
_020f42b2:
	ldr r0, _020f4300 ; =data_027e0900
	ldr r1, [r0, #8]
	ldr r0, _020f4304 ; =0x00000005
	cmp r1, r0
	bne _020f42c8
	ldr r0, _020f4308 ; =data_027e0fc8
	ldr r0, [r0]
	cmp r0, #0
	beq _020f42c8
	blx func_ov00_020bb50c
_020f42c8:
	ldr r0, [r5, #0x4c]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r2, [r5, #0x40]
	mov r0, #0x1c
	add r1, r2, #0
	mul r1, r0
	ldr r0, _020f42f0 ; =data_ov03_020ff5a4
	add r0, r0, r1
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _020f42e6
	bl func_ov00_0207b1fc
_020f42e6:
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x40]
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f4268
_020f42f0: .word data_ov03_020ff5a4
_020f42f4: .word data_027e0718
_020f42f8: .word data_027e103c
_020f42fc: .word data_027e0cbc
_020f4300: .word data_027e0900
_020f4304: .word 0x00000005
_020f4308: .word data_027e0fc8

	thumb_func_start func_ov03_020f430c
func_ov03_020f430c: ; 0x020f430c
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl func_ov00_0207a730
	mov r0, #0
	str r0, [r4, #0x38]
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f430c

	thumb_func_start func_ov03_020f4324
func_ov03_020f4324: ; 0x020f4324
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r3, [r4, #0x44]
	mov r1, #0x1c
	add r2, r3, #0
	mul r2, r1
	ldr r1, _020f4394 ; =data_ov03_020ff5a4
	add r2, r1, r2
	ldrb r1, [r2, #0x15]
	cmp r1, #0
	beq _020f4364
	ldrb r1, [r2, #0x17]
	cmp r1, #0
	beq _020f435c
	blx func_ov09_02113650
	mov r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _020f4398 ; =data_027e0c54
	ldr r1, _020f439c ; =func_ov03_020f41c0
	add r2, r4, #0
	mov r3, #0
	bl func_02036140
	add sp, #8
	pop {r4, pc}
_020f435c:
	blx func_ov09_0211366c
	add sp, #8
	pop {r4, pc}
_020f4364:
	ldr r0, [r4, #0x38]
	cmp r0, #2
	beq _020f4376
_020f436a:
	add r0, r4, #0
	blx func_ov09_02113650
	ldr r0, [r4, #0x38]
	cmp r0, #2
	bne _020f436a
_020f4376:
	add r0, r4, #0
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0x38]
	cmp r0, #4
	beq _020f4390
_020f4384:
	add r0, r4, #0
	blx func_ov09_02113650
	ldr r0, [r4, #0x38]
	cmp r0, #4
	bne _020f4384
_020f4390:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4324
_020f4394: .word data_ov03_020ff5a4
_020f4398: .word data_027e0c54
_020f439c: .word func_ov03_020f41c0

	thumb_func_start func_ov03_020f43a0
func_ov03_020f43a0: ; 0x020f43a0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r3, [r4, #0x40]
	mov r1, #0x1c
	add r2, r3, #0
	mul r2, r1
	ldr r1, _020f4410 ; =data_ov03_020ff5a4
	add r2, r1, r2
	ldrb r1, [r2, #0x16]
	cmp r1, #0
	beq _020f43e0
	ldrb r1, [r2, #0x17]
	cmp r1, #0
	beq _020f43d8
	blx func_ov09_02113650
	mov r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _020f4414 ; =data_027e0c54
	ldr r1, _020f4418 ; =func_ov03_020f41c0
	add r2, r4, #0
	mov r3, #0
	bl func_02036140
	add sp, #8
	pop {r4, pc}
_020f43d8:
	blx func_ov09_02113698
	add sp, #8
	pop {r4, pc}
_020f43e0:
	ldr r0, [r4, #0x38]
	cmp r0, #6
	beq _020f43f2
_020f43e6:
	add r0, r4, #0
	blx func_ov09_02113650
	ldr r0, [r4, #0x38]
	cmp r0, #6
	bne _020f43e6
_020f43f2:
	add r0, r4, #0
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, r4, #4
	bl func_ov00_0207a730
	mov r0, #0
	str r0, [r4, #0x38]
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f43a0
_020f4410: .word data_ov03_020ff5a4
_020f4414: .word data_027e0c54
_020f4418: .word func_ov03_020f41c0

	thumb_func_start func_ov03_020f441c
func_ov03_020f441c: ; 0x020f441c
	push {r3, lr}
	ldr r0, [r0, #0x4c]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	pop {r3, pc}
	thumb_func_end func_ov03_020f441c

	arm_func_start func_ov03_020f4428
func_ov03_020f4428: ; 0x020f4428
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x48]
	cmp r1, #0
	beq _020f4464
	ldr r0, [r4, #0x38]
	cmp r0, #3
	ldmia sp!, {r4, pc}
	ldr r0, _020f446c ; =data_027e071c
	bl func_0202d7ac
	cmp r0, #0
	ldmia sp!, {r4, pc}
	mov r0, r4
	bl func_ov09_02113650
	ldmia sp!, {r4, pc}
_020f4464:
	bl func_ov09_0211372c
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f4428
_020f446c: .word data_027e071c

	arm_func_start func_ov03_020f4470
func_ov03_020f4470: ; 0x020f4470
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x4c]
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f4470

	arm_func_start func_ov03_020f4488
func_ov03_020f4488: ; 0x020f4488
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x4c]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f4488

	arm_func_start func_ov03_020f44a0
func_ov03_020f44a0: ; 0x020f44a0
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x4c]
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f44a0

	arm_func_start func_ov03_020f44b8
func_ov03_020f44b8: ; 0x020f44b8
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x4c]
	ldr r2, [r0]
	ldr r2, [r2, #0x1c]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f44b8

	thumb_func_start func_ov03_020f44d0
func_ov03_020f44d0: ; 0x020f44d0
	ldr r1, _020f44d8 ; =data_ov03_021006b0
	str r1, [r0]
	bx lr
	nop
	thumb_func_end func_ov03_020f44d0
_020f44d8: .word data_ov03_021006b0

	thumb_func_start func_ov03_020f44dc
func_ov03_020f44dc: ; 0x020f44dc
	thumb_func_end func_ov03_020f44dc
_020f44dc:
	.byte 0x70
data_ov03_020f44dd: ; 0x020f44dd
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020f44e0
func_ov03_020f44e0: ; 0x020f44e0
	thumb_func_end func_ov03_020f44e0
_020f44e0:
	.byte 0x10
data_ov03_020f44e1: ; 0x020f44e1
	.byte 0xb5, 0x04, 0x1c, 0x3a, 0xf7, 0x92, 0xea, 0x20, 0x1c, 0x10, 0xbd

	thumb_func_start func_ov03_020f44ec
func_ov03_020f44ec: ; 0x020f44ec
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f44ec

	thumb_func_start func_ov03_020f44f0
func_ov03_020f44f0: ; 0x020f44f0
	thumb_func_end func_ov03_020f44f0
_020f44f0:
	.byte 0x70
data_ov03_020f44f1: ; 0x020f44f1
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020f44f4
func_ov03_020f44f4: ; 0x020f44f4
	thumb_func_end func_ov03_020f44f4
_020f44f4:
	.byte 0x70
data_ov03_020f44f5: ; 0x020f44f5
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020f44f8
func_ov03_020f44f8: ; 0x020f44f8
	thumb_func_end func_ov03_020f44f8
_020f44f8:
	.byte 0x70
data_ov03_020f44f9: ; 0x020f44f9
	.byte 0x47, 0x00, 0x00

	arm_func_start func_ov03_020f44fc
func_ov03_020f44fc: ; 0x020f44fc
	bx lr
	arm_func_end func_ov03_020f44fc

	arm_func_start func_ov03_020f4500
func_ov03_020f4500: ; 0x020f4500
	bx lr
	arm_func_end func_ov03_020f4500

	arm_func_start func_ov03_020f4504
func_ov03_020f4504: ; 0x020f4504
	bx lr
	arm_func_end func_ov03_020f4504

	arm_func_start func_ov03_020f4508
func_ov03_020f4508: ; 0x020f4508
	mov r0, #0
	bx lr
	arm_func_end func_ov03_020f4508

	thumb_func_start func_ov03_020f4510
func_ov03_020f4510: ; 0x020f4510
	push {r3, lr}
	ldr r1, _020f452c ; =data_027e0ce0
	mov r0, #0x1c
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f4526
	bl func_ov03_020f4558
_020f4526:
	ldr r1, _020f4530 ; =data_027e1054
	str r0, [r1]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4510
_020f452c: .word data_027e0ce0
_020f4530: .word data_027e1054

	thumb_func_start func_ov03_020f4534
func_ov03_020f4534: ; 0x020f4534
	push {r4, lr}
	ldr r0, _020f4554 ; =data_027e1054
	ldr r4, [r0]
	cmp r4, #0
	beq _020f454a
	add r0, r4, #0
	bl func_ov03_020f4600
	add r0, r4, #0
	blx func_0202ea0c
_020f454a:
	ldr r0, _020f4554 ; =data_027e1054
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f4534
_020f4554: .word data_027e1054

	thumb_func_start func_ov03_020f4558
func_ov03_020f4558: ; 0x020f4558
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	strh r0, [r5]
	strb r0, [r5, #2]
	ldr r1, _020f45f4 ; =data_027e0ce0
	mov r0, #0x9c
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	add r4, r0, #0
	beq _020f4578
	bl func_ov03_020f4b18
_020f4578:
	ldr r1, _020f45f4 ; =data_027e0ce0
	str r4, [r5, #4]
	ldr r1, [r1, #4]
	mov r0, #0x44
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f4590
	ldr r1, [r5, #4]
	bl func_ov03_020f51cc
_020f4590:
	ldr r1, _020f45f4 ; =data_027e0ce0
	str r0, [r5, #8]
	mov r0, #4
	ldr r1, [r1, #4]
	add r2, r0, #0
	blx func_0202e9dc
	cmp r0, #0
	beq _020f45a8
	ldr r1, [r5, #4]
	bl func_ov03_020f52a4
_020f45a8:
	ldr r1, _020f45f4 ; =data_027e0ce0
	str r0, [r5, #0xc]
	ldr r1, [r1, #4]
	mov r0, #0x48
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f45c0
	ldr r1, [r5, #4]
	bl func_ov03_020f5048
_020f45c0:
	ldr r1, _020f45f4 ; =data_027e0ce0
	str r0, [r5, #0x10]
	ldr r1, [r1, #4]
	mov r0, #0x10
	mov r2, #4
	blx func_0202e9dc
	add r4, r0, #0
	beq _020f45da
	ldr r1, [r5, #4]
	str r1, [r4]
	bl func_ov03_020fbf48
_020f45da:
	str r4, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	ldr r0, _020f45f8 ; =0x0211aa94
	add r1, sp, #0
	str r0, [sp]
	ldr r0, _020f45fc ; =data_027e077c
	str r5, [sp, #4]
	bl func_0202e7a4
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4558
_020f45f4: .word data_027e0ce0
_020f45f8: .word 0x0211aa94
_020f45fc: .word data_027e077c

	thumb_func_start func_ov03_020f4600
func_ov03_020f4600: ; 0x020f4600
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020f4670 ; =0x0211aa94
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020f4674 ; =data_027e077c
	add r1, sp, #0
	bl func_0202e7fc
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _020f4626
	add r0, r5, #0
	bl func_ov17_021603e0
	add r0, r5, #0
	blx func_0202ea0c
_020f4626:
	ldr r0, [r4, #0x14]
	blx func_0202ea0c
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _020f463e
	add r0, r5, #0
	bl func_ov03_020f5090
	add r0, r5, #0
	blx func_0202ea0c
_020f463e:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _020f4650
	add r0, r5, #0
	bl func_ov03_020f52c8
	add r0, r5, #0
	blx func_0202ea0c
_020f4650:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _020f4662
	add r0, r5, #0
	bl func_ov03_020f5204
	add r0, r5, #0
	blx func_0202ea0c
_020f4662:
	ldr r0, [r4, #4]
	blx func_0202ea0c
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f4600
_020f4670: .word 0x0211aa94
_020f4674: .word data_027e077c

	thumb_func_start func_ov03_020f4678
func_ov03_020f4678: ; 0x020f4678
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	strb r0, [r4, #2]
	ldr r0, [r4, #4]
	add r6, r1, #0
	bl func_ov03_020f4b18
	ldr r5, [r4, #8]
	add r0, r5, #4
	bl func_ov00_0207a730
	mov r0, #0
	str r0, [r5, #0x38]
	sub r0, r0, #1
	str r0, [r5, #0x3c]
	ldr r5, [r4, #0x10]
	add r0, r5, #4
	bl func_ov00_0207a730
	mov r1, #0
	str r1, [r5, #0x38]
	sub r0, r1, #1
	str r0, [r5, #0x3c]
	add r5, #0x46
	strh r1, [r5]
	ldr r0, [r4, #0x14]
	bl func_ov03_020fbf48
	cmp r6, #0
	beq _020f46e2
	ldr r0, _020f46f0 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #1
	beq _020f46c8
	cmp r0, #3
	bne _020f46ec
_020f46c8:
	ldr r1, _020f46f4 ; =data_027e0ce0
	mov r0, #0x30
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f46de
	ldr r1, [r4, #4]
	bl func_ov17_02160364
_020f46de:
	str r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_020f46e2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020f46ec
	bl func_ov17_0216044c
_020f46ec:
	pop {r4, r5, r6, pc}
	nop
	thumb_func_end func_ov03_020f4678
_020f46f0: .word data_027e0d38
_020f46f4: .word data_027e0ce0

	thumb_func_start func_ov03_020f46f8
func_ov03_020f46f8: ; 0x020f46f8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _020f4714
	beq _020f4710
	add r0, r5, #0
	bl func_ov17_021603e0
	add r0, r5, #0
	blx func_0202ea0c
_020f4710:
	mov r0, #0
	str r0, [r4, #0x18]
_020f4714:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f46f8

	thumb_func_start func_ov03_020f4718
func_ov03_020f4718: ; 0x020f4718
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #2]
	add r4, r1, #0
	cmp r0, #0
	bne _020f474c
	ldr r0, _020f4758 ; =data_027e0f90
	mov r1, #5
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020f474c
	mov r0, #1
	strb r0, [r5, #2]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl func_ov03_020f4c54
	ldr r0, _020f475c ; =data_ov00_020eec9c
	mov r1, #6
	blx func_ov00_020d77e4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020f474c:
	ldr r0, _020f475c ; =data_ov00_020eec9c
	mov r1, #0xc
	blx func_ov00_020d77e4
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4718
_020f4758: .word data_027e0f90
_020f475c: .word data_ov00_020eec9c

	thumb_func_start func_ov03_020f4760
func_ov03_020f4760: ; 0x020f4760
	push {r3, lr}
	ldrb r3, [r0, #2]
	cmp r3, #0
	bne _020f4776
	mov r3, #1
	strb r3, [r0, #2]
	lsl r1, r1, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	bl func_ov03_020f4c94
_020f4776:
	pop {r3, pc}
	thumb_func_end func_ov03_020f4760

	thumb_func_start func_ov03_020f4778
func_ov03_020f4778: ; 0x020f4778
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r6, r0, #0
	add r5, r1, #0
	ldr r0, _020f47d8 ; =data_027e0e60
	lsl r2, r5, #0x18
	ldr r0, [r0]
	add r1, sp, #4
	lsr r2, r2, #0x18
	blx func_ov00_02082614
	ldr r0, _020f47dc ; =data_027e0d38
	mov r4, #4
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	beq _020f47b6
	ldr r0, _020f47e0 ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf0fc
	cmp r0, #0
	beq _020f47b4
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #3
	bne _020f47b4
	mov r4, #0x2d
	b _020f47b6
_020f47b4:
	mov r4, #7
_020f47b6:
	ldr r0, _020f47d8 ; =data_027e0e60
	lsl r1, r5, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	blx func_ov00_02082d74
	add r2, r0, #0
	lsl r0, r5, #0x18
	asr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r6, #4]
	add r1, sp, #4
	add r3, r4, #0
	bl func_ov03_020f4d20
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4778
_020f47d8: .word data_027e0e60
_020f47dc: .word data_027e0d38
_020f47e0: .word data_027e103c

	thumb_func_start func_ov03_020f47e4
func_ov03_020f47e4: ; 0x020f47e4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, _020f4838 ; =data_027e0f7c
	ldr r0, [r0]
	blx func_ov00_0209d8d8
	add r1, sp, #4
	add r6, r0, #0
	blx func_ov00_020a4038
	ldr r0, _020f483c ; =data_027e0d38
	mov r4, #8
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	beq _020f4822
	ldr r0, _020f4840 ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf0fc
	cmp r0, #0
	beq _020f4820
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #3
	bne _020f4820
	mov r4, #0x2c
	b _020f4822
_020f4820:
	mov r4, #0
_020f4822:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldrh r2, [r6, #0x12]
	ldr r0, [r5, #4]
	add r1, sp, #4
	add r3, r4, #0
	bl func_ov03_020f4d20
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f47e4
_020f4838: .word data_027e0f7c
_020f483c: .word data_027e0d38
_020f4840: .word data_027e103c

	thumb_func_start func_ov03_020f4844
func_ov03_020f4844: ; 0x020f4844
	ldr r0, [r0, #4]
	mov r2, #5
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4862
	cmp r1, #0
	bne _020f4858
	mov r2, #0x2e
	b _020f4862
_020f4858:
	ldr r0, _020f486c ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0x2c
	bne _020f4862
	mov r2, #6
_020f4862:
	ldr r3, _020f4870 ; =func_0202e740
	ldr r0, _020f486c ; =data_027e077c
	add r1, r2, #0
	bx r3
	nop
	thumb_func_end func_ov03_020f4844
_020f486c: .word data_027e077c
_020f4870: .word func_0202e740

	thumb_func_start func_ov03_020f4874
func_ov03_020f4874: ; 0x020f4874
	ldr r3, _020f487c ; =func_0202e740
	ldr r0, _020f4880 ; =data_027e077c
	mov r1, #0x29
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f4874
_020f487c: .word func_0202e740
_020f4880: .word data_027e077c

	thumb_func_start func_ov03_020f4884
func_ov03_020f4884: ; 0x020f4884
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _020f48ce
	ldr r0, [r5, #4]
	ldr r4, [r0, #4]
	ldr r0, _020f48d0 ; =data_027e0d3c
	ldr r0, [r0]
	blx func_ov00_02078fac
	cmp r0, r4
	beq _020f48a4
	ldr r0, [r5, #4]
	bl func_ov03_020f5008
_020f48a4:
	ldr r0, [r5, #4]
	ldr r1, [r0, #8]
	ldr r0, _020f48d4 ; =data_027e0cbc
	ldr r2, [r0, #0x1c]
	cmp r2, r1
	beq _020f48b6
	mov r2, #1
	blx func_ov03_020fa874
_020f48b6:
	ldr r0, _020f48d8 ; =data_027e077c
	ldr r1, [r5, #4]
	ldr r2, [r0]
	ldr r1, [r1]
	cmp r2, r1
	beq _020f48c6
	blx func_0202e740
_020f48c6:
	add r0, r5, #0
	mov r1, #0
	bl func_ov03_020f4678
_020f48ce:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4884
_020f48d0: .word data_027e0d3c
_020f48d4: .word data_027e0cbc
_020f48d8: .word data_027e077c

	thumb_func_start func_ov03_020f48dc
func_ov03_020f48dc: ; 0x020f48dc
	ldr r1, [r0, #4]
	mov r2, #3
	add r0, r1, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f48ee
	mov r2, #0x38
	b _020f4906
_020f48ee:
	add r0, r1, #0
	add r0, #0x97
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f48fc
	mov r2, #0x39
	b _020f4906
_020f48fc:
	add r1, #0x98
	ldrb r0, [r1]
	cmp r0, #0
	beq _020f4906
	mov r2, #0x2c
_020f4906:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020f48dc

	thumb_func_start func_ov03_020f490c
func_ov03_020f490c: ; 0x020f490c
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r2, #0x2b
	add r1, r0, #0
	add r1, #0x94
	ldrb r1, [r1]
	cmp r1, #0
	bne _020f493c
	blx func_ov03_020f4b7c
	cmp r0, #0
	beq _020f492a
	mov r2, #0x29
	b _020f493c
_020f492a:
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f493a
	mov r2, #0x32
	b _020f493c
_020f493a:
	ldr r2, [r1]
_020f493c:
	add r0, r2, #0
	pop {r4, pc}
	thumb_func_end func_ov03_020f490c

	thumb_func_start func_ov03_020f4940
func_ov03_020f4940: ; 0x020f4940
	push {r3, lr}
	ldr r0, [r0, #4]
	add r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f4958
	ldr r0, _020f495c ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf05c
	bl func_ov03_020f0260
_020f4958:
	pop {r3, pc}
	nop
	thumb_func_end func_ov03_020f4940
_020f495c: .word data_027e103c

	arm_func_start func_ov03_020f4960
func_ov03_020f4960: ; 0x020f4960
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f4a54 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0xa
	bgt _020f498c
	beq _020f49c4
	b _020f4a40
_020f498c:
	sub r0, r0, #0x29
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020f4a40
_020f499c: ; jump table
	b _020f49c4 ; case 0
	b _020f4a40 ; case 1
	b _020f4a40 ; case 2
	b _020f4a40 ; case 3
	b _020f4a40 ; case 4
	b _020f4a40 ; case 5
	b _020f49d8 ; case 6
	b _020f4a40 ; case 7
	b _020f49e4 ; case 8
	b _020f4a24 ; case 9
_020f49c4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020f4a40
	bl func_ov17_02160550
	b _020f4a40
_020f49d8:
	ldr r0, [r4, #0x14]
	blx func_ov03_020fbfa8
	b _020f4a40
_020f49e4:
	ldr r0, _020f4a58 ; =data_027e0d3c
	ldr r0, [r0]
	bl func_ov00_02078fd4
	cmp r0, #0
	bne _020f4a40
	ldrsh r0, [r4]
	cmp r0, #1
	subgt r0, r0, #1
	strgth r0, [r4]
	bgt _020f4a40
	ldr r0, _020f4a54 ; =data_027e077c
	mov r2, #0
	mov r1, #2
	strh r2, [r4]
	bl func_0202e740
	b _020f4a40
_020f4a24:
	ldr r0, _020f4a58 ; =data_027e0d3c
	ldr r0, [r0]
	bl func_ov00_02078fd4
	cmp r0, #0
	bne _020f4a40
	mov r0, r4
	blx func_ov03_020f4884
_020f4a40:
	ldr r0, [r4, #8]
	bl func_ov09_0211372c
	ldr r0, [r4, #0x10]
	bl func_ov03_020f51ac
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f4960
_020f4a54: .word data_027e077c
_020f4a58: .word data_027e0d3c

	arm_func_start func_ov03_020f4a5c
func_ov03_020f4a5c: ; 0x020f4a5c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020f4a88
	bl func_ov17_02160664
_020f4a88:
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x96]
	cmp r0, #0
	beq _020f4ad0
	ldr r0, _020f4b0c ; =0x04001050
	mov ip, #0x10
	mov r1, #4
	mov r2, #8
	mov r3, #0
	str ip, [sp]
	bl func_020052e4
	ldr r1, _020f4b10 ; =0x0400100c
	add sp, sp, #4
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldmia sp!, {r3, r4, pc}
_020f4ad0:
	ldrb r0, [r1, #0x97]
	cmp r0, #0
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	ldr r2, _020f4b14 ; =0x04001000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #0x8
	bic r1, r0, #0x1f00
	bic r0, r3, #4
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f4a5c
_020f4b0c: .word 0x04001050
_020f4b10: .word 0x0400100c
_020f4b14: .word 0x04001000

	thumb_func_start func_ov03_020f4b18
func_ov03_020f4b18: ; 0x020f4b18
	push {r3, r4}
	mov r1, #1
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	sub r4, r1, #1
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	add r2, r0, #0
	strb r1, [r0, #0x10]
	add r2, #0x50
	strb r1, [r2]
	add r2, r0, #0
	ldr r3, _020f4b78 ; =0x0000ffff
	add r2, #0x90
	strh r3, [r2]
	add r2, r0, #0
	add r2, #0x92
	strb r4, [r2]
	add r2, r0, #0
	add r2, #0x93
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x94
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x95
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x96
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x97
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x98
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x99
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0x9a
	strb r1, [r2]
	add r0, #0x9b
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	nop
	thumb_func_end func_ov03_020f4b18
_020f4b78: .word 0x0000ffff

	arm_func_start func_ov03_020f4b7c
func_ov03_020f4b7c: ; 0x020f4b7c
	stmdb sp!, {r3, lr}
	ldrb r2, [r0, #0x10]
	ldr r1, _020f4bbc ; =data_027e0d3c
	cmp r2, #0
	ldr r2, [r1]
	ldrneb r1, [r2, #4]
	cmpne r1, #0
	moveq r0, #0
	ldmia sp!, {r3, pc}
	add r0, r0, #0x10
	add r1, r2, #4
	bl func_0204716c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f4b7c
_020f4bbc: .word data_027e0d3c

	thumb_func_start func_ov03_020f4bc0
func_ov03_020f4bc0: ; 0x020f4bc0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f4bfc ; =data_027e0d3c
	ldr r0, [r0]
	blx func_ov00_02078fac
	cmp r0, #2
	beq _020f4bd4
	cmp r0, #3
	bne _020f4bf2
_020f4bd4:
	ldr r0, _020f4c00 ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	cmp r0, #0x2e
	beq _020f4bf2
	mov r0, #1
	add r4, #0x9a
	strb r0, [r4]
	ldr r0, _020f4c04 ; =data_027e077c
	mov r1, #0x31
	blx func_0202e740
	pop {r4, pc}
_020f4bf2:
	ldr r0, _020f4c04 ; =data_027e077c
	mov r1, #2
	blx func_0202e740
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4bc0
_020f4bfc: .word data_027e0d3c
_020f4c00: .word data_027e0d38
_020f4c04: .word data_027e077c

	thumb_func_start func_ov03_020f4c08
func_ov03_020f4c08: ; 0x020f4c08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f4c44 ; =data_027e077c
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _020f4c48 ; =data_027e0d3c
	ldr r0, [r0]
	blx func_ov00_02078fac
	str r0, [r4, #4]
	ldr r0, _020f4c4c ; =data_027e0cbc
	mov r2, #0x3f
	ldr r0, [r0, #0x1c]
	str r0, [r4, #8]
	ldr r0, _020f4c50 ; =data_027e0c54
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x94
	strb r1, [r0]
	ldr r1, _020f4c48 ; =data_027e0d3c
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0x10
	add r1, r1, #4
	blx func_0203209c
	mov r0, #0
	add r4, #0x93
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4c08
_020f4c44: .word data_027e077c
_020f4c48: .word data_027e0d3c
_020f4c4c: .word data_027e0cbc
_020f4c50: .word data_027e0c54

	thumb_func_start func_ov03_020f4c54
func_ov03_020f4c54: ; 0x020f4c54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl func_ov03_020f4c08
	add r0, r5, #0
	add r0, #0x98
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4c78
	ldr r0, _020f4c90 ; =data_027e077c
	mov r1, #0x2a
	blx func_0202e740
	pop {r3, r4, r5, pc}
_020f4c78:
	cmp r4, #0
	beq _020f4c86
	ldr r0, _020f4c90 ; =data_027e077c
	mov r1, #0x28
	blx func_0202e740
	pop {r3, r4, r5, pc}
_020f4c86:
	add r0, r5, #0
	bl func_ov03_020f4bc0
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f4c54
_020f4c90: .word data_027e077c

	thumb_func_start func_ov03_020f4c94
func_ov03_020f4c94: ; 0x020f4c94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl func_ov03_020f4c08
	add r0, r5, #0
	add r0, #0x92
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x9b
	strb r6, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x98
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x99
	strb r1, [r0]
	mov r0, #4
	str r0, [r5, #0xc]
	ldr r0, _020f4d10 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	beq _020f4ce8
	ldr r0, _020f4d14 ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf0fc
	cmp r0, #0
	beq _020f4ce4
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #3
	bne _020f4ce4
	mov r0, #0x2d
	str r0, [r5, #0xc]
	b _020f4ce8
_020f4ce4:
	mov r0, #7
	str r0, [r5, #0xc]
_020f4ce8:
	ldr r0, _020f4d18 ; =data_027e0e60
	add r1, r5, #0
	ldr r0, [r0]
	add r1, #0x50
	add r2, r4, #0
	blx func_ov00_02082614
	ldr r0, _020f4d18 ; =data_027e0e60
	add r1, r4, #0
	ldr r0, [r0]
	blx func_ov00_02082d74
	add r5, #0x90
	strh r0, [r5]
	ldr r0, _020f4d1c ; =data_027e077c
	mov r1, #0x28
	blx func_0202e740
	pop {r4, r5, r6, pc}
	nop
	thumb_func_end func_ov03_020f4c94
_020f4d10: .word data_027e0d38
_020f4d14: .word data_027e103c
_020f4d18: .word data_027e0e60
_020f4d1c: .word data_027e077c

	thumb_func_start func_ov03_020f4d20
func_ov03_020f4d20: ; 0x020f4d20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, #0x50
	mov r2, #0x3f
	str r3, [r5, #0xc]
	blx func_0203209c
	add r0, r5, #0
	add r0, #0x90
	strh r4, [r0]
	add r1, sp, #0
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	add r5, #0x92
	mov r1, #0x2d
	strb r0, [r5]
	ldr r0, _020f4d4c ; =data_027e077c
	blx func_0202e740
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f4d20
_020f4d4c: .word data_027e077c

	thumb_func_start func_ov03_020f4d50
func_ov03_020f4d50: ; 0x020f4d50
	ldr r3, _020f4d5c ; =func_0202e740
	add r0, #0x93
	strb r1, [r0]
	ldr r0, _020f4d60 ; =data_027e077c
	mov r1, #0xa
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f4d50
_020f4d5c: .word func_0202e740
_020f4d60: .word data_027e077c

	thumb_func_start func_ov03_020f4d64
func_ov03_020f4d64: ; 0x020f4d64
	push {r4, lr}
	ldr r0, _020f4dcc ; =data_027e0c54
	add r4, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f4dbe
	cmp r4, #9
	beq _020f4d7c
	cmp r4, #0xa
	beq _020f4d7c
	cmp r4, #0x2e
	bne _020f4d9a
_020f4d7c:
	ldr r0, _020f4dd0 ; =0x04001000
	mov r1, #0x1f
	ldr r2, [r0]
	lsl r1, r1, #8
	and r1, r2
	lsr r3, r1, #8
	ldr r2, [r0]
	ldr r1, _020f4dd4 ; =0xffffe0ff
	and r2, r1
	mov r1, #6
	bic r3, r1
	lsl r1, r3, #8
	orr r1, r2
	str r1, [r0]
	b _020f4dbe
_020f4d9a:
	ldr r0, _020f4dd0 ; =0x04001000
	mov r1, #0x1f
	ldr r2, [r0]
	lsl r1, r1, #8
	and r1, r2
	lsr r3, r1, #8
	ldr r2, [r0]
	ldr r1, _020f4dd4 ; =0xffffe0ff
	and r2, r1
	mov r1, #6
	orr r1, r3
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0]
	ldr r0, _020f4dd8 ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf1b8
_020f4dbe:
	ldr r0, _020f4ddc ; =data_027e0cbc
	add r1, r4, #0
	mov r2, #0
	blx func_ov03_020fa874
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f4d64
_020f4dcc: .word data_027e0c54
_020f4dd0: .word 0x04001000
_020f4dd4: .word 0xffffe0ff
_020f4dd8: .word data_027e103c
_020f4ddc: .word data_027e0cbc

	thumb_func_start func_ov03_020f4de0
func_ov03_020f4de0: ; 0x020f4de0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020f4e48 ; =data_027e0d3c
	ldr r5, [r0]
	ldr r0, _020f4e4c ; =data_027e0e60
	ldr r0, [r0]
	blx func_ov00_02083588
	ldr r1, _020f4e50 ; =data_ov00_020d878c
	add r2, r0, #0
	ldr r1, [r1]
	add r0, r5, #0
	bl func_ov00_02078e00
	ldr r0, _020f4e54 ; =data_027e0d38
	mov r5, #0xa
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	beq _020f4e24
	ldr r0, _020f4e58 ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf0fc
	cmp r0, #0
	beq _020f4e22
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #3
	bne _020f4e22
	mov r5, #0x2e
	b _020f4e24
_020f4e22:
	mov r5, #9
_020f4e24:
	add r0, r4, #0
	add r1, r5, #0
	bl func_ov03_020f4d64
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _020f4e36
	cmp r0, #3
	bne _020f4e40
_020f4e36:
	ldr r0, _020f4e48 ; =data_027e0d3c
	mov r1, #0
	ldr r0, [r0]
	blx func_ov00_02079878
_020f4e40:
	mov r0, #1
	add r4, #0x95
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4de0
_020f4e48: .word data_027e0d3c
_020f4e4c: .word data_027e0e60
_020f4e50: .word data_ov00_020d878c
_020f4e54: .word data_027e0d38
_020f4e58: .word data_027e103c

	thumb_func_start func_ov03_020f4e5c
func_ov03_020f4e5c: ; 0x020f4e5c
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020f4f30 ; =data_027e0d3c
	ldr r5, [r0]
	ldr r0, _020f4f34 ; =data_027e0e60
	ldr r0, [r0]
	blx func_ov00_02083588
	add r1, r4, #0
	add r2, r0, #0
	add r0, r5, #0
	add r1, #0x10
	bl func_ov00_02078e00
	ldr r0, _020f4f34 ; =data_027e0e60
	ldr r0, [r0]
	blx func_ov00_02082acc
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4e92
	ldr r0, _020f4f38 ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cfb68
_020f4e92:
	add r0, r4, #0
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4ea6
	ldr r1, [r4, #8]
	add r0, r4, #0
	bl func_ov03_020f4d64
	b _020f4ece
_020f4ea6:
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f4ec4
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f4ec4
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4ece
_020f4ec4:
	ldr r0, _020f4f3c ; =data_027e0cbc
	ldr r1, [r4, #8]
	mov r2, #0
	blx func_ov03_020fa874
_020f4ece:
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4ef2
	bl func_ov00_0207b12c
	ldr r1, _020f4f40 ; =0x0400100c
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
_020f4ef2:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4f20
	ldr r0, _020f4f44 ; =0x04001000
	mov r1, #0x1f
	ldr r2, [r0]
	lsl r1, r1, #8
	and r1, r2
	lsr r3, r1, #8
	ldr r2, [r0]
	ldr r1, _020f4f48 ; =0xffffe0ff
	and r2, r1
	mov r1, #4
	orr r1, r3
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x97
	strb r1, [r0]
_020f4f20:
	add r0, r4, #0
	bl func_ov03_020f5008
	mov r0, #0
	add r4, #0x95
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f4e5c
_020f4f30: .word data_027e0d3c
_020f4f34: .word data_027e0e60
_020f4f38: .word data_027e103c
_020f4f3c: .word data_027e0cbc
_020f4f40: .word 0x0400100c
_020f4f44: .word 0x04001000
_020f4f48: .word 0xffffe0ff

	thumb_func_start func_ov03_020f4f4c
func_ov03_020f4f4c: ; 0x020f4f4c
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020f4fa8 ; =data_027e0d3c
	ldr r4, [r0]
	ldr r0, _020f4fac ; =data_027e0e60
	ldr r0, [r0]
	blx func_ov00_02083588
	add r1, r5, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x50
	bl func_ov00_02078e00
	add r1, r5, #0
	ldr r0, _020f4fb0 ; =data_027e103c
	add r1, #0x90
	ldrh r1, [r1]
	ldr r0, [r0]
	blx func_ov00_020cf414
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4f8a
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	bl func_ov03_020f4d64
	b _020f4f9e
_020f4f8a:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f4f9e
	ldr r0, _020f4fb4 ; =data_027e0cbc
	ldr r1, [r5, #0xc]
	mov r2, #0
	blx func_ov03_020fa874
_020f4f9e:
	mov r0, #0
	add r5, #0x95
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f4f4c
_020f4fa8: .word data_027e0d3c
_020f4fac: .word data_027e0e60
_020f4fb0: .word data_027e103c
_020f4fb4: .word data_027e0cbc

	thumb_func_start func_ov03_020f4fb8
func_ov03_020f4fb8: ; 0x020f4fb8
	push {r3, r4, r5, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, _020f4ffc ; =data_027e0e60
	mov r1, #0x93
	ldrsb r1, [r5, r1]
	ldr r0, [r0]
	add r2, sp, #0
	blx func_ov00_020835c4
	ldr r0, _020f5000 ; =data_027e0d3c
	mov r2, #0x93
	ldrsb r2, [r5, r2]
	ldr r0, [r0]
	add r1, sp, #0
	bl func_ov00_02078e00
	ldr r0, _020f5004 ; =data_027e103c
	mov r1, #0x93
	ldr r4, [r0]
	ldr r0, _020f4ffc ; =data_027e0e60
	ldrsb r1, [r5, r1]
	ldr r0, [r0]
	blx func_ov00_020835f4
	add r1, r0, #0
	add r0, r4, #0
	blx func_ov00_020cf414
	mov r0, #0
	add r5, #0x93
	strb r0, [r5]
	add sp, #0x40
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f4fb8
_020f4ffc: .word data_027e0e60
_020f5000: .word data_027e0d3c
_020f5004: .word data_027e103c

	thumb_func_start func_ov03_020f5008
func_ov03_020f5008: ; 0x020f5008
	push {r4, lr}
	ldr r0, [r0, #4]
	cmp r0, #2
	beq _020f5016
	cmp r0, #3
	beq _020f502c
	pop {r4, pc}
_020f5016:
	ldr r0, _020f5044 ; =data_027e0d3c
	ldr r4, [r0]
	add r0, r4, #0
	blx func_ov00_02078fe8
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	blx func_ov00_02079898
	pop {r4, pc}
_020f502c:
	ldr r0, _020f5044 ; =data_027e0d3c
	ldr r4, [r0]
	add r0, r4, #0
	blx func_ov15_0217d590
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	blx func_ov15_0217d59c
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f5008
_020f5044: .word data_027e0d3c

	thumb_func_start func_ov03_020f5048
func_ov03_020f5048: ; 0x020f5048
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #0x10
	add r4, r1, #0
	mov r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl func_ov09_02113620
	ldr r0, _020f5084 ; =data_ov03_021006dc
	mov r1, #1
	str r0, [r5]
	add r0, r5, #0
	str r4, [r5, #0x40]
	add r0, #0x44
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x46
	strh r1, [r0]
	ldr r0, _020f5088 ; =func_ov09_0211bf54
	add r1, sp, #0
	str r0, [sp]
	ldr r0, _020f508c ; =data_027e077c
	str r5, [sp, #4]
	bl func_0202e7a4
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f5048
_020f5084: .word data_ov03_021006dc
_020f5088: .word func_ov09_0211bf54
_020f508c: .word data_027e077c

	thumb_func_start func_ov03_020f5090
func_ov03_020f5090: ; 0x020f5090
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020f50b4 ; =data_ov03_021006dc
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _020f50b8 ; =func_ov09_0211bf54
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020f50bc ; =data_027e077c
	bl func_0202e7fc
	add r0, r4, #4
	bl func_0202ab64
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f5090
_020f50b4: .word data_ov03_021006dc
_020f50b8: .word func_ov09_0211bf54
_020f50bc: .word data_027e077c

	thumb_func_start func_ov03_020f50c0
func_ov03_020f50c0: ; 0x020f50c0
	push {r3, lr}
	add r2, r0, #0
	mov r1, #8
	add r0, #0x44
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x44
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x46
	strh r1, [r0]
	ldr r1, [r2, #0x40]
	mov r0, #0x92
	ldrsb r1, [r1, r0]
	cmp r1, #0
	blt _020f50f4
	ldr r0, _020f50f8 ; =data_027e0d3c
	add r2, #0x44
	ldrh r2, [r2]
	ldr r0, [r0]
	bl func_ov03_020fc140
	ldr r0, _020f50fc ; =data_ov00_020eec9c
	mov r1, #0x2d
	blx func_ov00_020d77e4
_020f50f4:
	pop {r3, pc}
	nop
	thumb_func_end func_ov03_020f50c0
_020f50f8: .word data_027e0d3c
_020f50fc: .word data_ov00_020eec9c

	thumb_func_start func_ov03_020f5100
func_ov03_020f5100: ; 0x020f5100
	thumb_func_end func_ov03_020f5100
_020f5100:
	.byte 0x10
data_ov03_020f5101: ; 0x020f5101
	.byte 0xb5, 0x04, 0x1c, 0x21, 0x6c, 0x92, 0x20, 0x08, 0x56, 0x00, 0x28, 0x04, 0xdb, 0x04, 0x48
	.byte 0x00, 0x21, 0x00, 0x68, 0x84, 0xf7, 0xb0, 0xeb
_020f5118:
	ldr r0, [r4, #0x40]
	bl func_ov03_020f4f4c
	pop {r4, pc}
	.align 2, 0
_020f5120: .word data_027e0d3c

	thumb_func_start func_ov03_020f5124
func_ov03_020f5124: ; 0x020f5124
	thumb_func_end func_ov03_020f5124
_020f5124:
	.byte 0x00
data_ov03_020f5125: ; 0x020f5125
	.byte 0x6c, 0x99, 0x30, 0x00, 0x78, 0x00, 0x28, 0x01, 0xd0, 0x01, 0x21
	.byte 0x00, 0xe0
_020f5132:
	mov r1, #3
_020f5134:
	ldr r3, _020f513c ; =func_0202e740
	ldr r0, _020f5140 ; =data_027e077c
	bx r3
	nop
_020f513c: .word func_0202e740
_020f5140: .word data_027e077c

	thumb_func_start func_ov03_020f5144
func_ov03_020f5144: ; 0x020f5144
	thumb_func_end func_ov03_020f5144
_020f5144:
	.byte 0x10
data_ov03_020f5145: ; 0x020f5145
	.byte 0xb5, 0x04, 0x1c, 0x20, 0x6c, 0xff, 0xf7, 0x49, 0xfe, 0x20, 0x1c
	.byte 0x08, 0x21, 0x44, 0x30, 0x01, 0x80, 0x20, 0x1c, 0x44, 0x30, 0x01, 0x88, 0x20, 0x1c, 0x46, 0x30
	.byte 0x01, 0x80, 0x21, 0x6c, 0x92, 0x20, 0x09, 0x56, 0x00, 0x29, 0x0a, 0xdb, 0x05, 0x48, 0x00, 0x22
	.byte 0x00, 0x68, 0x06, 0xf0, 0xe5, 0xff, 0x03, 0x48, 0x44, 0x34, 0x21, 0x88, 0x00, 0x68, 0x06, 0xf0
	.byte 0xe7, 0xff
_020f5182:
	pop {r4, pc}
	.align 2, 0
_020f5184: .word data_027e0d3c

	thumb_func_start func_ov03_020f5188
func_ov03_020f5188: ; 0x020f5188
	thumb_func_end func_ov03_020f5188
_020f5188:
	.byte 0x10
data_ov03_020f5189: ; 0x020f5189
	.byte 0xb5, 0x04, 0x1c, 0x06, 0x48, 0x2c, 0x21
	.byte 0x39, 0xf7, 0xd6, 0xea, 0x20, 0x1d, 0x85, 0xf7, 0xcb, 0xfa, 0x00, 0x21, 0xa1, 0x63, 0x48, 0x1e
	.byte 0xe0, 0x63, 0x46, 0x34, 0x21, 0x80, 0x10, 0xbd
_020f51a8: .word data_027e077c

	arm_func_start func_ov03_020f51ac
func_ov03_020f51ac: ; 0x020f51ac
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov09_0211372c
	ldrh r0, [r4, #0x46]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r4, #0x46]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f51ac

	thumb_func_start func_ov03_020f51cc
func_ov03_020f51cc: ; 0x020f51cc
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #0x10
	add r4, r1, #0
	mov r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl func_ov09_02113620
	ldr r0, _020f51f8 ; =data_ov03_021006f4
	add r1, sp, #0
	str r0, [r5]
	str r4, [r5, #0x40]
	ldr r0, _020f51fc ; =0x0211ab8c
	str r5, [sp, #4]
	str r0, [sp]
	ldr r0, _020f5200 ; =data_027e077c
	bl func_0202e7a4
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f51cc
_020f51f8: .word data_ov03_021006f4
_020f51fc: .word 0x0211ab8c
_020f5200: .word data_027e077c

	thumb_func_start func_ov03_020f5204
func_ov03_020f5204: ; 0x020f5204
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020f5228 ; =data_ov03_021006f4
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _020f522c ; =0x0211ab8c
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020f5230 ; =data_027e077c
	bl func_0202e7fc
	add r0, r4, #4
	bl func_0202ab64
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f5204
_020f5228: .word data_ov03_021006f4
_020f522c: .word 0x0211ab8c
_020f5230: .word data_027e077c

	thumb_func_start func_ov03_020f5234
func_ov03_020f5234: ; 0x020f5234
	thumb_func_end func_ov03_020f5234
_020f5234:
	.byte 0x08
data_ov03_020f5235: ; 0x020f5235
	.byte 0xb5, 0x00, 0x6c, 0x01, 0x1c, 0x98, 0x31, 0x09, 0x78, 0x00, 0x29
	.byte 0x02, 0xd0, 0xff, 0xf7, 0xcd, 0xfd, 0x08, 0xbd
_020f5248:
	bl func_ov03_020f4f4c
	pop {r3, pc}
	.align 2, 0

	thumb_func_start func_ov03_020f5250
func_ov03_020f5250: ; 0x020f5250
	thumb_func_end func_ov03_020f5250
_020f5250:
	.byte 0x08
data_ov03_020f5251: ; 0x020f5251
	.byte 0xb5, 0x01, 0x6c, 0x08, 0x1c, 0x98, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0d, 0xd0, 0x08, 0x1c
	.byte 0x99, 0x30, 0x00, 0x78, 0x00, 0x28, 0x04, 0xd0, 0x06, 0x48, 0x2f, 0x21, 0x39, 0xf7, 0x68, 0xea
	.byte 0x08, 0xbd
_020f5272:
	add r0, r1, #0
	bl func_ov03_020f4bc0
	pop {r3, pc}
_020f527a:
	ldr r0, _020f5284 ; =data_027e077c
	ldr r1, [r1]
	blx func_0202e740
	pop {r3, pc}
	.align 2, 0
_020f5284: .word data_027e077c

	thumb_func_start func_ov03_020f5288
func_ov03_020f5288: ; 0x020f5288
	thumb_func_end func_ov03_020f5288
_020f5288:
	.byte 0x01
data_ov03_020f5289: ; 0x020f5289
	.byte 0x4b, 0x00, 0x6c, 0x18, 0x47, 0xc0, 0x46
_020f5290: .word func_ov03_020f4e5c

	thumb_func_start func_ov03_020f5294
func_ov03_020f5294: ; 0x020f5294
	thumb_func_end func_ov03_020f5294
_020f5294:
	.byte 0x01
data_ov03_020f5295: ; 0x020f5295
	.byte 0x48, 0x02, 0x4b, 0x00, 0x68, 0x18, 0x47
_020f529c: .word data_027e1054
_020f52a0: .word func_ov03_020f4884

	thumb_func_start func_ov03_020f52a4
func_ov03_020f52a4: ; 0x020f52a4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [r4]
	ldr r0, _020f52c0 ; =func_ov09_0211abc8
	add r1, sp, #0
	str r0, [sp]
	ldr r0, _020f52c4 ; =data_027e077c
	str r4, [sp, #4]
	bl func_0202e7a4
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f52a4
_020f52c0: .word func_ov09_0211abc8
_020f52c4: .word data_027e077c

	thumb_func_start func_ov03_020f52c8
func_ov03_020f52c8: ; 0x020f52c8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020f52e4 ; =func_ov09_0211abc8
	add r1, sp, #0
	str r0, [sp]
	ldr r0, _020f52e8 ; =data_027e077c
	str r4, [sp, #4]
	bl func_0202e7fc
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f52c8
_020f52e4: .word func_ov09_0211abc8
_020f52e8: .word data_027e077c

	thumb_func_start func_ov03_020f52ec
func_ov03_020f52ec: ; 0x020f52ec
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	mvn r2, r2
	add r4, r1, #0
	cmp r5, r2
	beq _020f534e
	blx func_ov05_02102a80
	ldr r0, _020f5350 ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f532a
	cmp r5, #0
	beq _020f5310
	cmp r5, #1
	beq _020f5322
	pop {r3, r4, r5, pc}
_020f5310:
	ldr r0, [r4]
	add r1, r0, #0
	add r1, #0x98
	ldrb r1, [r1]
	cmp r1, #0
	beq _020f534e
	bl func_ov03_020f4de0
	pop {r3, r4, r5, pc}
_020f5322:
	ldr r0, [r4]
	bl func_ov03_020f4bc0
	pop {r3, r4, r5, pc}
_020f532a:
	cmp r5, #0
	beq _020f5334
	cmp r5, #1
	beq _020f5346
	pop {r3, r4, r5, pc}
_020f5334:
	ldr r0, [r4]
	blx func_ov03_020f4b7c
	cmp r0, #0
	beq _020f534e
	ldr r0, [r4]
	bl func_ov03_020f4e5c
	pop {r3, r4, r5, pc}
_020f5346:
	ldr r0, _020f5354 ; =data_027e1054
	ldr r0, [r0]
	bl func_ov03_020f4884
_020f534e:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f52ec
_020f5350: .word data_027e0c54
_020f5354: .word data_027e1054

	arm_func_start func_ov03_020f5358
func_ov03_020f5358: ; 0x020f5358
	cmp r0, #0
	bne _020f5370
	ldr r2, _020f53a8 ; =data_ov03_02100a84
	mov r0, #1
	strb r1, [r2]
	bx lr
_020f5370:
	cmp r0, #0
	mov r3, #0
	ble _020f53a0
	ldr ip, _020f53a8 ; =data_ov03_02100a84
_020f5380:
	ldrb r2, [ip]
	cmp r1, r2
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	cmp r3, r0
	add ip, ip, #1
	blt _020f5380
_020f53a0:
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020f5358
_020f53a8: .word data_ov03_02100a84

	arm_func_start func_ov03_020f53ac
func_ov03_020f53ac: ; 0x020f53ac
	cmp r0, #0
	bne _020f53c4
	ldr r2, _020f53fc ; =data_ov03_02100a88
	mov r0, #1
	strb r1, [r2]
	bx lr
_020f53c4:
	cmp r0, #0
	mov r3, #0
	ble _020f53f4
	ldr ip, _020f53fc ; =data_ov03_02100a88
_020f53d4:
	ldrb r2, [ip]
	cmp r1, r2
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	cmp r3, r0
	add ip, ip, #1
	blt _020f53d4
_020f53f4:
	mov r0, #1
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020f53ac
_020f53fc: .word data_ov03_02100a88

	arm_func_start func_ov03_020f5400
func_ov03_020f5400: ; 0x020f5400
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020f55dc ; =data_ov00_020e9e18
	mov r4, r0
	ldr r0, [r1, #0xcb0]
	tst r0, #0x10000
	beq _020f545c
	ldr r3, _020f55e0 ; =data_027e0764
	mov r5, #0
	ldr r2, [r3]
	ldmib r3, {r1, r7}
	umull ip, r8, r7, r2
	mla r8, r7, r1, r8
	ldr r1, [r3, #0xc]
	ldr r7, [r3, #0x10]
	mla r8, r1, r2, r8
	ldr r1, [r3, #0x14]
	adds r2, r7, ip
	str r2, [r3]
	adc r1, r1, r8
	mov r5, r5, lsl #0x3
	str r1, [r3, #4]
	orr r5, r5, r1, lsr #29
	b _020f54ac
_020f545c:
	ldr r8, _020f55e0 ; =data_027e0764
	mov r7, #0
	ldr r2, [r8]
	ldmib r8, {r1, r3}
	umull ip, r5, r3, r2
	mla r5, r3, r1, r5
	ldr r1, [r8, #0xc]
	ldr r3, [r8, #0x10]
	mla r5, r1, r2, r5
	adds r2, r3, ip
	ldr r1, [r8, #0x14]
	mov r3, #7
	adc r1, r1, r5
	umull ip, r5, r1, r3
	mla r5, r1, r7, r5
	mla r5, r7, r3, r5
	str r2, [r8]
	cmp r5, #3
	str r1, [r8, #4]
	addge r5, r5, #1
_020f54ac:
	tst r0, #0x800000
	beq _020f54f8
	ldr r0, _020f55e0 ; =data_027e0764
	mov r3, #0
	ldr r7, [r0, #8]
	ldr r6, [r0, #0xc]
	umull ip, r8, r7, r2
	mla r8, r7, r1, r8
	ldr r7, [r0, #0x10]
	mla r8, r6, r2, r8
	ldr r1, [r0, #0x14]
	adds r6, r7, ip
	adc r2, r1, r8
	mov r1, r3, lsl #0x3
	str r6, [r0]
	orr r1, r1, r2, lsr #29
	str r2, [r0, #4]
	add r6, r1, #1
	b _020f55ac
_020f54f8:
	mov r7, #0
	mov r8, #1
_020f5500:
	mov r0, r5
	mov r1, r8
	blx func_ov09_0211c980
	cmp r0, #2
	add r8, r8, #1
	addlt r7, r7, #1
	cmp r8, #9
	blt _020f5500
	cmp r7, #0
	movle r8, #0
	ble _020f5578
	ldr r0, _020f55e0 ; =data_027e0764
	ldr r2, [r0]
	ldmib r0, {r1, r3}
	umull ip, r8, r3, r2
	mla r8, r3, r1, r8
	ldr r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	mla r8, r1, r2, r8
	ldr r1, [r0, #0x14]
	adds r2, r3, ip
	adc r8, r1, r8
	stmia r0!, {r2, r8}
	cmp r7, #0
	beq _020f5578
	mov r2, #0
	umull r1, r0, r8, r7
	mla r0, r8, r2, r0
	mla r0, r2, r7, r0
	mov r8, r0
_020f5578:
	mov r7, #1
_020f557c:
	mov r0, r5
	mov r1, r7
	blx func_ov09_0211c980
	cmp r0, #2
	bge _020f55a0
	cmp r8, #0
	movle r6, r7
	ble _020f55ac
	sub r8, r8, #1
_020f55a0:
	add r7, r7, #1
	cmp r7, #9
	blt _020f557c
_020f55ac:
	add r0, r5, r6, lsl #3
	and r5, r0, #0xff
	mov r0, r4
	mov r1, r5
	bl func_ov03_020f5358
	cmp r0, #0
	bne _020f55d4
	mov r0, r4
	bl func_ov03_020f5400
	mov r5, r0
_020f55d4:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov03_020f5400
_020f55dc: .word data_ov00_020e9e18
_020f55e0: .word data_027e0764

	arm_func_start func_ov03_020f55e4
func_ov03_020f55e4: ; 0x020f55e4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020f5760 ; =data_ov00_020e9e18
	mov r7, r0
	ldr r0, [r1, #0xcb0]
	tst r0, #0x800000
	beq _020f5640
	ldr r0, _020f5764 ; =data_027e0764
	mov r1, #0
	ldr r3, [r0]
	ldmib r0, {r2, r4}
	umull r6, r5, r4, r3
	mla r5, r4, r2, r5
	ldr r2, [r0, #0xc]
	ldr r4, [r0, #0x10]
	mla r5, r2, r3, r5
	adds r3, r4, r6
	ldr r2, [r0, #0x14]
	mov r4, r1, lsl #0x3
	adc r2, r2, r5
	str r3, [r0]
	str r2, [r0, #4]
	orr r4, r4, r2, lsr #29
	b _020f56ec
_020f5640:
	mov r5, #0
	mov r6, r5
_020f5648:
	mov r0, r6
	blx func_ov09_0211c98c
	cmp r0, #2
	add r6, r6, #1
	addlt r5, r5, #1
	cmp r6, #8
	blt _020f5648
	cmp r5, #0
	movle r6, #0
	ble _020f56bc
	ldr r0, _020f5764 ; =data_027e0764
	ldr r2, [r0]
	ldmib r0, {r1, r3}
	umull ip, r6, r3, r2
	mla r6, r3, r1, r6
	ldr r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	mla r6, r1, r2, r6
	ldr r1, [r0, #0x14]
	adds r2, r3, ip
	adc r6, r1, r6
	stmia r0!, {r2, r6}
	cmp r5, #0
	beq _020f56bc
	mov r2, #0
	umull r1, r0, r6, r5
	mla r0, r6, r2, r0
	mla r0, r2, r5, r0
	mov r6, r0
_020f56bc:
	mov r5, #0
_020f56c0:
	mov r0, r5
	blx func_ov09_0211c98c
	cmp r0, #2
	bge _020f56e0
	cmp r6, #0
	movle r4, r5
	ble _020f56ec
	sub r6, r6, #1
_020f56e0:
	add r5, r5, #1
	cmp r5, #8
	blt _020f56c0
_020f56ec:
	ldr r2, _020f5764 ; =data_027e0764
	mov r0, #0
	ldr r3, [r2]
	ldmib r2, {r1, r5}
	umull ip, r6, r5, r3
	mla r6, r5, r1, r6
	ldr r1, [r2, #0xc]
	ldr r5, [r2, #0x10]
	mla r6, r1, r3, r6
	ldr r1, [r2, #0x14]
	adds r3, r5, ip
	adc r5, r1, r6
	mov r0, r0, lsl #0x4
	orr r0, r0, r5, lsr #28
	str r3, [r2]
	and r0, r0, #0xf
	orr r3, r0, r4, lsl #4
	and r1, r4, #0xff
	mov r0, r7
	str r5, [r2, #4]
	and r4, r3, #0xff
	bl func_ov03_020f53ac
	cmp r0, #0
	bne _020f5758
	mov r0, r7
	bl func_ov03_020f55e4
	mov r4, r0
_020f5758:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f55e4
_020f5760: .word data_ov00_020e9e18
_020f5764: .word data_027e0764

	arm_func_start func_ov03_020f5768
func_ov03_020f5768: ; 0x020f5768
	ldr r0, _020f5780 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020f5768
_020f5780: .word data_027e077c

	thumb_func_start func_ov03_020f5784
func_ov03_020f5784: ; 0x020f5784
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	mov r0, #2
	str r0, [r4, #8]
	sub r0, r0, #3
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	add r0, r4, #0
	add r0, #0x14
	strh r1, [r4, #0x10]
	blx func_02035064
	add r0, r4, #0
	add r0, #0x9c
	blx func_02035064
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r4, r0
	blx func_02035064
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end func_ov03_020f5784

	thumb_func_start func_ov03_020f57b8
func_ov03_020f57b8: ; 0x020f57b8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	strh r1, [r5, #0xe]
	mov r1, #0
	mvn r1, r1
	strh r1, [r5, #0xc]
	blx func_ov03_020f59d4
	mov r1, #0
	add r0, r5, #0
	add r0, #0x14
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp]
	blx func_020351b8
	ldr r0, _020f586c ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	bne _020f57ea
	mov r4, #1
	b _020f57ec
_020f57ea:
	mov r4, #0
_020f57ec:
	cmp r4, #0
	bne _020f5838
	mov r3, #0
	add r0, r5, #0
	str r3, [sp]
	add r0, #0x9c
	mov r1, #1
	mov r2, #9
	str r3, [sp, #4]
	blx func_020350b4
	mov r1, #0
	add r0, r5, #0
	add r0, #0x9c
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp]
	blx func_020351b8
	mov r0, #0x49
	mov r3, #0
	lsl r0, r0, #2
	str r3, [sp]
	add r0, r5, r0
	mov r1, #1
	mov r2, #0xa
	str r3, [sp, #4]
	blx func_020350b4
	mov r1, #0
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp]
	blx func_020351b8
_020f5838:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020f5870 ; =data_ov03_020ff616
	add r2, sp, #0x14
	ldrb r4, [r0, r1]
	ldr r0, _020f5874 ; =data_ov03_020ff614
	add r3, sp, #0x10
	ldrsh r6, [r0, r1]
	add r1, r4, #0
	add r0, r6, #0
	blx func_02034698
	add r0, r6, #0
	add r1, r4, #1
	add r2, sp, #0xc
	add r3, sp, #8
	blx func_02034698
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	strh r0, [r5, #0x10]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
	thumb_func_end func_ov03_020f57b8
_020f586c: .word data_027e0d38
_020f5870: .word data_ov03_020ff616
_020f5874: .word data_ov03_020ff614

	arm_func_start func_ov03_020f5878
func_ov03_020f5878: ; 0x020f5878
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsh r0, [r5, #0xe]
	mov r4, r1
	cmp r0, r4
	beq _020f5918
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #2
	blt _020f5928
	ldrsh r0, [r5, #0xe]
	mov r1, #0
	sub r6, r4, r0
	mov r0, r6
	str r1, [r5, #8]
	bl func_02042f68
	mov r1, r0
	mov r0, r6
	bl func_02002c14
	ldrsh r2, [r5, #0xe]
	mvn r1, #0
	add r0, r2, r0
	strh r0, [r5, #0xe]
	ldrsh r0, [r5, #0xc]
	cmp r0, r1
	beq _020f590c
	ldrsh r2, [r5, #0xe]
	ldrsh r0, [r5, #0xc]
	mov r1, #4
	sub r0, r2, r0
	bl func_01ff9b88
	cmp r0, #0
	bne _020f590c
	ldr r0, _020f598c ; =data_ov00_020eec9c
	mov r1, #0x28
	bl func_ov00_020d77e4
_020f590c:
	mov r0, r5
	bl func_ov03_020f59d4
	b _020f5928
_020f5918:
	ldrsh r1, [r5, #0xc]
	mvn r0, #0
	cmp r1, r0
	strneh r0, [r5, #0xc]
_020f5928:
	ldr r0, [r5]
	cmp r4, r0
	bge _020f5958
	strh r0, [r5, #0xe]
	ldr r0, [r5]
	sub r0, r0, r4
	str r0, [r5, #4]
	cmp r0, #4
	movgt r0, #4
	strgt r0, [r5, #4]
	mov r0, #2
	str r0, [r5, #8]
_020f5958:
	add r0, r5, #0x14
	bl func_0203516c
	ldr r0, _020f5990 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	beq _020f5984
	add r0, r5, #0x9c
	bl func_0203516c
	add r0, r5, #0x124
	bl func_0203516c
_020f5984:
	str r4, [r5]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f5878
_020f598c: .word data_ov00_020eec9c
_020f5990: .word data_027e0d38

	arm_func_start func_ov03_020f5994
func_ov03_020f5994: ; 0x020f5994
	ldr r1, _020f59cc ; =data_027e0f90
	ldr ip, _020f59d0 ; =func_ov03_020f59d4
	ldr r2, [r1]
	ldrb r1, [r2, #0x12]
	cmp r1, #0
	ldrnesh r2, [r2, #0xc]
	mov r1, #0
	ldreqsh r2, [r2, #0xa]
	str r2, [r0]
	str r1, [r0, #4]
	strh r2, [r0, #0xe]
	mov r1, #2
	str r1, [r0, #8]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f5994
_020f59cc: .word data_027e0f90
_020f59d0: .word func_ov03_020f59d4

	arm_func_start func_ov03_020f59d4
func_ov03_020f59d4: ; 0x020f59d4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020f5a90 ; =data_027e0d38
	mov r4, r0
	ldr r0, [r1]
	bl func_ov00_02078b40
	cmp r0, #2
	beq _020f5a6c
	ldr r0, _020f5a94 ; =data_027e0fb4
	ldr r0, [r0]
	bl func_ov00_020ad414
	cmp r0, #2
	ldrsh r0, [r4, #0xe]
	mov r1, #4
	sub r0, r0, #1
	bne _020f5a40
	bl func_01ff9b88
	add r1, r0, #5
	mov r3, #0
	str r3, [sp]
	and r2, r1, #0xff
	add r0, r4, #0x14
	mov r1, #1
	str r3, [sp, #4]
	bl func_020350b4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020f5a40:
	bl func_01ff9b88
	add r1, r0, #1
	mov r3, #0
	str r3, [sp]
	and r2, r1, #0xff
	add r0, r4, #0x14
	mov r1, #1
	str r3, [sp, #4]
	bl func_020350b4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_020f5a6c:
	mov r3, #0
	str r3, [sp]
	add r0, r4, #0x14
	mov r1, #2
	mov r2, #1
	str r3, [sp, #4]
	bl func_020350b4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f59d4
_020f5a90: .word data_027e0d38
_020f5a94: .word data_027e0fb4

	arm_func_start func_ov03_020f5a98
func_ov03_020f5a98: ; 0x020f5a98
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _020f5af0 ; =data_027e0c38
	mov r6, r1
	ldr r1, [r3, #0x10]
	mov r5, r2
	cmp r1, #0
	mov r4, #0
	beq _020f5ae8
	mov r1, r5
	bl func_02002c14
	cmp r0, #0
	bne _020f5ae8
	mul r1, r0, r5
	sub r0, r6, r1
	cmp r0, r5
	movgt r0, r5
	bgt _020f5ae4
	cmp r0, #0
	movlt r0, r4
_020f5ae4:
	sub r4, r5, r0
_020f5ae8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f5a98
_020f5af0: .word data_027e0c38

	arm_func_start func_ov03_020f5af4
func_ov03_020f5af4: ; 0x020f5af4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov r4, #6
	mul r4, r2, r4
	str r3, [sp, #8]
	ldr r5, _020f5ce8 ; =data_ov03_020ff614
	mov sl, r0
	ldrsh r0, [r5, r4]
	ldr r2, _020f5cec ; =data_ov03_020ff616
	str r1, [sp, #4]
	ldrb r1, [r2, r4]
	ldr r5, [sp, #0x5c]
	add r2, sp, #0x28
	add r3, sp, #0x24
	ldr sb, [sp, #0x50]
	ldr r8, [sp, #0x54]
	ldr fp, [sp, #0x58]
	str r5, [sp, #0x5c]
	bl func_02034698
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x14]
	ldrsh r0, [sl, #0xe]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	sub r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	subs r5, r0, #1
	bmi _020f5c8c
	ldr r0, _020f5ce8 ; =data_ov03_020ff614
	mov r6, r5, lsl #0x2
	add r7, r0, r4
_020f5b84:
	ldr r0, [sp, #0x20]
	subs r4, r0, r6
	bpl _020f5ba0
	mov r0, #1
	mov r4, #0
	str r0, [sp, #0x1c]
	b _020f5ba8
_020f5ba0:
	cmp r4, #4
	movgt r4, #4
_020f5ba8:
	ldr r0, [sp, #8]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	beq _020f5bd0
	ldr r1, [sp, #4]
	mov r0, r5
	mov r2, #8
	bl func_ov03_020f5a98
	str r0, [sp, #0xc]
_020f5bd0:
	mov r0, r5
	mov r1, #8
	bl func_01ff9b88
	ldr r1, [sp, #0xc]
	ldrsh r3, [sl, #0x10]
	add r2, r1, r0
	ldr r0, [sp, #0x1c]
	ldr ip, [sp, #0x28]
	mov r1, r5, asr #0x2
	cmp r0, #0
	ldr r0, [sp, #0x24]
	add r1, r5, r1, lsr #29
	mla r2, r3, r2, ip
	mov ip, r1, asr #0x3
	mov r1, #0xb
	mla r3, ip, r1, r0
	beq _020f5c34
	cmp r4, #0
	ble _020f5c34
	mov r0, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x10]
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _020f5c80
_020f5c34:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020f5c60
	cmp r4, #0
	addgt r0, sl, #0x9c
	add r1, r2, sb
	add r2, r3, r8
	addle r0, sl, #0x124
	mov r3, fp
	bl func_02034a1c
	b _020f5c80
_020f5c60:
	cmp r4, #0
	ldrgtb r1, [r7, #4]
	add r2, r2, sb
	add r3, r3, r8
	ldrleb r1, [r7, #3]
	str fp, [sp]
	ldrsh r0, [r7]
	bl func_02034984
_020f5c80:
	sub r6, r6, #4
	subs r5, r5, #1
	bpl _020f5b84
_020f5c8c:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	addlt sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020f5cc4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r3, fp
	add r0, sl, #0x124
	add r1, r1, sb
	add r2, r2, r8
	bl func_02034a1c
_020f5cc4:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r3, fp
	add r0, sl, #0x14
	add r1, r1, sb
	add r2, r2, r8
	bl func_02034a1c
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f5af4
_020f5ce8: .word data_ov03_020ff614
_020f5cec: .word data_ov03_020ff616

	arm_func_start func_ov03_020f5cf0
func_ov03_020f5cf0: ; 0x020f5cf0
	ldrsh r2, [r0, #0xe]
	ldr ip, _020f5d08 ; =func_ov00_020d77e4
	mov r1, #0x28
	strh r2, [r0, #0xc]
	ldr r0, _020f5d0c ; =data_ov00_020eec9c
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f5cf0
_020f5d08: .word func_ov00_020d77e4
_020f5d0c: .word data_ov00_020eec9c

	thumb_func_start func_ov03_020f5d10
func_ov03_020f5d10: ; 0x020f5d10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f5d40 ; =data_ov03_0210074c
	str r0, [r4]
	ldr r0, _020f5d44 ; =data_027e0c38
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _020f5d24
	mov r2, #0x32
	b _020f5d26
_020f5d24:
	mov r2, #0x39
_020f5d26:
	add r0, r4, #4
	mov r1, #0
	bl func_ov09_0211b7ac
	mov r1, #0
	str r1, [r4, #0x20]
	add r0, r4, #0
	str r1, [r4, #0x24]
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f5d10
_020f5d40: .word data_ov03_0210074c
_020f5d44: .word data_027e0c38

	thumb_func_start func_ov03_020f5d48
func_ov03_020f5d48: ; 0x020f5d48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020f5d6c ; =data_027e0fb4
	mov r1, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	str r0, [r4, #0x24]
	mov r0, #0x3c
	str r0, [r4, #0x20]
	add r0, r4, #4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f5d48
_020f5d6c: .word data_027e0fb4

	arm_func_start func_ov03_020f5d70
func_ov03_020f5d70: ; 0x020f5d70
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _020f5ee4 ; =data_027e0e28
	bl func_ov00_0207bc48
	cmp r0, #0
	beq _020f5e28
	ldr r0, _020f5ee4 ; =data_027e0e28
	mov r5, #0
	bl func_ov00_0207bc68
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	moveq r5, #1
	cmp r5, #0
	addeq sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	mov r1, #0
	mov r2, r1
	mov r3, r1
	mov r0, #0x5f
	str r1, [sp]
	bl func_0203493c
	mov r2, #0
	mov r3, r2
	mov r0, #0x5f
	mov r1, #1
	str r2, [sp]
	bl func_0203493c
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r2, #0x5f
	str r2, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	mov r1, #4
	mov r3, #5
	bl func_02034bc8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
_020f5e28:
	mov r0, r4
	bl func_ov03_020f6190
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020f5ee8 ; =data_027e0c38
	ldr r0, [r0, #0x10]
	cmp r0, #0
	mvneq r6, #0x31
	movne r6, #0x100
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	movne r2, #1
	mvneq r2, #0
	ldrsh r0, [r4, #0x12]
	cmp r1, #0
	mul r5, r2, r0
	bne _020f5e88
	ldr r0, [r4, #0x24]
	bl func_ov00_020d1530
	rsb r0, r0, #4
	add r5, r5, r0, lsl #3
_020f5e88:
	mov r1, #0
	add r5, r5, r6
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	mov r0, #2
	bl func_0203493c
	mov r1, #4
	str r5, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	mov r3, r1
	mov r2, #2
	bl func_02034bc8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f5d70
_020f5ee4: .word data_027e0e28
_020f5ee8: .word data_027e0c38

	arm_func_start func_ov03_020f5eec
func_ov03_020f5eec: ; 0x020f5eec
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _020f6150 ; =data_027e0f74
	mov r6, r0
	ldr r0, [r1]
	bl func_ov00_02097738
	cmp r0, #0
	beq _020f5f3c
	ldr r0, _020f6154 ; =data_027e0fb4
	ldr r1, [r6, #0x24]
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r1, r0
	beq _020f5f3c
	mov r1, #0
	str r1, [r6, #0x20]
	add r0, r6, #4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	b _020f5f98
_020f5f3c:
	ldr r1, [r6, #0x20]
	cmp r1, #0
	bne _020f5f70
	ldrsb r0, [r6, #0x18]
	cmp r0, #0
	cmpne r0, #4
	bne _020f5f98
	add r0, r6, #4
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #8]
	blx r2
	b _020f5f98
_020f5f70:
	ldrsh r0, [r6, #0xc]
	rsb r1, r1, #0x3c
	add r0, r0, r0, lsr #31
	cmp r1, r0, asr #1
	bne _020f5f98
	add r0, r6, #4
	ldr r2, [r0]
	mov r1, #4
	ldr r2, [r2, #8]
	blx r2
_020f5f98:
	add r0, r6, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldrsb r0, [r6, #0x18]
	cmp r0, #2
	beq _020f5fc4
	ldr r0, _020f6158 ; =data_027e0e28
	bl func_ov00_0207bc48
	cmp r0, #0
	beq _020f6140
_020f5fc4:
	ldr r0, _020f6154 ; =data_027e0fb4
	ldr r1, [r6, #0x24]
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r1, r0
	beq _020f6140
	sub r4, r0, r1
	mov r0, r4
	bl func_02042f68
	mov r5, r0
	cmp r5, #1
	bne _020f6010
	mov r0, r4
	mov r1, r5
	bl func_02002c14
	ldr r1, [r6, #0x24]
	add r0, r1, r0
	str r0, [r6, #0x24]
	b _020f60cc
_020f6010:
	cmp r5, #0x64
	bge _020f6034
	mov r1, r5
	mov r0, r4, lsl #0x1
	bl func_02002c14
	ldr r1, [r6, #0x24]
	add r0, r1, r0
	str r0, [r6, #0x24]
	b _020f60cc
_020f6034:
	cmp r5, #0x1f4
	bge _020f605c
	mov r0, #0xa
	mul r0, r4, r0
	mov r1, r5
	bl func_02002c14
	ldr r1, [r6, #0x24]
	add r0, r1, r0
	str r0, [r6, #0x24]
	b _020f60cc
_020f605c:
	cmp r5, #0x3e8
	bge _020f6084
	mov r0, #0x14
	mul r0, r4, r0
	mov r1, r5
	bl func_02002c14
	ldr r1, [r6, #0x24]
	add r0, r1, r0
	str r0, [r6, #0x24]
	b _020f60cc
_020f6084:
	ldr r0, _020f615c ; =0x00001388
	cmp r5, r0
	bge _020f60b0
	mov r0, #0x64
	mul r0, r4, r0
	mov r1, r5
	bl func_02002c14
	ldr r1, [r6, #0x24]
	add r0, r1, r0
	str r0, [r6, #0x24]
	b _020f60cc
_020f60b0:
	mov r0, #0xc8
	mul r0, r4, r0
	mov r1, r5
	bl func_02002c14
	ldr r1, [r6, #0x24]
	add r0, r1, r0
	str r0, [r6, #0x24]
_020f60cc:
	ldr r0, _020f6154 ; =data_027e0fb4
	ldr r1, [r6, #0x24]
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r1, r0
	beq _020f60f4
	ldrsh r0, [r6, #0xc]
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r6, #0x20]
_020f60f4:
	cmp r5, #0
	ble _020f6140
	ldrb r0, [r6, #0x28]
	cmp r0, #0
	beq _020f6140
	cmp r5, #0
	movgt r0, #0x14
	movle r0, #0x15
	mov r1, r0, lsl #0x10
	ldr r0, _020f6160 ; =data_ov00_020eec9c
	mov r1, r1, lsr #0x10
	bl func_ov00_020d7c8c
	ldr r0, _020f6154 ; =data_027e0fb4
	ldr r1, [r6, #0x24]
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r1, r0
	moveq r0, #0
	streqb r0, [r6, #0x28]
_020f6140:
	ldr r0, [r6, #0x20]
	add r0, r0, #1
	str r0, [r6, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f5eec
_020f6150: .word data_027e0f74
_020f6154: .word data_027e0fb4
_020f6158: .word data_027e0e28
_020f615c: .word 0x00001388
_020f6160: .word data_ov00_020eec9c

	arm_func_start func_ov03_020f6164
func_ov03_020f6164: ; 0x020f6164
	mov r1, #1
	strb r1, [r0, #0x28]
	bx lr
	arm_func_end func_ov03_020f6164

	arm_func_start func_ov03_020f6170
func_ov03_020f6170: ; 0x020f6170
	ldr r1, _020f618c ; =data_027e0fb4
	mov r2, #0
	ldr r1, [r1]
	ldrh r1, [r1, #0x22]
	str r1, [r0, #0x24]
	strb r2, [r0, #0x28]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020f6170
_020f618c: .word data_027e0fb4

	arm_func_start func_ov03_020f6190
func_ov03_020f6190: ; 0x020f6190
	stmdb sp!, {r4, lr}
	ldr r1, _020f61f4 ; =data_027e0618
	mov r4, r0
	ldrb r0, [r1, #0x101]
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f61f8 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf03c
	ldrsb r0, [r0, #0x14]
	cmp r0, #0
	bne _020f61e4
	ldr r0, [r4, #0x20]
	cmp r0, #0x3c
	bge _020f61ec
	ldr r0, _020f61fc ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	bne _020f61ec
_020f61e4:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020f61ec:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6190
_020f61f4: .word data_027e0618
_020f61f8: .word data_027e103c
_020f61fc: .word data_027e0f74

	arm_func_start func_ov03_020f6200
func_ov03_020f6200: ; 0x020f6200
	stmdb sp!, {r3, lr}
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x20]
	ldmia sp!, {r3, pc}
	ldr r1, _020f6274 ; =data_027e103c
	ldr r1, [r1]
	ldrb r1, [r1, #0x29]
	cmp r1, #1
	ldmia sp!, {r3, pc}
	ldrsb r1, [r0, #0x18]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_020f6238: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020f624c ; case 1
	b _020f624c ; case 2
	ldmia sp!, {r3, pc} ; case 3
	ldmia sp!, {r3, pc} ; case 4
_020f624c:
	ldrsh r2, [r0, #0xc]
	mov r1, #4
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #0x1
	rsb r2, r2, #0x3c
	str r2, [r0, #0x20]
	ldr r2, [r0, #4]!
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6200
_020f6274: .word data_027e103c

	thumb_func_start func_ov03_020f6278
func_ov03_020f6278: ; 0x020f6278
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl func_ov03_020f5d10
	add r0, r4, #0
	add r0, #0x2c
	bl func_ov03_020f5784
	mov r1, #0
	mov r0, #0x76
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	blx func_ov00_020d0490
	mov r1, #0x79
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r1, #0xc
	add r0, #8
	add r5, r4, r1
	str r2, [r4, r0]
	add r0, r5, #0
	blx func_ov00_020d05dc
	mov r0, #0x1f
	ldr r1, _020f636c ; =data_ov00_020e899c
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r2, #0
	strb r2, [r5, #0x10]
	sub r1, r2, #1
	strb r1, [r5, #0x11]
	strb r1, [r5, #0x12]
	strb r1, [r5, #0x13]
	add r0, #0x18
	str r2, [r5, #0x14]
	add r5, r4, r0
	add r0, r5, #0
	blx func_ov00_020d05dc
	mov r1, #0x82
	ldr r0, _020f636c ; =data_ov00_020e899c
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #0
	strb r3, [r5, #0x10]
	sub r0, r3, #1
	strb r0, [r5, #0x11]
	strb r0, [r5, #0x12]
	strb r0, [r5, #0x13]
	add r0, r1, #0
	str r3, [r5, #0x14]
	add r0, #0x18
	strb r3, [r4, r0]
	mov r2, #2
	str r2, [sp]
	ldr r0, _020f6370 ; =func_ov03_020f7398
	str r3, [sp, #4]
	str r0, [sp, #8]
	sub r1, #0x18
	add r0, r4, r1
	mov r1, #0xb
	str r3, [sp, #0xc]
	blx func_ov00_020cfed0
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _020f6374 ; =func_ov03_020f7414
	mov r1, #0xb
	str r0, [sp, #8]
	ldr r0, _020f6378 ; =func_ov03_020f7390
	mov r2, #5
	str r0, [sp, #0xc]
	mov r0, #0x82
	lsl r0, r0, #2
	add r0, r4, r0
	mov r3, #1
	blx func_ov00_020cfed0
	ldr r0, _020f637c ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	cmp r0, #0x1b
	beq _020f6342
	cmp r0, #0x20
	beq _020f6342
	cmp r0, #0x2e
	bne _020f6366
_020f6342:
	ldr r1, _020f6380 ; =data_027e0ce0
	mov r0, #0x6b
	ldr r1, [r1, #4]
	lsl r0, r0, #2
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f6358
	bl func_ov03_020f5784
_020f6358:
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0xc
	bl func_ov03_020f57b8
_020f6366:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f6278
_020f636c: .word data_ov00_020e899c
_020f6370: .word func_ov03_020f7398
_020f6374: .word func_ov03_020f7414
_020f6378: .word func_ov03_020f7390
_020f637c: .word data_027e0d38
_020f6380: .word data_027e0ce0

	thumb_func_start func_ov03_020f6384
func_ov03_020f6384: ; 0x020f6384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _020f63b0
	sub r0, #0xb4
	add r0, r4, r0
	blx func_020350ac
	add r0, r4, #0
	add r0, #0x9c
	blx func_020350ac
	add r0, r4, #0
	add r0, #0x14
	blx func_020350ac
	add r0, r4, #0
	blx func_0202ea0c
_020f63b0:
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	blx func_020350ac
	add r0, r5, #0
	add r0, #0xc8
	blx func_020350ac
	add r0, r5, #0
	add r0, #0x40
	blx func_020350ac
	add r0, r5, #4
	bl func_ov09_0211b7e0
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end func_ov03_020f6384

	thumb_func_start func_ov03_020f63d4
func_ov03_020f63d4: ; 0x020f63d4
	push {r4, lr}
	ldr r1, _020f6410 ; =data_027e0f90
	add r4, r0, #0
	ldr r2, [r1]
	mov r1, #0xa
	ldrsh r1, [r2, r1]
	add r0, #0x2c
	bl func_ov03_020f57b8
	add r0, r4, #0
	bl func_ov03_020f5d48
	ldr r0, _020f6414 ; =data_027e0fb4
	ldr r0, [r0]
	blx func_ov00_020ae350
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #1
	add r0, #0x19
	strb r2, [r4, r0]
	add r1, #0x31
	strb r2, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f63d4
_020f6410: .word data_027e0f90
_020f6414: .word data_027e0fb4

	arm_func_start func_ov03_020f6418
func_ov03_020f6418: ; 0x020f6418
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r2, _020f66e4 ; =data_027e0618
	mov r6, r0
	ldrb r0, [r2, #0x101]
	mov r5, r1
	cmp r0, #0
	addne sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _020f66e8 ; =data_027e0e2c
	mvn r0, #0
	ldr r1, [r1, #4]
	cmp r1, r0
	addne sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020f66ec ; =data_ov09_0211f5dc
	bl func_ov09_021136c4
	cmp r0, #0
	addne sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020f66f0 ; =data_027e0c54
	mov r4, #1
	ldrb r3, [r0]
	mov r1, #0
	cmp r3, #0
	bne _020f64a0
	ldrh r0, [r5]
	mov r2, r4
	tst r0, #2
	bne _020f6498
	tst r0, #1
	moveq r2, r1
_020f6498:
	cmp r2, #0
	movne r1, #1
_020f64a0:
	cmp r1, #0
	bne _020f64c8
	cmp r3, #0
	mov r1, #0
	beq _020f64c0
	ldrh r0, [r5]
	tst r0, #2
	movne r1, #1
_020f64c0:
	cmp r1, #0
	moveq r4, #0
_020f64c8:
	cmp r4, #0
	beq _020f64d8
	mov r0, r6
	bl func_ov03_020f5d70
_020f64d8:
	ldr r0, _020f66f4 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #3
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #0
	beq _020f6578
	mov r0, r6
	bl func_ov03_020f6d54
	cmp r0, #0
	beq _020f6530
	ldr r0, _020f66f4 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	mov r0, r6
	bne _020f652c
	bl func_ov03_020f6e10
	b _020f6530
_020f652c:
	bl func_ov03_020f6ef8
_020f6530:
	mov r0, r6
	bl func_ov03_020f72b4
	cmp r0, #0
	beq _020f6578
	ldr r0, _020f66f8 ; =data_027e103c
	ldr r1, _020f66fc ; =0x000004cc
	ldr r0, [r0]
	bl func_ov00_020cf864
	mov r2, r0
	mov r0, #0
	mov r1, #0x3c000
	bl func_ov00_020d03f8
	add r0, r0, #0x800
	mov r1, r0, asr #0xc
	rsb r2, r1, #0
	mov r0, r6
	mov r1, #0
	bl func_ov03_020f70c8
_020f6578:
	ldr r0, _020f66f0 ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f6600
	ldrh r0, [r5]
	tst r0, #4
	beq _020f6600
	ldr r0, _020f6700 ; =data_027e077c
	ldr r1, _020f6704 ; =data_02056be4
	ldr r0, [r0]
	ldrb r0, [r1, r0]
	tst r0, #1
	bne _020f6600
	bl func_ov03_020f7f6c
	cmp r0, #0
	beq _020f6600
	ldr r0, _020f6708 ; =data_027e1054
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x98]
	cmp r0, #0
	bne _020f6600
	ldr r0, _020f670c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083588
	cmp r0, #0
	subgt r0, r0, #1
	mov r4, #0
	rsb r1, r0, #6
	mov r0, #0xc1
	mov r2, #0xe
	mov r3, #0xb9
	str r4, [sp]
	bl func_02034984
_020f6600:
	ldr r0, _020f66f4 ; =data_027e0d38
	mov r4, #1
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x32
	moveq r4, #0
	cmp r4, #0
	beq _020f66a0
	ldrh r0, [r5]
	tst r0, #4
	beq _020f66a0
	ldr r0, _020f66f8 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf05c
	ldrh r1, [r0, #0x36]
	ldr r0, _020f6710 ; =0x0000ffff
	cmp r1, r0
	ldreq r0, _020f66f0 ; =data_027e0c54
	ldreqb r0, [r0]
	cmpeq r0, #0
	bne _020f66a0
	ldr r0, _020f6700 ; =data_027e077c
	ldr r1, _020f6704 ; =data_02056be4
	ldr r0, [r0]
	ldrb r0, [r1, r0]
	tst r0, #1
	bne _020f66a0
	ldr r0, _020f6708 ; =data_027e1054
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x95]
	cmp r0, #0
	bne _020f66a0
	mov r2, #0
	mov r3, r2
	mov r0, #0xbe
	mov r1, #9
	str r2, [sp]
	bl func_0203493c
_020f66a0:
	ldr r0, _020f66f0 ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	addne sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r5]
	tst r0, #4
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	bl func_ov03_020f5768
	cmp r0, #0
	addeq sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl func_ov03_020f6b18
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6418
_020f66e4: .word data_027e0618
_020f66e8: .word data_027e0e2c
_020f66ec: .word data_ov09_0211f5dc
_020f66f0: .word data_027e0c54
_020f66f4: .word data_027e0d38
_020f66f8: .word data_027e103c
_020f66fc: .word 0x000004cc
_020f6700: .word data_027e077c
_020f6704: .word data_02056be4
_020f6708: .word data_027e1054
_020f670c: .word data_027e0e60
_020f6710: .word 0x0000ffff

	arm_func_start func_ov03_020f6714
func_ov03_020f6714: ; 0x020f6714
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f7020
	ldr r0, _020f676c ; =data_027e0f90
	ldr r1, [r0]
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	beq _020f6744
	ldrsh r1, [r1, #0xc]
	add r0, r4, #0x2c
	bl func_ov03_020f5878
	b _020f6750
_020f6744:
	ldrsh r1, [r1, #0xa]
	add r0, r4, #0x2c
	bl func_ov03_020f5878
_020f6750:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	mov r0, r4
	bl func_ov03_020f6a88
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6714
_020f676c: .word data_027e0f90

	arm_func_start func_ov03_020f6770
func_ov03_020f6770: ; 0x020f6770
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _020f69b4 ; =data_027e077c
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #1
	addne sp, sp, #4
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020f69b8 ; =data_027e0c68
	ldrb r0, [r0, #4]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020f69bc ; =data_027e103c
	ldr r1, _020f69c0 ; =0x000004cc
	ldr r0, [r0]
	bl func_ov00_020cf8fc
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
	mov r0, r5
	bl func_ov03_020f72b4
	cmp r0, #0
	beq _020f69a8
	ldr r0, _020f69c4 ; =data_027e0c38
	mov r4, #0
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _020f680c
	ldr r0, _020f69bc ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cefbc
	ldr r0, [r0, #0x1ec]
	cmp r0, #1
	subeq r4, r4, #0xd4
	subne r4, r4, #0xe4
_020f680c:
	ldr r0, _020f69c8 ; =data_027e0fb4
	mov r1, #1
	ldr r0, [r0]
	bl func_ov00_020ad790
	cmp r0, #0
	beq _020f68d8
	ldr r0, _020f69b8 ; =data_027e0c68
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _020f68d8
	ldr r0, _020f69bc ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cefbc
	ldr r0, [r0, #0x1ec]
	mov r2, #0
	cmp r0, #1
	bne _020f6894
	add r0, r5, #0x208
	add r1, r5, #0x200
	ldr ip, [r0]
	ldrh r6, [r1, #0x12]
	ldr ip, [ip]
	mov r1, r4
	mov r3, r5
	blx ip
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl func_ov03_020f69d8
	cmp r0, #0
	beq _020f69a8
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020f6894:
	add r0, r5, #0x1f0
	add r1, r5, #0x100
	ldr ip, [r0]
	ldrh r6, [r1, #0xfa]
	ldr ip, [ip]
	mov r1, r4
	mov r3, r5
	blx ip
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl func_ov03_020f69d8
	cmp r0, #0
	beq _020f69a8
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020f68d8:
	ldr r1, _020f69cc ; =data_027e0d78
	ldrh r0, [r1, #0x34]
	tst r0, #1
	beq _020f69a8
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0x1f0
	ldr r5, [r0]
	ldr ip, [r1, #0x10]
	ldr r2, [r1, #0x14]
	ldr r5, [r5, #8]
	sub r1, ip, r4
	blx r5
	cmp r0, #0
	beq _020f69a8
	ldr r0, _020f69c8 ; =data_027e0fb4
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020ad790
	cmp r0, #0
	bne _020f693c
	ldr r0, _020f69d0 ; =data_ov00_020eec9c
	mov r1, #0xc
	bl func_ov00_020d77e4
	b _020f69a8
_020f693c:
	ldr r0, _020f69c8 ; =data_027e0fb4
	ldr r0, [r0]
	bl func_ov00_020ae390
	cmp r0, #7
	bne _020f69a8
	ldr r0, _020f69c8 ; =data_027e0fb4
	mov r1, #7
	ldr r0, [r0]
	bl func_ov00_020ad714
	ldr r1, _020f69d4 ; =data_027e0f64
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x15c]
	cmp r0, #0x36
	bne _020f6994
	ldr r0, _020f69d0 ; =data_ov00_020eec9c
	mov r1, #0x11
	bl func_ov00_020d77e4
	mov r0, r4
	bl func_ov14_0213ec64
	b _020f69a8
_020f6994:
	ldr r0, _020f69d0 ; =data_ov00_020eec9c
	mov r1, #0x10
	bl func_ov00_020d77e4
	mov r0, r4
	bl func_ov14_0213ec40
_020f69a8:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6770
_020f69b4: .word data_027e077c
_020f69b8: .word data_027e0c68
_020f69bc: .word data_027e103c
_020f69c0: .word 0x000004cc
_020f69c4: .word data_027e0c38
_020f69c8: .word data_027e0fb4
_020f69cc: .word data_027e0d78
_020f69d0: .word data_ov00_020eec9c
_020f69d4: .word data_027e0f64

	arm_func_start func_ov03_020f69d8
func_ov03_020f69d8: ; 0x020f69d8
	tst r2, #8
	moveq r0, #0
	bxeq lr
	cmp r1, #2
	bne _020f69f4
	mov r0, #1
	bx lr
_020f69f4:
	mov r0, #0
	bx lr
	arm_func_end func_ov03_020f69d8

	arm_func_start func_ov03_020f69fc
func_ov03_020f69fc: ; 0x020f69fc
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020f6a80 ; =data_027e0c38
	mov r6, r0
	ldr r0, [r3, #0x10]
	mov r5, r1
	mov r4, r2
	cmp r0, #1
	mov r7, #0
	bne _020f6a3c
	ldr r0, _020f6a84 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cefbc
	ldr r0, [r0, #0x1ec]
	cmp r0, #1
	subeq r7, r7, #0xd4
	subne r7, r7, #0xe4
_020f6a3c:
	mov r0, r6
	bl func_ov03_020f72b4
	cmp r0, #0
	beq _020f6a78
	mov r3, #0
	str r3, [sp]
	add r0, r6, #0x1f0
	ldr r6, [r0]
	mov r2, r4
	ldr r6, [r6, #8]
	sub r1, r5, r7
	blx r6
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020f6a78:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f69fc
_020f6a80: .word data_027e0c38
_020f6a84: .word data_027e103c

	arm_func_start func_ov03_020f6a88
func_ov03_020f6a88: ; 0x020f6a88
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020f6b0c ; =data_027e0d38
	mov r5, r0
	ldr r0, [r1]
	bl func_ov00_02078b40
	cmp r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6b10 ; =data_027e0fb4
	ldr r0, [r0]
	bl func_ov00_020ae350
	ldr r1, [r5, #0x1e4]
	mov r4, r0
	subs r0, r4, r1
	ldmia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	ble _020f6ae0
	mov r2, #1
	add r0, r5, #0x1dc
	mov r1, #0x30
	str r2, [r5, #0x1e8]
	bl func_ov00_020d0530
	b _020f6af8
_020f6ae0:
	bge _020f6af8
	ldr r1, _020f6b14 ; =0x00007530
	mov r2, #2
	add r0, r5, #0x1dc
	str r2, [r5, #0x1e8]
	bl func_ov00_020d0530
_020f6af8:
	add r0, r5, #0x100
	ldrsh r1, [r0, #0xde]
	strh r1, [r0, #0xdc]
	str r4, [r5, #0x1e4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6a88
_020f6b0c: .word data_027e0d38
_020f6b10: .word data_027e0fb4
_020f6b14: .word 0x00007530

	arm_func_start func_ov03_020f6b18
func_ov03_020f6b18: ; 0x020f6b18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x34
	ldr r1, _020f6d28 ; =data_027e0d38
	mov r6, r0
	ldr r0, [r1]
	bl func_ov00_02078b40
	cmp r0, #2
	addeq sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, r6, #0x100
	ldrsh r1, [r0, #0xdc]
	ldrsh r0, [r0, #0xe0]
	ldr r4, [r6, #0x1e4]
	mov r5, #0
	cmp r1, r0
	beq _020f6b64
	ldr r0, [r6, #0x1e8]
	cmp r0, #1
	moveq r5, #1
_020f6b64:
	cmp r4, #0
	mov sl, #0
	ble _020f6bb0
	sub r7, r4, #1
	mov sb, sl
	mov r8, #0xbe
_020f6b7c:
	mov r0, r8
	mov r2, sb
	mov r3, sb
	add r1, sl, #1
	str sb, [sp]
	bl func_0203493c
	cmp sl, r7
	bne _020f6ba4
	cmp r5, #0
	bne _020f6bb0
_020f6ba4:
	add sl, sl, #1
	cmp sl, r4
	blt _020f6b7c
_020f6bb0:
	ldr r0, [r6, #0x1e8]
	cmp r0, #1
	beq _020f6bc8
	cmp r0, #2
	beq _020f6c88
	b _020f6cfc
_020f6bc8:
	cmp r5, #0
	beq _020f6cfc
	add r0, sp, #0x14
	bl func_01ffbe34
	mov r1, #1
	add r0, sp, #4
	strb r1, [sp, #0x1f]
	bl func_01ff8000
	add r0, r6, #0x100
	ldrsh r0, [r0, #0xdc]
	mov r1, #0x10
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	sub r0, r0, #3
	rsb r0, r0, r0, lsl #16
	bl func_01ff9b4c
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r3, r0, lsl #0x2
	ldr r1, _020f6d2c ; =data_02050f54
	mov r2, #0x800
	ldrsh r1, [r1, r3]
	mov r0, #0x1000
	add r1, r1, #0x1000
	add r1, r1, r1, lsr #31
	mov r3, r1, asr #0x1
	adds r1, r2, r3, lsl #11
	mov r2, r1, lsr #0xc
	mov r1, r3, asr #0x1f
	mov r1, r1, lsl #0xb
	orr r1, r1, r3, lsr #21
	adc r1, r1, #0
	orr r2, r2, r1, lsl #20
	add r1, r2, #0x1000
	bl func_01ff98e0
	add r2, sp, #4
	str r2, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, sp, #0x14
	str r0, [sp]
	mov r1, r4
	mov r0, #0xbe
	mov r3, r2
	bl func_0203493c
	b _020f6cfc
_020f6c88:
	ldr r0, _020f6d30 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	beq _020f6ce4
	ldr r0, [r6, #0x1e8]
	cmp r0, #2
	bne _020f6ce4
	add r0, r6, #0x100
	ldrsh r0, [r0, #0xdc]
	mov r1, #0x28
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	bl func_01ff9b88
	cmp r0, #0x14
	ble _020f6cfc
	mov r2, #0
	mov r3, r2
	add r1, r4, #1
	mov r0, #0xbe
	str r2, [sp]
	bl func_0203493c
	b _020f6cfc
_020f6ce4:
	ldr r0, _020f6d30 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x1e8]
_020f6cfc:
	add r0, r6, #0x1dc
	mov r1, #1
	bl func_ov00_020d04ac
	add r0, r6, #0x100
	ldrsh r1, [r0, #0xdc]
	ldrsh r0, [r0, #0xe0]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r6, #0x1e8]
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6b18
_020f6d28: .word data_027e0d38
_020f6d2c: .word data_02050f54
_020f6d30: .word data_027e0f74

	arm_func_start func_ov03_020f6d34
func_ov03_020f6d34: ; 0x020f6d34
	ldr r1, _020f6d4c ; =data_027e0f90
	ldr ip, _020f6d50 ; =func_ov03_020f57b8
	ldr r1, [r1]
	add r0, r0, #0x2c
	ldrsh r1, [r1, #0xa]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f6d34
_020f6d4c: .word data_027e0f90
_020f6d50: .word func_ov03_020f57b8

	arm_func_start func_ov03_020f6d54
func_ov03_020f6d54: ; 0x020f6d54
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r0, [r0, #0x220]
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6dfc ; =data_027e0618
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6e00 ; =data_ov09_0211f5b4
	bl func_ov03_020f3f94
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6e04 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #7
	cmpne r0, #9
	cmpne r0, #0xa
	bne _020f6db0
	mov r4, #1
	b _020f6db4
_020f6db0:
	mov r4, #0
_020f6db4:
	ldr r0, _020f6e08 ; =data_027e0e28
	mov r5, #0
	bl func_ov00_0207bc48
	cmp r0, #0
	bne _020f6df4
	ldr r0, _020f6e04 ; =data_027e077c
	ldr r1, _020f6e0c ; =data_02056be4
	ldr r0, [r0]
	mov r2, #1
	ldrb r0, [r1, r0]
	tst r0, #4
	beq _020f6dec
	cmp r4, #0
	moveq r2, r5
_020f6dec:
	cmp r2, #0
	movne r5, #1
_020f6df4:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6d54
_020f6dfc: .word data_027e0618
_020f6e00: .word data_ov09_0211f5b4
_020f6e04: .word data_027e077c
_020f6e08: .word data_027e0e28
_020f6e0c: .word data_02056be4

	arm_func_start func_ov03_020f6e10
func_ov03_020f6e10: ; 0x020f6e10
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r1, _020f6ee0 ; =data_027e077c
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #1
	addne sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6ee4 ; =data_027e0db0
	ldr r0, [r0, #4]
	cmp r0, #0
	addgt sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6ee8 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #3
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6eec ; =data_027e0cbc
	mov r1, #2
	bl func_0203d7e0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f6ef0 ; =data_027e0c38
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldr r0, _020f6ef4 ; =data_027e0f90
	moveq r5, #0
	ldr r0, [r0]
	movne r5, #0xab
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	mov r1, r0, asr #0x1
	add r0, r0, r1, lsr #30
	mov r1, r0, asr #0x2
	mov r2, #1
	cmp r1, #0x10
	str r5, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	movge r1, #0x10
	mov r3, r2
	add r0, r4, #0x2c
	str ip, [sp, #0xc]
	bl func_ov03_020f5af4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6e10
_020f6ee0: .word data_027e077c
_020f6ee4: .word data_027e0db0
_020f6ee8: .word data_027e0d38
_020f6eec: .word data_027e0cbc
_020f6ef0: .word data_027e0c38
_020f6ef4: .word data_027e0f90

	arm_func_start func_ov03_020f6ef8
func_ov03_020f6ef8: ; 0x020f6ef8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r1, _020f6ff4 ; =data_027e077c
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #1
	addne sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020f6ff8 ; =data_027e0db0
	ldr r0, [r0, #4]
	cmp r0, #0
	addgt sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020f6ffc ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097738
	cmp r0, #0
	beq _020f6f58
	ldr r0, _020f7000 ; =data_027e0f90
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020f6f58:
	ldr r0, _020f7004 ; =data_027e0cbc
	mov r1, #1
	bl func_0203d7e0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020f7008 ; =data_027e0c38
	ldr r1, _020f700c ; =data_027e0fb4
	ldr r0, [r0, #0x10]
	ldr r5, [r1]
	cmp r0, #0
	ldr r0, _020f7000 ; =data_027e0f90
	moveq r6, #0
	ldr r0, [r0]
	movne r6, #0xab
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	mov r1, r0, asr #0x1
	add r0, r0, r1, lsr #30
	mov r7, r0, asr #0x2
	cmp r7, #0x10
	mov r0, r5
	movge r7, #0x10
	bl func_ov00_020ad414
	cmp r0, #2
	moveq r5, #1
	str r6, [sp]
	mov r2, #0
	str r2, [sp, #4]
	movne r5, #0
	str r2, [sp, #8]
	mov r1, r7
	add r0, r4, #0x2c
	mov r3, #1
	str r5, [sp, #0xc]
	bl func_ov03_020f5af4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f6ef8
_020f6ff4: .word data_027e077c
_020f6ff8: .word data_027e0db0
_020f6ffc: .word data_027e0f74
_020f7000: .word data_027e0f90
_020f7004: .word data_027e0cbc
_020f7008: .word data_027e0c38
_020f700c: .word data_027e0fb4

	arm_func_start func_ov03_020f7010
func_ov03_020f7010: ; 0x020f7010
	ldr ip, _020f701c ; =func_ov03_020f5878
	ldr r0, [r0, #0x1d8]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f7010
_020f701c: .word func_ov03_020f5878

	arm_func_start func_ov03_020f7020
func_ov03_020f7020: ; 0x020f7020
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f72b4
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #0x1ec]
	cmp r0, #0
	beq _020f704c
	cmp r0, #1
	beq _020f7068
	ldmia sp!, {r4, pc}
_020f704c:
	ldr r0, _020f70b8 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf444
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x1ec]
	ldmia sp!, {r4, pc}
_020f7068:
	ldr r0, _020f70bc ; =data_027e0fb4
	mov r1, #1
	ldr r0, [r0]
	bl func_ov00_020ad790
	cmp r0, #0
	beq _020f70ac
	ldr r0, _020f70c0 ; =data_027e0fb8
	ldr r0, [r0]
	ldrb r0, [r0, #0x79]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f70c4 ; =data_027e05f8
	ldrh r0, [r0]
	tst r0, #0x200
	ldmia sp!, {r4, pc}
	tst r0, #0x100
	ldmia sp!, {r4, pc}
_020f70ac:
	mov r0, #0
	str r0, [r4, #0x1ec]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7020
_020f70b8: .word data_027e103c
_020f70bc: .word data_027e0fb4
_020f70c0: .word data_027e0fb8
_020f70c4: .word data_027e05f8

	arm_func_start func_ov03_020f70c8
func_ov03_020f70c8: ; 0x020f70c8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x4c
	ldr r3, _020f72a8 ; =data_027e0c38
	mov r8, r0
	ldr r0, [r3, #0x10]
	mov r7, r1
	cmp r0, #1
	mov r6, r2
	moveq r5, #1
	add r2, sp, #8
	add r3, sp, #4
	mov r0, #0xb
	mov r1, #3
	movne r5, #0
	bl func_02034698
	ldr r1, [r8, #0x1ec]
	mov r4, #0
	cmp r1, #1
	bne _020f7128
	ldr r0, _020f72ac ; =data_027e0fb4
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #7
	movne r4, #1
_020f7128:
	cmp r1, #0
	cmpne r1, #1
	bne _020f71a4
	cmp r4, #0
	beq _020f7174
	cmp r5, #0
	mvnne sb, #0xd3
	add r0, sp, #0x2c
	moveq sb, #0
	bl func_01ffbe34
	mov r0, #1
	str r0, [sp, #0x30]
	add r3, sp, #0x2c
	mov r2, r6
	add r0, r8, #0x208
	add r1, r7, sb
	str r8, [sp]
	bl func_ov00_020d00c4
	b _020f71a4
_020f7174:
	cmp r5, #0
	ldrne r0, [sp, #8]
	mov r3, #0
	subne r0, r0, #0xe4
	strne r0, [sp, #8]
	str r8, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r8, #0x1f0
	add r1, r1, r7
	add r2, r2, r6
	bl func_ov00_020d0210
_020f71a4:
	cmp r4, #0
	beq _020f721c
	add r0, sp, #0xc
	bl func_01ffbe34
	ldr r0, _020f72ac ; =data_027e0fb4
	ldr r0, [r0]
	ldr r0, [r0]
	bl func_ov14_021538b8
	cmp r5, #0
	mvnne r4, #0xd3
	strb r0, [sp, #0x15]
	moveq r4, #0
	add r0, sp, #0xc
	str r0, [sp]
	mov r3, r6
	add r2, r7, r4
	mov r0, #0xb
	mov r1, #7
	bl func_0203493c
	bl func_ov14_0215364c
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r3, r2, r7
	add r1, r1, r6
	mov r2, r0
	add r0, r4, r3
	add r1, r1, #0xa
	bl func_ov14_02153a48
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020f721c:
	ldr r0, _020f72b0 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020ceffc
	bl func_ov14_0213ce58
	cmp r0, #0
	beq _020f723c
	bl func_ov14_02153678
	b _020f7240
_020f723c:
	bl func_ov14_0215364c
_020f7240:
	mov r3, #1
	str r3, [sp]
	mov r2, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r0, r0, r7
	add r1, r1, r6
	bl func_ov14_02153924
	ldr r0, _020f72ac ; =data_027e0fb4
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020ad790
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r2, r1, r7
	add r3, r0, r6
	mov r0, #0xb
	mov r1, #4
	bl func_02034984
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov03_020f70c8
_020f72a8: .word data_027e0c38
_020f72ac: .word data_027e0fb4
_020f72b0: .word data_027e103c

	arm_func_start func_ov03_020f72b4
func_ov03_020f72b4: ; 0x020f72b4
	stmdb sp!, {r3, lr}
	ldr r0, _020f734c ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov14_0215364c
	cmp r0, #9
	cmpne r0, #0xa
	bne _020f72e8
	mov r0, #1
	b _020f72ec
_020f72e8:
	mov r0, #0
_020f72ec:
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, pc}
	ldr r0, _020f7350 ; =data_027e077c
	ldr r1, _020f7354 ; =data_02056be4
	ldr r0, [r0]
	ldrb r0, [r1, r0]
	tst r0, #2
	movne r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov14_0215364c
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	beq _020f733c
	ldr r0, _020f7358 ; =data_027e0e28
	bl func_ov00_0207bc48
	cmp r0, #0
	beq _020f7344
_020f733c:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020f7344:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f72b4
_020f734c: .word data_027e0d38
_020f7350: .word data_027e077c
_020f7354: .word data_02056be4
_020f7358: .word data_027e0e28

	arm_func_start func_ov03_020f735c
func_ov03_020f735c: ; 0x020f735c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r1, r4
	mov r2, r5
	add r0, r6, #0x1f0
	bl func_ov00_020d0a14
	mov r1, r4
	mov r2, r5
	add r0, r6, #0x208
	bl func_ov00_020d0a14
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov03_020f735c

	arm_func_start func_ov03_020f7390
func_ov03_020f7390: ; 0x020f7390
	mov r0, r2
	bx lr
	arm_func_end func_ov03_020f7390

	arm_func_start func_ov03_020f7398
func_ov03_020f7398: ; 0x020f7398
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldrh r0, [r1, #0xa]
	ldrb ip, [r1, #0xd]
	mov r5, r2
	mov r4, r3
	cmp r0, #2
	bne _020f7404
	tst ip, #0xe
	beq _020f7404
	ldr r0, _020f7410 ; =data_027e0fb4
	mov r1, #0
	ldr r0, [r0]
	bl func_ov00_020ad790
	cmp r0, #0
	beq _020f7404
	mov r3, r5
	str r4, [sp]
	mov ip, #0
	mov r0, #0xb
	mov r1, #8
	mov r2, #3
	str ip, [sp, #4]
	bl func_020349cc
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f7404:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7398
_020f7410: .word data_027e0fb4

	arm_func_start func_ov03_020f7414
func_ov03_020f7414: ; 0x020f7414
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldrh r0, [r1, #0xa]
	ldrb ip, [r1, #0xd]
	mov r5, r2
	mov r4, r3
	cmp r0, #2
	bne _020f74a8
	ands r7, ip, #0xe
	mov r6, #0
	beq _020f747c
	ldr r0, _020f74b4 ; =data_027e0fb4
	mov r1, r6
	ldr r0, [r0]
	bl func_ov00_020ad790
	cmp r0, #0
	beq _020f747c
	mov ip, r6
	str r4, [sp]
	mov r3, r5
	mov r0, #0xb
	mov r1, #9
	mov r2, #5
	str ip, [sp, #4]
	mvn r6, #1
	bl func_020349cc
_020f747c:
	mov ip, #0
	mov r2, r5
	add r3, r4, r6
	mov r0, #0xb
	mov r1, #6
	str ip, [sp]
	bl func_0203493c
	cmp r7, #0
	addne sp, sp, #8
	movne r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020f74a8:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7414
_020f74b4: .word data_027e0fb4

	arm_func_start func_ov03_020f74b8
func_ov03_020f74b8: ; 0x020f74b8
	stmdb sp!, {r3, lr}
	ldr r0, _020f74e4 ; =data_027e0d38
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #1
	cmpne r0, #3
	bne _020f74dc
	mov r0, #1
	ldmia sp!, {r3, pc}
_020f74dc:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f74b8
_020f74e4: .word data_027e0d38

	thumb_func_start func_ov03_020f74e8
func_ov03_020f74e8: ; 0x020f74e8
	push {r4, lr}
	sub sp, #8
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl func_ov09_0211b778
	ldr r0, _020f7594 ; =data_ov03_02100768
	mov r1, #0
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x1c
	add r2, r1, #0
	mov r3, #6
	blx func_ov00_020d0490
	ldr r1, _020f7598 ; =data_027e0ce0
	mov r0, #0x25
	ldr r1, [r1, #4]
	lsl r0, r0, #4
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f7520
	add r1, r4, #0
	bl func_ov03_020f8bb0
_020f7520:
	ldr r1, _020f7598 ; =data_027e0ce0
	str r0, [r4, #0x24]
	mov r0, #6
	ldr r1, [r1, #4]
	lsl r0, r0, #6
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f753a
	add r1, r4, #0
	bl func_ov03_020f8128
_020f753a:
	str r0, [r4, #0x28]
	blx func_ov03_020f74b8
	cmp r0, #0
	beq _020f755c
	ldr r1, _020f7598 ; =data_027e0ce0
	mov r0, #0xe4
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020f755e
	add r1, r4, #0
	bl func_ov17_0215fa4c
	b _020f755e
_020f755c:
	mov r0, #0
_020f755e:
	str r0, [r4, #0x2c]
	mov r1, #0
	add r0, r4, #0
	strh r1, [r4, #0x30]
	add r0, #0x32
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x33
	strb r1, [r0]
	str r1, [r4, #0x34]
	strb r1, [r4, #0x14]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r1, sp, #0
	strh r0, [r4, #4]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	strh r0, [r4, #0xe]
	ldr r0, _020f759c ; =func_ov09_0211c1d8
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020f75a0 ; =data_027e077c
	bl func_0202e7a4
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f74e8
_020f7594: .word data_ov03_02100768
_020f7598: .word data_027e0ce0
_020f759c: .word func_ov09_0211c1d8
_020f75a0: .word data_027e077c

	thumb_func_start func_ov03_020f75a4
func_ov03_020f75a4: ; 0x020f75a4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020f7600 ; =data_ov03_02100768
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _020f7604 ; =func_ov09_0211c1d8
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020f7608 ; =data_027e077c
	bl func_0202e7fc
	ldr r5, [r4, #0x2c]
	cmp r5, #0
	beq _020f75ce
	add r0, r5, #0
	bl func_ov17_0215fad8
	add r0, r5, #0
	blx func_0202ea0c
_020f75ce:
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _020f75e0
	add r0, r5, #0
	bl func_ov03_020f81c0
	add r0, r5, #0
	blx func_0202ea0c
_020f75e0:
	ldr r5, [r4, #0x24]
	cmp r5, #0
	beq _020f75f2
	add r0, r5, #0
	bl func_ov03_020f8d84
	add r0, r5, #0
	blx func_0202ea0c
_020f75f2:
	add r0, r4, #0
	bl func_ov09_0211b7f0
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f75a4
_020f7600: .word data_ov03_02100768
_020f7604: .word func_ov09_0211c1d8
_020f7608: .word data_027e077c

	thumb_func_start func_ov03_020f760c
func_ov03_020f760c: ; 0x020f760c
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020f766c ; =data_ov03_02100768
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _020f7670 ; =func_ov09_0211c1d8
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020f7674 ; =data_027e077c
	bl func_0202e7fc
	ldr r5, [r4, #0x2c]
	cmp r5, #0
	beq _020f7636
	add r0, r5, #0
	bl func_ov17_0215fad8
	add r0, r5, #0
	blx func_0202ea0c
_020f7636:
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _020f7648
	add r0, r5, #0
	bl func_ov03_020f81c0
	add r0, r5, #0
	blx func_0202ea0c
_020f7648:
	ldr r5, [r4, #0x24]
	cmp r5, #0
	beq _020f765a
	add r0, r5, #0
	bl func_ov03_020f8d84
	add r0, r5, #0
	blx func_0202ea0c
_020f765a:
	add r0, r4, #0
	bl func_ov09_0211b7f0
	add r0, r4, #0
	blx func_0202ea0c
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f760c
_020f766c: .word data_ov03_02100768
_020f7670: .word func_ov09_0211c1d8
_020f7674: .word data_027e077c

	arm_func_start func_ov03_020f7678
func_ov03_020f7678: ; 0x020f7678
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f7678

	arm_func_start func_ov03_020f7690
func_ov03_020f7690: ; 0x020f7690
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020f7728 ; =data_027e0c68
	bl func_020366c4
	cmp r0, #0
	beq _020f76bc
	add r0, r0, #0x100
	ldrsh r0, [r0, #0x5c]
	cmp r0, #0
	movgt r0, #0
	ldmia sp!, {r4, pc}
_020f76bc:
	ldrsb r0, [r4, #0x14]
	cmp r0, #0
	bne _020f76ec
	ldr r0, _020f772c ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0x2c
	bne _020f76e4
	ldr r0, [r4, #0x24]
	bl func_ov03_020f8e48
	b _020f76ec
_020f76e4:
	mov r0, #0
	ldmia sp!, {r4, pc}
_020f76ec:
	ldr r0, _020f772c ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #4
	beq _020f7708
	cmp r0, #8
	beq _020f7714
	b _020f7720
_020f7708:
	ldr r0, [r4, #0x28]
	bl func_ov03_020f82ac
	ldmia sp!, {r4, pc}
_020f7714:
	ldr r0, [r4, #0x2c]
	bl func_ov17_0215fbd8
	ldmia sp!, {r4, pc}
_020f7720:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7690
_020f7728: .word data_027e0c68
_020f772c: .word data_027e077c

	arm_func_start func_ov03_020f7730
func_ov03_020f7730: ; 0x020f7730
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	ldr r1, _020f7bac ; =data_027e1054
	mov sb, r0
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x95]
	cmp r1, #0
	beq _020f7760
	ldr r0, [sb, #0x24]
	bl func_ov03_020f9468
	b _020f79e0
_020f7760:
	ldr r1, _020f7bb0 ; =data_027e0d3c
	ldr r1, [r1]
	ldr r8, [r1, #0x48]
	cmp r8, #0
	blt _020f79e0
	bl func_ov03_020f4b7c
	cmp r0, #0
	bne _020f7794
	ldr r0, _020f7bb4 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020849c0
	cmp r0, #0
	beq _020f79e0
_020f7794:
	add r0, sp, #0x3c
	bl func_01ffbe34
	mov r1, #1
	ldr r2, [sp, #0x48]
	ldr r0, _020f7bb0 ; =data_027e0d3c
	orr r2, r2, #0x1000
	ldr r0, [r0]
	str r2, [sp, #0x48]
	strb r1, [sp, #0x46]
	strb r1, [sp, #0x47]
	bl func_ov00_02078ffc
	ldr r4, [r0]
	add r0, sp, #0x5c
	bl func_01ff8000
	cmp r4, #0x1000
	beq _020f77e8
	mov r1, r4
	mov r0, #0x1000
	bl func_01ff98e0
	str r0, [sp, #0x68]
	str r0, [sp, #0x5c]
_020f77e8:
	add r0, sp, #0x5c
	ldr r4, _020f7bb0 ; =data_027e0d3c
	ldr r5, _020f7bb8 ; =data_027e0f7c
	mov r7, #0xa
	str r0, [sp, #0x3c]
	add sl, sp, #0xc
	add fp, sp, #0x10
	add r6, sp, #0x3c
_020f7808:
	ldr r0, [r5]
	mov r1, r7
	bl func_ov00_0209d8d8
	cmp r0, #0
	ldrneb r1, [r0, #0x14]
	cmpne r1, #0
	beq _020f786c
	ldrb r1, [r0, #0x10]
	cmp r8, r1
	bne _020f786c
	ldr r2, [r0, #8]
	mov r1, sl
	str r2, [sp, #0xc]
	ldr r2, [r0, #0xc]
	ldr r0, [r4]
	str r2, [sp, #0x10]
	mov r2, fp
	mov r3, #1
	bl func_ov00_02079680
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r0, #0xce
	mov r1, #0xd
	bl func_02034984
_020f786c:
	add r7, r7, #1
	cmp r7, #0xf
	ble _020f7808
	cmp r8, #2
	bne _020f7908
	ldr r0, _020f7bbc ; =data_027e0f74
	mov r1, #0xb7
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	bne _020f7908
	ldr r0, _020f7bb8 ; =data_027e0f7c
	mov r1, #4
	ldr r0, [r0]
	bl func_ov00_0209d8d8
	ldr r2, [r0, #8]
	ldr r1, _020f7bb0 ; =data_027e0d3c
	str r2, [sp, #0x14]
	ldr r4, [r0, #0xc]
	ldr r0, [r1]
	add r1, sp, #0x14
	add r2, sp, #0x18
	mov r3, #1
	str r4, [sp, #0x18]
	bl func_ov00_02079680
	mov r6, #0x17
	add r5, sp, #0x3c
	mov r4, #0xce
_020f78dc:
	str r5, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r4
	mov r1, r6
	sub r2, r2, #0x70
	sub r3, r3, #0x76
	bl func_0203493c
	add r6, r6, #1
	cmp r6, #0x26
	ble _020f78dc
_020f7908:
	ldr r0, _020f7bc0 ; =data_027e0618
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	bne _020f79e0
	ldr r0, _020f7bc4 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #1
	cmpne r0, #0x32
	beq _020f79e0
	add r0, sp, #0x1c
	bl func_01ffbe34
	ldr r1, [sp, #0x28]
	mov r0, #1
	orr r1, r1, #0x1000
	ldr fp, _020f7bb0 ; =data_027e0d3c
	ldr sl, _020f7bbc ; =data_027e0f74
	ldr r4, _020f7bb8 ; =data_027e0f7c
	str r1, [sp, #0x28]
	str r0, [sp, #0x20]
	mov r7, #0
	add r5, sp, #0x1c
_020f7964:
	ldr r0, [r4]
	mov r1, r7
	bl func_ov00_0209d928
	mov r6, r0
	ldrb r0, [r6, #4]
	cmp r8, r0
	bne _020f79d4
	add r0, r7, #0x37
	add r1, r0, #0x100
	ldr r0, [sl]
	bl func_ov00_02097760
	cmp r0, #0
	beq _020f79d4
	ldr r1, [r6, #8]
	ldr r0, [fp]
	str r1, [sp, #4]
	ldr r2, [r6, #0xc]
	add r1, sp, #4
	str r2, [sp, #8]
	add r2, sp, #8
	mov r3, #1
	bl func_ov00_02079680
	str r5, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, #0xce
	mov r1, #0x15
	bl func_02034984
_020f79d4:
	add r7, r7, #1
	cmp r7, #6
	blt _020f7964
_020f79e0:
	ldrsb r0, [sb, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020f7bc8 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0xa
	bgt _020f7a38
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020f7ba4
_020f7a0c: ; jump table
	b _020f7ba4 ; case 0
	b _020f7ba4 ; case 1
	b _020f7ba4 ; case 2
	b _020f7a44 ; case 3
	b _020f7a44 ; case 4
	b _020f7a44 ; case 5
	b _020f7ba4 ; case 6
	b _020f7a9c ; case 7
	b _020f7a88 ; case 8
	b _020f7b24 ; case 9
	b _020f7a88 ; case 10
_020f7a38:
	cmp r0, #0x2e
	addne sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f7a44:
	ldr r0, [sb, #0x34]
	cmp r0, #0
	beq _020f7a60
	cmp r0, #1
	beq _020f7a74
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f7a60:
	ldrsh r1, [sb, #0xe]
	ldr r0, [sb, #0x28]
	bl func_ov03_020f8790
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f7a74:
	ldrsh r1, [sb, #0xe]
	ldr r0, [sb, #0x2c]
	bl func_ov17_0215ff30
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f7a88:
	ldrsh r1, [sb, #0xe]
	ldr r0, [sb, #0x2c]
	bl func_ov17_0215ff30
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f7a9c:
	ldrsh r0, [sb, #0x1c]
	ldrsh r2, [sb, #0x1e]
	cmp r0, r2
	moveq r2, #0
	beq _020f7ad8
	ldrsh r1, [sb, #0x20]
	cmp r0, r1
	moveq r2, #0x1000
	beq _020f7ad8
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r2, r0
_020f7ad8:
	ldr r1, _020f7bcc ; =data_ov03_02100750
	mov r0, #0
	ldr r1, [r1, #8]
	mov r1, r1, lsl #0xc
	bl func_ov00_020d03f8
	add r4, r0, #0x800
	ldrsh r1, [sb, #0xe]
	ldr r0, [sb, #0x28]
	sub r1, r1, r4, asr #12
	bl func_ov03_020f8790
	ldrsh r2, [sb, #0xe]
	ldr r1, _020f7bcc ; =data_ov03_02100750
	ldr r0, [sb, #0x2c]
	ldr r1, [r1, #8]
	add r2, r2, r4, asr #12
	sub r1, r2, r1
	bl func_ov17_0215ff30
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f7b24:
	ldrsh r0, [sb, #0x1c]
	ldrsh r2, [sb, #0x1e]
	cmp r0, r2
	moveq r2, #0
	beq _020f7b60
	ldrsh r1, [sb, #0x20]
	cmp r0, r1
	moveq r2, #0x1000
	beq _020f7b60
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r2, r0
_020f7b60:
	ldr r1, _020f7bcc ; =data_ov03_02100750
	mov r0, #0
	ldr r1, [r1, #8]
	mov r1, r1, lsl #0xc
	bl func_ov00_020d03f8
	ldr r1, _020f7bcc ; =data_ov03_02100750
	add r4, r0, #0x800
	ldrsh r2, [sb, #0xe]
	ldr r1, [r1, #8]
	ldr r0, [sb, #0x28]
	add r2, r2, r4, asr #12
	sub r1, r2, r1
	bl func_ov03_020f8790
	ldrsh r1, [sb, #0xe]
	ldr r0, [sb, #0x2c]
	sub r1, r1, r4, asr #12
	bl func_ov17_0215ff30
_020f7ba4:
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7730
_020f7bac: .word data_027e1054
_020f7bb0: .word data_027e0d3c
_020f7bb4: .word data_027e0e60
_020f7bb8: .word data_027e0f7c
_020f7bbc: .word data_027e0f74
_020f7bc0: .word data_027e0618
_020f7bc4: .word data_027e0d38
_020f7bc8: .word data_027e077c
_020f7bcc: .word data_ov03_02100750

	arm_func_start func_ov03_020f7bd0
func_ov03_020f7bd0: ; 0x020f7bd0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020f7c2c ; =data_027e077c
	ldr r1, [r0]
	cmp r1, #3
	beq _020f7bf4
	cmp r1, #5
	beq _020f7c0c
	b _020f7c20
_020f7bf4:
	ldrsb r1, [r4, #0x14]
	cmp r1, #2
	bne _020f7c20
	mov r1, #4
	bl func_0202e740
	b _020f7c20
_020f7c0c:
	ldrsb r1, [r4, #0x14]
	cmp r1, #0
	bne _020f7c20
	mov r1, #6
	bl func_0202e740
_020f7c20:
	mov r0, r4
	bl func_ov09_0211b994
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7bd0
_020f7c2c: .word data_027e077c

	arm_func_start func_ov03_020f7c30
func_ov03_020f7c30: ; 0x020f7c30
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov09_0211b914
	mov r0, r4
	bl func_ov09_0211bbdc
	ldr r0, _020f7d28 ; =data_027e1054
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x95]
	cmp r0, #0
	beq _020f7c68
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl func_ov03_020f8dd4
_020f7c68:
	ldr r0, _020f7d2c ; =data_027e077c
	ldr r1, [r0]
	cmp r1, #0xa
	bgt _020f7cb0
	cmp r1, #0
	addge pc, pc, r1, lsl #2
	b _020f7d1c
_020f7c84: ; jump table
	b _020f7d1c ; case 0
	b _020f7d1c ; case 1
	b _020f7d1c ; case 2
	b _020f7cb8 ; case 3
	b _020f7cb8 ; case 4
	b _020f7cb8 ; case 5
	b _020f7d1c ; case 6
	b _020f7cd8 ; case 7
	b _020f7cc8 ; case 8
	b _020f7cf4 ; case 9
	b _020f7d10 ; case 10
_020f7cb0:
	cmp r1, #0x2e
	bne _020f7d1c
_020f7cb8:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl func_ov03_020f8278
	b _020f7d1c
_020f7cc8:
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl func_ov17_0215fba8
	b _020f7d1c
_020f7cd8:
	ldrsh r2, [r4, #0x1c]
	ldrsh r1, [r4, #0x20]
	cmp r2, r1
	bne _020f7d1c
	mov r1, #8
	bl func_0202e740
	b _020f7d1c
_020f7cf4:
	ldrsh r2, [r4, #0x1c]
	ldrsh r1, [r4, #0x20]
	cmp r2, r1
	bne _020f7d1c
	mov r1, #4
	bl func_0202e740
	b _020f7d1c
_020f7d10:
	ldr r0, [r4, #0x28]
	mov r1, #0
	strb r1, [r0, #0x17d]
_020f7d1c:
	add r0, r4, #0x1c
	bl func_ov00_020d054c
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7c30
_020f7d28: .word data_027e1054
_020f7d2c: .word data_027e077c

	arm_func_start func_ov03_020f7d30
func_ov03_020f7d30: ; 0x020f7d30
	ldr r0, _020f7ddc ; =data_027e1054
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x95]
	cmp r0, #0
	movne r0, #1
	bxne lr
	ldr r0, _020f7de0 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0x2d
	bgt _020f7dac
	bge _020f7dcc
	cmp r0, #0xa
	bgt _020f7da0
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020f7dd4
_020f7d74: ; jump table
	b _020f7dd4 ; case 0
	b _020f7dd4 ; case 1
	b _020f7dd4 ; case 2
	b _020f7dcc ; case 3
	b _020f7dcc ; case 4
	b _020f7dcc ; case 5
	b _020f7dd4 ; case 6
	b _020f7dcc ; case 7
	b _020f7dcc ; case 8
	b _020f7dcc ; case 9
	b _020f7dcc ; case 10
_020f7da0:
	cmp r0, #0x2c
	beq _020f7dcc
	b _020f7dd4
_020f7dac:
	cmp r0, #0x38
	bgt _020f7dc4
	bge _020f7dcc
	cmp r0, #0x2e
	beq _020f7dcc
	b _020f7dd4
_020f7dc4:
	cmp r0, #0x39
	bne _020f7dd4
_020f7dcc:
	mov r0, #1
	bx lr
_020f7dd4:
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020f7d30
_020f7ddc: .word data_027e1054
_020f7de0: .word data_027e077c

	arm_func_start func_ov03_020f7de4
func_ov03_020f7de4: ; 0x020f7de4
	ldr r2, [r0, #0x28]
	ldr ip, _020f7e00 ; =func_ov09_0211bc64
	ldrsh r1, [r2, #0x66]
	cmp r1, #0x1a
	moveq r1, #0x18
	streqh r1, [r2, #0x66]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f7de4
_020f7e00: .word func_ov09_0211bc64

	arm_func_start func_ov03_020f7e04
func_ov03_020f7e04: ; 0x020f7e04
	mov r0, #0
	bx lr
	arm_func_end func_ov03_020f7e04

	arm_func_start func_ov03_020f7e0c
func_ov03_020f7e0c: ; 0x020f7e0c
	ldr r0, [r0, #0x24]
	strb r1, [r0, #0x24e]
	bx lr
	arm_func_end func_ov03_020f7e0c

	arm_func_start func_ov03_020f7e18
func_ov03_020f7e18: ; 0x020f7e18
	stmdb sp!, {r3, lr}
	ldr r0, _020f7e8c ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #1
	beq _020f7e58
	cmp r0, #0x37
	bne _020f7e84
	ldr r0, _020f7e90 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf0fc
	cmp r0, #0
	beq _020f7e58
	bl func_ov14_021521e4
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, pc}
_020f7e58:
	ldr r0, _020f7e94 ; =data_027e1054
	mov r1, #0
	ldr r0, [r0]
	blx func_ov03_020f4718
	cmp r0, #0
	beq _020f7e7c
	ldr r0, _020f7e90 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf330
_020f7e7c:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020f7e84:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7e18
_020f7e8c: .word data_027e077c
_020f7e90: .word data_027e103c
_020f7e94: .word data_027e1054

	arm_func_start func_ov03_020f7e98
func_ov03_020f7e98: ; 0x020f7e98
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _020f7ef4 ; =data_ov00_020eec9c
	mov r1, #0x11
	bl func_ov00_020d77e4
	ldrb r0, [r5, #0x32]
	cmp r0, #0
	cmpne r4, #0
	ldrne r0, _020f7ef8 ; =data_027e077c
	ldrne r0, [r0]
	cmpne r0, #0x2c
	beq _020f7ee0
	ldr r0, _020f7efc ; =data_027e1054
	mov r1, #0
	ldr r0, [r0]
	blx func_ov03_020f4844
	ldmia sp!, {r3, r4, r5, pc}
_020f7ee0:
	ldr r0, _020f7efc ; =data_027e1054
	mov r1, #1
	ldr r0, [r0]
	blx func_ov03_020f4844
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7e98
_020f7ef4: .word data_ov00_020eec9c
_020f7ef8: .word data_027e077c
_020f7efc: .word data_027e1054

	arm_func_start func_ov03_020f7f00
func_ov03_020f7f00: ; 0x020f7f00
	ldr r0, [r0, #0x28]
	ldrb r0, [r0, #0x17e]
	bx lr
	arm_func_end func_ov03_020f7f00

	arm_func_start func_ov03_020f7f0c
func_ov03_020f7f0c: ; 0x020f7f0c
	ldr ip, _020f7f18 ; =func_ov03_020f86cc
	ldr r0, [r0, #0x28]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f7f0c
_020f7f18: .word func_ov03_020f86cc

	arm_func_start func_ov03_020f7f1c
func_ov03_020f7f1c: ; 0x020f7f1c
	ldr ip, _020f7f28 ; =func_ov03_020f8738
	ldr r0, [r0, #0x28]
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020f7f1c
_020f7f28: .word func_ov03_020f8738

	arm_func_start func_ov03_020f7f2c
func_ov03_020f7f2c: ; 0x020f7f2c
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	strb r0, [r4, #0x33]
	ldr r0, [r4, #0x28]
	blx func_ov03_020f81e8
	ldr r0, [r4, #0x28]
	bl func_ov03_020f8620
	ldr r2, [r4, #0x28]
	mov r3, #0x18
	ldr r0, _020f7f68 ; =data_027e077c
	mov r1, #9
	strh r3, [r2, #0x66]
	bl func_0202e740
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7f2c
_020f7f68: .word data_027e077c

	arm_func_start func_ov03_020f7f6c
func_ov03_020f7f6c: ; 0x020f7f6c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r4
	bl func_ov03_020f74b8
	cmp r0, #0
	beq _020f7fbc
	ldr r0, _020f7fe4 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083588
	cmp r0, #0
	beq _020f7fbc
	ldr r0, _020f7fe4 ; =data_027e0e60
	ldr r7, [r0]
	mov r0, r7
	bl func_ov00_020835a4
	mov r5, r0
	mov r0, r7
	bl func_ov00_020835b4
	cmp r5, r0
	movne r6, #1
_020f7fbc:
	cmp r6, #0
	beq _020f7fdc
	ldr r0, _020f7fe8 ; =data_027e1054
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x98]
	cmp r0, #0
	moveq r4, #1
_020f7fdc:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f7f6c
_020f7fe4: .word data_027e0e60
_020f7fe8: .word data_027e1054

	arm_func_start func_ov03_020f7fec
func_ov03_020f7fec: ; 0x020f7fec
	stmdb sp!, {r4, lr}
	bl func_ov03_020f8024
	mov r4, r0
	bl func_ov03_020f8040
	sub r0, r4, r0
	add r0, r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f7fec

	arm_func_start func_ov03_020f8008
func_ov03_020f8008: ; 0x020f8008
	stmdb sp!, {r3, lr}
	ldr r0, _020f8020 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02083588
	bl func_ov03_020f805c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8008
_020f8020: .word data_027e0e60

	arm_func_start func_ov03_020f8024
func_ov03_020f8024: ; 0x020f8024
	stmdb sp!, {r3, lr}
	ldr r0, _020f803c ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020835a4
	bl func_ov03_020f805c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8024
_020f803c: .word data_027e0e60

	arm_func_start func_ov03_020f8040
func_ov03_020f8040: ; 0x020f8040
	stmdb sp!, {r3, lr}
	ldr r0, _020f8058 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020835b4
	bl func_ov03_020f805c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8040
_020f8058: .word data_027e0e60

	arm_func_start func_ov03_020f805c
func_ov03_020f805c: ; 0x020f805c
	cmp r0, #0
	subgt r0, r0, #1
	bx lr
	arm_func_end func_ov03_020f805c

	arm_func_start func_ov03_020f8068
func_ov03_020f8068: ; 0x020f8068
	cmp r0, #0
	addge r0, r0, #1
	bx lr
	arm_func_end func_ov03_020f8068

	arm_func_start func_ov03_020f8074
func_ov03_020f8074: ; 0x020f8074
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x28]
	mov r5, r1
	mov r4, r2
	bl func_ov03_020f8b58
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	bl func_ov17_021602d8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov03_020f8074

	arm_func_start func_ov03_020f80a8
func_ov03_020f80a8: ; 0x020f80a8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl func_ov03_020f8b90
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	bl unk_02160310
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f80a8

	arm_func_start func_ov03_020f80cc
func_ov03_020f80cc: ; 0x020f80cc
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _020f8120 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf0fc
	ldr r1, _020f8120 ; =data_027e103c
	mov r4, r0
	ldr r0, [r1]
	mov r5, #1
	bl func_ov00_020cf05c
	ldrh r1, [r0, #0x36]
	ldr r0, _020f8124 ; =0x0000ffff
	cmp r1, r0
	beq _020f8118
	cmp r4, #0
	beq _020f8114
	ldr r0, [r4, #0x84]
	cmp r0, #3
	beq _020f8118
_020f8114:
	mov r5, #0
_020f8118:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f80cc
_020f8120: .word data_027e103c
_020f8124: .word 0x0000ffff

	thumb_func_start func_ov03_020f8128
func_ov03_020f8128: ; 0x020f8128
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	str r1, [r4]
	ldr r0, _020f81b8 ; =func_ov03_020f121c
	ldr r3, _020f81bc ; =func_ov03_020f1220
	str r0, [sp]
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x18
	blx func_0204f614
	add r0, r4, #0
	mov r1, #0
	add r0, #0x64
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	blx func_02035064
	add r0, r4, #0
	add r0, #0xf0
	blx func_02035064
	mov r2, #0x5e
	lsl r2, r2, #2
	mov r1, #0
	str r1, [r4, r2]
	mov r0, #1
	add r3, r2, #4
	strb r0, [r4, r3]
	add r3, r2, #5
	strb r1, [r4, r3]
	add r3, r2, #6
	strb r1, [r4, r3]
	add r2, r2, #7
	strb r1, [r4, r2]
	mov r2, #0x17
	str r2, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	add r0, #0x4c
	mov r1, #0xbf
	mov r2, #7
	mov r3, #3
	blx func_ov00_020cfed0
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xbf
	mov r2, #6
	mov r3, #2
	blx func_ov00_020cfed0
	add r0, r4, #0
	bl func_ov03_020f81e8
	add r0, r4, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f8128
_020f81b8: .word func_ov03_020f121c
_020f81bc: .word func_ov03_020f1220

	thumb_func_start func_ov03_020f81c0
func_ov03_020f81c0: ; 0x020f81c0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf0
	blx func_020350ac
	add r0, r4, #0
	add r0, #0x68
	blx func_020350ac
	ldr r3, _020f81e4 ; =func_ov03_020f121c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x18
	blx func_0204f754
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f81c0
_020f81e4: .word func_ov03_020f121c

	thumb_func_start func_ov03_020f81e8
func_ov03_020f81e8: ; 0x020f81e8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #0
	add r0, #0x66
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	strh r1, [r0]
	str r1, [sp]
	add r0, r4, #0
	str r1, [sp, #4]
	add r0, #0x68
	mov r1, #3
	mov r2, #1
	mov r3, #2
	blx func_020350b4
	mov r1, #0
	add r0, r4, #0
	add r0, #0x68
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp]
	blx func_020351b8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	add r0, #0xf0
	mov r1, #3
	add r3, r2, #0
	blx func_020350b4
	mov r1, #0
	add r0, r4, #0
	add r0, #0xf0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp]
	blx func_020351b8
	ldr r0, _020f825c ; =0x0000017e
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #1
_020f824c:
	add r1, r1, #1
	strb r0, [r4, #0x11]
	add r4, #0x18
	cmp r1, #4
	blt _020f824c
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f81e8
_020f825c: .word 0x0000017e

	thumb_func_start func_ov03_020f8260
func_ov03_020f8260: ; 0x020f8260
	mov r1, #0x5f
	mov r2, #1
	lsl r1, r1, #2
	strb r2, [r0, r1]
	ldr r3, _020f8274 ; =func_ov03_020f81e8
	mov r2, #0
	add r1, r1, #1
	strb r2, [r0, r1]
	bx r3
	nop
	thumb_func_end func_ov03_020f8260
_020f8274: .word func_ov03_020f81e8

	arm_func_start func_ov03_020f8278
func_ov03_020f8278: ; 0x020f8278
	stmdb sp!, {r3, lr}
	ldrsh r1, [r0, #0x66]
	cmp r1, #0x18
	beq _020f8294
	cmp r1, #0x19
	beq _020f82a0
	ldmia sp!, {r3, pc}
_020f8294:
	add r0, r0, #0x68
	bl func_0203516c
	ldmia sp!, {r3, pc}
_020f82a0:
	add r0, r0, #0xf0
	bl func_0203516c
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020f8278

	arm_func_start func_ov03_020f82ac
func_ov03_020f82ac: ; 0x020f82ac
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrsh r1, [r4, #0x66]
	ldr r0, _020f84d4 ; =data_027e0d78
	strh r1, [r4, #0x64]
	ldrh r0, [r0, #0x34]
	tst r0, #1
	beq _020f82fc
	ldr r0, [r4, #0x178]
	cmp r0, #0
	beq _020f82f4
	blx r0
	cmp r0, #0
	movne r0, #0
	addne sp, sp, #8
	strneb r0, [r4, #0x17e]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020f82f4:
	mov r0, r4
	bl func_ov03_020f8620
_020f82fc:
	ldrb r0, [r4, #0x17e]
	cmp r0, #0
	beq _020f8430
	ldr r0, _020f84d4 ; =data_027e0d78
	ldr r2, _020f84d8 ; =data_ov03_0210079c
	ldr r5, [r0, #0x10]
	mov r1, #0
	ldr r3, [r2]
	mov r6, r1
	mov r7, r1
	cmp r3, r5
	ldr r0, [r0, #0x14]
	bgt _020f8340
	ldr r2, [r2, #8]
	add r2, r3, r2
	cmp r5, r2
	movlt r7, #1
_020f8340:
	cmp r7, #0
	beq _020f8358
	ldr r2, _020f84d8 ; =data_ov03_0210079c
	ldr r2, [r2, #4]
	cmp r2, r0
	movle r6, #1
_020f8358:
	cmp r6, #0
	beq _020f8378
	ldr r2, _020f84d8 ; =data_ov03_0210079c
	ldr r3, [r2, #4]
	ldr r2, [r2, #0xc]
	add r2, r3, r2
	cmp r0, r2
	movlt r1, #1
_020f8378:
	cmp r1, #0
	beq _020f8430
	ldrb r0, [r4, #0x17f]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x17f]
	cmp r0, #0x1e
	blo _020f8438
	mov r8, #0
	ldr r5, _020f84d4 ; =data_027e0d78
	strb r8, [r4, #0x17e]
	add sb, r4, #4
	mov r7, r8
	mov r6, #2
_020f83b0:
	cmp r8, #2
	bne _020f83c4
	bl func_ov03_020f7f6c
	cmp r0, #0
	beq _020f841c
_020f83c4:
	cmp r8, #0
	cmpne r8, #1
	bne _020f83dc
	bl func_ov03_020f80cc
	cmp r0, #0
	bne _020f841c
_020f83dc:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, sb
	mov r3, r7
	bl func_ov00_020d0804
	cmp r0, #0
	beq _020f841c
	mov r0, #0x18
	mla r0, r8, r0, r4
	ldrh r1, [r0, #0xe]
	mov r0, r4
	mov r2, #2
	bl func_ov03_020f84dc
	b _020f8438
_020f841c:
	add r8, r8, #1
	cmp r8, #4
	add sb, sb, #0x18
	blt _020f83b0
	b _020f8438
_020f8430:
	mov r0, #0
	strb r0, [r4, #0x17f]
_020f8438:
	mov r7, #0
	mov sb, r4
	add sl, r4, #4
	mov r6, r7
_020f8448:
	cmp r7, #2
	bne _020f845c
	bl func_ov03_020f7f6c
	cmp r0, #0
	beq _020f84b4
_020f845c:
	cmp r7, #0
	cmpne r7, #1
	bne _020f8474
	bl func_ov03_020f80cc
	cmp r0, #0
	bne _020f84b4
_020f8474:
	mov r0, sl
	ldr r5, [r0]
	ldrh r8, [sb, #0xe]
	ldr r5, [r5]
	mov r1, r6
	mov r2, r6
	mov r3, r6
	blx r5
	mov r2, r0
	mov r0, r4
	mov r1, r8
	bl func_ov03_020f84dc
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020f84b4:
	add r7, r7, #1
	cmp r7, #4
	add sb, sb, #0x18
	add sl, sl, #0x18
	blt _020f8448
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov03_020f82ac
_020f84d4: .word data_027e0d78
_020f84d8: .word data_ov03_0210079c

	arm_func_start func_ov03_020f84dc
func_ov03_020f84dc: ; 0x020f84dc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	tst r2, #1
	mov r4, r1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	cmp r4, #0x17
	cmpne r4, #0x1b
	beq _020f8514
	tst r2, #0x20
	movne r0, #0
	strneh r0, [r5, #0x64]
	ldmia sp!, {r3, r4, r5, pc}
	strh r4, [r5, #0x64]
_020f8514:
	sub r0, r4, #0x17
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020f860c
_020f8524: ; jump table
	b _020f859c ; case 0
	b _020f8538 ; case 1
	b _020f855c ; case 2
	b _020f860c ; case 3
	b _020f85e0 ; case 4
_020f8538:
	tst r2, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f8614 ; =data_ov00_020eec9c
	mov r1, #6
	bl func_ov00_020d77e4
	strh r4, [r5, #0x66]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f855c:
	tst r2, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0x66]
	cmp r0, #0x19
	beq _020f8584
	mov r1, #0
	add r0, r5, #0xf0
	str r1, [r5, #0x154]
	bl func_020352d8
_020f8584:
	ldr r0, _020f8614 ; =data_ov00_020eec9c
	mov r1, #6
	bl func_ov00_020d77e4
	strh r4, [r5, #0x66]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f859c:
	tst r2, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f8618 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf678
	cmp r0, #0
	beq _020f85cc
	ldr r0, [r5]
	mov r1, #1
	bl func_ov03_020f7e98
	b _020f85d8
_020f85cc:
	ldr r0, _020f8614 ; =data_ov00_020eec9c
	mov r1, #0xc
	bl func_ov00_020d77e4
_020f85d8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f85e0:
	tst r2, #8
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020f861c ; =data_027e077c
	mov r1, #7
	bl func_0202e740
	ldr r0, _020f8614 ; =data_ov00_020eec9c
	mov r1, #0x10
	bl func_ov00_020d77e4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f860c:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f84dc
_020f8614: .word data_ov00_020eec9c
_020f8618: .word data_027e103c
_020f861c: .word data_027e077c

	arm_func_start func_ov03_020f8620
func_ov03_020f8620: ; 0x020f8620
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl func_ov03_020f80cc
	cmp r0, #0
	bne _020f86ac
	ldr r2, _020f86c4 ; =data_027e0d78
	ldr r1, _020f86c8 ; =data_ov03_0210079c
	ldr ip, [r2, #0x2c]
	mov r0, #0
	ldr r3, [r1]
	mov r5, r0
	mov r6, r0
	cmp r3, ip
	ldr lr, [r2, #0x30]
	bgt _020f866c
	ldr r1, [r1, #8]
	add r1, r3, r1
	cmp ip, r1
	movlt r6, #1
_020f866c:
	cmp r6, #0
	beq _020f8684
	ldr r1, _020f86c8 ; =data_ov03_0210079c
	ldr r1, [r1, #4]
	cmp r1, lr
	movle r5, #1
_020f8684:
	cmp r5, #0
	beq _020f86a4
	ldr r1, _020f86c8 ; =data_ov03_0210079c
	ldr r2, [r1, #4]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	cmp lr, r1
	movlt r0, #1
_020f86a4:
	cmp r0, #0
	beq _020f86b8
_020f86ac:
	mov r0, #0
	strb r0, [r4, #0x17e]
	ldmia sp!, {r4, r5, r6, pc}
_020f86b8:
	mov r0, #1
	strb r0, [r4, #0x17e]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8620
_020f86c4: .word data_027e0d78
_020f86c8: .word data_ov03_0210079c

	arm_func_start func_ov03_020f86cc
func_ov03_020f86cc: ; 0x020f86cc
	ldrsh r0, [r0, #0x66]
	cmp r0, #0x19
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov03_020f86cc

	arm_func_start func_ov03_020f86e0
func_ov03_020f86e0: ; 0x020f86e0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov03_020f89e4
	mov r0, #0x18
	strh r0, [r4, #0x66]
	ldrb r0, [r4, #0x17c]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f8730 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf05c
	ldrh r1, [r0, #0x36]
	ldr r0, _020f8734 ; =0x0000ffff
	cmp r1, r0
	ldmia sp!, {r4, pc}
	mov r0, r4
	bl func_ov03_020f8738
	mov r0, #0
	strb r0, [r4, #0x17c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f86e0
_020f8730: .word data_027e103c
_020f8734: .word 0x0000ffff

	arm_func_start func_ov03_020f8738
func_ov03_020f8738: ; 0x020f8738
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x17d]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020f8784 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov00_020cf05c
	ldrh r1, [r0, #0x36]
	ldr r0, _020f8788 ; =0x0000ffff
	cmp r1, r0
	ldmia sp!, {r4, pc}
	mov r1, #0xf5
	ldr r0, _020f878c ; =data_027e0c68
	sub r2, r1, #0xf6
	bl func_02036edc
	mov r0, #1
	strb r0, [r4, #0x17d]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8738
_020f8784: .word data_027e103c
_020f8788: .word 0x0000ffff
_020f878c: .word data_027e0c68

	arm_func_start func_ov03_020f8790
func_ov03_020f8790: ; 0x020f8790
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r4, r1
	bl func_ov03_020f8a84
	add r0, sp, #0xc
	bl func_01ffbe34
	ldr r0, _020f8898 ; =data_027e0618
	mov r1, #0
	ldrb r0, [r0, #0x101]
	add r6, sp, #0xc
	mov r3, r1
	cmp r0, #0
	movne r0, #2
	strneb r0, [sp, #0x14]
	ldr r0, _020f889c ; =data_ov03_0210079c
	ldr r0, [r0, #8]
	sub r4, r4, r0
	mov r2, r4
	mov r0, #0xbf
	str r6, [sp]
	bl func_0203493c
	bl func_ov03_020f7f6c
	cmp r0, #0
	beq _020f8844
	ldr r6, [r5]
	add r2, sp, #8
	add r3, sp, #4
	mov r0, #0xbf
	mov r1, #6
	ldrsh r6, [r6, #0x30]
	bl func_02034698
	ldrb r0, [r5, #0x41]
	rsb r1, r6, #6
	tst r0, #6
	ldrne r0, [sp, #4]
	addne r0, r0, #2
	strne r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	add r2, r0, r4
	mov r0, #0xc1
	bl func_02034984
_020f8844:
	mov r8, #0
	add sb, r5, #4
	mov r7, r8
	add r6, sp, #0xc
_020f8854:
	cmp r8, #2
	bne _020f8868
	bl func_ov03_020f7f6c
	cmp r0, #0
	beq _020f8880
_020f8868:
	mov r0, sb
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str r5, [sp]
	bl func_ov00_020d00c4
_020f8880:
	add r8, r8, #1
	cmp r8, #4
	add sb, sb, #0x18
	blt _020f8854
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8790
_020f8898: .word data_027e0618
_020f889c: .word data_ov03_0210079c

	arm_func_start func_ov03_020f88a0
func_ov03_020f88a0: ; 0x020f88a0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl func_ov03_020f80cc
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, sp, #8
	ldrb r4, [r7, #0xd]
	bl func_01ffbe34
	ldr r0, _020f89e0 ; =data_027e0618
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	movne r0, #2
	strneb r0, [sp, #0x10]
	ldrh r0, [r7, #0xa]
	cmp r0, #0x18
	beq _020f8904
	cmp r0, #0x19
	beq _020f896c
	b _020f89d4
_020f8904:
	ldrsh r0, [r8, #0x64]
	cmp r0, #0x18
	beq _020f8918
	tst r4, #6
	beq _020f8934
_020f8918:
	add r4, sp, #8
	mov r2, r6
	mov r3, r5
	mov r0, #0xbf
	mov r1, #1
	str r4, [sp]
	bl func_0203493c
_020f8934:
	ldrsh r0, [r8, #0x66]
	cmp r0, #0x18
	bne _020f89d4
	add r4, sp, #8
	str r5, [sp]
	mov r3, r6
	add r0, r8, #0x68
	mov r1, #0xbf
	mov r2, #3
	str r4, [sp, #4]
	bl func_02034b0c
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020f896c:
	ldrsh r0, [r8, #0x64]
	cmp r0, #0x19
	beq _020f8980
	tst r4, #6
	beq _020f899c
_020f8980:
	add r4, sp, #8
	mov r2, r6
	mov r3, r5
	mov r0, #0xbf
	mov r1, #2
	str r4, [sp]
	bl func_0203493c
_020f899c:
	ldrsh r0, [r8, #0x66]
	cmp r0, #0x19
	bne _020f89d4
	add r4, sp, #8
	str r5, [sp]
	mov r3, r6
	add r0, r8, #0xf0
	mov r1, #0xbf
	mov r2, #4
	str r4, [sp, #4]
	bl func_02034b0c
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020f89d4:
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov03_020f88a0
_020f89e0: .word data_027e0618

	arm_func_start func_ov03_020f89e4
func_ov03_020f89e4: ; 0x020f89e4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r1, #0x18
	str r1, [sp]
	mov r3, #0
	mov r4, r0
	ldr r0, _020f8a80 ; =func_ov03_020f88a0
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #4
	mov r1, #0xbf
	mov r2, #3
	str r3, [sp, #0xc]
	bl func_ov00_020cfed0
	mov r0, #0x19
	str r0, [sp]
	mov ip, #0
	ldr r0, _020f8a80 ; =func_ov03_020f88a0
	str ip, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0x1c
	mov r1, #0xbf
	mov r2, #4
	mov r3, #1
	str ip, [sp, #0xc]
	bl func_ov00_020cfed0
	bl func_ov03_020f80cc
	cmp r0, #0
	mvneq r0, #0
	streqb r0, [r4, #0x15]
	addeq sp, sp, #0x10
	streqb r0, [r4, #0x2d]
	ldmia sp!, {r4, pc}
	mov r0, #8
	strb r0, [r4, #0x15]
	mov r0, #9
	strb r0, [r4, #0x2d]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f89e4
_020f8a80: .word func_ov03_020f88a0

	arm_func_start func_ov03_020f8a84
func_ov03_020f8a84: ; 0x020f8a84
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldrb r1, [r0, #0x17e]
	cmp r1, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {pc}
	ldr r1, _020f8b4c ; =data_027e0618
	ldrb r1, [r1, #0x101]
	cmp r1, #0
	ldreqsh r0, [r0, #0x66]
	cmpeq r0, #0x19
	addne sp, sp, #0x24
	ldmneia sp!, {pc}
	ldr r0, _020f8b50 ; =data_027e0d78
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {pc}
	ldr r0, [r0, #0x10]
	cmp r0, #0x20
	addle sp, sp, #0x24
	ldmleia sp!, {pc}
	add r0, sp, #4
	bl func_01ffbe34
	ldr r0, _020f8b54 ; =data_027e0c38
	add r1, sp, #4
	ldr r0, [r0, #0x10]
	cmp r0, #1
	ldreq r0, [sp, #0x10]
	orreq r0, r0, #0x10000000
	streq r0, [sp, #0x10]
	ldr r0, _020f8b50 ; =data_027e0d78
	str r1, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	sub r2, r1, #5
	add r1, r0, #6
	add r0, r2, r2, lsr #31
	add r1, r1, r1, lsr #31
	mov r2, r0, asr #0x1
	mov r0, r1, asr #0x1
	mov r1, r2, lsl #0x1
	mov r0, r0, lsl #0x1
	add r2, r1, #8
	sub r3, r0, #8
	mov r0, #0xbd
	mov r1, #0x1c
	bl func_02034984
	add sp, sp, #0x24
	ldmia sp!, {pc}
	.align 2, 0
	arm_func_end func_ov03_020f8a84
_020f8b4c: .word data_027e0618
_020f8b50: .word data_027e0d78
_020f8b54: .word data_027e0c38

	arm_func_start func_ov03_020f8b58
func_ov03_020f8b58: ; 0x020f8b58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r2
	add r5, r0, #4
	mov r4, #0
_020f8b6c:
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl func_ov00_020d0a14
	add r4, r4, #1
	cmp r4, #4
	add r5, r5, #0x18
	blt _020f8b6c
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov03_020f8b58

	arm_func_start func_ov03_020f8b90
func_ov03_020f8b90: ; 0x020f8b90
	mov r2, #0
	mov r1, #1
_020f8b98:
	add r2, r2, #1
	strb r1, [r0, #0x11]
	cmp r2, #4
	add r0, r0, #0x18
	blt _020f8b98
	bx lr
	arm_func_end func_ov03_020f8b90

	thumb_func_start func_ov03_020f8bb0
func_ov03_020f8bb0: ; 0x020f8bb0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [r5]
	mov r1, #0xda
	mov r0, #0xf
	add r3, r1, #0
	str r0, [sp]
	add r0, r5, #4
	mov r2, #0
	add r3, #0x26
	bl func_ov03_020fc168
	ldr r0, _020f8d2c ; =func_ov03_020f121c
	ldr r3, _020f8d30 ; =func_ov03_020f1220
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0x14
	mov r2, #0x18
	blx func_0204f614
	ldr r0, _020f8d34 ; =data_027e0900
	ldr r1, _020f8d38 ; =0x0000001a
	ldr r0, [r0, #0x18]
	cmp r1, r0
	bne _020f8c20
	ldr r1, _020f8d3c ; =data_027e0ce0
	mov r0, #0x69
	ldr r1, [r1, #4]
	lsl r0, r0, #2
	mov r2, #4
	blx func_0202e9dc
	add r4, r0, #0
	beq _020f8c22
	ldr r1, _020f8d40 ; =func_ov03_020f8d50
	ldr r3, _020f8d44 ; =func_ov03_020f8d64
	str r1, [sp]
	mov r1, #3
	mov r2, #0x88
	blx func_0204f614
	mov r0, #0x66
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r0, #4
	mov r1, #0xff
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xa1
	strb r1, [r4, r0]
	add r1, #0xa2
	strb r2, [r4, r1]
	b _020f8c22
_020f8c20:
	mov r4, #0
_020f8c22:
	mov r0, #2
	lsl r0, r0, #8
	str r4, [r5, r0]
	add r0, r0, #4
	add r0, r5, r0
	blx func_ov00_020d0460
	mov r1, #0x83
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, _020f8d48 ; =0xfffe0000
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #3
	add r0, #8
	strb r2, [r5, r0]
	ldr r0, _020f8d2c ; =func_ov03_020f121c
	add r1, #0xc
	str r0, [sp]
	add r0, r5, r1
	ldr r3, _020f8d30 ; =func_ov03_020f1220
	mov r1, #2
	mov r2, #0x18
	blx func_0204f614
	mov r3, #0
	mov r0, #0x92
	lsl r0, r0, #2
	mvn r3, r3
	str r3, [r5, r0]
	mov r2, #0
	add r1, r0, #4
	strb r2, [r5, r1]
	add r1, r0, #5
	strb r2, [r5, r1]
	add r1, r0, #6
	strb r3, [r5, r1]
	add r0, r0, #7
	strb r2, [r5, r0]
	add r0, r5, #0
	blx func_ov03_020f9a7c
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x86
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xda
	mov r2, #0xb
	mov r3, #4
	blx func_ov00_020cfed0
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0xda
	mov r2, #0xc
	mov r3, #5
	blx func_ov00_020cfed0
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _020f8d4c ; =func_ov03_020f9448
	mov r2, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0xda
	add r3, r2, #0
	blx func_ov00_020cfed0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _020f8d4c ; =func_ov03_020f9448
	mov r2, #3
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x50
	mov r1, #0xda
	add r3, r2, #0
	blx func_ov00_020cfed0
	mov r0, #0x21
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, _020f8d4c ; =func_ov03_020f9448
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0xda
	add r3, r2, #0
	blx func_ov00_020cfed0
	mov r0, #0x22
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _020f8d4c ; =func_ov03_020f9448
	mov r2, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x68
	mov r1, #0xda
	add r3, r2, #0
	blx func_ov00_020cfed0
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020f8bb0
_020f8d2c: .word func_ov03_020f121c
_020f8d30: .word func_ov03_020f1220
_020f8d34: .word data_027e0900
_020f8d38: .word 0x0000001a
_020f8d3c: .word data_027e0ce0
_020f8d40: .word func_ov03_020f8d50
_020f8d44: .word func_ov03_020f8d64
_020f8d48: .word 0xfffe0000
_020f8d4c: .word func_ov03_020f9448

	arm_func_start func_ov03_020f8d50
func_ov03_020f8d50: ; 0x020f8d50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_020350b0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020f8d50

	arm_func_start func_ov03_020f8d64
func_ov03_020f8d64: ; 0x020f8d64
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_0203501c
	ldr r1, _020f8d80 ; =data_02057b18
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8d64
_020f8d80: .word data_02057b18

	thumb_func_start func_ov03_020f8d84
func_ov03_020f8d84: ; 0x020f8d84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r5, [r4, r0]
	cmp r5, #0
	beq _020f8da4
	ldr r3, _020f8dcc ; =func_ov03_020f8d50
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x88
	blx func_0204f754
	add r0, r5, #0
	blx func_0202ea0c
_020f8da4:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r3, _020f8dd0 ; =func_ov03_020f121c
	add r0, r4, r0
	mov r1, #2
	mov r2, #0x18
	blx func_0204f754
	add r0, r4, #0
	ldr r3, _020f8dd0 ; =func_ov03_020f121c
	add r0, #0x20
	mov r1, #0x14
	mov r2, #0x18
	blx func_0204f754
	add r0, r4, #4
	bl func_ov03_020fc1e8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020f8d84
_020f8dcc: .word func_ov03_020f8d50
_020f8dd0: .word func_ov03_020f121c

	arm_func_start func_ov03_020f8dd4
func_ov03_020f8dd4: ; 0x020f8dd4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	bl func_ov03_020fc078
	ldr r0, _020f8e44 ; =data_027e077c
	ldr r0, [r0]
	cmp r0, #0x2c
	add r0, r5, #0x204
	bne _020f8e00
	bl func_ov00_020d0594
	b _020f8e04
_020f8e00:
	bl func_ov00_020d054c
_020f8e04:
	ldr r0, [r5, #0x200]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldrb r4, [r0, #0x1a1]
	bl func_ov26_021768b0
	ldr r2, [r5, #0x200]
	ldrb r0, [r2, #0x1a1]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	cmp r0, r4
	ldrne r1, [r2, #0x198]
	cmpne r1, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0x19c]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8dd4
_020f8e44: .word data_027e077c

	arm_func_start func_ov03_020f8e48
func_ov03_020f8e48: ; 0x020f8e48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r2, #0
	ldr r0, _020f92e8 ; =data_027e0d78
	strb r2, [r7, #0x24c]
	ldrh r1, [r0, #0x34]
	tst r1, #1
	strneb r2, [r7, #0x24f]
	bne _020f8e8c
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _020f8e8c
	ldrb r0, [r7, #0x24f]
	cmp r0, #0x7f
	addlo r0, r0, #1
	strlob r0, [r7, #0x24f]
_020f8e8c:
	ldr r0, _020f92e8 ; =data_027e0d78
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _020f8ea8
	ldrh r0, [r0, #0x34]
	tst r0, #2
	beq _020f8ec4
_020f8ea8:
	ldr r0, [r7, #0x248]
	mvn r1, #0
	cmp r0, r1
	beq _020f8ec4
	add r0, r7, #4
	str r1, [r7, #0x248]
	bl func_ov03_020fc438
_020f8ec4:
	add r0, r7, #0x200
	ldrsh r1, [r0, #4]
	ldrsh r0, [r0, #6]
	cmp r1, r0
	addne sp, sp, #0xc
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [r7, #0x24d]
	add r3, r7, #0x218
	mov r0, #0x18
	mla r0, r2, r0, r3
	ldr r4, [r0]
	ldrh r5, [r0, #0xa]
	mov r1, #0
	ldr r4, [r4]
	mov r2, r1
	mov r3, r1
	blx r4
	mov r2, r0
	mov r0, r7
	mov r1, r5
	bl func_ov03_020f9344
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r7, #0x24d]
	add r2, r7, #0x218
	mov r0, #0x18
	mla r0, r1, r0, r2
	ldrb r1, [r0, #0xd]
	tst r1, #6
	addne sp, sp, #0xc
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r7, #0x24c]
	cmp r1, #0
	bne _020f8f80
	mov r3, #0
	str r3, [sp]
	ldr r2, _020f92e8 ; =data_027e0d78
	ldr r4, [r0]
	ldr r1, [r2, #0x10]
	ldr r2, [r2, #0x14]
	ldr r4, [r4, #8]
	blx r4
	strb r0, [r7, #0x24c]
_020f8f80:
	mvn fp, #0
	ldr sl, _020f92ec ; =data_027e0fb4
	str fp, [sp, #4]
	str fp, [sp, #8]
	add r4, r7, #0x80
	add r5, r7, #0x60
	mov r8, #4
_020f8f9c:
	ldr r0, _020f92f0 ; =data_027e0f7c
	sub r1, r8, #4
	ldr r0, [r0]
	bl func_ov00_0209d8d8
	movs sb, r0
	beq _020f91c0
	ldrb r1, [sb, #0x14]
	cmp r1, #0
	beq _020f8fd0
	bl func_ov00_020a3fc0
	cmp r0, #0
	movne r6, #1
	bne _020f8fd4
_020f8fd0:
	mov r6, #0
_020f8fd4:
	cmp r6, #0
	beq _020f91c0
	ldrb r0, [sb, #0x10]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020f9058
_020f8fec: ; jump table
	b _020f8ffc ; case 0
	b _020f902c ; case 1
	b _020f9014 ; case 2
	b _020f9044 ; case 3
_020f8ffc:
	ldr r0, [sl]
	mov r1, #0x21
	bl func_ov00_020ada78
	cmp r0, #0
	bne _020f9058
	b _020f91c0
_020f9014:
	ldr r0, [sl]
	mov r1, #0x23
	bl func_ov00_020ada78
	cmp r0, #0
	bne _020f9058
	b _020f91c0
_020f902c:
	ldr r0, [sl]
	mov r1, #0x22
	bl func_ov00_020ada78
	cmp r0, #0
	bne _020f9058
	b _020f91c0
_020f9044:
	ldr r0, [sl]
	mov r1, #0x24
	bl func_ov00_020ada78
	cmp r0, #0
	beq _020f91c0
_020f9058:
	mov r0, sb
	add r1, sp, #4
	bl func_ov00_020a3fe4
	ldrb r0, [r7, #0x24c]
	cmp r0, #0
	bne _020f9160
	ldr r1, [sp, #8]
	mov r0, r4
	str r1, [sp]
	ldr r1, _020f92e8 ; =data_027e0d78
	ldr r2, _020f92e8 ; =data_027e0d78
	ldr sb, [r0]
	ldr r1, [r1, #0x10]
	ldr r2, [r2, #0x14]
	ldr r3, [sp, #4]
	ldr sb, [sb, #0xc]
	blx sb
	cmp r0, #0
	beq _020f9160
	ldrh r1, [r5, #0x2a]
	ldr r0, [r7, #0x248]
	sub sb, r1, #0x18
	cmp sb, r0
	beq _020f9158
	ldrb r0, [r7, #0x24f]
	cmp r0, #3
	bls _020f9158
	ldr r0, _020f92f4 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	sub r0, r0, #0x2a
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020f9114
_020f90e4: ; jump table
	b _020f910c ; case 0
	b _020f910c ; case 1
	b _020f910c ; case 2
	b _020f910c ; case 3
	b _020f910c ; case 4
	b _020f910c ; case 5
	b _020f910c ; case 6
	b _020f910c ; case 7
	b _020f910c ; case 8
	b _020f910c ; case 9
_020f910c:
	mov r0, #1
	b _020f9118
_020f9114:
	mov r0, #0
_020f9118:
	cmp r0, #0
	bne _020f9158
	ldr r0, _020f92f8 ; =data_ov00_020eec9c
	mov r1, #0x10
	bl func_ov00_020d77e4
	ldr r0, _020f92f0 ; =data_027e0f7c
	mov r1, sb
	ldr r0, [r0]
	bl func_ov00_0209d748
	cmp r0, fp
	beq _020f9154
	add r1, r0, #0xb7
	add r0, r7, #4
	add r2, sp, #4
	bl func_ov03_020fc348
_020f9154:
	str sb, [r7, #0x248]
_020f9158:
	mov r0, #1
	strb r0, [r7, #0x24c]
_020f9160:
	mov r0, r4
	ldr ip, [r0]
	ldrh sb, [r5, #0x2a]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr ip, [ip, #4]
	mov r3, #0
	blx ip
	mov r2, r0
	mov r1, sb
	mov r0, r7
	bl func_ov03_020f9344
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r5, #0x2d]
	tst r0, #6
	beq _020f91c0
	cmp r6, #0
	beq _020f91d4
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f91c0:
	add r4, r4, #0x18
	add r5, r5, #0x18
	add r8, r8, #1
	cmp r8, #0x14
	blt _020f8f9c
_020f91d4:
	ldr r4, _020f92ec ; =data_027e0fb4
	ldr sl, _020f92fc ; =data_027e0f74
	mov r8, r7
	add sb, r7, #0x20
	mov r5, #0
_020f91e8:
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _020f9288
_020f91f4: ; jump table
	b _020f9204 ; case 0
	b _020f925c ; case 1
	b _020f9244 ; case 2
	b _020f9274 ; case 3
_020f9204:
	ldr r0, [r4]
	mov r1, #0x21
	bl func_ov00_020ada78
	cmp r0, #0
	beq _020f92c8
	ldr r0, [sl]
	mov r1, #6
	bl func_ov00_02097760
	cmp r0, #0
	beq _020f9288
	ldr r0, [sl]
	ldr r1, _020f9300 ; =0x0000015f
	bl func_ov00_02097760
	cmp r0, #0
	bne _020f9288
	b _020f92c8
_020f9244:
	ldr r0, [r4]
	mov r1, #0x23
	bl func_ov00_020ada78
	cmp r0, #0
	bne _020f9288
	b _020f92c8
_020f925c:
	ldr r0, [r4]
	mov r1, #0x22
	bl func_ov00_020ada78
	cmp r0, #0
	bne _020f9288
	b _020f92c8
_020f9274:
	ldr r0, [r4]
	mov r1, #0x24
	bl func_ov00_020ada78
	cmp r0, #0
	beq _020f92c8
_020f9288:
	mov r0, sb
	ldr fp, [r0]
	ldrh r6, [r8, #0x2a]
	mov r1, #0
	ldr fp, [fp]
	mov r2, r1
	mov r3, r7
	blx fp
	mov r2, r0
	mov r1, r6
	mov r0, r7
	bl func_ov03_020f9344
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020f92c8:
	add r5, r5, #1
	cmp r5, #4
	add r8, r8, #0x18
	add sb, sb, #0x18
	blt _020f91e8
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f8e48
_020f92e8: .word data_027e0d78
_020f92ec: .word data_027e0fb4
_020f92f0: .word data_027e0f7c
_020f92f4: .word data_027e0d38
_020f92f8: .word data_ov00_020eec9c
_020f92fc: .word data_027e0f74
_020f9300: .word 0x0000015f

	arm_func_start func_ov03_020f9304
func_ov03_020f9304: ; 0x020f9304
	mov r3, r0
	mov r2, #0
	mov r1, #1
_020f9310:
	add r2, r2, #1
	strb r1, [r3, #0x2d]
	cmp r2, #0x14
	add r3, r3, #0x18
	blt _020f9310
	mov r2, #0
	mov r1, #1
_020f932c:
	add r2, r2, #1
	strb r1, [r0, #0x225]
	cmp r2, #2
	add r0, r0, #0x18
	blt _020f932c
	bx lr
	arm_func_end func_ov03_020f9304

	arm_func_start func_ov03_020f9344
func_ov03_020f9344: ; 0x020f9344
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	tst r2, #8
	mov r5, r1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	sub r0, r5, #0x1e
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020f9400
_020f936c: ; jump table
	b _020f9380 ; case 0
	b _020f93a4 ; case 1
	b _020f93a4 ; case 2
	b _020f93a4 ; case 3
	b _020f93a4 ; case 4
_020f9380:
	ldr r0, _020f943c ; =data_027e1054
	mov r1, #1
	ldr r0, [r0]
	blx func_ov03_020f4844
	ldr r0, _020f9440 ; =data_ov00_020eec9c
	mov r1, #0x11
	bl func_ov00_020d77e4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020f93a4:
	sub r0, r5, #0x1f
	cmp r0, #3
	mov r1, #4
	addls pc, pc, r0, lsl #2
	b _020f93e4
_020f93b8: ; jump table
	b _020f93c8 ; case 0
	b _020f93d0 ; case 1
	b _020f93d8 ; case 2
	b _020f93e0 ; case 3
_020f93c8:
	mov r1, #0
	b _020f93e4
_020f93d0:
	mov r1, #2
	b _020f93e4
_020f93d8:
	mov r1, #1
	b _020f93e4
_020f93e0:
	mov r1, #3
_020f93e4:
	ldr r0, _020f943c ; =data_027e1054
	ldr r0, [r0]
	blx func_ov03_020f4778
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #0x32]
	ldmia sp!, {r3, r4, r5, pc}
_020f9400:
	ldr r0, _020f9440 ; =data_ov00_020eec9c
	mov r1, #0x10
	bl func_ov00_020d77e4
	ldr r0, _020f9444 ; =data_027e0f7c
	sub r1, r5, #0x18
	ldr r0, [r0]
	bl func_ov00_0209d778
	ldr r2, _020f943c ; =data_027e1054
	mov r1, r0
	ldr r0, [r2]
	blx func_ov03_020f47e4
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #0x32]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020f9344
_020f943c: .word data_027e1054
_020f9440: .word data_ov00_020eec9c
_020f9444: .word data_027e0f7c

	arm_func_start func_ov03_020f9448
func_ov03_020f9448: ; 0x020f9448
	ldrb r0, [r0, #0x24c]
	cmp r0, #0
	beq _020f9460
	tst r2, #0x24
	movne r2, #0x20
	moveq r2, #1
_020f9460:
	mov r0, r2
	bx lr
	arm_func_end func_ov03_020f9448

	arm_func_start func_ov03_020f9468
func_ov03_020f9468: ; 0x020f9468
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe0
	ldr r1, _020f9a5c ; =data_027e0618
	str r0, [sp, #0x10]
	ldrb r0, [r1, #0x101]
	cmp r0, #0
	addne sp, sp, #0xe0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _020f9a60 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #1
	cmpne r0, #0x32
	beq _020f955c
	add r0, sp, #0x50
	bl func_01ffbe34
	ldr r1, [sp, #0x5c]
	mov r0, #1
	orr r1, r1, #0x1000
	ldr r5, _020f9a64 ; =data_027e0f7c
	ldr r4, _020f9a68 ; =data_027e0d3c
	ldr r6, _020f9a6c ; =data_027e0f74
	str r1, [sp, #0x5c]
	str r0, [sp, #0x54]
	mov sl, #0
	mvn sb, #0
	add r8, sp, #0x1c
	add fp, sp, #0x24
	add r7, sp, #0x50
_020f94e0:
	add r0, sl, #0x37
	add r1, r0, #0x100
	ldr r0, [r6]
	bl func_ov00_02097760
	cmp r0, #0
	beq _020f9550
	ldr r0, [r5]
	mov r1, sl
	bl func_ov00_0209d928
	str sb, [sp, #0x20]
	mov r1, r8
	str sb, [sp, #0x1c]
	bl func_ov00_020a40b0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x28]
	str r1, [sp, #0x24]
	ldr r0, [r4]
	mov r1, fp
	add r2, sp, #0x28
	mov r3, #1
	bl func_ov00_02079680
	str r7, [sp]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r0, #0xdb
	mov r1, #8
	bl func_02034984
_020f9550:
	add sl, sl, #1
	cmp sl, #6
	blt _020f94e0
_020f955c:
	mov r0, #0xa
	str r0, [sp]
	mov r3, #0x10
	str r3, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r1, #0xda
	add r0, r0, #4
	mov r2, #9
	bl func_ov03_020fc200
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x200]
	cmp r0, #0
	beq _020f95a4
	bl func_ov26_02176948
_020f95a4:
	ldr r0, _020f9a5c ; =data_027e0618
	ldr r1, _020f9a70 ; =data_027e0c38
	ldrb r0, [r0, #0x101]
	ldr r1, [r1, #0x14]
	cmp r0, #0
	rsb sl, r1, #0
	bne _020f96e8
	add r0, sp, #0xc0
	bl func_01ffbe34
	mvn r0, #0
	strb r0, [sp, #0xc8]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #0x24d]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	adds r0, sl, r0
	beq _020f9658
	ldr r0, [sp, #0x10]
	add r0, r0, #0x200
	ldrsh r3, [r0, #4]
	ldrsh r2, [r0, #6]
	cmp r3, r2
	moveq r3, #0
	beq _020f9630
	ldrsh r1, [r0, #8]
	cmp r3, r1
	moveq r3, #0x1000
	beq _020f9630
	sub r0, r3, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f9630:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldrb r0, [r0, #0x214]
	ldr r1, [r1, #0x20c]
	ldr r2, [r2, #0x210]
	bl func_ov00_020d02bc
	add r0, r0, #0x800
	mov r1, r0, asr #0xc
	b _020f96c4
_020f9658:
	ldr r0, [sp, #0x10]
	add r0, r0, #0x200
	ldrsh r3, [r0, #4]
	ldrsh r2, [r0, #6]
	cmp r3, r2
	moveq r3, #0
	beq _020f969c
	ldrsh r1, [r0, #8]
	cmp r3, r1
	moveq r3, #0x1000
	beq _020f969c
	sub r0, r3, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r3, r0
_020f969c:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldrb r0, [r0, #0x214]
	ldr r1, [r1, #0x20c]
	ldr r2, [r2, #0x210]
	bl func_ov00_020d02bc
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	rsb r1, r0, #0
_020f96c4:
	mov r2, #0
	ldr r0, [sp, #0x10]
	str r2, [sp]
	ldrb r3, [r0, #0x24d]
	add r4, r0, #0x218
	mov r0, #0x18
	mla r0, r3, r0, r4
	add r3, sp, #0xc0
	bl func_ov00_020d00c4
_020f96e8:
	mvn r1, #0
	add r0, sp, #0xa0
	str r1, [sp, #0x48]
	str r1, [sp, #0x4c]
	bl func_01ffbe34
	mov r1, #1
	ldr r0, _020f9a68 ; =data_027e0d3c
	strb r1, [sp, #0xaa]
	ldr r0, [r0]
	strb r1, [sp, #0xab]
	bl func_ov00_02078ffc
	ldr r4, [r0]
	cmp r4, #0x1000
	beq _020f9740
	add r0, sp, #0x90
	str r0, [sp, #0xa0]
	bl func_01ff8000
	mov r1, r4
	mov r0, #0x1000
	bl func_01ff98e0
	str r0, [sp, #0x9c]
	str r0, [sp, #0x90]
_020f9740:
	ldr r0, [sp, #0xac]
	ldr r8, [sp, #0x10]
	orr r0, r0, #0x1000
	str r0, [sp, #0xac]
	mov r0, r8
	add sb, r0, #0x20
	mov r7, #0
	add r4, r0, #0x200
	add r6, sp, #0x70
	add fp, sp, #0xa0
	mov r5, #2
_020f976c:
	mov r0, fp
	mov r1, r6
	mov r2, #0x20
	bl func_02007984
	str r5, [sp, #0x74]
	ldrb r0, [r8, #0x2d]
	tst r0, #6
	bne _020f9798
	ldrsb r0, [r4, #0x4e]
	cmp r7, r0
	bne _020f97b4
_020f9798:
	mov r2, #0
	mov r3, r2
	str r3, [sp]
	mov r0, sb
	mov r1, sl
	mov r3, r6
	bl func_ov00_020d00c4
_020f97b4:
	add r7, r7, #1
	cmp r7, #4
	add r8, r8, #0x18
	add sb, sb, #0x18
	blt _020f976c
	ldr r0, _020f9a74 ; =data_027e0fb4
	mov r1, #0x21
	ldr r0, [r0]
	bl func_ov00_020ada78
	ldr r1, _020f9a74 ; =data_027e0fb4
	strb r0, [sp, #0x44]
	ldr r0, [r1]
	mov r1, #0x22
	bl func_ov00_020ada78
	ldr r1, _020f9a74 ; =data_027e0fb4
	strb r0, [sp, #0x45]
	ldr r0, [r1]
	mov r1, #0x23
	bl func_ov00_020ada78
	ldr r1, _020f9a74 ; =data_027e0fb4
	strb r0, [sp, #0x46]
	ldr r0, [r1]
	mov r1, #0x24
	bl func_ov00_020ada78
	strb r0, [sp, #0x47]
	ldr r0, [sp, #0x10]
	mov r5, #4
	add r8, r0, #0x60
	add sb, r0, #0x80
	add r4, r0, #0x200
	add fp, sp, #0xa0
_020f9830:
	ldr r0, _020f9a64 ; =data_027e0f7c
	sub r1, r5, #4
	ldr r0, [r0]
	bl func_ov00_0209d8d8
	movs r6, r0
	ldrneb r1, [r6, #0x14]
	cmpne r1, #0
	beq _020f9904
	add r1, sp, #0x48
	bl func_ov00_020a3fe4
	ldrb r0, [r6, #0x10]
	ldr r1, [sp, #0x10]
	mov r2, #0x18
	mla r1, r0, r2, r1
	ldrb r1, [r1, #0x2d]
	mov r7, #1
	tst r1, #6
	bne _020f9884
	ldrsb r1, [r4, #0x4e]
	cmp r0, r1
	movne r7, #0
_020f9884:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x3c]
	ldr r0, _020f9a68 ; =data_027e0d3c
	str r1, [sp, #0x40]
	ldr r0, [r0]
	add r1, sp, #0x40
	add r2, sp, #0x3c
	mov r3, #1
	bl func_ov00_02079680
	mov r0, r6
	bl func_ov00_020a3fc0
	cmp r0, #0
	bne _020f98e4
	cmp r7, #0
	beq _020f98e4
	str fp, [sp]
	ldr r2, [sp, #0x40]
	ldrsb r1, [r8, #0x33]
	ldr r3, [sp, #0x3c]
	mov r0, #0xdb
	add r2, r2, sl
	bl func_02034984
	b _020f9904
_020f98e4:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x3c]
	mov r0, sb
	add r1, r1, sl
	mov r3, fp
	bl func_ov00_020d0210
_020f9904:
	add r8, r8, #0x18
	add sb, sb, #0x18
	add r5, r5, #1
	cmp r5, #0x14
	blt _020f9830
	add r0, sp, #0x44
	str r0, [sp, #0x14]
	mov r0, #0
	ldr sl, _020f9a78 ; =data_ov03_020ff634
	ldr r4, _020f9a68 ; =data_027e0d3c
	str r0, [sp, #0x18]
	mov r8, #0xde
	add r7, sp, #0x38
	add r6, sp, #0x34
	mov fp, #1
	add r5, sp, #0xa0
_020f9944:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f99c4
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x200]
	cmp r0, #0
	beq _020f9974
	ldrb r1, [r0, #0x1a0]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	beq _020f99c4
_020f9974:
	mov sb, #0
_020f9978:
	ldrb r1, [sl, sb]
	mov r0, r8
	mov r2, r7
	mov r3, r6
	bl func_02034698
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	mov r3, fp
	bl func_ov00_02079680
	str r5, [sp]
	ldrb r1, [sl, sb]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x34]
	mov r0, #0xde
	bl func_02034984
	add sb, sb, #1
	cmp sb, #3
	blt _020f9978
_020f99c4:
	ldr r0, [sp, #0x18]
	add sl, sl, #3
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	blt _020f9944
	mov sb, #0xda
	ldr r4, _020f9a68 ; =data_027e0d3c
	mov sl, #4
	add r8, sp, #0x30
	add r7, sp, #0x2c
	mov r6, #1
	add r5, sp, #0xa0
	mov fp, sb
_020f9a08:
	mov r0, sb
	mov r1, sl
	mov r2, r8
	mov r3, r7
	bl func_02034698
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl func_ov00_02079680
	str r5, [sp]
	mov r0, fp
	mov r1, sl
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x2c]
	bl func_02034984
	add sl, sl, #1
	cmp sl, #7
	ble _020f9a08
	add sp, sp, #0xe0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020f9468
_020f9a5c: .word data_027e0618
_020f9a60: .word data_027e0d38
_020f9a64: .word data_027e0f7c
_020f9a68: .word data_027e0d3c
_020f9a6c: .word data_027e0f74
_020f9a70: .word data_027e0c38
_020f9a74: .word data_027e0fb4
_020f9a78: .word data_ov03_020ff634

	arm_func_start func_ov03_020f9a7c
func_ov03_020f9a7c: ; 0x020f9a7c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add r0, r4, #0x200
	ldrsh r1, [r0, #8]
	strh r1, [r0, #4]
	ldr r1, [r4, #0x200]
	cmp r1, #0
	beq _020f9ab0
	mov r0, #0xff
	strb r0, [r1, #0x1a0]
	mov r0, #0
	strb r0, [r1, #0x1a1]
_020f9ab0:
	mov r0, #0x20
	str r0, [sp]
	mov r1, #9
	str r1, [sp, #4]
	mov ip, #0x2c
	mov r0, r4
	mov r1, #4
	mov r2, #0x14
	mov r3, #0x23
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	mov r0, #0x21
	str r0, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov ip, #0x2d
	mov r0, r4
	mov r1, #5
	mov r2, #0x15
	mov r3, #0x24
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	mov r0, #0x22
	str r0, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	mov ip, #0x2e
	mov r0, r4
	mov r1, #6
	mov r2, #0x16
	mov r3, #0x25
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	mov r0, #0x23
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x2f
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #7
	mov r2, #0x17
	mov r3, #0x26
	bl func_ov03_020f9db8
	mov r0, #0x24
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #8
	mov r2, #0x18
	mov r3, #0x27
	bl func_ov03_020f9db8
	mov r0, #0x25
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x31
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #9
	mov r2, #0x19
	mov r3, #0x28
	bl func_ov03_020f9db8
	ldr r0, _020f9db4 ; =data_027e0f74
	mov r1, #0x32
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	mov r1, #0xf
	mov ip, #0x32
	bne _020f9c00
	mov r0, #0x26
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, r4
	mov r1, #0xa
	mov r2, #0x1a
	mov r3, #0x29
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	b _020f9c24
_020f9c00:
	mov r0, #0x27
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, r4
	mov r1, #0xa
	mov r2, #0x1b
	mov r3, #0x29
	str ip, [sp, #8]
	bl func_ov03_020f9db8
_020f9c24:
	mov r0, #0x2a
	str r0, [sp]
	mov r1, #0x12
	mov r0, r4
	str r1, [sp, #4]
	mov ip, #0x35
	mov r1, #0xb
	mov r2, #0x1e
	mov r3, #0x2b
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	mov r0, #0x29
	str r0, [sp]
	mov r1, #0x11
	mov r0, r4
	str r1, [sp, #4]
	mov ip, #0x34
	mov r1, #0xc
	mov r2, #0x1d
	mov r3, #0x2c
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	mov r0, #0x28
	str r0, [sp]
	mov r1, #0x10
	mov r0, r4
	str r1, [sp, #4]
	mov ip, #0x33
	mov r1, #0xd
	mov r2, #0x1c
	mov r3, #0x2d
	str ip, [sp, #8]
	bl func_ov03_020f9db8
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xe
	mov r2, #0x1f
	mov r3, #0x2e
	bl func_ov03_020f9db8
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xf
	mov r2, #0x1f
	mov r3, #0x2f
	bl func_ov03_020f9db8
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x10
	mov r2, #0x1f
	mov r3, #0x30
	bl func_ov03_020f9db8
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x11
	mov r2, #0x1f
	mov r3, #0x31
	bl func_ov03_020f9db8
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x12
	mov r2, #0x1f
	mov r3, #0x32
	bl func_ov03_020f9db8
	mov r0, #0x2b
	str r0, [sp]
	mov r1, #0x13
	mov r0, r4
	str r1, [sp, #4]
	mov r4, #0x36
	mov r2, #0x1f
	mov r3, #0x33
	str r4, [sp, #8]
	bl func_ov03_020f9db8
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020f9a7c
_020f9db4: .word data_027e0f74

	arm_func_start func_ov03_020f9db8
func_ov03_020f9db8: ; 0x020f9db8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r1, #0x18
	mul r5, r6, r1
	mov r7, r0
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r0, r7, #0x20
	str r4, [sp, #8]
	add r0, r0, r5
	mov r1, #0xdb
	mov r3, #0xff
	str r4, [sp, #0xc]
	bl func_ov00_020cfed0
	ldrsb r1, [sp, #0x28]
	add r4, r7, #0x33
	ldr r0, _020f9e4c ; =data_027e0f7c
	strb r1, [r4, r5]
	ldr r0, [r0]
	sub r1, r6, #4
	bl func_ov00_0209d8d8
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	bl func_ov00_020a3fc0
	cmp r0, #0
	addne sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r2, [sp, #0x2c]
	ldrb r0, [sp, #0x30]
	add r1, r7, r5
	strb r2, [r1, #0x30]
	strb r0, [r4, r5]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020f9db8
_020f9e4c: .word data_027e0f7c

	thumb_func_start func_ov03_020f9e50
func_ov03_020f9e50: ; 0x020f9e50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, _020f9ec8 ; =data_027e0d3c
	str r2, [sp, #0xc]
	ldr r0, [r0]
	ldr r1, _020f9ecc ; =data_027e0f94
	add r3, r2, #0
	blx func_ov00_02079470
	mov r3, #0
	ldr r7, _020f9ed0 ; =data_ov03_021007cc
	ldr r1, [sp, #0x14]
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0x10]
	add r5, r3, #0
	add r6, r3, #0
	cmp r0, r1
	bgt _020f9e8e
	ldr r7, [r7, #0x28]
	add r0, r0, r7
	cmp r1, r0
	bge _020f9e8e
	mov r6, #1
_020f9e8e:
	cmp r6, #0
	beq _020f9e9c
	ldr r0, _020f9ed0 ; =data_ov03_021007cc
	ldr r0, [r0, #0x24]
	cmp r0, r2
	bgt _020f9e9c
	mov r5, #1
_020f9e9c:
	cmp r5, #0
	beq _020f9eae
	ldr r0, _020f9ed0 ; =data_ov03_021007cc
	ldr r1, [r0, #0x24]
	ldr r0, [r0, #0x2c]
	add r0, r1, r0
	cmp r2, r0
	bge _020f9eae
	mov r3, #1
_020f9eae:
	cmp r3, #0
	beq _020f9ebc
	ldr r0, _020f9ed4 ; =0x0000024d
	mov r1, #1
	add sp, #0x18
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020f9ebc:
	mov r1, #0
	ldr r0, _020f9ed4 ; =0x0000024d
	strb r1, [r4, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end func_ov03_020f9e50
_020f9ec8: .word data_027e0d3c
_020f9ecc: .word data_027e0f94
_020f9ed0: .word data_ov03_021007cc
_020f9ed4: .word 0x0000024d

	thumb_func_start func_ov03_020f9ed8
func_ov03_020f9ed8: ; 0x020f9ed8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r0, #0x92
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #4
	blx func_ov03_020fc438
	add r0, r4, #0
	blx func_ov03_020f9304
	pop {r4, pc}
	thumb_func_end func_ov03_020f9ed8

	thumb_func_start func_ov03_020f9ef4
func_ov03_020f9ef4: ; 0x020f9ef4
	add r1, r0, #0
	ldr r0, _020f9f00 ; =data_027e1044
	ldr r3, _020f9f04 ; =func_ov03_020faea0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020f9ef4
_020f9f00: .word data_027e1044
_020f9f04: .word func_ov03_020faea0

	thumb_func_start func_ov03_020f9f08
func_ov03_020f9f08: ; 0x020f9f08
	ldr r0, _020f9f14 ; =data_027e1044
	ldr r3, _020f9f18 ; =func_ov09_0211366c
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx r3
	nop
	thumb_func_end func_ov03_020f9f08
_020f9f14: .word data_027e1044
_020f9f18: .word func_ov09_0211366c

	thumb_func_start func_ov03_020f9f1c
func_ov03_020f9f1c: ; 0x020f9f1c
	ldr r0, _020f9f28 ; =data_027e1044
	ldr r3, _020f9f2c ; =func_ov09_02113698
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx r3
	nop
	thumb_func_end func_ov03_020f9f1c
_020f9f28: .word data_027e1044
_020f9f2c: .word func_ov09_02113698

	thumb_func_start func_ov03_020f9f30
func_ov03_020f9f30: ; 0x020f9f30
	push {r4, lr}
	sub sp, #8
	ldr r0, _020f9fbc ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	bne _020f9f40
	mov r1, #1
	b _020f9f42
_020f9f40:
	mov r1, #0
_020f9f42:
	ldr r0, _020f9fbc ; =data_027e0c54
	strb r1, [r0]
	ldr r0, _020f9fc0 ; =data_020683f4
	blx func_02031024
	ldr r0, _020f9fbc ; =data_027e0c54
	mov r4, #1
	ldrb r0, [r0]
	cmp r0, #0
	beq _020f9f82
	ldr r0, _020f9fc4 ; =data_027e06d8
	ldr r1, _020f9fc8 ; =data_027e0184
	strh r4, [r0, #0x32]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _020f9fcc ; =0x04001030
	mov r2, #0x80
	mov r3, #0x60
	blx func_02005234
	blx func_02004a3c
	blx func_02004a50
	ldr r0, _020f9fd0 ; =data_027e0698
	ldr r1, [r0, #0x74]
	add r0, r4, #0
	tst r0, r1
	bne _020f9fa0
	mov r4, #0
	b _020f9fa0
_020f9f82:
	ldr r0, _020f9fc4 ; =data_027e06d8
	mov r1, #2
	strh r1, [r0, #0x32]
	ldr r0, _020f9fd4 ; =data_027e077c
	ldr r1, [r0]
	ldr r0, _020f9fd8 ; =data_02056be4
	ldrb r0, [r0, r1]
	tst r0, r4
	beq _020f9f98
	add r0, r4, #0
	b _020f9f9a
_020f9f98:
	mov r0, #0
_020f9f9a:
	cmp r0, #0
	bne _020f9fa0
	mov r4, #0
_020f9fa0:
	ldr r2, _020f9fdc ; =0x04000304
	ldr r0, _020f9fe0 ; =0xffff7fff
	ldrh r1, [r2]
	and r1, r0
	lsl r0, r4, #0xf
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	blx func_ov05_02102a80
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020f9f30
_020f9fbc: .word data_027e0c54
_020f9fc0: .word data_020683f4
_020f9fc4: .word data_027e06d8
_020f9fc8: .word data_027e0184
_020f9fcc: .word 0x04001030
_020f9fd0: .word data_027e0698
_020f9fd4: .word data_027e077c
_020f9fd8: .word data_02056be4
_020f9fdc: .word 0x04000304
_020f9fe0: .word 0xffff7fff

	arm_func_start func_ov03_020f9fe4
func_ov03_020f9fe4: ; 0x020f9fe4
	stmdb sp!, {r3, lr}
	ldr r0, _020fa038 ; =data_027e05f4
	ldr r0, [r0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020fa030
_020f9ffc: ; jump table
	b _020fa030 ; case 0
	b _020fa030 ; case 1
	b _020fa014 ; case 2
	b _020fa01c ; case 3
	b _020fa014 ; case 4
	b _020fa014 ; case 5
_020fa014:
	mov r0, #1
	ldmia sp!, {r3, pc}
_020fa01c:
	blx func_0202ab48
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
_020fa030:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020f9fe4
_020fa038: .word data_027e05f4

	thumb_func_start func_ov03_020fa03c
func_ov03_020fa03c: ; 0x020fa03c
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #0
	add r0, r4, #4
	add r2, r1, #0
	mov r3, #6
	str r1, [r4]
	blx func_ov00_020d0490
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	strb r1, [r4, #0x14]
	mov r0, #5
	strb r0, [r4, #0x15]
	strb r1, [r4, #0x16]
	strb r1, [r4, #0x17]
	blx func_020329b0
	mov r1, #0x2d
	blx func_02032bd8
	blx func_020329b0
	mov r1, #0x10
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0x2d
	add r3, r1, #0
	mov r2, #0
	add r3, #0xd3
	blx func_02032a74
	blx func_020329b0
	ldr r1, _020fa0dc ; =0x0000012f
	blx func_02032bd8
	blx func_020329b0
	mov r1, #0x10
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, _020fa0dc ; =0x0000012f
	mov r2, #0
	add r3, r1, #0
	sub r3, #0x2f
	blx func_02032a74
	blx func_020329b0
	mov r1, #0x2d
	mov r2, #0
	blx func_02032a20
	mov r1, #0x12
	str r0, [r4]
	mov r2, #1
	lsl r1, r1, #4
	strb r2, [r0, r1]
	mov r1, #0
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r1, #0
	blx func_02032714
	ldr r1, _020fa0e0 ; =data_02068e6c
	ldr r0, [r4]
	str r1, [r0, #0x2c]
	add r0, r4, #0
	mov r1, #5
	blx func_ov03_020fa104
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020fa03c
_020fa0dc: .word 0x0000012f
_020fa0e0: .word data_02068e6c

	thumb_func_start func_ov03_020fa0e4
func_ov03_020fa0e4: ; 0x020fa0e4
	push {r4, lr}
	add r4, r0, #0
	blx func_020329b0
	ldr r1, _020fa100 ; =0x0000012f
	blx func_02032c10
	blx func_020329b0
	mov r1, #0x2d
	blx func_02032c10
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fa0e4
_020fa100: .word 0x0000012f

	arm_func_start func_ov03_020fa104
func_ov03_020fa104: ; 0x020fa104
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	beq _020fa130
	cmp r4, #2
	beq _020fa13c
	cmp r4, #5
	ldreq r0, [r5]
	moveq r1, #0
	streqb r1, [r0, #0x12c]
	b _020fa140
_020fa130:
	ldrsh r0, [r5, #6]
	strh r0, [r5, #4]
	b _020fa140
_020fa13c:
	bl func_ov03_020fa6e0
_020fa140:
	strb r4, [r5, #0x15]
	mov r0, #0
	str r0, [r5, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov03_020fa104

	arm_func_start func_ov03_020fa150
func_ov03_020fa150: ; 0x020fa150
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x15]
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	bne _020fa188
	ldr r0, _020fa34c ; =data_027e0c68
	bl func_020367ec
	cmp r0, #0
	beq _020fa188
	mov r0, r4
	mov r1, #5
	bl func_ov03_020fa104
_020fa188:
	ldrb r0, [r4, #0x15]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020fa294
_020fa198: ; jump table
	b _020fa1b0 ; case 0
	b _020fa1d0 ; case 1
	b _020fa220 ; case 2
	b _020fa248 ; case 3
	b _020fa270 ; case 4
	b _020fa294 ; case 5
_020fa1b0:
	ldr r0, _020fa350 ; =data_027e071c
	bl func_0202d7ac
	cmp r0, #0
	bne _020fa294
	mov r0, r4
	mov r1, #1
	bl func_ov03_020fa104
	b _020fa294
_020fa1d0:
	ldr r0, _020fa34c ; =data_027e0c68
	bl func_020367ec
	cmp r0, #0
	bne _020fa1f0
	ldr r0, _020fa34c ; =data_027e0c68
	bl func_02036808
	cmp r0, #0
	beq _020fa1f8
_020fa1f0:
	mov r0, #1
	b _020fa1fc
_020fa1f8:
	mov r0, #0
_020fa1fc:
	cmp r0, #0
	bne _020fa294
	ldr r0, [r4, #0x10]
	cmp r0, #5
	ble _020fa294
	mov r0, r4
	mov r1, #2
	bl func_ov03_020fa104
	b _020fa294
_020fa220:
	add r0, r4, #4
	bl func_ov00_020d054c
	ldrsh r1, [r4, #4]
	ldrsh r0, [r4, #8]
	cmp r1, r0
	bne _020fa294
	mov r0, r4
	mov r1, #3
	bl func_ov03_020fa104
	b _020fa294
_020fa248:
	ldrb r1, [r4, #0x14]
	ldr r0, _020fa354 ; =data_ov03_020ff644
	ldr r2, [r4, #0x10]
	ldrb r0, [r0, r1]
	cmp r2, r0
	ble _020fa294
	mov r0, r4
	mov r1, #4
	bl func_ov03_020fa104
	b _020fa294
_020fa270:
	add r0, r4, #4
	bl func_ov00_020d0594
	ldrsh r1, [r4, #4]
	ldrsh r0, [r4, #6]
	cmp r1, r0
	bne _020fa294
	mov r0, r4
	mov r1, #5
	bl func_ov03_020fa104
_020fa294:
	ldrb r0, [r4, #0x15]
	cmp r0, #5
	beq _020fa334
	ldrsh r0, [r4, #4]
	ldrsh r2, [r4, #6]
	cmp r0, r2
	moveq r2, #0
	beq _020fa2dc
	ldrsh r1, [r4, #8]
	cmp r0, r1
	moveq r2, #0x1000
	beq _020fa2dc
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r2, r0
_020fa2dc:
	mov r0, #0
	mov r1, #0x1000
	bl func_ov00_020d03f8
	mov r5, r0
	ldr r0, [r4]
	bl func_02032fa4
	mov r1, #0xc000
	umull r3, ip, r5, r1
	mov r2, #0
	mla ip, r5, r2, ip
	mov r2, r5, asr #0x1f
	mla ip, r2, r1, ip
	adds r1, r3, #0x800
	mov r3, r0
	adc r0, ip, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, #0x800
	mov r2, r0, asr #0xc
	ldr r0, _020fa358 ; =data_027e0c38
	mov r1, #1
	bl func_02033e70
_020fa334:
	ldr r1, [r4, #0x10]
	mvn r0, #0x80000000
	cmp r1, r0
	addlt r0, r1, #1
	strlt r0, [r4, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa150
_020fa34c: .word data_027e0c68
_020fa350: .word data_027e071c
_020fa354: .word data_ov03_020ff644
_020fa358: .word data_027e0c38

	arm_func_start func_ov03_020fa35c
func_ov03_020fa35c: ; 0x020fa35c
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r6, r0
	ldrb r0, [r6, #0x15]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #5
	addeq sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020fa51c ; =data_027e0618
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	bl func_02032fa4
	movs r4, r0
	movne r1, #0x3d
	ldr r0, _020fa520 ; =data_027e0cbc
	moveq r1, #0x3c
	bl func_0203d7e0
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0x1c
	bl func_01ffbe34
	mov r0, #1
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #0x14]
	mov r5, #0
	cmp r0, #1
	bne _020fa45c
	ldrb r0, [r6, #0x15]
	cmp r0, #2
	bne _020fa45c
	ldrsh r0, [r6, #4]
	ldrsh r2, [r6, #6]
	cmp r0, r2
	beq _020fa420
	ldrsh r1, [r6, #8]
	cmp r0, r1
	moveq r5, #0x1000
	beq _020fa420
	sub r0, r0, r2
	sub r1, r1, r2
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	mov r5, r0
_020fa420:
	mov r2, r5
	mov r0, #0
	mov r1, #0x1000
	bl func_ov00_020d03f8
	rsb r1, r0, #0x1000
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0x11
	mov r0, #0x800
	adds r3, r0, r1, lsl #17
	orr r2, r2, r1, lsr #15
	adc r0, r2, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, #0x800
	mov r5, r0, asr #0xc
_020fa45c:
	ldr r0, [r6]
	mov r2, #0x10
	ldr r1, [r0, #0x124]
	cmp r4, #0
	ldrsh r0, [r1, #2]
	ldrsh r1, [r1]
	mov lr, #0
	mov r0, r0, lsl #0x14
	mov r0, r0, asr #0x14
	mov r1, r1, lsl #0x14
	add r0, r0, #5
	add r3, r5, r0
	mov ip, r1, asr #0x14
	str r2, [sp]
	mov r0, #0x20
	beq _020fa4d0
	str lr, [sp, #4]
	str r0, [sp, #8]
	ldrb r4, [r6, #0x16]
	ldr r0, _020fa524 ; =0x0000012f
	mov r1, #1
	add r4, r4, #0x1e
	str r4, [sp, #0xc]
	str ip, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, #2
	str lr, [sp, #0x18]
	bl func_02034d68
	b _020fa500
_020fa4d0:
	str lr, [sp, #4]
	str r0, [sp, #8]
	ldrb r4, [r6, #0x16]
	mov r0, #0x2d
	mov r1, #1
	add r4, r4, #0x1e
	str r4, [sp, #0xc]
	str ip, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, #2
	str lr, [sp, #0x18]
	bl func_02034d68
_020fa500:
	ldr r0, [r6]
	add r3, sp, #0x1c
	mov r2, r5
	mov r1, #0
	bl func_02032788
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa35c
_020fa51c: .word data_027e0618
_020fa520: .word data_027e0cbc
_020fa524: .word 0x0000012f

	arm_func_start func_ov03_020fa528
func_ov03_020fa528: ; 0x020fa528
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020fa5c4 ; =data_027e0d38
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	movs r1, r0
	bne _020fa568
	ldr r0, _020fa5c8 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_02082d08
	add r0, r0, #0xab
	mov r1, #1
	strb r1, [r4, #0x14]
	add r5, r0, #0x50000
	b _020fa590
_020fa568:
	ldr r0, _020fa5cc ; =data_027e0f7c
	ldr r0, [r0]
	bl func_ov00_0209d748
	mvn r1, #0
	cmp r0, r1
	ldmia sp!, {r3, r4, r5, pc}
	ldr r2, _020fa5d0 ; =data_ov03_020ff648
	mov r1, #0
	ldr r5, [r2, r0, lsl #2]
	strb r1, [r4, #0x14]
_020fa590:
	ldr r1, _020fa5d4 ; =data_027e0c68
	add r0, sp, #0
	mov r2, r5
	bl func_0203643c
	add r0, sp, #0
	bl func_0203759c
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0
	str r5, [r4, #0xc]
	bl func_ov03_020fa104
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa528
_020fa5c4: .word data_027e0d38
_020fa5c8: .word data_027e0e60
_020fa5cc: .word data_027e0f7c
_020fa5d0: .word data_ov03_020ff648
_020fa5d4: .word data_027e0c68

	arm_func_start func_ov03_020fa5d8
func_ov03_020fa5d8: ; 0x020fa5d8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmia sp!, {r4, pc}
	mov r0, #3
	strb r0, [r4, #0x14]
	strb r1, [r4, #0x17]
	bl func_ov03_020f9fe4
	cmp r0, #0
	beq _020fa614
	ldrsb r0, [r4, #0x17]
	cmp r0, #1
	moveq r0, #0x114
	streq r0, [r4, #0xc]
	beq _020fa62c
_020fa614:
	ldrsb r0, [r4, #0x17]
	cmp r0, #0
	ldrgt r0, _020fa63c ; =0x00000112
	strgt r0, [r4, #0xc]
	ldrle r0, _020fa640 ; =0x00000113
	strle r0, [r4, #0xc]
_020fa62c:
	mov r0, r4
	mov r1, #0
	bl func_ov03_020fa104
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa5d8
_020fa63c: .word 0x00000112
_020fa640: .word 0x00000113

	arm_func_start func_ov03_020fa644
func_ov03_020fa644: ; 0x020fa644
	mov r2, #2
	strb r2, [r0, #0x14]
	str r1, [r0, #0xc]
	ldr ip, _020fa65c ; =func_ov03_020fa104
	mov r1, #0
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020fa644
_020fa65c: .word func_ov03_020fa104

	arm_func_start func_ov03_020fa660
func_ov03_020fa660: ; 0x020fa660
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	cmp r1, #0
	mov r4, #0
	beq _020fa688
	mov r1, r4
	bl func_ov03_020fa6c0
	cmp r0, #0
	movne r4, #1
_020fa688:
	cmp r5, #0
	beq _020fa6a8
	mov r0, r6
	mov r1, #1
	bl func_ov03_020fa6c0
	orrs r0, r4, r0
	movne r4, #1
	moveq r4, #0
_020fa6a8:
	cmp r4, #0
	ldmia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, #5
	bl func_ov03_020fa104
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov03_020fa660

	arm_func_start func_ov03_020fa6c0
func_ov03_020fa6c0: ; 0x020fa6c0
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	mov r4, r1
	bl func_02032fa4
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020fa6c0

	arm_func_start func_ov03_020fa6e0
func_ov03_020fa6e0: ; 0x020fa6e0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020fa860 ; =data_027e077c
	ldr r2, _020fa864 ; =data_02056be4
	ldr r1, [r1]
	mov r4, r0
	ldrb r0, [r2, r1]
	tst r0, #1
	beq _020fa750
	bl func_020329b0
	ldr r1, _020fa868 ; =0x0000012f
	mov r2, #0
	bl func_02032a20
	mov r2, #0
	mov r1, r0
	str r0, [r4]
	mov r3, #1
	ldr r0, _020fa86c ; =data_027e0cbc
	strb r3, [r1, #0x120]
	sub r3, r2, #1
	mov r1, #0x3d
	bl func_0203d77c
	mov r2, #0
	ldr r0, [r4]
	mov r1, #1
	mov r3, r2
	bl func_02032714
	b _020fa798
_020fa750:
	bl func_020329b0
	mov r1, #0x2d
	mov r2, #0
	bl func_02032a20
	mov r2, #0
	mov r1, r0
	str r0, [r4]
	mov r3, #1
	ldr r0, _020fa86c ; =data_027e0cbc
	strb r3, [r1, #0x120]
	sub r3, r2, #1
	mov r1, #0x3c
	bl func_0203d77c
	mov r1, #0
	ldr r0, [r4]
	mov r2, r1
	mov r3, r1
	bl func_02032714
_020fa798:
	ldr r0, [r4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	bl func_ov03_020f9fe4
	cmp r0, #0
	beq _020fa7c8
	ldrsb r0, [r4, #0x17]
	cmp r0, #0
	movgt r0, #1
	bgt _020fa7cc
_020fa7c8:
	mov r0, #0
_020fa7cc:
	ldrsb r2, [r4, #0x17]
	rsb r1, r0, #0
	cmp r2, #0
	rsblt r0, r2, #0
	mov r0, r0, lsl #0x18
	mov r2, r0, asr #0x18
	add r0, r2, r1
	str r0, [sp, #4]
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _020fa80c
	ldr r2, [r4]
	add r1, sp, #4
	mov r0, #1
	str r1, [r2, #0x38]
	strh r0, [r2, #0x3c]
_020fa80c:
	mvn r2, #0
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	mov r3, r2
	bl func_020328a8
	ldr r2, [r4, #0xc]
	ldr r1, _020fa870 ; =data_027e0c68
	add r0, sp, #0
	bl func_0203643c
	add r1, sp, #0
	ldr r0, [r4]
	ldr r1, [r1]
	mvn r2, #0
	bl func_0203369c
	strb r0, [r4, #0x16]
	ldr r1, [r4]
	mov r0, #0
	str r0, [r1, #0x38]
	strh r0, [r1, #0x3c]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa6e0
_020fa860: .word data_027e077c
_020fa864: .word data_02056be4
_020fa868: .word 0x0000012f
_020fa86c: .word data_027e0cbc
_020fa870: .word data_027e0c68

	arm_func_start func_ov03_020fa874
func_ov03_020fa874: ; 0x020fa874
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	beq _020fa8c0
	ldr r0, _020fa8d4 ; =data_ov03_020ff870
	mov r7, #0
	ldr r6, [r0, r4, lsl #2]
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _020fa8c4
_020fa8a0:
	ldrb r1, [r6, r7]
	add r0, r5, #0xc
	bl func_0203d464
	add r7, r7, #1
	ldrb r0, [r6, r7]
	cmp r0, #0xff
	bne _020fa8a0
	b _020fa8c4
_020fa8c0:
	bl func_ov03_020fa8d8
_020fa8c4:
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r4, [r5, #0x1c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa874
_020fa8d4: .word data_ov03_020ff870

	arm_func_start func_ov03_020fa8d8
func_ov03_020fa8d8: ; 0x020fa8d8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r2, _020fa9e4 ; =data_027e0c54
	mov r6, r0
	ldrb r0, [r2]
	mov r4, r1
	mov r7, #1
	cmp r0, #0
	add r1, sp, #4
	mvn r0, #0
	mov r2, #0x10
	movne r7, #0
	bl func_020078f4
	ldr r0, _020fa9e8 ; =data_ov03_020ff870
	mov sb, #0
	ldr r8, [r0, r4, lsl #2]
	ldrb r0, [r8]
	cmp r0, #0xff
	addeq sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #1
_020fa92c:
	ldrb r5, [r8, sb]
	ldr r0, [r6, #4]
	ldr sl, [r0, r5, lsl #2]
	ldrsb r0, [sl, #0x17]
	ldrb r4, [sl, #0x16]
	bl func_0203eadc
	add r2, sp, #4
	add r3, r2, r0, lsl #3
	ldr r2, [r3, r4, lsl #2]
	mov r1, sl
	add sl, r2, #1
	ldr r0, _020fa9ec ; =data_02075dac
	str sl, [r3, r4, lsl #2]
	bl func_0203fa54
	add r0, r0, sl, lsl #3
	ldr r0, [r0, #0x10]
	mov r1, #0
	cmp r0, #0
	beq _020fa984
	ldrsh r0, [r0, #0x14]
	cmp r5, r0
	moveq r1, #1
_020fa984:
	cmp r1, #0
	beq _020fa99c
	mov r0, r6
	mov r1, r5
	bl func_0203d7b8
	b _020fa9cc
_020fa99c:
	cmp r4, #0
	beq _020fa9b0
	cmp r4, #1
	cmpeq r7, #1
	bne _020fa9cc
_020fa9b0:
	str sl, [sp]
	ldr r0, [r6, #4]
	mov r1, fp
	ldr r0, [r0, r5, lsl #2]
	mov r2, fp
	mov r3, #0
	bl func_020340d0
_020fa9cc:
	add sb, sb, #1
	ldrb r0, [r8, sb]
	cmp r0, #0xff
	bne _020fa92c
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov03_020fa8d8
_020fa9e4: .word data_027e0c54
_020fa9e8: .word data_ov03_020ff870
_020fa9ec: .word data_02075dac

	thumb_func_start func_ov03_020fa9f0
func_ov03_020fa9f0: ; 0x020fa9f0
	mov r2, #0
	mvn r2, r2
	cmp r1, #3
	bhi _020faa12
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
	thumb_func_end func_ov03_020fa9f0
_020faa04: ; jump table
	.short _020faa0c - _020faa04 - 2 ; case 0
data_ov03_020faa06: ; 0x020faa06
	.byte 0x06, 0x00
data_ov03_020faa08: ; 0x020faa08
	.byte 0x0a, 0x00
data_ov03_020faa0a: ; 0x020faa0a
	.byte 0x06, 0x00
_020faa0c:
	ldr r2, _020faa18 ; =0x0000000e
	b _020faa12
_020faa10:
	.byte 0x02, 0x4a
_020faa12:
	ldr r3, _020faa20 ; =func_0202ff64
	mov r1, #4
	bx r3
	.align 2, 0
_020faa18: .word 0x0000000e
data_ov03_020faa1c: ; 0x020faa1c
	.byte 0x0f, 0x00, 0x00, 0x00
_020faa20: .word func_0202ff64

	thumb_func_start func_ov03_020faa24
func_ov03_020faa24: ; 0x020faa24
	mov r2, #0
	mvn r2, r2
	cmp r1, #0
	beq _020faa38
	cmp r1, #1
	beq _020faa34
	cmp r1, #3
	bne _020faa3a
_020faa34:
	ldr r2, _020faa40 ; =0x00000011
	b _020faa3a
_020faa38:
	ldr r2, _020faa44 ; =0x00000012
_020faa3a:
	ldr r3, _020faa48 ; =func_0202ff64
	mov r1, #5
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020faa24
_020faa40: .word 0x00000011
_020faa44: .word 0x00000012
_020faa48: .word func_0202ff64

	thumb_func_start func_ov03_020faa4c
func_ov03_020faa4c: ; 0x020faa4c
	add r2, r1, #0
	lsl r3, r2, #2
	ldr r2, _020faa5c ; =data_ov03_020ff92c
	mov r1, #6
	ldr r2, [r2, r3]
	ldr r3, _020faa60 ; =func_0202ff64
	bx r3
	nop
	thumb_func_end func_ov03_020faa4c
_020faa5c: .word data_ov03_020ff92c
_020faa60: .word func_0202ff64

	thumb_func_start func_ov03_020faa64
func_ov03_020faa64: ; 0x020faa64
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _020faa9c ; =data_027e0d38
	add r7, r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _020faa98
	mov r6, #0
	ldr r4, _020faaa0 ; =data_ov03_020ff9c4
	add r5, r6, #0
_020faa7a:
	add r3, r7, #0
	lsr r3, r5
	lsl r3, r3, #0x1c
	ldr r2, [r4]
	lsr r3, r3, #0x1a
	ldr r0, [sp]
	ldr r2, [r2, r3]
	add r1, r6, #7
	bl func_0202ff64
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _020faa7a
_020faa98:
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end func_ov03_020faa64
_020faa9c: .word data_027e0d38
_020faaa0: .word data_ov03_020ff9c4

	thumb_func_start func_ov03_020faaa4
func_ov03_020faaa4: ; 0x020faaa4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #3
_020faaaa:
	add r0, r5, #0
	add r1, r4, #7
	bl func_0202ff84
	sub r4, r4, #1
	bpl _020faaaa
	pop {r3, r4, r5, pc}
	thumb_func_end func_ov03_020faaa4

	thumb_func_start func_ov03_020faab8
func_ov03_020faab8: ; 0x020faab8
	mov r2, #0
	mvn r2, r2
	cmp r1, #0xa
	bhi _020fab00
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
	thumb_func_end func_ov03_020faab8
_020faacc: ; jump table
	.short _020fab00 - _020faacc - 2 ; case 0
data_ov03_020faace: ; 0x020faace
	.byte 0x32, 0x00
data_ov03_020faad0: ; 0x020faad0
	.byte 0x14, 0x00
data_ov03_020faad2: ; 0x020faad2
	.byte 0x18, 0x00
data_ov03_020faad4: ; 0x020faad4
	.byte 0x1c, 0x00
data_ov03_020faad6: ; 0x020faad6
	.byte 0x20, 0x00
data_ov03_020faad8: ; 0x020faad8
	.byte 0x24, 0x00
data_ov03_020faada: ; 0x020faada
	.byte 0x28, 0x00
data_ov03_020faadc: ; 0x020faadc
	.byte 0x2c, 0x00
data_ov03_020faade: ; 0x020faade
	.byte 0x30, 0x00
data_ov03_020faae0: ; 0x020faae0
	.byte 0x30, 0x00, 0x09, 0x4a, 0x0c, 0xe0, 0x09, 0x4a, 0x0a, 0xe0, 0x09, 0x4a, 0x08, 0xe0, 0x09, 0x4a
	.byte 0x06, 0xe0, 0x09, 0x4a, 0x04, 0xe0, 0x09, 0x4a, 0x02, 0xe0, 0x09, 0x4a, 0x00, 0xe0, 0x04, 0x4a
_020fab00:
	ldr r3, _020fab24 ; =func_0202ff64
	mov r1, #0xb
	bx r3
	nop
_020fab08: .word 0x00000035
data_ov03_020fab0c: ; 0x020fab0c
	.byte 0x36, 0x00, 0x00, 0x00
data_ov03_020fab10: ; 0x020fab10
	.byte 0x37, 0x00, 0x00, 0x00
data_ov03_020fab14: ; 0x020fab14
	.byte 0x38, 0x00, 0x00, 0x00
data_ov03_020fab18: ; 0x020fab18
	.byte 0x39, 0x00, 0x00, 0x00
data_ov03_020fab1c: ; 0x020fab1c
	.byte 0x3a, 0x00, 0x00, 0x00
data_ov03_020fab20: ; 0x020fab20
	.byte 0x3b, 0x00, 0x00, 0x00
_020fab24: .word func_0202ff64

	thumb_func_start func_ov03_020fab28
func_ov03_020fab28: ; 0x020fab28
	ldr r1, _020fab38 ; =data_ov03_02100804
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #8]
	bx lr
	nop
	thumb_func_end func_ov03_020fab28
_020fab38: .word data_ov03_02100804

	thumb_func_start func_ov03_020fab3c
func_ov03_020fab3c: ; 0x020fab3c
	thumb_func_end func_ov03_020fab3c
_020fab3c:
	.byte 0x70
data_ov03_020fab3d: ; 0x020fab3d
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020fab40
func_ov03_020fab40: ; 0x020fab40
	thumb_func_end func_ov03_020fab40
_020fab40:
	.byte 0x10
data_ov03_020fab41: ; 0x020fab41
	.byte 0xb5, 0x04, 0x1c, 0x33, 0xf7, 0x62, 0xef, 0x20, 0x1c, 0x10, 0xbd

	thumb_func_start func_ov03_020fab4c
func_ov03_020fab4c: ; 0x020fab4c
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020fab4c

	thumb_func_start func_ov03_020fab50
func_ov03_020fab50: ; 0x020fab50
	thumb_func_end func_ov03_020fab50
_020fab50:
	.byte 0x41
data_ov03_020fab51: ; 0x020fab51
	.byte 0x60, 0x82, 0x60, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020fab58
func_ov03_020fab58: ; 0x020fab58
	thumb_func_end func_ov03_020fab58
_020fab58:
	.byte 0x70
data_ov03_020fab59: ; 0x020fab59
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020fab5c
func_ov03_020fab5c: ; 0x020fab5c
	thumb_func_end func_ov03_020fab5c
_020fab5c:
	.byte 0x70
data_ov03_020fab5d: ; 0x020fab5d
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020fab60
func_ov03_020fab60: ; 0x020fab60
	thumb_func_end func_ov03_020fab60
_020fab60:
	.byte 0x70
data_ov03_020fab61: ; 0x020fab61
	.byte 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020fab64
func_ov03_020fab64: ; 0x020fab64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	cmp r0, #0
	bne _020fabf0
	ldr r3, _020fad80 ; =data_027e0764
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	ldmia r3!, {r2, r3}
	blx func_02002bf4
	ldr r3, _020fad80 ; =data_027e0764
	ldr r4, [r3, #0x10]
	ldr r2, [r3, #0x14]
	add r0, r4, r0
	adc r2, r1
	str r0, [r3]
	str r2, [r3, #4]
	ldrb r0, [r5, #2]
	mov r1, #0xf0
	bic r0, r1
	lsr r1, r2, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #7
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #2]
	ldrb r2, [r5, #2]
	mov r1, #0xf
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r2, r1, #0x1c
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r5, #2]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	ldmia r3!, {r2, r3}
	blx func_02002bf4
	ldr r2, _020fad80 ; =data_027e0764
	ldr r3, [r2, #0x10]
	ldr r4, [r2, #0x14]
	add r0, r3, r0
	adc r4, r1
	str r0, [r2]
	str r4, [r2, #4]
	ldr r2, _020fad84 ; =0x00000801
	mov r1, #0
	add r0, r4, #0
	mov r3, #0
	blx func_02002bf4
	ldrb r0, [r5, #2]
	mov r2, #6
	lsl r2, r2, #0xa
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r1, r1, r2
	bl func_ov09_0211c9a0
	strh r0, [r5]
	b _020fad72
_020fabf0:
	ldrb r0, [r5, #2]
	mov r1, #1
	lsl r1, r1, #0xc
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl func_ov09_0211c9a0
	ldrb r1, [r5, #3]
	cmp r1, #0
	bne _020fac08
	mov r7, #0
	b _020fac2a
_020fac08:
	cmp r1, #2
	bhi _020fac10
	mov r7, #1
	b _020fac2a
_020fac10:
	cmp r1, #5
	bhi _020fac18
	mov r7, #2
	b _020fac2a
_020fac18:
	cmp r1, #9
	bhi _020fac20
	mov r7, #3
	b _020fac2a
_020fac20:
	cmp r1, #0xe
	bhi _020fac28
	mov r7, #4
	b _020fac2a
_020fac28:
	mov r7, #5
_020fac2a:
	ldrh r2, [r5]
	lsl r1, r0, #2
	add r0, r0, r1
	cmp r2, r0
	blt _020fac38
	mov r4, #5
	b _020fac3a
_020fac38:
	add r4, r7, #0
_020fac3a:
	ldr r3, _020fad80 ; =data_027e0764
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	ldmia r3!, {r2, r3}
	blx func_02002bf4
	ldr r6, _020fad80 ; =data_027e0764
	add r3, r0, #0
	ldr r0, [r6, #0x10]
	ldr r2, [r6, #0x14]
	add r0, r0, r3
	adc r2, r1
	str r0, [r6]
	str r2, [r6, #4]
	add r0, r2, #0
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #0
	blx func_02002bf4
	ldrb r3, [r5, #2]
	mov r2, #0xf0
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r5, #2]
	ldr r0, _020fad88 ; =data_ov03_020ff9d4
	lsl r2, r4, #2
	ldr r0, [r0, r2]
	cmp r1, r0
	bge _020fad1e
	add r4, r6, #0
	mov r6, #0xf
_020fac86:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	blx func_02002bf4
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r0, r0, r2
	adc r1, r3
	str r0, [r4]
	str r1, [r4, #4]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #7
	ldrb r0, [r5, #2]
	and r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	bic r0, r6
	and r1, r2
	orr r0, r1
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsl r0, r1, #0x1c
	lsl r1, r1, #0x18
	lsr r0, r0, #0x1c
	lsr r1, r1, #0x1c
	cmp r0, r1
	beq _020fac86
	ldr r0, _020fad8c ; =data_ov03_020ff9ec
	lsl r1, r7, #2
	ldr r4, [r0, r1]
	ldr r0, _020fad90 ; =data_ov03_020ffa04
	ldr r0, [r0, r1]
	sub r0, r0, r4
	add r6, r0, #1
	cmp r6, #0
	bgt _020face0
	mov r2, #0
	b _020fad0e
_020face0:
	ldr r3, _020fad80 ; =data_027e0764
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	ldmia r3!, {r2, r3}
	blx func_02002bf4
	ldr r7, _020fad80 ; =data_027e0764
	add r3, r0, #0
	ldr r0, [r7, #0x10]
	ldr r2, [r7, #0x14]
	add r0, r0, r3
	adc r2, r1
	str r0, [r7]
	str r2, [r7, #4]
	cmp r6, #0
	beq _020fad0e
	add r0, r2, #0
	mov r1, #0
	mov r3, #0
	add r2, r6, #0
	blx func_02002bf4
	add r2, r1, #0
_020fad0e:
	ldrb r0, [r5, #2]
	add r1, r4, r2
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl func_ov09_0211c9a0
	strh r0, [r5]
	b _020fad72
_020fad1e:
	ldr r0, _020fad94 ; =data_ov03_020ffa1c
	lsl r1, r7, #2
	ldr r4, [r0, r1]
	ldr r0, _020fad98 ; =0x00000ccc
	sub r0, r4, r0
	cmp r0, #0
	bgt _020fad30
	mov r3, #0
	b _020fad5c
_020fad30:
	add r3, r6, #0
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	ldmia r3!, {r2, r3}
	blx func_02002bf4
	add r2, r6, #0
	ldr r6, [r2, #0x10]
	ldr r3, [r2, #0x14]
	add r0, r6, r0
	str r0, [r2]
	adc r3, r1
	ldr r0, _020fad98 ; =0x00000ccc
	str r3, [r2, #4]
	sub r2, r4, r0
	beq _020fad5c
	add r0, r3, #0
	mov r1, #0
	mov r3, #0
	blx func_02002bf4
	add r3, r1, #0
_020fad5c:
	ldr r0, _020fad9c ; =0x00000ccd
	ldrh r1, [r5]
	add r0, r3, r0
	mul r0, r1
	lsl r0, r0, #4
	lsr r1, r0, #0x10
	ldr r0, _020fada0 ; =0x0000270f
	cmp r1, r0
	bls _020fad70
	add r1, r0, #0
_020fad70:
	strh r1, [r5]
_020fad72:
	mov r0, #0
	strb r0, [r5, #3]
	ldrh r1, [r5, #2]
	ldrh r0, [r5]
	lsl r1, r1, #0x10
	orr r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fab64
_020fad80: .word data_027e0764
_020fad84: .word 0x00000801
_020fad88: .word data_ov03_020ff9d4
_020fad8c: .word data_ov03_020ff9ec
_020fad90: .word data_ov03_020ffa04
_020fad94: .word data_ov03_020ffa1c
_020fad98: .word 0x00000ccc
_020fad9c: .word 0x00000ccd
_020fada0: .word 0x0000270f

	thumb_func_start func_ov03_020fada4
func_ov03_020fada4: ; 0x020fada4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x14
	add r4, r2, #0
	mul r4, r0
	add r6, r1, #0
	add r1, r5, r4
	ldrb r7, [r1, #0x13]
	cmp r3, #0
	beq _020fadc0
	add r0, r3, #0
	mov r2, #8
	blx func_020320c0
_020fadc0:
	cmp r6, #0
	beq _020fadce
	mov r0, #0
	add r1, r5, r4
	mov r2, #0x14
	blx func_020078c0
_020fadce:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fada4

	thumb_func_start func_ov03_020fadd4
func_ov03_020fadd4: ; 0x020fadd4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020fadf0 ; =data_027e0618
	mov r1, #1
	mov r2, #0
	bl func_0202cec8
	cmp r0, #0
	beq _020fadec
	mov r0, #1
	add r4, #0x3c
	strb r0, [r4]
_020fadec:
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020fadd4
_020fadf0: .word data_027e0618

	thumb_func_start func_ov03_020fadf4
func_ov03_020fadf4: ; 0x020fadf4
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #0x10
	add r4, r1, #0
	mov r1, #0
	add r3, r2, #0
	add r5, r0, #0
	bl func_ov09_02113620
	ldr r0, _020fae28 ; =data_ov09_0211e734
	str r0, [r5]
	add r0, r5, #0
	str r4, [r5, #0x40]
	bl func_ov03_020fae64
	ldr r0, _020fae2c ; =func_ov09_02113350
	add r1, sp, #0
	str r0, [sp]
	ldr r0, _020fae30 ; =data_027e077c
	str r5, [sp, #4]
	bl func_0202e7a4
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020fadf4
_020fae28: .word data_ov09_0211e734
_020fae2c: .word func_ov09_02113350
_020fae30: .word data_027e077c

	thumb_func_start func_ov03_020fae34
func_ov03_020fae34: ; 0x020fae34
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020fae58 ; =data_ov09_0211e734
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _020fae5c ; =func_ov09_02113350
	str r4, [sp, #4]
	str r0, [sp]
	ldr r0, _020fae60 ; =data_027e077c
	bl func_0202e7fc
	add r0, r4, #4
	bl func_0202ab64
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fae34
_020fae58: .word data_ov09_0211e734
_020fae5c: .word func_ov09_02113350
_020fae60: .word data_027e077c

	thumb_func_start func_ov03_020fae64
func_ov03_020fae64: ; 0x020fae64
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl func_ov00_0207a730
	mov r1, #0
	str r1, [r4, #0x38]
	sub r0, r1, #1
	str r0, [r4, #0x3c]
	mov r0, #1
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	add r4, #0x4a
	strh r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fae64

	thumb_func_start func_ov03_020fae88
func_ov03_020fae88: ; 0x020fae88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020fae9c ; =data_027e077c
	ldr r1, [r4, #0x44]
	blx func_0202e740
	add r0, r4, #0
	bl func_ov03_020fae64
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fae88
_020fae9c: .word data_027e077c

	thumb_func_start func_ov03_020faea0
func_ov03_020faea0: ; 0x020faea0
	push {r4, lr}
	ldr r2, _020faedc ; =data_027e077c
	ldr r3, [r2]
	str r3, [r0, #0x44]
	ldr r3, _020faee0 ; =data_027e0c54
	ldrb r4, [r3]
	add r3, r0, #0
	add r3, #0x48
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0x4a
	strh r1, [r3]
	ldr r0, [r0, #0x44]
	cmp r0, #1
	beq _020faec6
	cmp r0, #0x1a
	beq _020faed0
	cmp r0, #0x37
	bne _020faed8
_020faec6:
	add r0, r2, #0
	mov r1, #0x13
	blx func_0202e740
	pop {r4, pc}
_020faed0:
	add r0, r2, #0
	mov r1, #0x1d
	blx func_0202e740
_020faed8:
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020faea0
_020faedc: .word data_027e077c
_020faee0: .word data_027e0c54

	thumb_func_start func_ov03_020faee4
func_ov03_020faee4: ; 0x020faee4
	push {r4, lr}
	mov r2, #0x10
	mov r1, #1
	add r3, r2, #0
	add r4, r0, #0
	bl func_ov09_02113620
	ldr r0, _020faf24 ; =data_ov03_02100824
	ldr r1, _020faf28 ; =data_027e0ce0
	str r0, [r4]
	ldr r1, [r1, #4]
	mov r0, #0x14
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020faf0a
	bl func_ov03_020fb294
_020faf0a:
	str r0, [r4, #0x40]
	mov r1, #0
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	sub r0, r1, #1
	str r0, [r4, #0x4c]
	add r0, r4, #0
	str r1, [r4, #0x50]
	add r0, #0x54
	strb r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020faee4
_020faf24: .word data_ov03_02100824
_020faf28: .word data_027e0ce0

	thumb_func_start func_ov03_020faf2c
func_ov03_020faf2c: ; 0x020faf2c
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020faf70 ; =data_ov03_02100824
	str r0, [r4]
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _020faf46
	add r0, r5, #0
	bl func_ov26_02173c00
	add r0, r5, #0
	blx func_0202ea0c
_020faf46:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _020faf52
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020faf52:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _020faf64
	add r0, r5, #0
	bl func_ov03_020fb2cc
	add r0, r5, #0
	blx func_0202ea0c
_020faf64:
	add r0, r4, #4
	bl func_0202ab64
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
	thumb_func_end func_ov03_020faf2c
_020faf70: .word data_ov03_02100824

	thumb_func_start func_ov03_020faf74
func_ov03_020faf74: ; 0x020faf74
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl func_ov00_0207a730
	mov r1, #0
	str r1, [r4, #0x38]
	sub r0, r1, #1
	str r0, [r4, #0x3c]
	str r1, [r4, #0x48]
	str r0, [r4, #0x4c]
	add r4, #0x54
	strb r1, [r4]
	pop {r4, pc}
	thumb_func_end func_ov03_020faf74

	thumb_func_start func_ov03_020faf90
func_ov03_020faf90: ; 0x020faf90
	push {r4, lr}
	add r4, r0, #0
	bl func_ov03_020faf74
	ldr r0, _020fb008 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	bne _020fafca
	ldr r0, _020fb008 ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	cmp r0, #0
	bne _020fb004
	ldr r1, _020fb00c ; =data_027e0ce0
	mov r0, #0x34
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020fafc6
	blx func_ov15_0216a76c
_020fafc6:
	str r0, [r4, #0x44]
	pop {r4, pc}
_020fafca:
	ldr r1, _020fb00c ; =data_027e0ce0
	mov r0, #0x3c
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020fafde
	bl func_ov14_0215062c
_020fafde:
	str r0, [r4, #0x44]
	ldr r0, _020fb008 ; =data_027e0d38
	ldr r0, [r0]
	add r0, #0xc
	blx func_ov00_020a5e9c
	cmp r0, #0x26
	bne _020fb004
	ldr r1, _020fb00c ; =data_027e0ce0
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020fb002
	bl func_ov26_02173bc0
_020fb002:
	str r0, [r4, #0x50]
_020fb004:
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020faf90
_020fb008: .word data_027e0d38
_020fb00c: .word data_027e0ce0

	thumb_func_start func_ov03_020fb010
func_ov03_020fb010: ; 0x020fb010
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _020fb040
	add r1, r4, #0
	add r1, #0x54
	ldrb r1, [r1]
	cmp r1, #0
	beq _020fb02a
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_020fb02a:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _020fb03c
	add r0, r5, #0
	bl func_ov26_02173c00
	add r0, r5, #0
	blx func_0202ea0c
_020fb03c:
	mov r0, #0
	str r0, [r4, #0x50]
_020fb040:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _020fb052
	beq _020fb04e
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020fb04e:
	mov r0, #0
	str r0, [r4, #0x44]
_020fb052:
	pop {r3, r4, r5, pc}
	thumb_func_end func_ov03_020fb010

	thumb_func_start func_ov03_020fb054
func_ov03_020fb054: ; 0x020fb054
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x54
	ldrb r1, [r1]
	ldr r0, [r4, #0x40]
	bl func_ov03_020fb2e8
	add r0, r4, #0
	add r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _020fb076
	ldr r0, [r4, #0x50]
	bl func_ov26_02173c34
	pop {r4, pc}
_020fb076:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	ldr r3, [r0]
	ldr r2, [r4, #0x4c]
	ldr r3, [r3, #8]
	blx r3
	pop {r4, pc}
	thumb_func_end func_ov03_020fb054

	thumb_func_start func_ov03_020fb084
func_ov03_020fb084: ; 0x020fb084
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _020fb098
	ldr r0, [r4, #0x50]
	bl func_ov26_02173c4c
	b _020fb0a0
_020fb098:
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_020fb0a0:
	ldr r0, [r4, #0x40]
	bl func_ov03_020fb370
	pop {r4, pc}
	thumb_func_end func_ov03_020fb084

	thumb_func_start func_ov03_020fb0a8
func_ov03_020fb0a8: ; 0x020fb0a8
	ldr r3, _020fb0ac ; =func_ov03_020faf74
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020fb0a8
_020fb0ac: .word func_ov03_020faf74

	thumb_func_start func_ov03_020fb0b0
func_ov03_020fb0b0: ; 0x020fb0b0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020fb110 ; =data_027e0e28
	str r1, [r4, #0x4c]
	blx func_ov00_0207bc48
	cmp r0, #0
	beq _020fb0f2
	ldr r0, _020fb110 ; =data_027e0e28
	blx func_ov18_02160a84
	cmp r0, #0
	beq _020fb0ce
	mov r0, #1
	b _020fb0d0
_020fb0ce:
	mov r0, #2
_020fb0d0:
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x38]
	cmp r0, #2
	beq _020fb0e4
_020fb0d8:
	add r0, r4, #0
	blx func_ov09_02113650
	ldr r0, [r4, #0x38]
	cmp r0, #2
	bne _020fb0d8
_020fb0e4:
	add r0, r4, #0
	bl func_ov03_020fb054
	add r0, r4, #0
	blx func_ov09_02113650
	pop {r4, pc}
_020fb0f2:
	ldr r0, _020fb114 ; =data_027e0d38
	ldr r0, [r0]
	blx func_ov00_02078b40
	cmp r0, #2
	bne _020fb102
	mov r0, #3
	b _020fb104
_020fb102:
	mov r0, #0
_020fb104:
	str r0, [r4, #0x48]
	add r0, r4, #0
	blx func_ov09_0211366c
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020fb0b0
_020fb110: .word data_027e0e28
_020fb114: .word data_027e0d38

	thumb_func_start func_ov03_020fb118
func_ov03_020fb118: ; 0x020fb118
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x54
	ldrb r1, [r1]
	cmp r1, #0
	beq _020fb134
	ldr r0, [r4, #0x50]
	bl func_ov26_02173c1c
	add r0, r4, #0
	blx func_ov09_02113650
	pop {r4, pc}
_020fb134:
	ldr r1, [r4, #0x48]
	cmp r1, #1
	bne _020fb140
	blx func_ov09_02113650
	pop {r4, pc}
_020fb140:
	blx func_ov09_02113698
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb118

	arm_func_start func_ov03_020fb148
func_ov03_020fb148: ; 0x020fb148
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov09_0211372c
	mov r0, r4
	bl func_ov09_021136c4
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #0x40]
	blx func_ov03_020fb3ac
	ldr r0, [r4, #0x38]
	cmp r0, #4
	movne r1, #1
	ldrb r0, [r4, #0x54]
	moveq r1, #0
	cmp r0, #0
	beq _020fb194
	ldr r0, [r4, #0x50]
	blx func_ov26_02173c58
	b _020fb1a4
_020fb194:
	ldr r0, [r4, #0x44]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
_020fb1a4:
	ldr r0, _020fb250 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov05_02101ae8
	ldr r0, _020fb250 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov05_02101af8
	ldrb r0, [r4, #0x54]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #0x38]
	cmp r0, #3
	bne _020fb208
	ldr r0, [r4, #0x48]
	cmp r0, #1
	cmpne r0, #2
	ldmia sp!, {r4, pc}
	ldr r0, _020fb254 ; =data_027e071c
	ldr r0, [r0, #0x44]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	ldmia sp!, {r4, pc}
	mov r0, r4
	bl func_ov09_02113650
	ldmia sp!, {r4, pc}
_020fb208:
	cmp r0, #5
	ldreq r0, [r4, #0x48]
	cmpeq r0, #1
	ldmia sp!, {r4, pc}
	ldr r0, _020fb254 ; =data_027e071c
	ldr r0, [r0, #0x44]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r0]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	mov r0, r4
	bl func_ov09_02113650
	mov r0, r4
	blx func_ov03_020fb084
	mov r0, r4
	blx func_ov03_020faf74
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb148
_020fb250: .word data_027e0f74
_020fb254: .word data_027e071c

	thumb_func_start func_ov03_020fb258
func_ov03_020fb258: ; 0x020fb258
	push {r3, lr}
	add r2, r0, #0
	add r2, #0x54
	ldrb r2, [r2]
	cmp r2, #0
	beq _020fb26a
	ldr r0, [r0, #0x50]
	bl func_ov26_02173c7c
_020fb26a:
	pop {r3, pc}
	thumb_func_end func_ov03_020fb258

	thumb_func_start func_ov03_020fb26c
func_ov03_020fb26c: ; 0x020fb26c
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl func_ov03_020fb3c8
	add r0, r4, #0
	add r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _020fb288
	ldr r0, [r4, #0x50]
	bl func_ov26_02173c88
	pop {r4, pc}
_020fb288:
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb26c

	thumb_func_start func_ov03_020fb294
func_ov03_020fb294: ; 0x020fb294
	push {r4, lr}
	ldr r1, _020fb2c8 ; =data_027e0ce0
	add r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, #0x60
	mov r2, #4
	blx func_0202e9dc
	cmp r0, #0
	beq _020fb2ac
	bl func_ov09_0211cca4
_020fb2ac:
	str r0, [r4]
	mov r1, #0
	strh r1, [r4, #4]
	add r2, r4, #0
	add r0, r1, #0
_020fb2b6:
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	strh r0, [r2, #0xa]
	add r1, r1, #1
	add r2, r2, #6
	cmp r1, #2
	blt _020fb2b6
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb294
_020fb2c8: .word data_027e0ce0

	thumb_func_start func_ov03_020fb2cc
func_ov03_020fb2cc: ; 0x020fb2cc
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5]
	cmp r4, #0
	beq _020fb2e2
	add r0, r4, #0
	bl func_ov09_0211ccb4
	add r0, r4, #0
	blx func_0202ea0c
_020fb2e2:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb2cc

	thumb_func_start func_ov03_020fb2e8
func_ov03_020fb2e8: ; 0x020fb2e8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	ldr r0, _020fb358 ; =data_027e0db0
	mov r1, #1
	bl func_ov00_0207b334
	ldr r0, _020fb35c ; =data_027e103c
	ldr r0, [r0]
	blx func_ov00_020cf348
	ldr r0, _020fb360 ; =data_027e0c68
	blx func_02036d6c
	cmp r4, #0
	beq _020fb30c
	mov r1, #1
	b _020fb30e
_020fb30c:
	mov r1, #0
_020fb30e:
	ldr r0, [r6]
	bl func_ov09_0211ccb8
	ldr r0, _020fb364 ; =data_027e0e58
	ldr r1, [r6]
	ldr r0, [r0]
	ldr r7, _020fb368 ; =data_027e0f88
	str r1, [r0, #0x18]
	mov r4, #0
	add r5, r6, #0
_020fb322:
	ldr r0, [r7]
	add r1, r4, #0
	blx func_ov00_020a19fc
	mov r1, #0
	ldrsh r1, [r0, r1]
	add r4, r4, #1
	strh r1, [r5, #6]
	mov r1, #2
	ldrsh r1, [r0, r1]
	strh r1, [r5, #8]
	mov r1, #4
	ldrsh r0, [r0, r1]
	strh r0, [r5, #0xa]
	add r5, r5, #6
	cmp r4, #2
	blt _020fb322
	ldr r0, _020fb368 ; =data_027e0f88
	ldr r0, [r0]
	blx func_ov00_020a1abc
	ldr r0, _020fb36c ; =data_027e06d8
	ldrh r1, [r0, #0x3c]
	strh r1, [r6, #4]
	mov r1, #0
	strh r1, [r0, #0x3e]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb2e8
_020fb358: .word data_027e0db0
_020fb35c: .word data_027e103c
_020fb360: .word data_027e0c68
_020fb364: .word data_027e0e58
_020fb368: .word data_027e0f88
_020fb36c: .word data_027e06d8

	thumb_func_start func_ov03_020fb370
func_ov03_020fb370: ; 0x020fb370
	push {r4, r5, r6, lr}
	ldrh r2, [r0, #4]
	ldr r1, _020fb3a0 ; =data_027e06d8
	ldr r6, _020fb3a4 ; =data_027e0f88
	strh r2, [r1, #0x3e]
	mov r4, #0
	add r5, r0, #6
_020fb37e:
	ldr r0, [r6]
	add r1, r4, #0
	add r2, r5, #0
	blx func_ov00_020a1a24
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #2
	blt _020fb37e
	ldr r0, _020fb3a8 ; =data_027e0e58
	ldr r1, [r0]
	cmp r1, #0
	beq _020fb39c
	mov r0, #0
	str r0, [r1, #0x18]
_020fb39c:
	pop {r4, r5, r6, pc}
	nop
	thumb_func_end func_ov03_020fb370
_020fb3a0: .word data_027e06d8
_020fb3a4: .word data_027e0f88
_020fb3a8: .word data_027e0e58

	thumb_func_start func_ov03_020fb3ac
func_ov03_020fb3ac: ; 0x020fb3ac
	push {r3, lr}
	ldr r0, [r0]
	blx func_ov09_0211cd3c
	ldr r0, _020fb3c4 ; =data_027e0e58
	mov r1, #0
	ldr r0, [r0]
	mov r2, #8
	add r3, r1, #0
	blx func_ov05_0210d774
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb3ac
_020fb3c4: .word data_027e0e58

	thumb_func_start func_ov03_020fb3c8
func_ov03_020fb3c8: ; 0x020fb3c8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020fb3dc ; =data_027e0f88
	ldr r0, [r0]
	blx unk_0210184c
	ldr r0, [r4]
	blx func_ov09_0211cd40
	pop {r4, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fb3c8
_020fb3dc: .word data_027e0f88

	arm_func_start func_ov03_020fb3e0
func_ov03_020fb3e0: ; 0x020fb3e0
	ldr r1, _020fb3ec ; =data_ov03_020ffa54
	ldr r0, [r1, r0, lsl #2]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020fb3e0
_020fb3ec: .word data_ov03_020ffa54

	arm_func_start func_ov03_020fb3f0
func_ov03_020fb3f0: ; 0x020fb3f0
	ldr r1, _020fb400 ; =data_ov03_020ffa30
	mov r0, r0, lsl #0x1
	ldrh r0, [r1, r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020fb3f0
_020fb400: .word data_ov03_020ffa30

	arm_func_start func_ov03_020fb404
func_ov03_020fb404: ; 0x020fb404
	ldr r2, _020fb418 ; =data_ov03_020ffa98
	add r0, r0, r0, lsl #4
	add r0, r2, r0
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020fb404
_020fb418: .word data_ov03_020ffa98

	arm_func_start func_ov03_020fb41c
func_ov03_020fb41c: ; 0x020fb41c
	stmdb sp!, {r3, lr}
	ldr r1, _020fb448 ; =data_027e0fe0
	mov r0, #0x1d0
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	blx func_ov03_020fb45c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb41c
_020fb448: .word data_027e0fe0

	arm_func_start func_ov03_020fb44c
func_ov03_020fb44c: ; 0x020fb44c
	ldr r0, _020fb458 ; =data_ov03_02100a8c
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020fb44c
_020fb458: .word data_ov03_02100a8c

	thumb_func_start func_ov03_020fb45c
func_ov03_020fb45c: ; 0x020fb45c
	push {r4, lr}
	add r4, r0, #0
	blx func_ov00_020c1554
	ldr r0, _020fb494 ; =data_ov03_0210087c
	mov r1, #0
	str r0, [r4]
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl func_ov00_020a9588
	bl func_ov03_020fb4ec
	mov r1, #0x6f
	lsl r1, r1, #2
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	sub r0, r2, #1
	add r1, #0x10
	str r0, [r4, r1]
	ldr r0, _020fb498 ; =data_ov03_02100a8c
	str r4, [r0, #0x20]
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020fb45c
_020fb494: .word data_ov03_0210087c
_020fb498: .word data_ov03_02100a8c

	thumb_func_start func_ov03_020fb49c
func_ov03_020fb49c: ; 0x020fb49c
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020fb4bc ; =data_ov03_02100a8c
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl func_ov00_020a95a4
	add r0, r4, #0
	blx func_ov00_020c1730
	add r0, r4, #0
	pop {r4, pc}
	nop
	thumb_func_end func_ov03_020fb49c
_020fb4bc: .word data_ov03_02100a8c

	thumb_func_start func_ov03_020fb4c0
func_ov03_020fb4c0: ; 0x020fb4c0
	thumb_func_end func_ov03_020fb4c0
_020fb4c0:
	.byte 0x10
data_ov03_020fb4c1: ; 0x020fb4c1
	.byte 0xb5, 0x04, 0x1c, 0x07, 0x48, 0x00, 0x21, 0x01, 0x62, 0x16, 0x20, 0x00, 0x01, 0x20, 0x18
	.byte 0xae, 0xf7, 0x68, 0xf8, 0x20, 0x1c, 0xc6, 0xf7, 0x2c, 0xe9, 0x20, 0x1c, 0x33, 0xf7, 0x96, 0xea
	.byte 0x20, 0x1c, 0x10, 0xbd
_020fb4e4: .word data_ov03_02100a8c

	thumb_func_start func_ov03_020fb4e8
func_ov03_020fb4e8: ; 0x020fb4e8
	thumb_func_end func_ov03_020fb4e8
_020fb4e8:
	.byte 0x01
data_ov03_020fb4e9: ; 0x020fb4e9
	.byte 0x20, 0x70, 0x47

	thumb_func_start func_ov03_020fb4ec
func_ov03_020fb4ec: ; 0x020fb4ec
	push {r3, r4, lr}
	sub sp, #0x84
	ldr r0, _020fb5a0 ; =data_027e0d44
	ldr r2, _020fb5a4 ; =data_ov03_02100930
	ldr r4, [r0]
	add r3, sp, #4
	mov r1, #0x19
_020fb4fa:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _020fb4fa
	ldr r1, _020fb5a8 ; =data_ov03_0210094c
	add r0, r4, #0
	add r2, sp, #4
	mov r3, #1
	bl func_ov04_02105c64
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, _020fb5ac ; =data_ov03_02100950
	add r0, r4, #0
	mov r1, #0x4a
	mov r3, #0
	bl func_ov04_02105b10
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, _020fb5b0 ; =data_ov03_02100964
	add r0, r4, #0
	mov r1, #0x4b
	mov r3, #0
	bl func_ov04_02105b10
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, _020fb5b4 ; =data_ov03_02100978
	add r0, r4, #0
	mov r1, #0x4c
	mov r3, #0
	bl func_ov04_02105b10
	add r0, r4, #0
	bl func_ov04_02105cd0
	ldr r0, _020fb5b8 ; =data_027e05f4
	bl func_0202ab38
	add r1, r0, #0
	add r0, sp, #4
	blx func_02047024
	ldr r1, _020fb5bc ; =data_ov03_0210098c
	add r0, sp, #4
	blx func_0204713c
	ldr r1, _020fb5c0 ; =data_ov03_021009a8
	add r0, r4, #0
	add r2, sp, #4
	mov r3, #1
	bl func_ov04_02105c64
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, _020fb5c4 ; =data_ov03_021009ac
	add r0, r4, #0
	mov r1, #0x4d
	mov r3, #0
	bl func_ov04_02105b10
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, _020fb5c8 ; =data_ov03_021009c0
	add r0, r4, #0
	mov r1, #0x4e
	mov r3, #0
	bl func_ov04_02105b10
	add r0, r4, #0
	bl func_ov04_02105cd0
	add sp, #0x84
	pop {r3, r4, pc}
	nop
	thumb_func_end func_ov03_020fb4ec
_020fb5a0: .word data_027e0d44
_020fb5a4: .word data_ov03_02100930
_020fb5a8: .word data_ov03_0210094c
_020fb5ac: .word data_ov03_02100950
_020fb5b0: .word data_ov03_02100964
_020fb5b4: .word data_ov03_02100978
_020fb5b8: .word data_027e05f4
_020fb5bc: .word data_ov03_0210098c
_020fb5c0: .word data_ov03_021009a8
_020fb5c4: .word data_ov03_021009ac
_020fb5c8: .word data_ov03_021009c0

	arm_func_start func_ov03_020fb5cc
func_ov03_020fb5cc: ; 0x020fb5cc
	stmdb sp!, {r4, lr}
	sub sp, sp, #0xb0
	mov r4, r0
	mov r2, #1
	mov r1, #4
	strb r2, [r4, #0x1bc]
	bl func_ov03_020fb970
	mov r0, #0
	str r0, [r4, #0x1c4]
	ldr r1, [r4, #0x1cc]
	sub r0, r0, #1
	cmp r1, r0
	addne sp, sp, #0xb0
	ldmia sp!, {r4, pc}
	add r0, sp, #0
	bl func_ov00_0209a4f4
	mov r2, #0
	ldr r0, _020fb650 ; =data_027e0f74
	mvn ip, #0
	mov r3, #0x64
	ldr r0, [r0]
	add r1, sp, #0
	str ip, [sp, #4]
	strb r3, [sp, #9]
	strb r2, [sp, #0xa]
	strb r2, [sp, #0xb]
	strb r2, [sp, #0x16]
	bl func_ov00_02097810
	str r0, [r4, #0x1cc]
	add r0, sp, #0
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb5cc
_020fb650: .word data_027e0f74

	arm_func_start func_ov03_020fb654
func_ov03_020fb654: ; 0x020fb654
	stmdb sp!, {r4, lr}
	sub sp, sp, #0xb0
	mov r4, r0
	mov r1, #1
	strb r1, [r4, #0x1bc]
	mov r1, #5
	bl func_ov03_020fb970
	ldr r1, [r4, #0x1cc]
	mvn r0, #0
	cmp r1, r0
	addne sp, sp, #0xb0
	ldmia sp!, {r4, pc}
	add r0, sp, #0
	bl func_ov00_0209a4f4
	mov r2, #0
	ldr r0, _020fb6d0 ; =data_027e0f74
	mvn ip, #0
	mov r3, #0x64
	ldr r0, [r0]
	add r1, sp, #0
	str ip, [sp, #4]
	strb r3, [sp, #9]
	strb r2, [sp, #0xa]
	strb r2, [sp, #0xb]
	strb r2, [sp, #0x16]
	bl func_ov00_02097810
	str r0, [r4, #0x1cc]
	add r0, sp, #0
	bl func_ov00_0209a508
	add sp, sp, #0xb0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb654
_020fb6d0: .word data_027e0f74

	arm_func_start func_ov03_020fb6d4
func_ov03_020fb6d4: ; 0x020fb6d4
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x1c8]
	cmp r3, #5
	ldmia sp!, {r3, pc}
	ldr r0, _020fb6f8 ; =data_027e0de4
	ldr r2, _020fb6fc ; =func_ov03_020fb700
	mov r1, #6
	bl func_ov00_0207bb1c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb6d4
_020fb6f8: .word data_027e0de4
_020fb6fc: .word func_ov03_020fb700

	arm_func_start func_ov03_020fb700
func_ov03_020fb700: ; 0x020fb700
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	mov r6, #0
	mov r8, #0x1000
	bl func_ov03_020fb44c
	cmp r0, #0
	ldrne r8, [r0, #0x1c4]
	cmp sb, #4
	addls pc, pc, sb, lsl #2
	b _020fb7b0
_020fb728: ; jump table
	b _020fb79c ; case 0
	b _020fb784 ; case 1
	b _020fb76c ; case 2
	b _020fb754 ; case 3
	b _020fb73c ; case 4
_020fb73c:
	mov r6, #0x100
	mov sl, #0x100000
	mov r4, #0x40000
	mov r5, #0x4d
	mov r7, #5
	b _020fb7b0
_020fb754:
	mov sl, #0x40000
	mov r4, sl
	mov r6, #0x40
	mov r5, #0x4c
	mov r7, #3
	b _020fb7b0
_020fb76c:
	mov sl, #0x40000
	mov r4, sl
	mov r6, #0x40
	mov r5, #0x4b
	mov r7, #3
	b _020fb7b0
_020fb784:
	mov sl, #0x40000
	mov r4, sl
	mov r6, #0x40
	mov r5, #0x4a
	mov r7, #3
	b _020fb7b0
_020fb79c:
	mov r6, #0x100
	mov sl, #0x100000
	mov r4, #0x40000
	mov r5, #0x4e
	mov r7, #5
_020fb7b0:
	ldr r2, _020fb93c ; =0x0000ffff
	ldr r1, _020fb940 ; =0x040004c0
	ldr r0, _020fb944 ; =0x001f0080
	str r2, [r1]
	ldr r3, _020fb948 ; =data_027e0d44
	str r0, [r1, #-0x1c]
	ldr r2, [r3]
	add r0, r6, r6, lsr #31
	add r2, r2, r5, lsl #3
	ldr r2, [r2, #8]
	mov r0, r0, asr #0x1
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bic r2, r2, #0xe0000000
	orr r2, r2, #0x14000000
	orr r2, r2, r7, lsl #20
	orr r2, r2, #0x21800000
	str r2, [r1, #-0x18]
	mul r2, r0, r8
	ldr r0, [r3]
	mov r6, r2, asr #0xc
	add r0, r0, r5, lsl #3
	ldr r0, [r0, #0xc]
	mov r3, r8, lsl #0x5
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x11
	rsb r8, r6, #0x80
	mov r0, r8
	str r2, [r1, #-0x14]
	mov r2, #1
	mov r7, r3, asr #0xc
	str r2, [r1, #0x40]
	bl func_ov05_0210e288
	rsb sb, r7, #0x60
	mov r5, r0
	mov r0, sb
	bl func_ov05_0210e2a4
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r1, _020fb94c ; =0x04000488
	mov r2, #0
	mov r0, r5, lsl #0x10
	mov r3, r3, lsl #0x10
	str r2, [r1]
	orr r0, r3, r0, lsr #16
	str r0, [r1, #4]
	mov r0, r8
	str r2, [r1, #4]
	bl func_ov05_0210e288
	mov r5, r0
	add r0, r7, #0x60
	bl func_ov05_0210e2a4
	mov r1, r0, lsl #0x10
	mov r0, r4, lsl #0x8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldr r2, _020fb94c ; =0x04000488
	mov r8, r0, lsl #0x10
	mov r0, r5, lsl #0x10
	mov r1, r1, lsl #0x10
	str r8, [r2]
	orr r1, r1, r0, lsr #16
	add r0, r6, #0x80
	str r1, [r2, #0xc]
	bl func_ov05_0210e288
	mov r4, r0
	add r0, r7, #0x60
	bl func_ov05_0210e2a4
	mov r1, sl, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r2, _020fb94c ; =0x04000488
	orr r3, r5, r8
	mov r0, r4, lsl #0x10
	mov r1, r1, lsl #0x10
	str r3, [r2]
	orr r1, r1, r0, lsr #16
	add r0, r6, #0x80
	str r1, [r2, #0xc]
	bl func_ov05_0210e288
	mov r4, r0
	mov r0, sb
	bl func_ov05_0210e2a4
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r2, _020fb94c ; =0x04000488
	mov r0, r4, lsl #0x10
	mov r1, r1, lsl #0x10
	str r5, [r2]
	orr r0, r1, r0, lsr #16
	str r0, [r2, #0xc]
	mov r0, #0
	str r0, [r2, #0x7c]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb700
_020fb93c: .word 0x0000ffff
_020fb940: .word 0x040004c0
_020fb944: .word 0x001f0080
_020fb948: .word data_027e0d44
_020fb94c: .word 0x04000488

	arm_func_start func_ov03_020fb950
func_ov03_020fb950: ; 0x020fb950
	ldr r1, [r0, #0x1c4]
	add r1, r1, #0xa
	add r1, r1, #0x300
	str r1, [r0, #0x1c4]
	cmp r1, #0x1000
	movge r1, #0x1000
	strge r1, [r0, #0x1c4]
	bx lr
	arm_func_end func_ov03_020fb950

	arm_func_start func_ov03_020fb970
func_ov03_020fb970: ; 0x020fb970
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x130]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r4, pc}
_020fb988: ; jump table
	b _020fb9a4 ; case 0
	b _020fb9b4 ; case 1
	b _020fba54 ; case 2
	b _020fba74 ; case 3
	b _020fba94 ; case 4
	b _020fbabc ; case 5
	b _020fbaf0 ; case 6
_020fb9a4:
	mov r0, #0
	str r0, [r4, #0x1c4]
	strb r0, [r4, #0x1bc]
	ldmia sp!, {r4, pc}
_020fb9b4:
	ldr r0, _020fbb04 ; =data_027e0f74
	ldr r1, [r4, #0x1cc]
	ldr r0, [r0]
	bl func_ov00_02097b9c
	cmp r0, #0
	beq _020fb9e4
	ldr r0, _020fbb04 ; =data_027e0f74
	ldr r1, [r4, #0x1cc]
	ldr r0, [r0]
	bl func_ov00_02097bcc
	mvn r0, #0
	str r0, [r4, #0x1cc]
_020fb9e4:
	ldr r0, _020fbb08 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #1
	beq _020fba08
	cmp r0, #0x1b
	beq _020fba20
	b _020fba34
_020fba08:
	ldr r0, _020fbb0c ; =data_ov00_020eec68
	mov r1, #0xd4
	mov r2, #0
	mov r3, #0x7f
	bl func_ov00_020d70a4
	b _020fba34
_020fba20:
	ldr r0, _020fbb0c ; =data_ov00_020eec68
	mov r1, #0xd6
	mov r2, #0
	mov r3, #0x7f
	bl func_ov00_020d70a4
_020fba34:
	mov r1, #0x1e
	str r1, [r4, #0x1c0]
	mov r2, #0
	ldr r0, _020fbb10 ; =data_ov00_020eec9c
	mov r1, #0xbb
	str r2, [r4, #0x1c4]
	bl func_ov00_020d77e4
	ldmia sp!, {r4, pc}
_020fba54:
	mov r1, #0x1e
	str r1, [r4, #0x1c0]
	mov r2, #0
	ldr r0, _020fbb10 ; =data_ov00_020eec9c
	mov r1, #0xba
	str r2, [r4, #0x1c4]
	bl func_ov00_020d77e4
	ldmia sp!, {r4, pc}
_020fba74:
	mov r1, #0x1e
	str r1, [r4, #0x1c0]
	mov r2, #0
	ldr r0, _020fbb10 ; =data_ov00_020eec9c
	mov r1, #0xba
	str r2, [r4, #0x1c4]
	bl func_ov00_020d77e4
	ldmia sp!, {r4, pc}
_020fba94:
	mov r0, #1
	strb r0, [r4, #0x1bc]
	mov r1, #0
	str r1, [r4, #0x1c4]
	mov r2, #0x1e
	ldr r0, _020fbb10 ; =data_ov00_020eec9c
	mov r1, #0xba
	str r2, [r4, #0x1c0]
	bl func_ov00_020d77e4
	ldmia sp!, {r4, pc}
_020fbabc:
	ldr r0, _020fbb0c ; =data_ov00_020eec68
	mov r1, #0
	bl func_ov00_020d716c
	mov r0, #1
	strb r0, [r4, #0x1bc]
	mov r1, #0
	str r1, [r4, #0x1c4]
	mov r2, #0x1e
	ldr r0, _020fbb10 ; =data_ov00_020eec9c
	mov r1, #0xbf
	str r2, [r4, #0x1c0]
	bl func_ov00_020d77e4
	ldmia sp!, {r4, pc}
_020fbaf0:
	mov r0, #0
	strb r0, [r4, #0x1bc]
	mov r0, #0x1e
	str r0, [r4, #0x1c0]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fb970
_020fbb04: .word data_027e0f74
_020fbb08: .word data_027e0d38
_020fbb0c: .word data_ov00_020eec68
_020fbb10: .word data_ov00_020eec9c

	arm_func_start func_ov03_020fbb14
func_ov03_020fbb14: ; 0x020fbb14
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x130]
	cmp r2, #0
	ldmia sp!, {r3, pc}
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020fbb14

	arm_func_start func_ov03_020fbb34
func_ov03_020fbb34: ; 0x020fbb34
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c0]
	sub r0, r0, #1
	str r0, [r4, #0x1c0]
	cmp r0, #0
	movle r0, #0
	strle r0, [r4, #0x1c0]
	ldr r0, [r4, #0x130]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020fbc98
_020fbb64: ; jump table
	b _020fbc98 ; case 0
	b _020fbb80 ; case 1
	b _020fbbac ; case 2
	b _020fbbd8 ; case 3
	b _020fbc04 ; case 4
	b _020fbc30 ; case 5
	b _020fbc8c ; case 6
_020fbb80:
	mov r0, r4
	bl func_ov03_020fb950
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	bne _020fbba0
	mov r0, r4
	mov r1, #0
	bl func_ov03_020fb970
_020fbba0:
	mov r0, #0
	str r0, [r4, #0x1c8]
	ldmia sp!, {r4, pc}
_020fbbac:
	mov r0, r4
	bl func_ov03_020fb950
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	bne _020fbbcc
	mov r0, r4
	mov r1, #1
	bl func_ov03_020fb970
_020fbbcc:
	mov r0, #1
	str r0, [r4, #0x1c8]
	ldmia sp!, {r4, pc}
_020fbbd8:
	mov r0, r4
	bl func_ov03_020fb950
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	bne _020fbbf8
	mov r0, r4
	mov r1, #2
	bl func_ov03_020fb970
_020fbbf8:
	mov r0, #2
	str r0, [r4, #0x1c8]
	ldmia sp!, {r4, pc}
_020fbc04:
	mov r0, r4
	bl func_ov03_020fb950
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	bne _020fbc24
	mov r0, r4
	mov r1, #3
	bl func_ov03_020fb970
_020fbc24:
	mov r0, #3
	str r0, [r4, #0x1c8]
	ldmia sp!, {r4, pc}
_020fbc30:
	mov r1, #4
	mov r0, r4
	str r1, [r4, #0x1c8]
	bl func_ov03_020fb950
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	mov r0, r4
	mov r1, #6
	bl func_ov03_020fb970
	ldr r0, _020fbca4 ; =data_027e0f74
	ldr r1, [r4, #0x1cc]
	ldr r0, [r0]
	bl func_ov00_02097b9c
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _020fbca4 ; =data_027e0f74
	ldr r1, [r4, #0x1cc]
	ldr r0, [r0]
	bl func_ov00_02097bcc
	mvn r0, #0
	str r0, [r4, #0x1cc]
	ldmia sp!, {r4, pc}
_020fbc8c:
	mov r0, #0
	str r0, [r4, #0x1c8]
	ldmia sp!, {r4, pc}
_020fbc98:
	mov r0, #5
	str r0, [r4, #0x1c8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fbb34
_020fbca4: .word data_027e0f74

	arm_func_start func_ov03_020fbca8
func_ov03_020fbca8: ; 0x020fbca8
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldrb r1, [r0, #0x1bc]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	bl func_ov03_020fb6d4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020fbca8

	arm_func_start func_ov03_020fbcc8
func_ov03_020fbcc8: ; 0x020fbcc8
	stmdb sp!, {r4, lr}
	ldr r1, _020fbcfc ; =data_027e0f84
	mov r4, r0
	ldr r1, [r1]
	mov r0, #0xd4
	ldr r1, [r1]
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r4, pc}
	mov r1, r4
	bl func_ov03_020fbd00
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fbcc8
_020fbcfc: .word data_027e0f84

	arm_func_start func_ov03_020fbd00
func_ov03_020fbd00: ; 0x020fbd00
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #1
	str r2, [sp]
	mov r3, #0
	mov r2, #2
	mov r4, r0
	str r3, [sp, #4]
	bl func_ov14_02125168
	ldr r3, _020fbd48 ; =data_ov03_021009dc
	mov r0, r4
	mov r1, #1
	mov r2, #0
	str r3, [r4]
	bl func_ov00_0208ba08
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov03_020fbd00
_020fbd48: .word data_ov03_021009dc

	arm_func_start func_ov03_020fbd4c
func_ov03_020fbd4c: ; 0x020fbd4c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov14_02125290
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020fbd4c

	arm_func_start func_ov03_020fbd60
func_ov03_020fbd60: ; 0x020fbd60
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov14_02125290
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov03_020fbd60

	arm_func_start func_ov03_020fbd7c
func_ov03_020fbd7c: ; 0x020fbd7c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, [r0]
	mov r5, r0
	ldr r2, [r2, #0x84]
	mov r4, r1
	blx r2
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x9c]
	blx r1
	cmp r0, #0
	bne _020fbdec
	mov r0, r5
	mov r1, #1
	bl func_ov00_0208b9e4
	cmp r0, #0
	beq _020fbdec
	ldr r0, _020fbdfc ; =data_027e0fc8
	ldr r0, [r0]
	bl func_ov00_020bc500
	cmp r0, #6
	beq _020fbdec
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x8c]
	blx r1
_020fbdec:
	mov r0, r5
	mov r1, r4
	bl func_ov14_0212559c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020fbd7c
_020fbdfc: .word data_027e0fc8

	arm_func_start func_ov03_020fbe00
func_ov03_020fbe00: ; 0x020fbe00
	ldr r1, [r0, #8]
	mov r0, #1
	cmp r1, #7
	cmpne r1, #8
	movne r0, #0
	bx lr
	arm_func_end func_ov03_020fbe00

	arm_func_start func_ov03_020fbe18
func_ov03_020fbe18: ; 0x020fbe18
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x24]
	mov r4, #0
	cmp r0, #0
	beq _020fbe3c
	cmp r0, #1
	beq _020fbe54
	b _020fbe64
_020fbe3c:
	ldr r0, _020fbecc ; =data_ov09_0211f5c4
	ldr r0, [r0]
	bl func_ov28_0216f89c
	cmp r0, #0
	moveq r4, #1
	b _020fbe64
_020fbe54:
	bl func_ov52_02195754
	bl func_ov52_0219611c
	cmp r0, #0
	moveq r4, #1
_020fbe64:
	mov r0, r5
	bl func_ov14_021258d0
	mvn r1, #0
	cmp r0, r1
	ldmia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x24]
	cmp r0, #0
	beq _020fbe90
	cmp r0, #1
	beq _020fbeac
	b _020fbec4
_020fbe90:
	cmp r4, #0
	moveq r0, r1
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _020fbecc ; =data_ov09_0211f5c4
	ldr r0, [r0]
	bl func_ov28_0216f918
	ldmia sp!, {r3, r4, r5, pc}
_020fbeac:
	cmp r4, #0
	moveq r0, r1
	ldmia sp!, {r3, r4, r5, pc}
	bl func_ov52_02195754
	bl func_ov52_02196198
	ldmia sp!, {r3, r4, r5, pc}
_020fbec4:
	mov r0, r1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov03_020fbe18
_020fbecc: .word data_ov09_0211f5c4

	arm_func_start func_ov03_020fbed0
func_ov03_020fbed0: ; 0x020fbed0
	stmdb sp!, {r3, lr}
	bl func_ov03_020fbef0
	cmp r0, #0
	movne r0, #3
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov03_020fbed0

	arm_func_start func_ov03_020fbee8
func_ov03_020fbee8: ; 0x020fbee8
	mov r0, #0
	bx lr
	arm_func_end func_ov03_020fbee8

	arm_func_start func_ov03_020fbef0
func_ov03_020fbef0: ; 0x020fbef0
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _020fbf0c
	cmp r0, #1
	beq _020fbf20
	b _020fbf2c
_020fbf0c:
	ldr r0, _020fbf34 ; =data_027e0f74
	mov r1, #0x56
	ldr r0, [r0]
	bl func_ov00_02097760
	ldmia sp!, {r3, pc}
_020fbf20:
	bl func_ov52_02195754
	ldrb r0, [r0, #0x11]
	ldmia sp!, {r3, pc}
_020fbf2c:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020fbef0
_020fbf34: .word data_027e0f74

	arm_func_start func_ov03_020fbf38
func_ov03_020fbf38: ; 0x020fbf38
	mov r0, #0x87
	bx lr
	arm_func_end func_ov03_020fbf38

	thumb_func_start func_ov03_020fbf40
func_ov03_020fbf40: ; 0x020fbf40
	thumb_func_end func_ov03_020fbf40
_020fbf40:
	.byte 0x01
data_ov03_020fbf41: ; 0x020fbf41
	.byte 0x21, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_ov03_020fbf48
func_ov03_020fbf48: ; 0x020fbf48
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end func_ov03_020fbf48

	thumb_func_start func_ov03_020fbf54
func_ov03_020fbf54: ; 0x020fbf54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #1
	beq _020fbf64
	cmp r4, #2
	beq _020fbf86
	b _020fbf94
_020fbf64:
	ldr r0, [r5]
	add r3, r5, #0
	add r0, #0x92
	ldrb r1, [r0]
	mov r0, #0
	ldr r2, _020fbf9c ; =func_ov03_020fbf40
	strb r0, [r5, #0xc]
	ldr r0, _020fbfa0 ; =data_027e103c
	add r3, #0xc
	ldr r0, [r0]
	blx func_ov00_020cf3c8
	ldr r0, _020fbfa4 ; =data_ov00_020eec9c
	mov r1, #0x4e
	blx func_ov00_020d77e4
	b _020fbf94
_020fbf86:
	ldr r2, [r5]
	ldr r0, _020fbfa0 ; =data_027e103c
	mov r1, #0x92
	ldrsb r1, [r2, r1]
	ldr r0, [r0]
	blx func_ov00_020cf3dc
_020fbf94:
	mov r0, #0
	str r0, [r5, #8]
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fbf54
_020fbf9c: .word func_ov03_020fbf40
_020fbfa0: .word data_027e103c
_020fbfa4: .word data_ov00_020eec9c

	thumb_func_start func_ov03_020fbfa8
func_ov03_020fbfa8: ; 0x020fbfa8
	push {r3, lr}
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bpl _020fbfb6
	mov r1, #0
	str r1, [r0, #8]
_020fbfb6:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020fbfc6
	cmp r1, #1
	beq _020fbfe2
	cmp r1, #2
	beq _020fbff0
	pop {r3, pc}
_020fbfc6:
	ldr r1, [r0, #8]
	cmp r1, #0
	blt _020fc00a
	ldr r1, [r0]
	add r1, #0x9b
	ldrb r1, [r1]
	cmp r1, #0
	beq _020fbfda
	mov r1, #1
	b _020fbfdc
_020fbfda:
	mov r1, #2
_020fbfdc:
	bl func_ov03_020fbf54
	pop {r3, pc}
_020fbfe2:
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _020fc00a
	mov r1, #2
	bl func_ov03_020fbf54
	pop {r3, pc}
_020fbff0:
	ldr r0, [r0, #8]
	cmp r0, #0xf
	blt _020fc00a
	ldr r0, _020fc00c ; =data_027e103c
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	blx func_ov00_020cf3dc
	ldr r0, _020fc010 ; =data_027e077c
	mov r1, #0x30
	blx func_0202e740
_020fc00a:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end func_ov03_020fbfa8
_020fc00c: .word data_027e103c
_020fc010: .word data_027e077c

	arm_func_start func_ov03_020fc014
func_ov03_020fc014: ; 0x020fc014
	mov r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end func_ov03_020fc014

	arm_func_start func_ov03_020fc030
func_ov03_020fc030: ; 0x020fc030
	strh r1, [r0]
	str r2, [r0, #4]
	ldr r2, [sp]
	str r3, [r0, #8]
	ldr r1, [sp, #4]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end func_ov03_020fc030

	arm_func_start func_ov03_020fc050
func_ov03_020fc050: ; 0x020fc050
	ldrh r1, [r0]
	cmp r1, #0
	bxeq lr
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r0, #0xc]
	str r1, [r0, #4]
	ldr r1, [r0, #0x10]
	str r1, [r0, #8]
	bx lr
	arm_func_end func_ov03_020fc050

	arm_func_start func_ov03_020fc078
func_ov03_020fc078: ; 0x020fc078
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrh r0, [r6]
	mov r4, #0
	cmp r0, #0
	beq _020fc104
	ldr r2, [r6, #0xc]
	mov r5, r0, lsl #0xc
	cmp r5, #0x1000
	strle r2, [r6, #4]
	ble _020fc0c0
	ldr r0, [r6, #4]
	mov r1, r5
	sub r0, r2, r0
	bl func_01ff98e0
	ldr r1, [r6, #4]
	add r0, r1, r0
	str r0, [r6, #4]
_020fc0c0:
	ldr r2, [r6, #0x10]
	cmp r5, #0x1000
	strle r2, [r6, #8]
	ble _020fc0ec
	ldr r0, [r6, #8]
	mov r1, r5
	sub r0, r2, r0
	bl func_01ff98e0
	ldr r1, [r6, #8]
	add r0, r1, r0
	str r0, [r6, #8]
_020fc0ec:
	ldrh r0, [r6]
	sub r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	moveq r4, #1
_020fc104:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov03_020fc078

	arm_func_start func_ov03_020fc10c
func_ov03_020fc10c: ; 0x020fc10c
	ldr r1, _020fc124 ; =data_ov03_020ffc10
	ldr ip, _020fc128 ; =func_02036edc
	ldr r1, [r1, r0, lsl #2]
	ldr r0, _020fc12c ; =data_027e0c68
	mvn r2, #0
	bx ip
	.align 2, 0
	arm_func_end func_ov03_020fc10c
_020fc124: .word data_ov03_020ffc10
_020fc128: .word func_02036edc
_020fc12c: .word data_027e0c68

	thumb_func_start func_ov03_020fc130
func_ov03_020fc130: ; 0x020fc130
	ldr r3, _020fc13c ; =func_ov03_020f0b8c
	add r2, r1, #0
	ldr r0, [r0]
	mov r1, #1
	bx r3
	nop
	thumb_func_end func_ov03_020fc130
_020fc13c: .word func_ov03_020f0b8c

	thumb_func_start func_ov03_020fc140
func_ov03_020fc140: ; 0x020fc140
	ldr r3, [r0]
	str r1, [r3, #0x7c]
	ldr r3, _020fc14c ; =func_ov03_020f0b8c
	ldr r0, [r0]
	mov r1, #4
	bx r3
	.align 2, 0
	thumb_func_end func_ov03_020fc140
_020fc14c: .word func_ov03_020f0b8c

	thumb_func_start func_ov03_020fc150
func_ov03_020fc150: ; 0x020fc150
	add r2, r1, #0
	mov r3, #0
	ldr r1, [r0]
	mvn r3, r3
	str r3, [r1, #0x7c]
	ldr r3, _020fc164 ; =func_ov03_020f0b8c
	ldr r0, [r0]
	mov r1, #0
	bx r3
	nop
	thumb_func_end func_ov03_020fc150
_020fc164: .word func_ov03_020f0b8c

	thumb_func_start func_ov03_020fc168
func_ov03_020fc168: ; 0x020fc168
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [r5]
	add r0, r5, #4
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	blx func_ov03_020fc014
	mov r0, #0
	strb r0, [r5, #0x18]
	blx func_020329b0
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	blx func_02032bd8
	lsl r0, r6, #0x18
	lsr r6, r0, #0x18
	blx func_020329b0
	ldr r1, [sp, #0x20]
	add r2, r6, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	add r3, r7, #0
	blx func_02032a74
	blx func_020329b0
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	add r2, r6, #0
	blx func_02032a20
	mov r1, #0x12
	mov r2, #0
	str r0, [r5]
	lsl r1, r1, #4
	strb r2, [r0, r1]
	ldr r0, [r5]
	mov r1, #1
	add r3, r2, #0
	blx func_02032714
	ldr r1, _020fc1e4 ; =data_02068e6c
	ldr r0, [r5]
	mov r2, #0
	str r1, [r0, #0x2c]
	mov r0, #0x4b
	ldr r1, [r5]
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end func_ov03_020fc168
_020fc1e4: .word data_02068e6c

	thumb_func_start func_ov03_020fc1e8
func_ov03_020fc1e8: ; 0x020fc1e8
	push {r4, lr}
	add r4, r0, #0
	blx func_020329b0
	mov r1, #0x4a
	ldr r2, [r4]
	lsl r1, r1, #2
	ldrsh r1, [r2, r1]
	blx func_02032c10
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end func_ov03_020fc1e8

	arm_func_start func_ov03_020fc200
func_ov03_020fc200: ; 0x020fc200
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x3c
	mov sl, r0
	ldr r0, [sl]
	mov sb, r1
	ldrb r0, [r0, #0x12c]
	mov r8, r2
	mov r7, r3
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0x1c
	bl func_01ffbe34
	mov r4, #0
	str r4, [sp, #0x20]
	ldrh r0, [sl, #4]
	cmp r0, #0
	movne r4, #1
	cmp r4, #0
	beq _020fc260
	ldr r1, [sl, #8]
	add r1, r1, #0x800
	mov r5, r1, asr #0xc
	b _020fc274
_020fc260:
	ldr r1, [sl]
	ldr r1, [r1, #0x124]
	ldrsh r1, [r1]
	mov r1, r1, lsl #0x14
	mov r5, r1, asr #0x14
_020fc274:
	cmp r4, #0
	beq _020fc28c
	ldr r1, [sl, #0xc]
	add r1, r1, #0x800
	mov r6, r1, asr #0xc
	b _020fc2a4
_020fc28c:
	ldr r1, [sl]
	ldr r1, [r1, #0x124]
	ldrsh r1, [r1, #2]
	mov r1, r1, lsl #0x14
	mov r1, r1, asr #0x14
	add r6, r1, #5
_020fc2a4:
	cmp r4, #0
	rsbne r0, r0, #5
	moveq r0, #5
	mov r1, #5
	bl func_01ff98e0
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	str r1, [sp]
	str r2, [sp, #4]
	ldr r1, [sp, #0x6c]
	mov r2, r7
	str r1, [sp, #8]
	ldrb r1, [sl, #0x18]
	ldr r3, [sp, #0x60]
	add ip, sp, #0x1c
	add r1, r1, #0x1e
	mov lr, r1, lsl #0xc
	mov r1, r8
	smull r8, r7, r0, lr
	adds r8, r8, #0x800
	adc r0, r7, #0
	mov r7, r8, lsr #0xc
	orr r7, r7, r0, lsl #20
	add r0, r7, #0x800
	mov r0, r0, asr #0xc
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, sb
	str ip, [sp, #0x18]
	bl func_02034d68
	cmp r4, #0
	addne sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, #0
	ldr r0, [sl]
	mov r2, r1
	mov r3, r1
	bl func_02032788
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end func_ov03_020fc200

	arm_func_start func_ov03_020fc348
func_ov03_020fc348: ; 0x020fc348
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5]
	mov r6, r1
	ldr r3, [r0]
	mov r1, #0
	ldr r3, [r3, #0x10]
	mov r4, r2
	blx r3
	mvn r2, #0
	str r2, [sp]
	ldr r0, _020fc430 ; =data_027e0cbc
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, r1
	ldr r0, [r0, #0xe4]
	mov r2, #1
	bl func_020340d0
	ldr r0, [r5]
	mov r1, r6
	mvn r2, #0
	mov r3, #4
	bl func_020328a8
	ldr r1, _020fc434 ; =data_027e0c68
	mov r2, r6
	add r0, sp, #8
	bl func_0203643c
	add r1, sp, #8
	ldr r0, [r5]
	ldr r1, [r1]
	mvn r2, #0
	bl func_0203369c
	strb r0, [r5, #0x18]
	ldr r1, [r5]
	add r0, r5, #4
	ldr r3, [r1, #0x124]
	mov r1, #5
	ldrsh r2, [r3]
	mov r2, r2, lsl #0x14
	mov r2, r2, asr #0x14
	mov r2, r2, lsl #0xc
	str r2, [sp]
	ldrsh r2, [r3, #2]
	mov r2, r2, lsl #0x14
	mov r2, r2, asr #0x14
	add r2, r2, #5
	mov r2, r2, lsl #0xc
	str r2, [sp, #4]
	ldmia r4!, {r2, r3}
	mov r2, r2, lsl #0xc
	mov r3, r3, lsl #0xc
	bl func_ov03_020fc030
	ldr r0, [r5]
	mov r1, #1
	strb r1, [r0, #0x12c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov03_020fc348
_020fc430: .word data_027e0cbc
_020fc434: .word data_027e0c68

	arm_func_start func_ov03_020fc438
func_ov03_020fc438: ; 0x020fc438
	ldr r0, [r0]
	mov r1, #0
	strb r1, [r0, #0x12c]
	bx lr
	arm_func_end func_ov03_020fc438

	arm_func_start func_ov03_020fc448
func_ov03_020fc448: ; 0x020fc448
	ldr r0, [r0]
	ldrb r0, [r0, #0x12c]
	bx lr
	arm_func_end func_ov03_020fc448
data_ov03_020fc454: ; 0x020fc454
	.byte 0x03
data_ov03_020fc455: ; 0x020fc455
	.byte 0x01
data_ov03_020fc456: ; 0x020fc456
	.byte 0x02
data_ov03_020fc457: ; 0x020fc457
	.byte 0x00
data_ov03_020fc458: ; 0x020fc458
	.byte 0x01
data_ov03_020fc459: ; 0x020fc459
	.byte 0x00
data_ov03_020fc45a: ; 0x020fc45a
	.byte 0x01
data_ov03_020fc45b: ; 0x020fc45b
	.byte 0x00
data_ov03_020fc45c: ; 0x020fc45c
	.byte 0x40
data_ov03_020fc45d: ; 0x020fc45d
	.byte 0x40
data_ov03_020fc45e: ; 0x020fc45e
	.byte 0xc0
data_ov03_020fc45f: ; 0x020fc45f
	.byte 0xc0
data_ov03_020fc460: ; 0x020fc460
	.byte 0x90
data_ov03_020fc461: ; 0x020fc461
	.byte 0x30
data_ov03_020fc462: ; 0x020fc462
	.byte 0x90
data_ov03_020fc463: ; 0x020fc463
	.byte 0x30
data_ov03_020fc464: ; 0x020fc464
	.byte 0x78, 0xc4, 0x0f, 0x02
data_ov03_020fc468: ; 0x020fc468
	.byte 0xc8, 0x00, 0x00, 0x00
data_ov03_020fc46c: ; 0x020fc46c
	.byte 0x38, 0xd7, 0x0f, 0x02
data_ov03_020fc470: ; 0x020fc470
	.byte 0x9a, 0x07, 0x00, 0x00
data_ov03_020fc474: ; 0x020fc474
	.byte 0x40, 0x00, 0x00, 0x00
data_ov03_020fc478: ; 0x020fc478
	.byte 0x01, 0x00
data_ov03_020fc47a: ; 0x020fc47a
	.byte 0x00, 0x00
data_ov03_020fc47c: ; 0x020fc47c
	.byte 0x04, 0x00
data_ov03_020fc47e: ; 0x020fc47e
	.byte 0x00, 0x00
data_ov03_020fc480: ; 0x020fc480
	.byte 0x00, 0x00
data_ov03_020fc482: ; 0x020fc482
	.byte 0x00, 0x00
data_ov03_020fc484: ; 0x020fc484
	.byte 0x00, 0x00
data_ov03_020fc486: ; 0x020fc486
	.byte 0x00, 0x00
data_ov03_020fc488: ; 0x020fc488
	.byte 0x00, 0x00
data_ov03_020fc48a: ; 0x020fc48a
	.byte 0x00, 0x00
data_ov03_020fc48c: ; 0x020fc48c
	.byte 0x09, 0x00
data_ov03_020fc48e: ; 0x020fc48e
	.byte 0x03, 0x00
data_ov03_020fc490: ; 0x020fc490
	.byte 0x01, 0x00
data_ov03_020fc492: ; 0x020fc492
	.byte 0x00, 0x00
data_ov03_020fc494: ; 0x020fc494
	.byte 0x04, 0x00
data_ov03_020fc496: ; 0x020fc496
	.byte 0x00, 0x00
data_ov03_020fc498: ; 0x020fc498
	.byte 0x01, 0x00
data_ov03_020fc49a: ; 0x020fc49a
	.byte 0x00, 0x00
data_ov03_020fc49c: ; 0x020fc49c
	.byte 0x00, 0x00
data_ov03_020fc49e: ; 0x020fc49e
	.byte 0x00, 0x00
data_ov03_020fc4a0: ; 0x020fc4a0
	.byte 0x09, 0x00
data_ov03_020fc4a2: ; 0x020fc4a2
	.byte 0x00, 0x00
data_ov03_020fc4a4: ; 0x020fc4a4
	.byte 0x06, 0x00
data_ov03_020fc4a6: ; 0x020fc4a6
	.byte 0x02, 0x00
data_ov03_020fc4a8: ; 0x020fc4a8
	.byte 0x01, 0x00
data_ov03_020fc4aa: ; 0x020fc4aa
	.byte 0x00, 0x00
data_ov03_020fc4ac: ; 0x020fc4ac
	.byte 0x04, 0x00
data_ov03_020fc4ae: ; 0x020fc4ae
	.byte 0x00, 0x00
data_ov03_020fc4b0: ; 0x020fc4b0
	.byte 0x01, 0x00
data_ov03_020fc4b2: ; 0x020fc4b2
	.byte 0x00, 0x00
data_ov03_020fc4b4: ; 0x020fc4b4
	.byte 0x00, 0x00
data_ov03_020fc4b6: ; 0x020fc4b6
	.byte 0x00, 0x00
data_ov03_020fc4b8: ; 0x020fc4b8
	.byte 0x0f, 0x00
data_ov03_020fc4ba: ; 0x020fc4ba
	.byte 0x00, 0x00
data_ov03_020fc4bc: ; 0x020fc4bc
	.byte 0x06, 0x00
data_ov03_020fc4be: ; 0x020fc4be
	.byte 0x02, 0x00
data_ov03_020fc4c0: ; 0x020fc4c0
	.byte 0x01, 0x00
data_ov03_020fc4c2: ; 0x020fc4c2
	.byte 0x00, 0x00
data_ov03_020fc4c4: ; 0x020fc4c4
	.byte 0x04, 0x00
data_ov03_020fc4c6: ; 0x020fc4c6
	.byte 0x00, 0x00
data_ov03_020fc4c8: ; 0x020fc4c8
	.byte 0x02, 0x00
data_ov03_020fc4ca: ; 0x020fc4ca
	.byte 0x00, 0x00
data_ov03_020fc4cc: ; 0x020fc4cc
	.byte 0x00, 0x00
data_ov03_020fc4ce: ; 0x020fc4ce
	.byte 0x00, 0x00
data_ov03_020fc4d0: ; 0x020fc4d0
	.byte 0x15, 0x00
data_ov03_020fc4d2: ; 0x020fc4d2
	.byte 0x00, 0x00
data_ov03_020fc4d4: ; 0x020fc4d4
	.byte 0x03, 0x00
data_ov03_020fc4d6: ; 0x020fc4d6
	.byte 0x01, 0x00
data_ov03_020fc4d8: ; 0x020fc4d8
	.byte 0x01, 0x00
data_ov03_020fc4da: ; 0x020fc4da
	.byte 0x00, 0x00
data_ov03_020fc4dc: ; 0x020fc4dc
	.byte 0x01, 0x00
data_ov03_020fc4de: ; 0x020fc4de
	.byte 0x00, 0x00
data_ov03_020fc4e0: ; 0x020fc4e0
	.byte 0x03, 0x00
data_ov03_020fc4e2: ; 0x020fc4e2
	.byte 0x00, 0x00
data_ov03_020fc4e4: ; 0x020fc4e4
	.byte 0x00, 0x00
data_ov03_020fc4e6: ; 0x020fc4e6
	.byte 0x00, 0x00
data_ov03_020fc4e8: ; 0x020fc4e8
	.byte 0x18, 0x00
data_ov03_020fc4ea: ; 0x020fc4ea
	.byte 0x00, 0x00
data_ov03_020fc4ec: ; 0x020fc4ec
	.byte 0x08, 0x00
data_ov03_020fc4ee: ; 0x020fc4ee
	.byte 0x01, 0x00
data_ov03_020fc4f0: ; 0x020fc4f0
	.byte 0x01, 0x00
data_ov03_020fc4f2: ; 0x020fc4f2
	.byte 0x00, 0x00
data_ov03_020fc4f4: ; 0x020fc4f4
	.byte 0x01, 0x00
data_ov03_020fc4f6: ; 0x020fc4f6
	.byte 0x00, 0x00
data_ov03_020fc4f8: ; 0x020fc4f8
	.byte 0x03, 0x00
data_ov03_020fc4fa: ; 0x020fc4fa
	.byte 0x00, 0x00
data_ov03_020fc4fc: ; 0x020fc4fc
	.byte 0x00, 0x00
data_ov03_020fc4fe: ; 0x020fc4fe
	.byte 0x00, 0x00
data_ov03_020fc500: ; 0x020fc500
	.byte 0x20, 0x00
data_ov03_020fc502: ; 0x020fc502
	.byte 0x00, 0x00
data_ov03_020fc504: ; 0x020fc504
	.byte 0x09, 0x00
data_ov03_020fc506: ; 0x020fc506
	.byte 0x01, 0x00
data_ov03_020fc508: ; 0x020fc508
	.byte 0x01, 0x00
data_ov03_020fc50a: ; 0x020fc50a
	.byte 0x00, 0x00
data_ov03_020fc50c: ; 0x020fc50c
	.byte 0x01, 0x00
data_ov03_020fc50e: ; 0x020fc50e
	.byte 0x00, 0x00
data_ov03_020fc510: ; 0x020fc510
	.byte 0x03, 0x00
data_ov03_020fc512: ; 0x020fc512
	.byte 0x00, 0x00
data_ov03_020fc514: ; 0x020fc514
	.byte 0x00, 0x00
data_ov03_020fc516: ; 0x020fc516
	.byte 0x00, 0x00
data_ov03_020fc518: ; 0x020fc518
	.byte 0x29, 0x00
data_ov03_020fc51a: ; 0x020fc51a
	.byte 0x00, 0x00
data_ov03_020fc51c: ; 0x020fc51c
	.byte 0x0b, 0x00
data_ov03_020fc51e: ; 0x020fc51e
	.byte 0x02, 0x00
data_ov03_020fc520: ; 0x020fc520
	.byte 0x01, 0x00
data_ov03_020fc522: ; 0x020fc522
	.byte 0x00, 0x00
data_ov03_020fc524: ; 0x020fc524
	.byte 0x01, 0x00
data_ov03_020fc526: ; 0x020fc526
	.byte 0x00, 0x00
data_ov03_020fc528: ; 0x020fc528
	.byte 0x04, 0x00
data_ov03_020fc52a: ; 0x020fc52a
	.byte 0x00, 0x00
data_ov03_020fc52c: ; 0x020fc52c
	.byte 0x00, 0x00
data_ov03_020fc52e: ; 0x020fc52e
	.byte 0x00, 0x00
data_ov03_020fc530: ; 0x020fc530
	.byte 0x34, 0x00
data_ov03_020fc532: ; 0x020fc532
	.byte 0x00, 0x00
data_ov03_020fc534: ; 0x020fc534
	.byte 0x03, 0x00
data_ov03_020fc536: ; 0x020fc536
	.byte 0x01, 0x00
data_ov03_020fc538: ; 0x020fc538
	.byte 0x01, 0x00
data_ov03_020fc53a: ; 0x020fc53a
	.byte 0x00, 0x00
data_ov03_020fc53c: ; 0x020fc53c
	.byte 0x01, 0x00
data_ov03_020fc53e: ; 0x020fc53e
	.byte 0x00, 0x00
data_ov03_020fc540: ; 0x020fc540
	.byte 0x04, 0x00
data_ov03_020fc542: ; 0x020fc542
	.byte 0x00, 0x00
data_ov03_020fc544: ; 0x020fc544
	.byte 0x00, 0x00
data_ov03_020fc546: ; 0x020fc546
	.byte 0x00, 0x00
data_ov03_020fc548: ; 0x020fc548
	.byte 0x37, 0x00
data_ov03_020fc54a: ; 0x020fc54a
	.byte 0x00, 0x00
data_ov03_020fc54c: ; 0x020fc54c
	.byte 0x04, 0x00
data_ov03_020fc54e: ; 0x020fc54e
	.byte 0x01, 0x00
data_ov03_020fc550: ; 0x020fc550
	.byte 0x01, 0x00
data_ov03_020fc552: ; 0x020fc552
	.byte 0x00, 0x00
data_ov03_020fc554: ; 0x020fc554
	.byte 0x01, 0x00
data_ov03_020fc556: ; 0x020fc556
	.byte 0x00, 0x00
data_ov03_020fc558: ; 0x020fc558
	.byte 0x04, 0x00
data_ov03_020fc55a: ; 0x020fc55a
	.byte 0x00, 0x00
data_ov03_020fc55c: ; 0x020fc55c
	.byte 0x00, 0x00
data_ov03_020fc55e: ; 0x020fc55e
	.byte 0x00, 0x00
data_ov03_020fc560: ; 0x020fc560
	.byte 0x3b, 0x00
data_ov03_020fc562: ; 0x020fc562
	.byte 0x00, 0x00
data_ov03_020fc564: ; 0x020fc564
	.byte 0x07, 0x00
data_ov03_020fc566: ; 0x020fc566
	.byte 0x02, 0x00
data_ov03_020fc568: ; 0x020fc568
	.byte 0x01, 0x00
data_ov03_020fc56a: ; 0x020fc56a
	.byte 0x00, 0x00
data_ov03_020fc56c: ; 0x020fc56c
	.byte 0x01, 0x00
data_ov03_020fc56e: ; 0x020fc56e
	.byte 0x00, 0x00
data_ov03_020fc570: ; 0x020fc570
	.byte 0x05, 0x00
data_ov03_020fc572: ; 0x020fc572
	.byte 0x00, 0x00
data_ov03_020fc574: ; 0x020fc574
	.byte 0x00, 0x00
data_ov03_020fc576: ; 0x020fc576
	.byte 0x00, 0x00
data_ov03_020fc578: ; 0x020fc578
	.byte 0x42, 0x00
data_ov03_020fc57a: ; 0x020fc57a
	.byte 0x00, 0x00
data_ov03_020fc57c: ; 0x020fc57c
	.byte 0x07, 0x00
data_ov03_020fc57e: ; 0x020fc57e
	.byte 0x01, 0x00
data_ov03_020fc580: ; 0x020fc580
	.byte 0x01, 0x00
data_ov03_020fc582: ; 0x020fc582
	.byte 0x00, 0x00
data_ov03_020fc584: ; 0x020fc584
	.byte 0x01, 0x00
data_ov03_020fc586: ; 0x020fc586
	.byte 0x00, 0x00
data_ov03_020fc588: ; 0x020fc588
	.byte 0x06, 0x00
data_ov03_020fc58a: ; 0x020fc58a
	.byte 0x00, 0x00
data_ov03_020fc58c: ; 0x020fc58c
	.byte 0x00, 0x00
data_ov03_020fc58e: ; 0x020fc58e
	.byte 0x00, 0x00
data_ov03_020fc590: ; 0x020fc590
	.byte 0x49, 0x00
data_ov03_020fc592: ; 0x020fc592
	.byte 0x00, 0x00
data_ov03_020fc594: ; 0x020fc594
	.byte 0x09, 0x00
data_ov03_020fc596: ; 0x020fc596
	.byte 0x01, 0x00
data_ov03_020fc598: ; 0x020fc598
	.byte 0x01, 0x00
data_ov03_020fc59a: ; 0x020fc59a
	.byte 0x00, 0x00
data_ov03_020fc59c: ; 0x020fc59c
	.byte 0x01, 0x00
data_ov03_020fc59e: ; 0x020fc59e
	.byte 0x00, 0x00
data_ov03_020fc5a0: ; 0x020fc5a0
	.byte 0x07, 0x00
data_ov03_020fc5a2: ; 0x020fc5a2
	.byte 0x00, 0x00
data_ov03_020fc5a4: ; 0x020fc5a4
	.byte 0x00, 0x00
data_ov03_020fc5a6: ; 0x020fc5a6
	.byte 0x00, 0x00
data_ov03_020fc5a8: ; 0x020fc5a8
	.byte 0x52, 0x00
data_ov03_020fc5aa: ; 0x020fc5aa
	.byte 0x00, 0x00
data_ov03_020fc5ac: ; 0x020fc5ac
	.byte 0x07, 0x00
data_ov03_020fc5ae: ; 0x020fc5ae
	.byte 0x02, 0x00
data_ov03_020fc5b0: ; 0x020fc5b0
	.byte 0x01, 0x00
data_ov03_020fc5b2: ; 0x020fc5b2
	.byte 0x00, 0x00
data_ov03_020fc5b4: ; 0x020fc5b4
	.byte 0x01, 0x00
data_ov03_020fc5b6: ; 0x020fc5b6
	.byte 0x00, 0x00
data_ov03_020fc5b8: ; 0x020fc5b8
	.byte 0x07, 0x00
data_ov03_020fc5ba: ; 0x020fc5ba
	.byte 0x00, 0x00
data_ov03_020fc5bc: ; 0x020fc5bc
	.byte 0x00, 0x00
data_ov03_020fc5be: ; 0x020fc5be
	.byte 0x00, 0x00
data_ov03_020fc5c0: ; 0x020fc5c0
	.byte 0x59, 0x00
data_ov03_020fc5c2: ; 0x020fc5c2
	.byte 0x00, 0x00
data_ov03_020fc5c4: ; 0x020fc5c4
	.byte 0x05, 0x00
data_ov03_020fc5c6: ; 0x020fc5c6
	.byte 0x01, 0x00
data_ov03_020fc5c8: ; 0x020fc5c8
	.byte 0x01, 0x00
data_ov03_020fc5ca: ; 0x020fc5ca
	.byte 0x00, 0x00
data_ov03_020fc5cc: ; 0x020fc5cc
	.byte 0x01, 0x00
data_ov03_020fc5ce: ; 0x020fc5ce
	.byte 0x00, 0x00
data_ov03_020fc5d0: ; 0x020fc5d0
	.byte 0x08, 0x00
data_ov03_020fc5d2: ; 0x020fc5d2
	.byte 0x00, 0x00
data_ov03_020fc5d4: ; 0x020fc5d4
	.byte 0x00, 0x00
data_ov03_020fc5d6: ; 0x020fc5d6
	.byte 0x00, 0x00
data_ov03_020fc5d8: ; 0x020fc5d8
	.byte 0x5e, 0x00
data_ov03_020fc5da: ; 0x020fc5da
	.byte 0x00, 0x00
data_ov03_020fc5dc: ; 0x020fc5dc
	.byte 0x0a, 0x00
data_ov03_020fc5de: ; 0x020fc5de
	.byte 0x02, 0x00
data_ov03_020fc5e0: ; 0x020fc5e0
	.byte 0x01, 0x00
data_ov03_020fc5e2: ; 0x020fc5e2
	.byte 0x00, 0x00
data_ov03_020fc5e4: ; 0x020fc5e4
	.byte 0x01, 0x00
data_ov03_020fc5e6: ; 0x020fc5e6
	.byte 0x00, 0x00
data_ov03_020fc5e8: ; 0x020fc5e8
	.byte 0x08, 0x00
data_ov03_020fc5ea: ; 0x020fc5ea
	.byte 0x00, 0x00
data_ov03_020fc5ec: ; 0x020fc5ec
	.byte 0x00, 0x00
data_ov03_020fc5ee: ; 0x020fc5ee
	.byte 0x00, 0x00
data_ov03_020fc5f0: ; 0x020fc5f0
	.byte 0x68, 0x00
data_ov03_020fc5f2: ; 0x020fc5f2
	.byte 0x00, 0x00
data_ov03_020fc5f4: ; 0x020fc5f4
	.byte 0x0a, 0x00
data_ov03_020fc5f6: ; 0x020fc5f6
	.byte 0x02, 0x00
data_ov03_020fc5f8: ; 0x020fc5f8
	.byte 0x01, 0x00
data_ov03_020fc5fa: ; 0x020fc5fa
	.byte 0x00, 0x00
data_ov03_020fc5fc: ; 0x020fc5fc
	.byte 0x01, 0x00
data_ov03_020fc5fe: ; 0x020fc5fe
	.byte 0x00, 0x00
data_ov03_020fc600: ; 0x020fc600
	.byte 0x09, 0x00
data_ov03_020fc602: ; 0x020fc602
	.byte 0x00, 0x00
data_ov03_020fc604: ; 0x020fc604
	.byte 0x00, 0x00
data_ov03_020fc606: ; 0x020fc606
	.byte 0x00, 0x00
data_ov03_020fc608: ; 0x020fc608
	.byte 0x72, 0x00
data_ov03_020fc60a: ; 0x020fc60a
	.byte 0x00, 0x00
data_ov03_020fc60c: ; 0x020fc60c
	.byte 0x08, 0x00
data_ov03_020fc60e: ; 0x020fc60e
	.byte 0x01, 0x00
data_ov03_020fc610: ; 0x020fc610
	.byte 0x01, 0x00
data_ov03_020fc612: ; 0x020fc612
	.byte 0x00, 0x00
data_ov03_020fc614: ; 0x020fc614
	.byte 0x01, 0x00
data_ov03_020fc616: ; 0x020fc616
	.byte 0x00, 0x00
data_ov03_020fc618: ; 0x020fc618
	.byte 0x09, 0x00
data_ov03_020fc61a: ; 0x020fc61a
	.byte 0x00, 0x00
data_ov03_020fc61c: ; 0x020fc61c
	.byte 0x00, 0x00
data_ov03_020fc61e: ; 0x020fc61e
	.byte 0x00, 0x00
data_ov03_020fc620: ; 0x020fc620
	.byte 0x7a, 0x00
data_ov03_020fc622: ; 0x020fc622
	.byte 0x00, 0x00
data_ov03_020fc624: ; 0x020fc624
	.byte 0x09, 0x00
data_ov03_020fc626: ; 0x020fc626
	.byte 0x01, 0x00
data_ov03_020fc628: ; 0x020fc628
	.byte 0x01, 0x00
data_ov03_020fc62a: ; 0x020fc62a
	.byte 0x00, 0x00
data_ov03_020fc62c: ; 0x020fc62c
	.byte 0x01, 0x00
data_ov03_020fc62e: ; 0x020fc62e
	.byte 0x00, 0x00
data_ov03_020fc630: ; 0x020fc630
	.byte 0x0a, 0x00
data_ov03_020fc632: ; 0x020fc632
	.byte 0x00, 0x00
data_ov03_020fc634: ; 0x020fc634
	.byte 0x00, 0x00
data_ov03_020fc636: ; 0x020fc636
	.byte 0x00, 0x00
data_ov03_020fc638: ; 0x020fc638
	.byte 0x83, 0x00
data_ov03_020fc63a: ; 0x020fc63a
	.byte 0x00, 0x00
data_ov03_020fc63c: ; 0x020fc63c
	.byte 0x07, 0x00
data_ov03_020fc63e: ; 0x020fc63e
	.byte 0x02, 0x00
data_ov03_020fc640: ; 0x020fc640
	.byte 0x01, 0x00
data_ov03_020fc642: ; 0x020fc642
	.byte 0x00, 0x00
data_ov03_020fc644: ; 0x020fc644
	.byte 0x01, 0x00
data_ov03_020fc646: ; 0x020fc646
	.byte 0x00, 0x00
data_ov03_020fc648: ; 0x020fc648
	.byte 0x0a, 0x00
data_ov03_020fc64a: ; 0x020fc64a
	.byte 0x00, 0x00
data_ov03_020fc64c: ; 0x020fc64c
	.byte 0x00, 0x00
data_ov03_020fc64e: ; 0x020fc64e
	.byte 0x00, 0x00
data_ov03_020fc650: ; 0x020fc650
	.byte 0x8a, 0x00
data_ov03_020fc652: ; 0x020fc652
	.byte 0x00, 0x00
data_ov03_020fc654: ; 0x020fc654
	.byte 0x04, 0x00
data_ov03_020fc656: ; 0x020fc656
	.byte 0x01, 0x00
data_ov03_020fc658: ; 0x020fc658
	.byte 0x01, 0x00
data_ov03_020fc65a: ; 0x020fc65a
	.byte 0x00, 0x00
data_ov03_020fc65c: ; 0x020fc65c
	.byte 0x01, 0x00
data_ov03_020fc65e: ; 0x020fc65e
	.byte 0x00, 0x00
data_ov03_020fc660: ; 0x020fc660
	.byte 0x0a, 0x00
data_ov03_020fc662: ; 0x020fc662
	.byte 0x00, 0x00
data_ov03_020fc664: ; 0x020fc664
	.byte 0x00, 0x00
data_ov03_020fc666: ; 0x020fc666
	.byte 0x00, 0x00
data_ov03_020fc668: ; 0x020fc668
	.byte 0x8e, 0x00
data_ov03_020fc66a: ; 0x020fc66a
	.byte 0x00, 0x00
data_ov03_020fc66c: ; 0x020fc66c
	.byte 0x07, 0x00
data_ov03_020fc66e: ; 0x020fc66e
	.byte 0x02, 0x00
data_ov03_020fc670: ; 0x020fc670
	.byte 0x01, 0x00
data_ov03_020fc672: ; 0x020fc672
	.byte 0x00, 0x00
data_ov03_020fc674: ; 0x020fc674
	.byte 0x01, 0x00
data_ov03_020fc676: ; 0x020fc676
	.byte 0x00, 0x00
data_ov03_020fc678: ; 0x020fc678
	.byte 0x0a, 0x00
data_ov03_020fc67a: ; 0x020fc67a
	.byte 0x00, 0x00
data_ov03_020fc67c: ; 0x020fc67c
	.byte 0x00, 0x00
data_ov03_020fc67e: ; 0x020fc67e
	.byte 0x00, 0x00
data_ov03_020fc680: ; 0x020fc680
	.byte 0x95, 0x00
data_ov03_020fc682: ; 0x020fc682
	.byte 0x00, 0x00
data_ov03_020fc684: ; 0x020fc684
	.byte 0x04, 0x00
data_ov03_020fc686: ; 0x020fc686
	.byte 0x01, 0x00
data_ov03_020fc688: ; 0x020fc688
	.byte 0x01, 0x00
data_ov03_020fc68a: ; 0x020fc68a
	.byte 0x00, 0x00
data_ov03_020fc68c: ; 0x020fc68c
	.byte 0x01, 0x00
data_ov03_020fc68e: ; 0x020fc68e
	.byte 0x00, 0x00
data_ov03_020fc690: ; 0x020fc690
	.byte 0x0b, 0x00
data_ov03_020fc692: ; 0x020fc692
	.byte 0x00, 0x00
data_ov03_020fc694: ; 0x020fc694
	.byte 0x00, 0x00
data_ov03_020fc696: ; 0x020fc696
	.byte 0x00, 0x00
data_ov03_020fc698: ; 0x020fc698
	.byte 0x99, 0x00
data_ov03_020fc69a: ; 0x020fc69a
	.byte 0x00, 0x00
data_ov03_020fc69c: ; 0x020fc69c
	.byte 0x0a, 0x00
data_ov03_020fc69e: ; 0x020fc69e
	.byte 0x01, 0x00
data_ov03_020fc6a0: ; 0x020fc6a0
	.byte 0x01, 0x00
data_ov03_020fc6a2: ; 0x020fc6a2
	.byte 0x00, 0x00
data_ov03_020fc6a4: ; 0x020fc6a4
	.byte 0x01, 0x00
data_ov03_020fc6a6: ; 0x020fc6a6
	.byte 0x00, 0x00
data_ov03_020fc6a8: ; 0x020fc6a8
	.byte 0x0b, 0x00
data_ov03_020fc6aa: ; 0x020fc6aa
	.byte 0x00, 0x00
data_ov03_020fc6ac: ; 0x020fc6ac
	.byte 0x00, 0x00
data_ov03_020fc6ae: ; 0x020fc6ae
	.byte 0x00, 0x00
data_ov03_020fc6b0: ; 0x020fc6b0
	.byte 0xa3, 0x00
data_ov03_020fc6b2: ; 0x020fc6b2
	.byte 0x00, 0x00
data_ov03_020fc6b4: ; 0x020fc6b4
	.byte 0x0b, 0x00
data_ov03_020fc6b6: ; 0x020fc6b6
	.byte 0x01, 0x00
data_ov03_020fc6b8: ; 0x020fc6b8
	.byte 0x01, 0x00
data_ov03_020fc6ba: ; 0x020fc6ba
	.byte 0x00, 0x00
data_ov03_020fc6bc: ; 0x020fc6bc
	.byte 0x01, 0x00
data_ov03_020fc6be: ; 0x020fc6be
	.byte 0x00, 0x00
data_ov03_020fc6c0: ; 0x020fc6c0
	.byte 0x0b, 0x00
data_ov03_020fc6c2: ; 0x020fc6c2
	.byte 0x00, 0x00
data_ov03_020fc6c4: ; 0x020fc6c4
	.byte 0x00, 0x00
data_ov03_020fc6c6: ; 0x020fc6c6
	.byte 0x00, 0x00
data_ov03_020fc6c8: ; 0x020fc6c8
	.byte 0xae, 0x00
data_ov03_020fc6ca: ; 0x020fc6ca
	.byte 0x00, 0x00
data_ov03_020fc6cc: ; 0x020fc6cc
	.byte 0x0a, 0x00
data_ov03_020fc6ce: ; 0x020fc6ce
	.byte 0x01, 0x00
data_ov03_020fc6d0: ; 0x020fc6d0
	.byte 0x01, 0x00
data_ov03_020fc6d2: ; 0x020fc6d2
	.byte 0x00, 0x00
data_ov03_020fc6d4: ; 0x020fc6d4
	.byte 0x01, 0x00
data_ov03_020fc6d6: ; 0x020fc6d6
	.byte 0x00, 0x00
data_ov03_020fc6d8: ; 0x020fc6d8
	.byte 0x0c, 0x00
data_ov03_020fc6da: ; 0x020fc6da
	.byte 0x00, 0x00
data_ov03_020fc6dc: ; 0x020fc6dc
	.byte 0x00, 0x00
data_ov03_020fc6de: ; 0x020fc6de
	.byte 0x00, 0x00
data_ov03_020fc6e0: ; 0x020fc6e0
	.byte 0xb8, 0x00
data_ov03_020fc6e2: ; 0x020fc6e2
	.byte 0x00, 0x00
data_ov03_020fc6e4: ; 0x020fc6e4
	.byte 0x07, 0x00
data_ov03_020fc6e6: ; 0x020fc6e6
	.byte 0x01, 0x00
data_ov03_020fc6e8: ; 0x020fc6e8
	.byte 0x01, 0x00
data_ov03_020fc6ea: ; 0x020fc6ea
	.byte 0x00, 0x00
data_ov03_020fc6ec: ; 0x020fc6ec
	.byte 0x01, 0x00
data_ov03_020fc6ee: ; 0x020fc6ee
	.byte 0x00, 0x00
data_ov03_020fc6f0: ; 0x020fc6f0
	.byte 0x0c, 0x00
data_ov03_020fc6f2: ; 0x020fc6f2
	.byte 0x00, 0x00
data_ov03_020fc6f4: ; 0x020fc6f4
	.byte 0x00, 0x00
data_ov03_020fc6f6: ; 0x020fc6f6
	.byte 0x00, 0x00
data_ov03_020fc6f8: ; 0x020fc6f8
	.byte 0xbf, 0x00
data_ov03_020fc6fa: ; 0x020fc6fa
	.byte 0x00, 0x00
data_ov03_020fc6fc: ; 0x020fc6fc
	.byte 0x09, 0x00
data_ov03_020fc6fe: ; 0x020fc6fe
	.byte 0x01, 0x00
data_ov03_020fc700: ; 0x020fc700
	.byte 0x01, 0x00
data_ov03_020fc702: ; 0x020fc702
	.byte 0x00, 0x00
data_ov03_020fc704: ; 0x020fc704
	.byte 0x04, 0x00
data_ov03_020fc706: ; 0x020fc706
	.byte 0x00, 0x00
data_ov03_020fc708: ; 0x020fc708
	.byte 0x0d, 0x00
data_ov03_020fc70a: ; 0x020fc70a
	.byte 0x00, 0x00
data_ov03_020fc70c: ; 0x020fc70c
	.byte 0x00, 0x00
data_ov03_020fc70e: ; 0x020fc70e
	.byte 0x00, 0x00
data_ov03_020fc710: ; 0x020fc710
	.byte 0xc8, 0x00
data_ov03_020fc712: ; 0x020fc712
	.byte 0x00, 0x00
data_ov03_020fc714: ; 0x020fc714
	.byte 0x04, 0x00
data_ov03_020fc716: ; 0x020fc716
	.byte 0x01, 0x00
data_ov03_020fc718: ; 0x020fc718
	.byte 0x01, 0x00
data_ov03_020fc71a: ; 0x020fc71a
	.byte 0x00, 0x00
data_ov03_020fc71c: ; 0x020fc71c
	.byte 0x04, 0x00
data_ov03_020fc71e: ; 0x020fc71e
	.byte 0x00, 0x00
data_ov03_020fc720: ; 0x020fc720
	.byte 0x0e, 0x00
data_ov03_020fc722: ; 0x020fc722
	.byte 0x00, 0x00
data_ov03_020fc724: ; 0x020fc724
	.byte 0x00, 0x00
data_ov03_020fc726: ; 0x020fc726
	.byte 0x00, 0x00
data_ov03_020fc728: ; 0x020fc728
	.byte 0xcc, 0x00
data_ov03_020fc72a: ; 0x020fc72a
	.byte 0x00, 0x00
data_ov03_020fc72c: ; 0x020fc72c
	.byte 0x06, 0x00
data_ov03_020fc72e: ; 0x020fc72e
	.byte 0x02, 0x00
data_ov03_020fc730: ; 0x020fc730
	.byte 0x01, 0x00
data_ov03_020fc732: ; 0x020fc732
	.byte 0x00, 0x00
data_ov03_020fc734: ; 0x020fc734
	.byte 0x04, 0x00
data_ov03_020fc736: ; 0x020fc736
	.byte 0x00, 0x00
data_ov03_020fc738: ; 0x020fc738
	.byte 0x0f, 0x00
data_ov03_020fc73a: ; 0x020fc73a
	.byte 0x00, 0x00
data_ov03_020fc73c: ; 0x020fc73c
	.byte 0x00, 0x00
data_ov03_020fc73e: ; 0x020fc73e
	.byte 0x00, 0x00
data_ov03_020fc740: ; 0x020fc740
	.byte 0xd2, 0x00
data_ov03_020fc742: ; 0x020fc742
	.byte 0x00, 0x00
data_ov03_020fc744: ; 0x020fc744
	.byte 0x04, 0x00
data_ov03_020fc746: ; 0x020fc746
	.byte 0x01, 0x00
data_ov03_020fc748: ; 0x020fc748
	.byte 0x01, 0x00
data_ov03_020fc74a: ; 0x020fc74a
	.byte 0x00, 0x00
data_ov03_020fc74c: ; 0x020fc74c
	.byte 0x02, 0x00
data_ov03_020fc74e: ; 0x020fc74e
	.byte 0x00, 0x00
data_ov03_020fc750: ; 0x020fc750
	.byte 0x10, 0x00
data_ov03_020fc752: ; 0x020fc752
	.byte 0x00, 0x00
data_ov03_020fc754: ; 0x020fc754
	.byte 0x00, 0x00
data_ov03_020fc756: ; 0x020fc756
	.byte 0x00, 0x00
data_ov03_020fc758: ; 0x020fc758
	.byte 0xd6, 0x00
data_ov03_020fc75a: ; 0x020fc75a
	.byte 0x00, 0x00
data_ov03_020fc75c: ; 0x020fc75c
	.byte 0x0b, 0x00
data_ov03_020fc75e: ; 0x020fc75e
	.byte 0x01, 0x00
data_ov03_020fc760: ; 0x020fc760
	.byte 0x01, 0x00
data_ov03_020fc762: ; 0x020fc762
	.byte 0x00, 0x00
data_ov03_020fc764: ; 0x020fc764
	.byte 0x02, 0x00
data_ov03_020fc766: ; 0x020fc766
	.byte 0x00, 0x00
data_ov03_020fc768: ; 0x020fc768
	.byte 0x11, 0x00
data_ov03_020fc76a: ; 0x020fc76a
	.byte 0x00, 0x00
data_ov03_020fc76c: ; 0x020fc76c
	.byte 0x00, 0x00
data_ov03_020fc76e: ; 0x020fc76e
	.byte 0x00, 0x00
data_ov03_020fc770: ; 0x020fc770
	.byte 0xe1, 0x00
data_ov03_020fc772: ; 0x020fc772
	.byte 0x00, 0x00
data_ov03_020fc774: ; 0x020fc774
	.byte 0x09, 0x00
data_ov03_020fc776: ; 0x020fc776
	.byte 0x01, 0x00
data_ov03_020fc778: ; 0x020fc778
	.byte 0x01, 0x00
data_ov03_020fc77a: ; 0x020fc77a
	.byte 0x00, 0x00
data_ov03_020fc77c: ; 0x020fc77c
	.byte 0x02, 0x00
data_ov03_020fc77e: ; 0x020fc77e
	.byte 0x00, 0x00
data_ov03_020fc780: ; 0x020fc780
	.byte 0x11, 0x00
data_ov03_020fc782: ; 0x020fc782
	.byte 0x00, 0x00
data_ov03_020fc784: ; 0x020fc784
	.byte 0x00, 0x00
data_ov03_020fc786: ; 0x020fc786
	.byte 0x00, 0x00
data_ov03_020fc788: ; 0x020fc788
	.byte 0xea, 0x00
data_ov03_020fc78a: ; 0x020fc78a
	.byte 0x00, 0x00
data_ov03_020fc78c: ; 0x020fc78c
	.byte 0x08, 0x00
data_ov03_020fc78e: ; 0x020fc78e
	.byte 0x02, 0x00
data_ov03_020fc790: ; 0x020fc790
	.byte 0x01, 0x00
data_ov03_020fc792: ; 0x020fc792
	.byte 0x00, 0x00
data_ov03_020fc794: ; 0x020fc794
	.byte 0x02, 0x00
data_ov03_020fc796: ; 0x020fc796
	.byte 0x00, 0x00
data_ov03_020fc798: ; 0x020fc798
	.byte 0x11, 0x00
data_ov03_020fc79a: ; 0x020fc79a
	.byte 0x00, 0x00
data_ov03_020fc79c: ; 0x020fc79c
	.byte 0x00, 0x00
data_ov03_020fc79e: ; 0x020fc79e
	.byte 0x00, 0x00
data_ov03_020fc7a0: ; 0x020fc7a0
	.byte 0xf2, 0x00
data_ov03_020fc7a2: ; 0x020fc7a2
	.byte 0x00, 0x00
data_ov03_020fc7a4: ; 0x020fc7a4
	.byte 0x09, 0x00
data_ov03_020fc7a6: ; 0x020fc7a6
	.byte 0x01, 0x00
data_ov03_020fc7a8: ; 0x020fc7a8
	.byte 0x01, 0x00
data_ov03_020fc7aa: ; 0x020fc7aa
	.byte 0x00, 0x00
data_ov03_020fc7ac: ; 0x020fc7ac
	.byte 0x02, 0x00
data_ov03_020fc7ae: ; 0x020fc7ae
	.byte 0x00, 0x00
data_ov03_020fc7b0: ; 0x020fc7b0
	.byte 0x12, 0x00
data_ov03_020fc7b2: ; 0x020fc7b2
	.byte 0x00, 0x00
data_ov03_020fc7b4: ; 0x020fc7b4
	.byte 0x00, 0x00
data_ov03_020fc7b6: ; 0x020fc7b6
	.byte 0x00, 0x00
data_ov03_020fc7b8: ; 0x020fc7b8
	.byte 0xfb, 0x00
data_ov03_020fc7ba: ; 0x020fc7ba
	.byte 0x00, 0x00
data_ov03_020fc7bc: ; 0x020fc7bc
	.byte 0x09, 0x00
data_ov03_020fc7be: ; 0x020fc7be
	.byte 0x01, 0x00
data_ov03_020fc7c0: ; 0x020fc7c0
	.byte 0x01, 0x00
data_ov03_020fc7c2: ; 0x020fc7c2
	.byte 0x00, 0x00
data_ov03_020fc7c4: ; 0x020fc7c4
	.byte 0x02, 0x00
data_ov03_020fc7c6: ; 0x020fc7c6
	.byte 0x00, 0x00
data_ov03_020fc7c8: ; 0x020fc7c8
	.byte 0x13, 0x00
data_ov03_020fc7ca: ; 0x020fc7ca
	.byte 0x00, 0x00
data_ov03_020fc7cc: ; 0x020fc7cc
	.byte 0x00, 0x00
data_ov03_020fc7ce: ; 0x020fc7ce
	.byte 0x00, 0x00
data_ov03_020fc7d0: ; 0x020fc7d0
	.byte 0x04, 0x01
data_ov03_020fc7d2: ; 0x020fc7d2
	.byte 0x00, 0x00
data_ov03_020fc7d4: ; 0x020fc7d4
	.byte 0x09, 0x00
data_ov03_020fc7d6: ; 0x020fc7d6
	.byte 0x01, 0x00
data_ov03_020fc7d8: ; 0x020fc7d8
	.byte 0x01, 0x00
data_ov03_020fc7da: ; 0x020fc7da
	.byte 0x00, 0x00
data_ov03_020fc7dc: ; 0x020fc7dc
	.byte 0x02, 0x00
data_ov03_020fc7de: ; 0x020fc7de
	.byte 0x00, 0x00
data_ov03_020fc7e0: ; 0x020fc7e0
	.byte 0x13, 0x00
data_ov03_020fc7e2: ; 0x020fc7e2
	.byte 0x00, 0x00
data_ov03_020fc7e4: ; 0x020fc7e4
	.byte 0x00, 0x00
data_ov03_020fc7e6: ; 0x020fc7e6
	.byte 0x00, 0x00
data_ov03_020fc7e8: ; 0x020fc7e8
	.byte 0x0d, 0x01
data_ov03_020fc7ea: ; 0x020fc7ea
	.byte 0x00, 0x00
data_ov03_020fc7ec: ; 0x020fc7ec
	.byte 0x0a, 0x00
data_ov03_020fc7ee: ; 0x020fc7ee
	.byte 0x02, 0x00
data_ov03_020fc7f0: ; 0x020fc7f0
	.byte 0x01, 0x00
data_ov03_020fc7f2: ; 0x020fc7f2
	.byte 0x00, 0x00
data_ov03_020fc7f4: ; 0x020fc7f4
	.byte 0x02, 0x00
data_ov03_020fc7f6: ; 0x020fc7f6
	.byte 0x00, 0x00
data_ov03_020fc7f8: ; 0x020fc7f8
	.byte 0x14, 0x00
data_ov03_020fc7fa: ; 0x020fc7fa
	.byte 0x00, 0x00
data_ov03_020fc7fc: ; 0x020fc7fc
	.byte 0x00, 0x00
data_ov03_020fc7fe: ; 0x020fc7fe
	.byte 0x00, 0x00
data_ov03_020fc800: ; 0x020fc800
	.byte 0x17, 0x01
data_ov03_020fc802: ; 0x020fc802
	.byte 0x00, 0x00
data_ov03_020fc804: ; 0x020fc804
	.byte 0x0a, 0x00
data_ov03_020fc806: ; 0x020fc806
	.byte 0x01, 0x00
data_ov03_020fc808: ; 0x020fc808
	.byte 0x01, 0x00
data_ov03_020fc80a: ; 0x020fc80a
	.byte 0x00, 0x00
data_ov03_020fc80c: ; 0x020fc80c
	.byte 0x02, 0x00
data_ov03_020fc80e: ; 0x020fc80e
	.byte 0x00, 0x00
data_ov03_020fc810: ; 0x020fc810
	.byte 0x15, 0x00
data_ov03_020fc812: ; 0x020fc812
	.byte 0x00, 0x00
data_ov03_020fc814: ; 0x020fc814
	.byte 0x00, 0x00
data_ov03_020fc816: ; 0x020fc816
	.byte 0x00, 0x00
data_ov03_020fc818: ; 0x020fc818
	.byte 0x21, 0x01
data_ov03_020fc81a: ; 0x020fc81a
	.byte 0x00, 0x00
data_ov03_020fc81c: ; 0x020fc81c
	.byte 0x09, 0x00
data_ov03_020fc81e: ; 0x020fc81e
	.byte 0x02, 0x00
data_ov03_020fc820: ; 0x020fc820
	.byte 0x01, 0x00
data_ov03_020fc822: ; 0x020fc822
	.byte 0x00, 0x00
data_ov03_020fc824: ; 0x020fc824
	.byte 0x02, 0x00
data_ov03_020fc826: ; 0x020fc826
	.byte 0x00, 0x00
data_ov03_020fc828: ; 0x020fc828
	.byte 0x15, 0x00
data_ov03_020fc82a: ; 0x020fc82a
	.byte 0x00, 0x00
data_ov03_020fc82c: ; 0x020fc82c
	.byte 0x00, 0x00
data_ov03_020fc82e: ; 0x020fc82e
	.byte 0x00, 0x00
data_ov03_020fc830: ; 0x020fc830
	.byte 0x2a, 0x01
data_ov03_020fc832: ; 0x020fc832
	.byte 0x00, 0x00
data_ov03_020fc834: ; 0x020fc834
	.byte 0x08, 0x00
data_ov03_020fc836: ; 0x020fc836
	.byte 0x01, 0x00
data_ov03_020fc838: ; 0x020fc838
	.byte 0x01, 0x00
data_ov03_020fc83a: ; 0x020fc83a
	.byte 0x00, 0x00
data_ov03_020fc83c: ; 0x020fc83c
	.byte 0x02, 0x00
data_ov03_020fc83e: ; 0x020fc83e
	.byte 0x00, 0x00
data_ov03_020fc840: ; 0x020fc840
	.byte 0x16, 0x00
data_ov03_020fc842: ; 0x020fc842
	.byte 0x00, 0x00
data_ov03_020fc844: ; 0x020fc844
	.byte 0x00, 0x00
data_ov03_020fc846: ; 0x020fc846
	.byte 0x00, 0x00
data_ov03_020fc848: ; 0x020fc848
	.byte 0x32, 0x01
data_ov03_020fc84a: ; 0x020fc84a
	.byte 0x00, 0x00
data_ov03_020fc84c: ; 0x020fc84c
	.byte 0x0b, 0x00
data_ov03_020fc84e: ; 0x020fc84e
	.byte 0x01, 0x00
data_ov03_020fc850: ; 0x020fc850
	.byte 0x01, 0x00
data_ov03_020fc852: ; 0x020fc852
	.byte 0x00, 0x00
data_ov03_020fc854: ; 0x020fc854
	.byte 0x02, 0x00
data_ov03_020fc856: ; 0x020fc856
	.byte 0x00, 0x00
data_ov03_020fc858: ; 0x020fc858
	.byte 0x16, 0x00
data_ov03_020fc85a: ; 0x020fc85a
	.byte 0x00, 0x00
data_ov03_020fc85c: ; 0x020fc85c
	.byte 0x00, 0x00
data_ov03_020fc85e: ; 0x020fc85e
	.byte 0x00, 0x00
data_ov03_020fc860: ; 0x020fc860
	.byte 0x3d, 0x01
data_ov03_020fc862: ; 0x020fc862
	.byte 0x00, 0x00
data_ov03_020fc864: ; 0x020fc864
	.byte 0x10, 0x00
data_ov03_020fc866: ; 0x020fc866
	.byte 0x02, 0x00
data_ov03_020fc868: ; 0x020fc868
	.byte 0x01, 0x00
data_ov03_020fc86a: ; 0x020fc86a
	.byte 0x00, 0x00
data_ov03_020fc86c: ; 0x020fc86c
	.byte 0x02, 0x00
data_ov03_020fc86e: ; 0x020fc86e
	.byte 0x00, 0x00
data_ov03_020fc870: ; 0x020fc870
	.byte 0x17, 0x00
data_ov03_020fc872: ; 0x020fc872
	.byte 0x00, 0x00
data_ov03_020fc874: ; 0x020fc874
	.byte 0x00, 0x00
data_ov03_020fc876: ; 0x020fc876
	.byte 0x00, 0x00
data_ov03_020fc878: ; 0x020fc878
	.byte 0x4d, 0x01
data_ov03_020fc87a: ; 0x020fc87a
	.byte 0x00, 0x00
data_ov03_020fc87c: ; 0x020fc87c
	.byte 0x07, 0x00
data_ov03_020fc87e: ; 0x020fc87e
	.byte 0x01, 0x00
data_ov03_020fc880: ; 0x020fc880
	.byte 0x01, 0x00
data_ov03_020fc882: ; 0x020fc882
	.byte 0x00, 0x00
data_ov03_020fc884: ; 0x020fc884
	.byte 0x02, 0x00
data_ov03_020fc886: ; 0x020fc886
	.byte 0x00, 0x00
data_ov03_020fc888: ; 0x020fc888
	.byte 0x18, 0x00
data_ov03_020fc88a: ; 0x020fc88a
	.byte 0x00, 0x00
data_ov03_020fc88c: ; 0x020fc88c
	.byte 0x00, 0x00
data_ov03_020fc88e: ; 0x020fc88e
	.byte 0x00, 0x00
data_ov03_020fc890: ; 0x020fc890
	.byte 0x54, 0x01
data_ov03_020fc892: ; 0x020fc892
	.byte 0x00, 0x00
data_ov03_020fc894: ; 0x020fc894
	.byte 0x06, 0x00
data_ov03_020fc896: ; 0x020fc896
	.byte 0x02, 0x00
data_ov03_020fc898: ; 0x020fc898
	.byte 0x01, 0x00
data_ov03_020fc89a: ; 0x020fc89a
	.byte 0x00, 0x00
data_ov03_020fc89c: ; 0x020fc89c
	.byte 0x02, 0x00
data_ov03_020fc89e: ; 0x020fc89e
	.byte 0x00, 0x00
data_ov03_020fc8a0: ; 0x020fc8a0
	.byte 0x18, 0x00
data_ov03_020fc8a2: ; 0x020fc8a2
	.byte 0x00, 0x00
data_ov03_020fc8a4: ; 0x020fc8a4
	.byte 0x00, 0x00
data_ov03_020fc8a6: ; 0x020fc8a6
	.byte 0x00, 0x00
data_ov03_020fc8a8: ; 0x020fc8a8
	.byte 0x5a, 0x01
data_ov03_020fc8aa: ; 0x020fc8aa
	.byte 0x00, 0x00
data_ov03_020fc8ac: ; 0x020fc8ac
	.byte 0x06, 0x00
data_ov03_020fc8ae: ; 0x020fc8ae
	.byte 0x02, 0x00
data_ov03_020fc8b0: ; 0x020fc8b0
	.byte 0x01, 0x00
data_ov03_020fc8b2: ; 0x020fc8b2
	.byte 0x00, 0x00
data_ov03_020fc8b4: ; 0x020fc8b4
	.byte 0x02, 0x00
data_ov03_020fc8b6: ; 0x020fc8b6
	.byte 0x00, 0x00
data_ov03_020fc8b8: ; 0x020fc8b8
	.byte 0x18, 0x00
data_ov03_020fc8ba: ; 0x020fc8ba
	.byte 0x00, 0x00
data_ov03_020fc8bc: ; 0x020fc8bc
	.byte 0x00, 0x00
data_ov03_020fc8be: ; 0x020fc8be
	.byte 0x00, 0x00
data_ov03_020fc8c0: ; 0x020fc8c0
	.byte 0x60, 0x01
data_ov03_020fc8c2: ; 0x020fc8c2
	.byte 0x00, 0x00
data_ov03_020fc8c4: ; 0x020fc8c4
	.byte 0x09, 0x00
data_ov03_020fc8c6: ; 0x020fc8c6
	.byte 0x02, 0x00
data_ov03_020fc8c8: ; 0x020fc8c8
	.byte 0x01, 0x00
data_ov03_020fc8ca: ; 0x020fc8ca
	.byte 0x00, 0x00
data_ov03_020fc8cc: ; 0x020fc8cc
	.byte 0x02, 0x00
data_ov03_020fc8ce: ; 0x020fc8ce
	.byte 0x00, 0x00
data_ov03_020fc8d0: ; 0x020fc8d0
	.byte 0x18, 0x00
data_ov03_020fc8d2: ; 0x020fc8d2
	.byte 0x00, 0x00
data_ov03_020fc8d4: ; 0x020fc8d4
	.byte 0x00, 0x00
data_ov03_020fc8d6: ; 0x020fc8d6
	.byte 0x00, 0x00
data_ov03_020fc8d8: ; 0x020fc8d8
	.byte 0x69, 0x01
data_ov03_020fc8da: ; 0x020fc8da
	.byte 0x00, 0x00
data_ov03_020fc8dc: ; 0x020fc8dc
	.byte 0x08, 0x00
data_ov03_020fc8de: ; 0x020fc8de
	.byte 0x02, 0x00
data_ov03_020fc8e0: ; 0x020fc8e0
	.byte 0x01, 0x00
data_ov03_020fc8e2: ; 0x020fc8e2
	.byte 0x00, 0x00
data_ov03_020fc8e4: ; 0x020fc8e4
	.byte 0x02, 0x00
data_ov03_020fc8e6: ; 0x020fc8e6
	.byte 0x00, 0x00
data_ov03_020fc8e8: ; 0x020fc8e8
	.byte 0x18, 0x00
data_ov03_020fc8ea: ; 0x020fc8ea
	.byte 0x00, 0x00
data_ov03_020fc8ec: ; 0x020fc8ec
	.byte 0x00, 0x00
data_ov03_020fc8ee: ; 0x020fc8ee
	.byte 0x00, 0x00
data_ov03_020fc8f0: ; 0x020fc8f0
	.byte 0x71, 0x01
data_ov03_020fc8f2: ; 0x020fc8f2
	.byte 0x00, 0x00
data_ov03_020fc8f4: ; 0x020fc8f4
	.byte 0x09, 0x00
data_ov03_020fc8f6: ; 0x020fc8f6
	.byte 0x02, 0x00
data_ov03_020fc8f8: ; 0x020fc8f8
	.byte 0x01, 0x00
data_ov03_020fc8fa: ; 0x020fc8fa
	.byte 0x00, 0x00
data_ov03_020fc8fc: ; 0x020fc8fc
	.byte 0x02, 0x00
data_ov03_020fc8fe: ; 0x020fc8fe
	.byte 0x00, 0x00
data_ov03_020fc900: ; 0x020fc900
	.byte 0x19, 0x00
data_ov03_020fc902: ; 0x020fc902
	.byte 0x00, 0x00
data_ov03_020fc904: ; 0x020fc904
	.byte 0x00, 0x00
data_ov03_020fc906: ; 0x020fc906
	.byte 0x00, 0x00
data_ov03_020fc908: ; 0x020fc908
	.byte 0x7a, 0x01
data_ov03_020fc90a: ; 0x020fc90a
	.byte 0x00, 0x00
data_ov03_020fc90c: ; 0x020fc90c
	.byte 0x08, 0x00
data_ov03_020fc90e: ; 0x020fc90e
	.byte 0x02, 0x00
data_ov03_020fc910: ; 0x020fc910
	.byte 0x01, 0x00
data_ov03_020fc912: ; 0x020fc912
	.byte 0x00, 0x00
data_ov03_020fc914: ; 0x020fc914
	.byte 0x02, 0x00
data_ov03_020fc916: ; 0x020fc916
	.byte 0x00, 0x00
data_ov03_020fc918: ; 0x020fc918
	.byte 0x19, 0x00
data_ov03_020fc91a: ; 0x020fc91a
	.byte 0x00, 0x00
data_ov03_020fc91c: ; 0x020fc91c
	.byte 0x00, 0x00
data_ov03_020fc91e: ; 0x020fc91e
	.byte 0x00, 0x00
data_ov03_020fc920: ; 0x020fc920
	.byte 0x82, 0x01
data_ov03_020fc922: ; 0x020fc922
	.byte 0x00, 0x00
data_ov03_020fc924: ; 0x020fc924
	.byte 0x0b, 0x00
data_ov03_020fc926: ; 0x020fc926
	.byte 0x02, 0x00
data_ov03_020fc928: ; 0x020fc928
	.byte 0x01, 0x00
data_ov03_020fc92a: ; 0x020fc92a
	.byte 0x00, 0x00
data_ov03_020fc92c: ; 0x020fc92c
	.byte 0x02, 0x00
data_ov03_020fc92e: ; 0x020fc92e
	.byte 0x00, 0x00
data_ov03_020fc930: ; 0x020fc930
	.byte 0x19, 0x00
data_ov03_020fc932: ; 0x020fc932
	.byte 0x00, 0x00
data_ov03_020fc934: ; 0x020fc934
	.byte 0x00, 0x00
data_ov03_020fc936: ; 0x020fc936
	.byte 0x00, 0x00
data_ov03_020fc938: ; 0x020fc938
	.byte 0x8d, 0x01
data_ov03_020fc93a: ; 0x020fc93a
	.byte 0x00, 0x00
data_ov03_020fc93c: ; 0x020fc93c
	.byte 0x0a, 0x00
data_ov03_020fc93e: ; 0x020fc93e
	.byte 0x02, 0x00
data_ov03_020fc940: ; 0x020fc940
	.byte 0x01, 0x00
data_ov03_020fc942: ; 0x020fc942
	.byte 0x00, 0x00
data_ov03_020fc944: ; 0x020fc944
	.byte 0x02, 0x00
data_ov03_020fc946: ; 0x020fc946
	.byte 0x00, 0x00
data_ov03_020fc948: ; 0x020fc948
	.byte 0x1a, 0x00
data_ov03_020fc94a: ; 0x020fc94a
	.byte 0x00, 0x00
data_ov03_020fc94c: ; 0x020fc94c
	.byte 0x00, 0x00
data_ov03_020fc94e: ; 0x020fc94e
	.byte 0x00, 0x00
data_ov03_020fc950: ; 0x020fc950
	.byte 0x97, 0x01
data_ov03_020fc952: ; 0x020fc952
	.byte 0x00, 0x00
data_ov03_020fc954: ; 0x020fc954
	.byte 0x07, 0x00
data_ov03_020fc956: ; 0x020fc956
	.byte 0x02, 0x00
data_ov03_020fc958: ; 0x020fc958
	.byte 0x01, 0x00
data_ov03_020fc95a: ; 0x020fc95a
	.byte 0x00, 0x00
data_ov03_020fc95c: ; 0x020fc95c
	.byte 0x02, 0x00
data_ov03_020fc95e: ; 0x020fc95e
	.byte 0x00, 0x00
data_ov03_020fc960: ; 0x020fc960
	.byte 0x1a, 0x00
data_ov03_020fc962: ; 0x020fc962
	.byte 0x00, 0x00
data_ov03_020fc964: ; 0x020fc964
	.byte 0x00, 0x00
data_ov03_020fc966: ; 0x020fc966
	.byte 0x00, 0x00
data_ov03_020fc968: ; 0x020fc968
	.byte 0x9e, 0x01
data_ov03_020fc96a: ; 0x020fc96a
	.byte 0x00, 0x00
data_ov03_020fc96c: ; 0x020fc96c
	.byte 0x09, 0x00
data_ov03_020fc96e: ; 0x020fc96e
	.byte 0x03, 0x00
data_ov03_020fc970: ; 0x020fc970
	.byte 0x01, 0x00
data_ov03_020fc972: ; 0x020fc972
	.byte 0x00, 0x00
data_ov03_020fc974: ; 0x020fc974
	.byte 0x02, 0x00
data_ov03_020fc976: ; 0x020fc976
	.byte 0x00, 0x00
data_ov03_020fc978: ; 0x020fc978
	.byte 0x1a, 0x00
data_ov03_020fc97a: ; 0x020fc97a
	.byte 0x00, 0x00
data_ov03_020fc97c: ; 0x020fc97c
	.byte 0x00, 0x00
data_ov03_020fc97e: ; 0x020fc97e
	.byte 0x00, 0x00
data_ov03_020fc980: ; 0x020fc980
	.byte 0xa7, 0x01
data_ov03_020fc982: ; 0x020fc982
	.byte 0x00, 0x00
data_ov03_020fc984: ; 0x020fc984
	.byte 0x0d, 0x00
data_ov03_020fc986: ; 0x020fc986
	.byte 0x01, 0x00
data_ov03_020fc988: ; 0x020fc988
	.byte 0x01, 0x00
data_ov03_020fc98a: ; 0x020fc98a
	.byte 0x00, 0x00
data_ov03_020fc98c: ; 0x020fc98c
	.byte 0x02, 0x00
data_ov03_020fc98e: ; 0x020fc98e
	.byte 0x00, 0x00
data_ov03_020fc990: ; 0x020fc990
	.byte 0x1b, 0x00
data_ov03_020fc992: ; 0x020fc992
	.byte 0x00, 0x00
data_ov03_020fc994: ; 0x020fc994
	.byte 0x00, 0x00
data_ov03_020fc996: ; 0x020fc996
	.byte 0x00, 0x00
data_ov03_020fc998: ; 0x020fc998
	.byte 0xb4, 0x01
data_ov03_020fc99a: ; 0x020fc99a
	.byte 0x00, 0x00
data_ov03_020fc99c: ; 0x020fc99c
	.byte 0x06, 0x00
data_ov03_020fc99e: ; 0x020fc99e
	.byte 0x01, 0x00
data_ov03_020fc9a0: ; 0x020fc9a0
	.byte 0x01, 0x00
data_ov03_020fc9a2: ; 0x020fc9a2
	.byte 0x00, 0x00
data_ov03_020fc9a4: ; 0x020fc9a4
	.byte 0x02, 0x00
data_ov03_020fc9a6: ; 0x020fc9a6
	.byte 0x00, 0x00
data_ov03_020fc9a8: ; 0x020fc9a8
	.byte 0x1c, 0x00
data_ov03_020fc9aa: ; 0x020fc9aa
	.byte 0x00, 0x00
data_ov03_020fc9ac: ; 0x020fc9ac
	.byte 0x00, 0x00
data_ov03_020fc9ae: ; 0x020fc9ae
	.byte 0x00, 0x00
data_ov03_020fc9b0: ; 0x020fc9b0
	.byte 0xba, 0x01
data_ov03_020fc9b2: ; 0x020fc9b2
	.byte 0x00, 0x00
data_ov03_020fc9b4: ; 0x020fc9b4
	.byte 0x0a, 0x00
data_ov03_020fc9b6: ; 0x020fc9b6
	.byte 0x01, 0x00
data_ov03_020fc9b8: ; 0x020fc9b8
	.byte 0x01, 0x00
data_ov03_020fc9ba: ; 0x020fc9ba
	.byte 0x00, 0x00
data_ov03_020fc9bc: ; 0x020fc9bc
	.byte 0x02, 0x00
data_ov03_020fc9be: ; 0x020fc9be
	.byte 0x00, 0x00
data_ov03_020fc9c0: ; 0x020fc9c0
	.byte 0x1c, 0x00
data_ov03_020fc9c2: ; 0x020fc9c2
	.byte 0x00, 0x00
data_ov03_020fc9c4: ; 0x020fc9c4
	.byte 0x00, 0x00
data_ov03_020fc9c6: ; 0x020fc9c6
	.byte 0x00, 0x00
data_ov03_020fc9c8: ; 0x020fc9c8
	.byte 0xc4, 0x01
data_ov03_020fc9ca: ; 0x020fc9ca
	.byte 0x00, 0x00
data_ov03_020fc9cc: ; 0x020fc9cc
	.byte 0x0c, 0x00
data_ov03_020fc9ce: ; 0x020fc9ce
	.byte 0x01, 0x00
data_ov03_020fc9d0: ; 0x020fc9d0
	.byte 0x01, 0x00
data_ov03_020fc9d2: ; 0x020fc9d2
	.byte 0x00, 0x00
data_ov03_020fc9d4: ; 0x020fc9d4
	.byte 0x02, 0x00
data_ov03_020fc9d6: ; 0x020fc9d6
	.byte 0x00, 0x00
data_ov03_020fc9d8: ; 0x020fc9d8
	.byte 0x1d, 0x00
data_ov03_020fc9da: ; 0x020fc9da
	.byte 0x00, 0x00
data_ov03_020fc9dc: ; 0x020fc9dc
	.byte 0x00, 0x00
data_ov03_020fc9de: ; 0x020fc9de
	.byte 0x00, 0x00
data_ov03_020fc9e0: ; 0x020fc9e0
	.byte 0xd0, 0x01
data_ov03_020fc9e2: ; 0x020fc9e2
	.byte 0x00, 0x00
data_ov03_020fc9e4: ; 0x020fc9e4
	.byte 0x07, 0x00
data_ov03_020fc9e6: ; 0x020fc9e6
	.byte 0x01, 0x00
data_ov03_020fc9e8: ; 0x020fc9e8
	.byte 0x01, 0x00
data_ov03_020fc9ea: ; 0x020fc9ea
	.byte 0x00, 0x00
data_ov03_020fc9ec: ; 0x020fc9ec
	.byte 0x02, 0x00
data_ov03_020fc9ee: ; 0x020fc9ee
	.byte 0x00, 0x00
data_ov03_020fc9f0: ; 0x020fc9f0
	.byte 0x1d, 0x00
data_ov03_020fc9f2: ; 0x020fc9f2
	.byte 0x00, 0x00
data_ov03_020fc9f4: ; 0x020fc9f4
	.byte 0x00, 0x00
data_ov03_020fc9f6: ; 0x020fc9f6
	.byte 0x00, 0x00
data_ov03_020fc9f8: ; 0x020fc9f8
	.byte 0xd7, 0x01
data_ov03_020fc9fa: ; 0x020fc9fa
	.byte 0x00, 0x00
data_ov03_020fc9fc: ; 0x020fc9fc
	.byte 0x09, 0x00
data_ov03_020fc9fe: ; 0x020fc9fe
	.byte 0x01, 0x00
data_ov03_020fca00: ; 0x020fca00
	.byte 0x01, 0x00
data_ov03_020fca02: ; 0x020fca02
	.byte 0x00, 0x00
data_ov03_020fca04: ; 0x020fca04
	.byte 0x02, 0x00
data_ov03_020fca06: ; 0x020fca06
	.byte 0x00, 0x00
data_ov03_020fca08: ; 0x020fca08
	.byte 0x1e, 0x00
data_ov03_020fca0a: ; 0x020fca0a
	.byte 0x00, 0x00
data_ov03_020fca0c: ; 0x020fca0c
	.byte 0x00, 0x00
data_ov03_020fca0e: ; 0x020fca0e
	.byte 0x00, 0x00
data_ov03_020fca10: ; 0x020fca10
	.byte 0xe0, 0x01
data_ov03_020fca12: ; 0x020fca12
	.byte 0x00, 0x00
data_ov03_020fca14: ; 0x020fca14
	.byte 0x0d, 0x00
data_ov03_020fca16: ; 0x020fca16
	.byte 0x01, 0x00
data_ov03_020fca18: ; 0x020fca18
	.byte 0x01, 0x00
data_ov03_020fca1a: ; 0x020fca1a
	.byte 0x00, 0x00
data_ov03_020fca1c: ; 0x020fca1c
	.byte 0x02, 0x00
data_ov03_020fca1e: ; 0x020fca1e
	.byte 0x00, 0x00
data_ov03_020fca20: ; 0x020fca20
	.byte 0x1e, 0x00
data_ov03_020fca22: ; 0x020fca22
	.byte 0x00, 0x00
data_ov03_020fca24: ; 0x020fca24
	.byte 0x00, 0x00
data_ov03_020fca26: ; 0x020fca26
	.byte 0x00, 0x00
data_ov03_020fca28: ; 0x020fca28
	.byte 0xed, 0x01
data_ov03_020fca2a: ; 0x020fca2a
	.byte 0x00, 0x00
data_ov03_020fca2c: ; 0x020fca2c
	.byte 0x09, 0x00
data_ov03_020fca2e: ; 0x020fca2e
	.byte 0x01, 0x00
data_ov03_020fca30: ; 0x020fca30
	.byte 0x01, 0x00
data_ov03_020fca32: ; 0x020fca32
	.byte 0x00, 0x00
data_ov03_020fca34: ; 0x020fca34
	.byte 0x02, 0x00
data_ov03_020fca36: ; 0x020fca36
	.byte 0x00, 0x00
data_ov03_020fca38: ; 0x020fca38
	.byte 0x1f, 0x00
data_ov03_020fca3a: ; 0x020fca3a
	.byte 0x00, 0x00
data_ov03_020fca3c: ; 0x020fca3c
	.byte 0x00, 0x00
data_ov03_020fca3e: ; 0x020fca3e
	.byte 0x00, 0x00
data_ov03_020fca40: ; 0x020fca40
	.byte 0xf6, 0x01
data_ov03_020fca42: ; 0x020fca42
	.byte 0x00, 0x00
data_ov03_020fca44: ; 0x020fca44
	.byte 0x0a, 0x00
data_ov03_020fca46: ; 0x020fca46
	.byte 0x02, 0x00
data_ov03_020fca48: ; 0x020fca48
	.byte 0x01, 0x00
data_ov03_020fca4a: ; 0x020fca4a
	.byte 0x00, 0x00
data_ov03_020fca4c: ; 0x020fca4c
	.byte 0x02, 0x00
data_ov03_020fca4e: ; 0x020fca4e
	.byte 0x00, 0x00
data_ov03_020fca50: ; 0x020fca50
	.byte 0x1f, 0x00
data_ov03_020fca52: ; 0x020fca52
	.byte 0x00, 0x00
data_ov03_020fca54: ; 0x020fca54
	.byte 0x00, 0x00
data_ov03_020fca56: ; 0x020fca56
	.byte 0x00, 0x00
data_ov03_020fca58: ; 0x020fca58
	.byte 0x00, 0x02
data_ov03_020fca5a: ; 0x020fca5a
	.byte 0x00, 0x00
data_ov03_020fca5c: ; 0x020fca5c
	.byte 0x08, 0x00
data_ov03_020fca5e: ; 0x020fca5e
	.byte 0x01, 0x00
data_ov03_020fca60: ; 0x020fca60
	.byte 0x01, 0x00
data_ov03_020fca62: ; 0x020fca62
	.byte 0x00, 0x00
data_ov03_020fca64: ; 0x020fca64
	.byte 0x02, 0x00
data_ov03_020fca66: ; 0x020fca66
	.byte 0x00, 0x00
data_ov03_020fca68: ; 0x020fca68
	.byte 0x20, 0x00
data_ov03_020fca6a: ; 0x020fca6a
	.byte 0x00, 0x00
data_ov03_020fca6c: ; 0x020fca6c
	.byte 0x00, 0x00
data_ov03_020fca6e: ; 0x020fca6e
	.byte 0x00, 0x00
data_ov03_020fca70: ; 0x020fca70
	.byte 0x08, 0x02
data_ov03_020fca72: ; 0x020fca72
	.byte 0x00, 0x00
data_ov03_020fca74: ; 0x020fca74
	.byte 0x0d, 0x00
data_ov03_020fca76: ; 0x020fca76
	.byte 0x01, 0x00
data_ov03_020fca78: ; 0x020fca78
	.byte 0x01, 0x00
data_ov03_020fca7a: ; 0x020fca7a
	.byte 0x00, 0x00
data_ov03_020fca7c: ; 0x020fca7c
	.byte 0x02, 0x00
data_ov03_020fca7e: ; 0x020fca7e
	.byte 0x00, 0x00
data_ov03_020fca80: ; 0x020fca80
	.byte 0x20, 0x00
data_ov03_020fca82: ; 0x020fca82
	.byte 0x00, 0x00
data_ov03_020fca84: ; 0x020fca84
	.byte 0x00, 0x00
data_ov03_020fca86: ; 0x020fca86
	.byte 0x00, 0x00
data_ov03_020fca88: ; 0x020fca88
	.byte 0x15, 0x02
data_ov03_020fca8a: ; 0x020fca8a
	.byte 0x00, 0x00
data_ov03_020fca8c: ; 0x020fca8c
	.byte 0x09, 0x00
data_ov03_020fca8e: ; 0x020fca8e
	.byte 0x02, 0x00
data_ov03_020fca90: ; 0x020fca90
	.byte 0x01, 0x00
data_ov03_020fca92: ; 0x020fca92
	.byte 0x00, 0x00
data_ov03_020fca94: ; 0x020fca94
	.byte 0x02, 0x00
data_ov03_020fca96: ; 0x020fca96
	.byte 0x00, 0x00
data_ov03_020fca98: ; 0x020fca98
	.byte 0x21, 0x00
data_ov03_020fca9a: ; 0x020fca9a
	.byte 0x00, 0x00
data_ov03_020fca9c: ; 0x020fca9c
	.byte 0x00, 0x00
data_ov03_020fca9e: ; 0x020fca9e
	.byte 0x00, 0x00
data_ov03_020fcaa0: ; 0x020fcaa0
	.byte 0x1e, 0x02
data_ov03_020fcaa2: ; 0x020fcaa2
	.byte 0x00, 0x00
data_ov03_020fcaa4: ; 0x020fcaa4
	.byte 0x06, 0x00
data_ov03_020fcaa6: ; 0x020fcaa6
	.byte 0x01, 0x00
data_ov03_020fcaa8: ; 0x020fcaa8
	.byte 0x01, 0x00
data_ov03_020fcaaa: ; 0x020fcaaa
	.byte 0x00, 0x00
data_ov03_020fcaac: ; 0x020fcaac
	.byte 0x02, 0x00
data_ov03_020fcaae: ; 0x020fcaae
	.byte 0x00, 0x00
data_ov03_020fcab0: ; 0x020fcab0
	.byte 0x21, 0x00
data_ov03_020fcab2: ; 0x020fcab2
	.byte 0x00, 0x00
data_ov03_020fcab4: ; 0x020fcab4
	.byte 0x00, 0x00
data_ov03_020fcab6: ; 0x020fcab6
	.byte 0x00, 0x00
data_ov03_020fcab8: ; 0x020fcab8
	.byte 0x24, 0x02
data_ov03_020fcaba: ; 0x020fcaba
	.byte 0x00, 0x00
data_ov03_020fcabc: ; 0x020fcabc
	.byte 0x08, 0x00
data_ov03_020fcabe: ; 0x020fcabe
	.byte 0x01, 0x00
data_ov03_020fcac0: ; 0x020fcac0
	.byte 0x01, 0x00
data_ov03_020fcac2: ; 0x020fcac2
	.byte 0x00, 0x00
data_ov03_020fcac4: ; 0x020fcac4
	.byte 0x02, 0x00
data_ov03_020fcac6: ; 0x020fcac6
	.byte 0x00, 0x00
data_ov03_020fcac8: ; 0x020fcac8
	.byte 0x22, 0x00
data_ov03_020fcaca: ; 0x020fcaca
	.byte 0x00, 0x00
data_ov03_020fcacc: ; 0x020fcacc
	.byte 0x00, 0x00
data_ov03_020fcace: ; 0x020fcace
	.byte 0x00, 0x00
data_ov03_020fcad0: ; 0x020fcad0
	.byte 0x2c, 0x02
data_ov03_020fcad2: ; 0x020fcad2
	.byte 0x00, 0x00
data_ov03_020fcad4: ; 0x020fcad4
	.byte 0x0b, 0x00
data_ov03_020fcad6: ; 0x020fcad6
	.byte 0x01, 0x00
data_ov03_020fcad8: ; 0x020fcad8
	.byte 0x01, 0x00
data_ov03_020fcada: ; 0x020fcada
	.byte 0x00, 0x00
data_ov03_020fcadc: ; 0x020fcadc
	.byte 0x02, 0x00
data_ov03_020fcade: ; 0x020fcade
	.byte 0x00, 0x00
data_ov03_020fcae0: ; 0x020fcae0
	.byte 0x22, 0x00
data_ov03_020fcae2: ; 0x020fcae2
	.byte 0x00, 0x00
data_ov03_020fcae4: ; 0x020fcae4
	.byte 0x00, 0x00
data_ov03_020fcae6: ; 0x020fcae6
	.byte 0x00, 0x00
data_ov03_020fcae8: ; 0x020fcae8
	.byte 0x37, 0x02
data_ov03_020fcaea: ; 0x020fcaea
	.byte 0x00, 0x00
data_ov03_020fcaec: ; 0x020fcaec
	.byte 0x0a, 0x00
data_ov03_020fcaee: ; 0x020fcaee
	.byte 0x01, 0x00
data_ov03_020fcaf0: ; 0x020fcaf0
	.byte 0x01, 0x00
data_ov03_020fcaf2: ; 0x020fcaf2
	.byte 0x00, 0x00
data_ov03_020fcaf4: ; 0x020fcaf4
	.byte 0x02, 0x00
data_ov03_020fcaf6: ; 0x020fcaf6
	.byte 0x00, 0x00
data_ov03_020fcaf8: ; 0x020fcaf8
	.byte 0x23, 0x00
data_ov03_020fcafa: ; 0x020fcafa
	.byte 0x00, 0x00
data_ov03_020fcafc: ; 0x020fcafc
	.byte 0x00, 0x00
data_ov03_020fcafe: ; 0x020fcafe
	.byte 0x00, 0x00
data_ov03_020fcb00: ; 0x020fcb00
	.byte 0x41, 0x02
data_ov03_020fcb02: ; 0x020fcb02
	.byte 0x00, 0x00
data_ov03_020fcb04: ; 0x020fcb04
	.byte 0x09, 0x00
data_ov03_020fcb06: ; 0x020fcb06
	.byte 0x02, 0x00
data_ov03_020fcb08: ; 0x020fcb08
	.byte 0x01, 0x00
data_ov03_020fcb0a: ; 0x020fcb0a
	.byte 0x00, 0x00
data_ov03_020fcb0c: ; 0x020fcb0c
	.byte 0x02, 0x00
data_ov03_020fcb0e: ; 0x020fcb0e
	.byte 0x00, 0x00
data_ov03_020fcb10: ; 0x020fcb10
	.byte 0x23, 0x00
data_ov03_020fcb12: ; 0x020fcb12
	.byte 0x00, 0x00
data_ov03_020fcb14: ; 0x020fcb14
	.byte 0x00, 0x00
data_ov03_020fcb16: ; 0x020fcb16
	.byte 0x00, 0x00
data_ov03_020fcb18: ; 0x020fcb18
	.byte 0x4a, 0x02
data_ov03_020fcb1a: ; 0x020fcb1a
	.byte 0x00, 0x00
data_ov03_020fcb1c: ; 0x020fcb1c
	.byte 0x08, 0x00
data_ov03_020fcb1e: ; 0x020fcb1e
	.byte 0x02, 0x00
data_ov03_020fcb20: ; 0x020fcb20
	.byte 0x01, 0x00
data_ov03_020fcb22: ; 0x020fcb22
	.byte 0x00, 0x00
data_ov03_020fcb24: ; 0x020fcb24
	.byte 0x02, 0x00
data_ov03_020fcb26: ; 0x020fcb26
	.byte 0x00, 0x00
data_ov03_020fcb28: ; 0x020fcb28
	.byte 0x23, 0x00
data_ov03_020fcb2a: ; 0x020fcb2a
	.byte 0x00, 0x00
data_ov03_020fcb2c: ; 0x020fcb2c
	.byte 0x00, 0x00
data_ov03_020fcb2e: ; 0x020fcb2e
	.byte 0x00, 0x00
data_ov03_020fcb30: ; 0x020fcb30
	.byte 0x52, 0x02
data_ov03_020fcb32: ; 0x020fcb32
	.byte 0x00, 0x00
data_ov03_020fcb34: ; 0x020fcb34
	.byte 0x0a, 0x00
data_ov03_020fcb36: ; 0x020fcb36
	.byte 0x02, 0x00
data_ov03_020fcb38: ; 0x020fcb38
	.byte 0x01, 0x00
data_ov03_020fcb3a: ; 0x020fcb3a
	.byte 0x00, 0x00
data_ov03_020fcb3c: ; 0x020fcb3c
	.byte 0x02, 0x00
data_ov03_020fcb3e: ; 0x020fcb3e
	.byte 0x00, 0x00
data_ov03_020fcb40: ; 0x020fcb40
	.byte 0x24, 0x00
data_ov03_020fcb42: ; 0x020fcb42
	.byte 0x00, 0x00
data_ov03_020fcb44: ; 0x020fcb44
	.byte 0x00, 0x00
data_ov03_020fcb46: ; 0x020fcb46
	.byte 0x00, 0x00
data_ov03_020fcb48: ; 0x020fcb48
	.byte 0x5c, 0x02
data_ov03_020fcb4a: ; 0x020fcb4a
	.byte 0x00, 0x00
data_ov03_020fcb4c: ; 0x020fcb4c
	.byte 0x08, 0x00
data_ov03_020fcb4e: ; 0x020fcb4e
	.byte 0x01, 0x00
data_ov03_020fcb50: ; 0x020fcb50
	.byte 0x01, 0x00
data_ov03_020fcb52: ; 0x020fcb52
	.byte 0x00, 0x00
data_ov03_020fcb54: ; 0x020fcb54
	.byte 0x02, 0x00
data_ov03_020fcb56: ; 0x020fcb56
	.byte 0x00, 0x00
data_ov03_020fcb58: ; 0x020fcb58
	.byte 0x24, 0x00
data_ov03_020fcb5a: ; 0x020fcb5a
	.byte 0x00, 0x00
data_ov03_020fcb5c: ; 0x020fcb5c
	.byte 0x00, 0x00
data_ov03_020fcb5e: ; 0x020fcb5e
	.byte 0x00, 0x00
data_ov03_020fcb60: ; 0x020fcb60
	.byte 0x64, 0x02
data_ov03_020fcb62: ; 0x020fcb62
	.byte 0x00, 0x00
data_ov03_020fcb64: ; 0x020fcb64
	.byte 0x0a, 0x00
data_ov03_020fcb66: ; 0x020fcb66
	.byte 0x01, 0x00
data_ov03_020fcb68: ; 0x020fcb68
	.byte 0x01, 0x00
data_ov03_020fcb6a: ; 0x020fcb6a
	.byte 0x00, 0x00
data_ov03_020fcb6c: ; 0x020fcb6c
	.byte 0x02, 0x00
data_ov03_020fcb6e: ; 0x020fcb6e
	.byte 0x00, 0x00
data_ov03_020fcb70: ; 0x020fcb70
	.byte 0x25, 0x00
data_ov03_020fcb72: ; 0x020fcb72
	.byte 0x00, 0x00
data_ov03_020fcb74: ; 0x020fcb74
	.byte 0x00, 0x00
data_ov03_020fcb76: ; 0x020fcb76
	.byte 0x00, 0x00
data_ov03_020fcb78: ; 0x020fcb78
	.byte 0x6e, 0x02
data_ov03_020fcb7a: ; 0x020fcb7a
	.byte 0x00, 0x00
data_ov03_020fcb7c: ; 0x020fcb7c
	.byte 0x04, 0x00
data_ov03_020fcb7e: ; 0x020fcb7e
	.byte 0x01, 0x00
data_ov03_020fcb80: ; 0x020fcb80
	.byte 0x01, 0x00
data_ov03_020fcb82: ; 0x020fcb82
	.byte 0x00, 0x00
data_ov03_020fcb84: ; 0x020fcb84
	.byte 0x02, 0x00
data_ov03_020fcb86: ; 0x020fcb86
	.byte 0x00, 0x00
data_ov03_020fcb88: ; 0x020fcb88
	.byte 0x25, 0x00
data_ov03_020fcb8a: ; 0x020fcb8a
	.byte 0x00, 0x00
data_ov03_020fcb8c: ; 0x020fcb8c
	.byte 0x00, 0x00
data_ov03_020fcb8e: ; 0x020fcb8e
	.byte 0x00, 0x00
data_ov03_020fcb90: ; 0x020fcb90
	.byte 0x72, 0x02
data_ov03_020fcb92: ; 0x020fcb92
	.byte 0x00, 0x00
data_ov03_020fcb94: ; 0x020fcb94
	.byte 0x05, 0x00
data_ov03_020fcb96: ; 0x020fcb96
	.byte 0x01, 0x00
data_ov03_020fcb98: ; 0x020fcb98
	.byte 0x01, 0x00
data_ov03_020fcb9a: ; 0x020fcb9a
	.byte 0x00, 0x00
data_ov03_020fcb9c: ; 0x020fcb9c
	.byte 0x02, 0x00
data_ov03_020fcb9e: ; 0x020fcb9e
	.byte 0x00, 0x00
data_ov03_020fcba0: ; 0x020fcba0
	.byte 0x26, 0x00
data_ov03_020fcba2: ; 0x020fcba2
	.byte 0x00, 0x00
data_ov03_020fcba4: ; 0x020fcba4
	.byte 0x00, 0x00
data_ov03_020fcba6: ; 0x020fcba6
	.byte 0x00, 0x00
data_ov03_020fcba8: ; 0x020fcba8
	.byte 0x77, 0x02
data_ov03_020fcbaa: ; 0x020fcbaa
	.byte 0x00, 0x00
data_ov03_020fcbac: ; 0x020fcbac
	.byte 0x06, 0x00
data_ov03_020fcbae: ; 0x020fcbae
	.byte 0x01, 0x00
data_ov03_020fcbb0: ; 0x020fcbb0
	.byte 0x01, 0x00
data_ov03_020fcbb2: ; 0x020fcbb2
	.byte 0x00, 0x00
data_ov03_020fcbb4: ; 0x020fcbb4
	.byte 0x02, 0x00
data_ov03_020fcbb6: ; 0x020fcbb6
	.byte 0x00, 0x00
data_ov03_020fcbb8: ; 0x020fcbb8
	.byte 0x26, 0x00
data_ov03_020fcbba: ; 0x020fcbba
	.byte 0x00, 0x00
data_ov03_020fcbbc: ; 0x020fcbbc
	.byte 0x00, 0x00
data_ov03_020fcbbe: ; 0x020fcbbe
	.byte 0x00, 0x00
data_ov03_020fcbc0: ; 0x020fcbc0
	.byte 0x7d, 0x02
data_ov03_020fcbc2: ; 0x020fcbc2
	.byte 0x00, 0x00
data_ov03_020fcbc4: ; 0x020fcbc4
	.byte 0x0a, 0x00
data_ov03_020fcbc6: ; 0x020fcbc6
	.byte 0x01, 0x00
data_ov03_020fcbc8: ; 0x020fcbc8
	.byte 0x01, 0x00
data_ov03_020fcbca: ; 0x020fcbca
	.byte 0x00, 0x00
data_ov03_020fcbcc: ; 0x020fcbcc
	.byte 0x02, 0x00
data_ov03_020fcbce: ; 0x020fcbce
	.byte 0x00, 0x00
data_ov03_020fcbd0: ; 0x020fcbd0
	.byte 0x26, 0x00
data_ov03_020fcbd2: ; 0x020fcbd2
	.byte 0x00, 0x00
data_ov03_020fcbd4: ; 0x020fcbd4
	.byte 0x00, 0x00
data_ov03_020fcbd6: ; 0x020fcbd6
	.byte 0x00, 0x00
data_ov03_020fcbd8: ; 0x020fcbd8
	.byte 0x87, 0x02
data_ov03_020fcbda: ; 0x020fcbda
	.byte 0x00, 0x00
data_ov03_020fcbdc: ; 0x020fcbdc
	.byte 0x0d, 0x00
data_ov03_020fcbde: ; 0x020fcbde
	.byte 0x01, 0x00
data_ov03_020fcbe0: ; 0x020fcbe0
	.byte 0x01, 0x00
data_ov03_020fcbe2: ; 0x020fcbe2
	.byte 0x00, 0x00
data_ov03_020fcbe4: ; 0x020fcbe4
	.byte 0x02, 0x00
data_ov03_020fcbe6: ; 0x020fcbe6
	.byte 0x00, 0x00
data_ov03_020fcbe8: ; 0x020fcbe8
	.byte 0x27, 0x00
data_ov03_020fcbea: ; 0x020fcbea
	.byte 0x00, 0x00
data_ov03_020fcbec: ; 0x020fcbec
	.byte 0x00, 0x00
data_ov03_020fcbee: ; 0x020fcbee
	.byte 0x00, 0x00
data_ov03_020fcbf0: ; 0x020fcbf0
	.byte 0x94, 0x02
data_ov03_020fcbf2: ; 0x020fcbf2
	.byte 0x00, 0x00
data_ov03_020fcbf4: ; 0x020fcbf4
	.byte 0x06, 0x00
data_ov03_020fcbf6: ; 0x020fcbf6
	.byte 0x02, 0x00
data_ov03_020fcbf8: ; 0x020fcbf8
	.byte 0x01, 0x00
data_ov03_020fcbfa: ; 0x020fcbfa
	.byte 0x00, 0x00
data_ov03_020fcbfc: ; 0x020fcbfc
	.byte 0x02, 0x00
data_ov03_020fcbfe: ; 0x020fcbfe
	.byte 0x00, 0x00
data_ov03_020fcc00: ; 0x020fcc00
	.byte 0x27, 0x00
data_ov03_020fcc02: ; 0x020fcc02
	.byte 0x00, 0x00
data_ov03_020fcc04: ; 0x020fcc04
	.byte 0x00, 0x00
data_ov03_020fcc06: ; 0x020fcc06
	.byte 0x00, 0x00
data_ov03_020fcc08: ; 0x020fcc08
	.byte 0x9a, 0x02
data_ov03_020fcc0a: ; 0x020fcc0a
	.byte 0x00, 0x00
data_ov03_020fcc0c: ; 0x020fcc0c
	.byte 0x06, 0x00
data_ov03_020fcc0e: ; 0x020fcc0e
	.byte 0x02, 0x00
data_ov03_020fcc10: ; 0x020fcc10
	.byte 0x01, 0x00
data_ov03_020fcc12: ; 0x020fcc12
	.byte 0x00, 0x00
data_ov03_020fcc14: ; 0x020fcc14
	.byte 0x02, 0x00
data_ov03_020fcc16: ; 0x020fcc16
	.byte 0x00, 0x00
data_ov03_020fcc18: ; 0x020fcc18
	.byte 0x27, 0x00
data_ov03_020fcc1a: ; 0x020fcc1a
	.byte 0x00, 0x00
data_ov03_020fcc1c: ; 0x020fcc1c
	.byte 0x00, 0x00
data_ov03_020fcc1e: ; 0x020fcc1e
	.byte 0x00, 0x00
data_ov03_020fcc20: ; 0x020fcc20
	.byte 0xa0, 0x02
data_ov03_020fcc22: ; 0x020fcc22
	.byte 0x00, 0x00
data_ov03_020fcc24: ; 0x020fcc24
	.byte 0x0c, 0x00
data_ov03_020fcc26: ; 0x020fcc26
	.byte 0x02, 0x00
data_ov03_020fcc28: ; 0x020fcc28
	.byte 0x01, 0x00
data_ov03_020fcc2a: ; 0x020fcc2a
	.byte 0x00, 0x00
data_ov03_020fcc2c: ; 0x020fcc2c
	.byte 0x02, 0x00
data_ov03_020fcc2e: ; 0x020fcc2e
	.byte 0x00, 0x00
data_ov03_020fcc30: ; 0x020fcc30
	.byte 0x28, 0x00
data_ov03_020fcc32: ; 0x020fcc32
	.byte 0x00, 0x00
data_ov03_020fcc34: ; 0x020fcc34
	.byte 0x00, 0x00
data_ov03_020fcc36: ; 0x020fcc36
	.byte 0x00, 0x00
data_ov03_020fcc38: ; 0x020fcc38
	.byte 0xac, 0x02
data_ov03_020fcc3a: ; 0x020fcc3a
	.byte 0x00, 0x00
data_ov03_020fcc3c: ; 0x020fcc3c
	.byte 0x06, 0x00
data_ov03_020fcc3e: ; 0x020fcc3e
	.byte 0x02, 0x00
data_ov03_020fcc40: ; 0x020fcc40
	.byte 0x01, 0x00
data_ov03_020fcc42: ; 0x020fcc42
	.byte 0x00, 0x00
data_ov03_020fcc44: ; 0x020fcc44
	.byte 0x02, 0x00
data_ov03_020fcc46: ; 0x020fcc46
	.byte 0x00, 0x00
data_ov03_020fcc48: ; 0x020fcc48
	.byte 0x28, 0x00
data_ov03_020fcc4a: ; 0x020fcc4a
	.byte 0x00, 0x00
data_ov03_020fcc4c: ; 0x020fcc4c
	.byte 0x00, 0x00
data_ov03_020fcc4e: ; 0x020fcc4e
	.byte 0x00, 0x00
data_ov03_020fcc50: ; 0x020fcc50
	.byte 0xb2, 0x02
data_ov03_020fcc52: ; 0x020fcc52
	.byte 0x00, 0x00
data_ov03_020fcc54: ; 0x020fcc54
	.byte 0x06, 0x00
data_ov03_020fcc56: ; 0x020fcc56
	.byte 0x02, 0x00
data_ov03_020fcc58: ; 0x020fcc58
	.byte 0x01, 0x00
data_ov03_020fcc5a: ; 0x020fcc5a
	.byte 0x00, 0x00
data_ov03_020fcc5c: ; 0x020fcc5c
	.byte 0x02, 0x00
data_ov03_020fcc5e: ; 0x020fcc5e
	.byte 0x00, 0x00
data_ov03_020fcc60: ; 0x020fcc60
	.byte 0x28, 0x00
data_ov03_020fcc62: ; 0x020fcc62
	.byte 0x00, 0x00
data_ov03_020fcc64: ; 0x020fcc64
	.byte 0x00, 0x00
data_ov03_020fcc66: ; 0x020fcc66
	.byte 0x00, 0x00
data_ov03_020fcc68: ; 0x020fcc68
	.byte 0xb8, 0x02
data_ov03_020fcc6a: ; 0x020fcc6a
	.byte 0x00, 0x00
data_ov03_020fcc6c: ; 0x020fcc6c
	.byte 0x0b, 0x00
data_ov03_020fcc6e: ; 0x020fcc6e
	.byte 0x01, 0x00
data_ov03_020fcc70: ; 0x020fcc70
	.byte 0x01, 0x00
data_ov03_020fcc72: ; 0x020fcc72
	.byte 0x00, 0x00
data_ov03_020fcc74: ; 0x020fcc74
	.byte 0x02, 0x00
data_ov03_020fcc76: ; 0x020fcc76
	.byte 0x00, 0x00
data_ov03_020fcc78: ; 0x020fcc78
	.byte 0x29, 0x00
data_ov03_020fcc7a: ; 0x020fcc7a
	.byte 0x00, 0x00
data_ov03_020fcc7c: ; 0x020fcc7c
	.byte 0x00, 0x00
data_ov03_020fcc7e: ; 0x020fcc7e
	.byte 0x00, 0x00
data_ov03_020fcc80: ; 0x020fcc80
	.byte 0xc3, 0x02
data_ov03_020fcc82: ; 0x020fcc82
	.byte 0x00, 0x00
data_ov03_020fcc84: ; 0x020fcc84
	.byte 0x08, 0x00
data_ov03_020fcc86: ; 0x020fcc86
	.byte 0x02, 0x00
data_ov03_020fcc88: ; 0x020fcc88
	.byte 0x01, 0x00
data_ov03_020fcc8a: ; 0x020fcc8a
	.byte 0x00, 0x00
data_ov03_020fcc8c: ; 0x020fcc8c
	.byte 0x02, 0x00
data_ov03_020fcc8e: ; 0x020fcc8e
	.byte 0x00, 0x00
data_ov03_020fcc90: ; 0x020fcc90
	.byte 0x29, 0x00
data_ov03_020fcc92: ; 0x020fcc92
	.byte 0x00, 0x00
data_ov03_020fcc94: ; 0x020fcc94
	.byte 0x00, 0x00
data_ov03_020fcc96: ; 0x020fcc96
	.byte 0x00, 0x00
data_ov03_020fcc98: ; 0x020fcc98
	.byte 0xcb, 0x02
data_ov03_020fcc9a: ; 0x020fcc9a
	.byte 0x00, 0x00
data_ov03_020fcc9c: ; 0x020fcc9c
	.byte 0x0a, 0x00
data_ov03_020fcc9e: ; 0x020fcc9e
	.byte 0x01, 0x00
data_ov03_020fcca0: ; 0x020fcca0
	.byte 0x01, 0x00
data_ov03_020fcca2: ; 0x020fcca2
	.byte 0x00, 0x00
data_ov03_020fcca4: ; 0x020fcca4
	.byte 0x08, 0x00
data_ov03_020fcca6: ; 0x020fcca6
	.byte 0x00, 0x00
data_ov03_020fcca8: ; 0x020fcca8
	.byte 0x2a, 0x00
data_ov03_020fccaa: ; 0x020fccaa
	.byte 0x00, 0x00
data_ov03_020fccac: ; 0x020fccac
	.byte 0x00, 0x00
data_ov03_020fccae: ; 0x020fccae
	.byte 0x00, 0x00
data_ov03_020fccb0: ; 0x020fccb0
	.byte 0xd5, 0x02
data_ov03_020fccb2: ; 0x020fccb2
	.byte 0x00, 0x00
data_ov03_020fccb4: ; 0x020fccb4
	.byte 0x0e, 0x00
data_ov03_020fccb6: ; 0x020fccb6
	.byte 0x03, 0x00
data_ov03_020fccb8: ; 0x020fccb8
	.byte 0x01, 0x00
data_ov03_020fccba: ; 0x020fccba
	.byte 0x00, 0x00
data_ov03_020fccbc: ; 0x020fccbc
	.byte 0x08, 0x00
data_ov03_020fccbe: ; 0x020fccbe
	.byte 0x00, 0x00
data_ov03_020fccc0: ; 0x020fccc0
	.byte 0x2b, 0x00
data_ov03_020fccc2: ; 0x020fccc2
	.byte 0x00, 0x00
data_ov03_020fccc4: ; 0x020fccc4
	.byte 0x00, 0x00
data_ov03_020fccc6: ; 0x020fccc6
	.byte 0x00, 0x00
data_ov03_020fccc8: ; 0x020fccc8
	.byte 0xe3, 0x02
data_ov03_020fccca: ; 0x020fccca
	.byte 0x00, 0x00
data_ov03_020fcccc: ; 0x020fcccc
	.byte 0x07, 0x00
data_ov03_020fccce: ; 0x020fccce
	.byte 0x02, 0x00
data_ov03_020fccd0: ; 0x020fccd0
	.byte 0x01, 0x00
data_ov03_020fccd2: ; 0x020fccd2
	.byte 0x00, 0x00
data_ov03_020fccd4: ; 0x020fccd4
	.byte 0x08, 0x00
data_ov03_020fccd6: ; 0x020fccd6
	.byte 0x00, 0x00
data_ov03_020fccd8: ; 0x020fccd8
	.byte 0x2c, 0x00
data_ov03_020fccda: ; 0x020fccda
	.byte 0x00, 0x00
data_ov03_020fccdc: ; 0x020fccdc
	.byte 0x00, 0x00
data_ov03_020fccde: ; 0x020fccde
	.byte 0x00, 0x00
data_ov03_020fcce0: ; 0x020fcce0
	.byte 0xea, 0x02
data_ov03_020fcce2: ; 0x020fcce2
	.byte 0x00, 0x00
data_ov03_020fcce4: ; 0x020fcce4
	.byte 0x09, 0x00
data_ov03_020fcce6: ; 0x020fcce6
	.byte 0x02, 0x00
data_ov03_020fcce8: ; 0x020fcce8
	.byte 0x01, 0x00
data_ov03_020fccea: ; 0x020fccea
	.byte 0x00, 0x00
data_ov03_020fccec: ; 0x020fccec
	.byte 0x08, 0x00
data_ov03_020fccee: ; 0x020fccee
	.byte 0x00, 0x00
data_ov03_020fccf0: ; 0x020fccf0
	.byte 0x2d, 0x00
data_ov03_020fccf2: ; 0x020fccf2
	.byte 0x00, 0x00
data_ov03_020fccf4: ; 0x020fccf4
	.byte 0x00, 0x00
data_ov03_020fccf6: ; 0x020fccf6
	.byte 0x00, 0x00
data_ov03_020fccf8: ; 0x020fccf8
	.byte 0xf3, 0x02
data_ov03_020fccfa: ; 0x020fccfa
	.byte 0x00, 0x00
data_ov03_020fccfc: ; 0x020fccfc
	.byte 0x0a, 0x00
data_ov03_020fccfe: ; 0x020fccfe
	.byte 0x02, 0x00
data_ov03_020fcd00: ; 0x020fcd00
	.byte 0x01, 0x00
data_ov03_020fcd02: ; 0x020fcd02
	.byte 0x00, 0x00
data_ov03_020fcd04: ; 0x020fcd04
	.byte 0x08, 0x00
data_ov03_020fcd06: ; 0x020fcd06
	.byte 0x00, 0x00
data_ov03_020fcd08: ; 0x020fcd08
	.byte 0x2e, 0x00
data_ov03_020fcd0a: ; 0x020fcd0a
	.byte 0x00, 0x00
data_ov03_020fcd0c: ; 0x020fcd0c
	.byte 0x00, 0x00
data_ov03_020fcd0e: ; 0x020fcd0e
	.byte 0x00, 0x00
data_ov03_020fcd10: ; 0x020fcd10
	.byte 0xfd, 0x02
data_ov03_020fcd12: ; 0x020fcd12
	.byte 0x00, 0x00
data_ov03_020fcd14: ; 0x020fcd14
	.byte 0x0e, 0x00
data_ov03_020fcd16: ; 0x020fcd16
	.byte 0x03, 0x00
data_ov03_020fcd18: ; 0x020fcd18
	.byte 0x01, 0x00
data_ov03_020fcd1a: ; 0x020fcd1a
	.byte 0x00, 0x00
data_ov03_020fcd1c: ; 0x020fcd1c
	.byte 0x08, 0x00
data_ov03_020fcd1e: ; 0x020fcd1e
	.byte 0x00, 0x00
data_ov03_020fcd20: ; 0x020fcd20
	.byte 0x2f, 0x00
data_ov03_020fcd22: ; 0x020fcd22
	.byte 0x00, 0x00
data_ov03_020fcd24: ; 0x020fcd24
	.byte 0x00, 0x00
data_ov03_020fcd26: ; 0x020fcd26
	.byte 0x00, 0x00
data_ov03_020fcd28: ; 0x020fcd28
	.byte 0x0b, 0x03
data_ov03_020fcd2a: ; 0x020fcd2a
	.byte 0x00, 0x00
data_ov03_020fcd2c: ; 0x020fcd2c
	.byte 0x0b, 0x00
data_ov03_020fcd2e: ; 0x020fcd2e
	.byte 0x03, 0x00
data_ov03_020fcd30: ; 0x020fcd30
	.byte 0x01, 0x00
data_ov03_020fcd32: ; 0x020fcd32
	.byte 0x00, 0x00
data_ov03_020fcd34: ; 0x020fcd34
	.byte 0x08, 0x00
data_ov03_020fcd36: ; 0x020fcd36
	.byte 0x00, 0x00
data_ov03_020fcd38: ; 0x020fcd38
	.byte 0x30, 0x00
data_ov03_020fcd3a: ; 0x020fcd3a
	.byte 0x00, 0x00
data_ov03_020fcd3c: ; 0x020fcd3c
	.byte 0x00, 0x00
data_ov03_020fcd3e: ; 0x020fcd3e
	.byte 0x00, 0x00
data_ov03_020fcd40: ; 0x020fcd40
	.byte 0x16, 0x03
data_ov03_020fcd42: ; 0x020fcd42
	.byte 0x00, 0x00
data_ov03_020fcd44: ; 0x020fcd44
	.byte 0x0d, 0x00
data_ov03_020fcd46: ; 0x020fcd46
	.byte 0x04, 0x00
data_ov03_020fcd48: ; 0x020fcd48
	.byte 0x01, 0x00
data_ov03_020fcd4a: ; 0x020fcd4a
	.byte 0x00, 0x00
data_ov03_020fcd4c: ; 0x020fcd4c
	.byte 0x08, 0x00
data_ov03_020fcd4e: ; 0x020fcd4e
	.byte 0x00, 0x00
data_ov03_020fcd50: ; 0x020fcd50
	.byte 0x31, 0x00
data_ov03_020fcd52: ; 0x020fcd52
	.byte 0x00, 0x00
data_ov03_020fcd54: ; 0x020fcd54
	.byte 0x00, 0x00
data_ov03_020fcd56: ; 0x020fcd56
	.byte 0x00, 0x00
data_ov03_020fcd58: ; 0x020fcd58
	.byte 0x23, 0x03
data_ov03_020fcd5a: ; 0x020fcd5a
	.byte 0x00, 0x00
data_ov03_020fcd5c: ; 0x020fcd5c
	.byte 0x04, 0x00
data_ov03_020fcd5e: ; 0x020fcd5e
	.byte 0x01, 0x00
data_ov03_020fcd60: ; 0x020fcd60
	.byte 0x01, 0x00
data_ov03_020fcd62: ; 0x020fcd62
	.byte 0x00, 0x00
data_ov03_020fcd64: ; 0x020fcd64
	.byte 0x08, 0x00
data_ov03_020fcd66: ; 0x020fcd66
	.byte 0x00, 0x00
data_ov03_020fcd68: ; 0x020fcd68
	.byte 0x32, 0x00
data_ov03_020fcd6a: ; 0x020fcd6a
	.byte 0x00, 0x00
data_ov03_020fcd6c: ; 0x020fcd6c
	.byte 0x00, 0x00
data_ov03_020fcd6e: ; 0x020fcd6e
	.byte 0x00, 0x00
data_ov03_020fcd70: ; 0x020fcd70
	.byte 0x27, 0x03
data_ov03_020fcd72: ; 0x020fcd72
	.byte 0x00, 0x00
data_ov03_020fcd74: ; 0x020fcd74
	.byte 0x0a, 0x00
data_ov03_020fcd76: ; 0x020fcd76
	.byte 0x03, 0x00
data_ov03_020fcd78: ; 0x020fcd78
	.byte 0x01, 0x00
data_ov03_020fcd7a: ; 0x020fcd7a
	.byte 0x00, 0x00
data_ov03_020fcd7c: ; 0x020fcd7c
	.byte 0x08, 0x00
data_ov03_020fcd7e: ; 0x020fcd7e
	.byte 0x00, 0x00
data_ov03_020fcd80: ; 0x020fcd80
	.byte 0x33, 0x00
data_ov03_020fcd82: ; 0x020fcd82
	.byte 0x00, 0x00
data_ov03_020fcd84: ; 0x020fcd84
	.byte 0x00, 0x00
data_ov03_020fcd86: ; 0x020fcd86
	.byte 0x00, 0x00
data_ov03_020fcd88: ; 0x020fcd88
	.byte 0x31, 0x03
data_ov03_020fcd8a: ; 0x020fcd8a
	.byte 0x00, 0x00
data_ov03_020fcd8c: ; 0x020fcd8c
	.byte 0x07, 0x00
data_ov03_020fcd8e: ; 0x020fcd8e
	.byte 0x02, 0x00
data_ov03_020fcd90: ; 0x020fcd90
	.byte 0x01, 0x00
data_ov03_020fcd92: ; 0x020fcd92
	.byte 0x00, 0x00
data_ov03_020fcd94: ; 0x020fcd94
	.byte 0x08, 0x00
data_ov03_020fcd96: ; 0x020fcd96
	.byte 0x00, 0x00
data_ov03_020fcd98: ; 0x020fcd98
	.byte 0x34, 0x00
data_ov03_020fcd9a: ; 0x020fcd9a
	.byte 0x00, 0x00
data_ov03_020fcd9c: ; 0x020fcd9c
	.byte 0x00, 0x00
data_ov03_020fcd9e: ; 0x020fcd9e
	.byte 0x00, 0x00
data_ov03_020fcda0: ; 0x020fcda0
	.byte 0x38, 0x03
data_ov03_020fcda2: ; 0x020fcda2
	.byte 0x00, 0x00
data_ov03_020fcda4: ; 0x020fcda4
	.byte 0x0a, 0x00
data_ov03_020fcda6: ; 0x020fcda6
	.byte 0x03, 0x00
data_ov03_020fcda8: ; 0x020fcda8
	.byte 0x01, 0x00
data_ov03_020fcdaa: ; 0x020fcdaa
	.byte 0x00, 0x00
data_ov03_020fcdac: ; 0x020fcdac
	.byte 0x08, 0x00
data_ov03_020fcdae: ; 0x020fcdae
	.byte 0x00, 0x00
data_ov03_020fcdb0: ; 0x020fcdb0
	.byte 0x35, 0x00
data_ov03_020fcdb2: ; 0x020fcdb2
	.byte 0x00, 0x00
data_ov03_020fcdb4: ; 0x020fcdb4
	.byte 0x00, 0x00
data_ov03_020fcdb6: ; 0x020fcdb6
	.byte 0x00, 0x00
data_ov03_020fcdb8: ; 0x020fcdb8
	.byte 0x42, 0x03
data_ov03_020fcdba: ; 0x020fcdba
	.byte 0x00, 0x00
data_ov03_020fcdbc: ; 0x020fcdbc
	.byte 0x06, 0x00
data_ov03_020fcdbe: ; 0x020fcdbe
	.byte 0x01, 0x00
data_ov03_020fcdc0: ; 0x020fcdc0
	.byte 0x01, 0x00
data_ov03_020fcdc2: ; 0x020fcdc2
	.byte 0x00, 0x00
data_ov03_020fcdc4: ; 0x020fcdc4
	.byte 0x08, 0x00
data_ov03_020fcdc6: ; 0x020fcdc6
	.byte 0x00, 0x00
data_ov03_020fcdc8: ; 0x020fcdc8
	.byte 0x36, 0x00
data_ov03_020fcdca: ; 0x020fcdca
	.byte 0x00, 0x00
data_ov03_020fcdcc: ; 0x020fcdcc
	.byte 0x00, 0x00
data_ov03_020fcdce: ; 0x020fcdce
	.byte 0x00, 0x00
data_ov03_020fcdd0: ; 0x020fcdd0
	.byte 0x48, 0x03
data_ov03_020fcdd2: ; 0x020fcdd2
	.byte 0x00, 0x00
data_ov03_020fcdd4: ; 0x020fcdd4
	.byte 0x0b, 0x00
data_ov03_020fcdd6: ; 0x020fcdd6
	.byte 0x02, 0x00
data_ov03_020fcdd8: ; 0x020fcdd8
	.byte 0x01, 0x00
data_ov03_020fcdda: ; 0x020fcdda
	.byte 0x00, 0x00
data_ov03_020fcddc: ; 0x020fcddc
	.byte 0x08, 0x00
data_ov03_020fcdde: ; 0x020fcdde
	.byte 0x00, 0x00
data_ov03_020fcde0: ; 0x020fcde0
	.byte 0x37, 0x00
data_ov03_020fcde2: ; 0x020fcde2
	.byte 0x00, 0x00
data_ov03_020fcde4: ; 0x020fcde4
	.byte 0x00, 0x00
data_ov03_020fcde6: ; 0x020fcde6
	.byte 0x00, 0x00
data_ov03_020fcde8: ; 0x020fcde8
	.byte 0x53, 0x03
data_ov03_020fcdea: ; 0x020fcdea
	.byte 0x00, 0x00
data_ov03_020fcdec: ; 0x020fcdec
	.byte 0x0c, 0x00
data_ov03_020fcdee: ; 0x020fcdee
	.byte 0x03, 0x00
data_ov03_020fcdf0: ; 0x020fcdf0
	.byte 0x01, 0x00
data_ov03_020fcdf2: ; 0x020fcdf2
	.byte 0x00, 0x00
data_ov03_020fcdf4: ; 0x020fcdf4
	.byte 0x08, 0x00
data_ov03_020fcdf6: ; 0x020fcdf6
	.byte 0x00, 0x00
data_ov03_020fcdf8: ; 0x020fcdf8
	.byte 0x38, 0x00
data_ov03_020fcdfa: ; 0x020fcdfa
	.byte 0x00, 0x00
data_ov03_020fcdfc: ; 0x020fcdfc
	.byte 0x00, 0x00
data_ov03_020fcdfe: ; 0x020fcdfe
	.byte 0x00, 0x00
data_ov03_020fce00: ; 0x020fce00
	.byte 0x5f, 0x03
data_ov03_020fce02: ; 0x020fce02
	.byte 0x00, 0x00
data_ov03_020fce04: ; 0x020fce04
	.byte 0x08, 0x00
data_ov03_020fce06: ; 0x020fce06
	.byte 0x01, 0x00
data_ov03_020fce08: ; 0x020fce08
	.byte 0x01, 0x00
data_ov03_020fce0a: ; 0x020fce0a
	.byte 0x00, 0x00
data_ov03_020fce0c: ; 0x020fce0c
	.byte 0x08, 0x00
data_ov03_020fce0e: ; 0x020fce0e
	.byte 0x00, 0x00
data_ov03_020fce10: ; 0x020fce10
	.byte 0x39, 0x00
data_ov03_020fce12: ; 0x020fce12
	.byte 0x00, 0x00
data_ov03_020fce14: ; 0x020fce14
	.byte 0x00, 0x00
data_ov03_020fce16: ; 0x020fce16
	.byte 0x00, 0x00
data_ov03_020fce18: ; 0x020fce18
	.byte 0x67, 0x03
data_ov03_020fce1a: ; 0x020fce1a
	.byte 0x00, 0x00
data_ov03_020fce1c: ; 0x020fce1c
	.byte 0x0d, 0x00
data_ov03_020fce1e: ; 0x020fce1e
	.byte 0x04, 0x00
data_ov03_020fce20: ; 0x020fce20
	.byte 0x01, 0x00
data_ov03_020fce22: ; 0x020fce22
	.byte 0x00, 0x00
data_ov03_020fce24: ; 0x020fce24
	.byte 0x08, 0x00
data_ov03_020fce26: ; 0x020fce26
	.byte 0x00, 0x00
data_ov03_020fce28: ; 0x020fce28
	.byte 0x3a, 0x00
data_ov03_020fce2a: ; 0x020fce2a
	.byte 0x00, 0x00
data_ov03_020fce2c: ; 0x020fce2c
	.byte 0x00, 0x00
data_ov03_020fce2e: ; 0x020fce2e
	.byte 0x00, 0x00
data_ov03_020fce30: ; 0x020fce30
	.byte 0x74, 0x03
data_ov03_020fce32: ; 0x020fce32
	.byte 0x00, 0x00
data_ov03_020fce34: ; 0x020fce34
	.byte 0x0a, 0x00
data_ov03_020fce36: ; 0x020fce36
	.byte 0x02, 0x00
data_ov03_020fce38: ; 0x020fce38
	.byte 0x01, 0x00
data_ov03_020fce3a: ; 0x020fce3a
	.byte 0x00, 0x00
data_ov03_020fce3c: ; 0x020fce3c
	.byte 0x08, 0x00
data_ov03_020fce3e: ; 0x020fce3e
	.byte 0x00, 0x00
data_ov03_020fce40: ; 0x020fce40
	.byte 0x3b, 0x00
data_ov03_020fce42: ; 0x020fce42
	.byte 0x00, 0x00
data_ov03_020fce44: ; 0x020fce44
	.byte 0x00, 0x00
data_ov03_020fce46: ; 0x020fce46
	.byte 0x00, 0x00
data_ov03_020fce48: ; 0x020fce48
	.byte 0x7e, 0x03
data_ov03_020fce4a: ; 0x020fce4a
	.byte 0x00, 0x00
data_ov03_020fce4c: ; 0x020fce4c
	.byte 0x06, 0x00
data_ov03_020fce4e: ; 0x020fce4e
	.byte 0x01, 0x00
data_ov03_020fce50: ; 0x020fce50
	.byte 0x01, 0x00
data_ov03_020fce52: ; 0x020fce52
	.byte 0x00, 0x00
data_ov03_020fce54: ; 0x020fce54
	.byte 0x08, 0x00
data_ov03_020fce56: ; 0x020fce56
	.byte 0x00, 0x00
data_ov03_020fce58: ; 0x020fce58
	.byte 0x3c, 0x00
data_ov03_020fce5a: ; 0x020fce5a
	.byte 0x00, 0x00
data_ov03_020fce5c: ; 0x020fce5c
	.byte 0x00, 0x00
data_ov03_020fce5e: ; 0x020fce5e
	.byte 0x00, 0x00
data_ov03_020fce60: ; 0x020fce60
	.byte 0x84, 0x03
data_ov03_020fce62: ; 0x020fce62
	.byte 0x00, 0x00
data_ov03_020fce64: ; 0x020fce64
	.byte 0x05, 0x00
data_ov03_020fce66: ; 0x020fce66
	.byte 0x01, 0x00
data_ov03_020fce68: ; 0x020fce68
	.byte 0x01, 0x00
data_ov03_020fce6a: ; 0x020fce6a
	.byte 0x00, 0x00
data_ov03_020fce6c: ; 0x020fce6c
	.byte 0x08, 0x00
data_ov03_020fce6e: ; 0x020fce6e
	.byte 0x00, 0x00
data_ov03_020fce70: ; 0x020fce70
	.byte 0x3d, 0x00
data_ov03_020fce72: ; 0x020fce72
	.byte 0x00, 0x00
data_ov03_020fce74: ; 0x020fce74
	.byte 0x00, 0x00
data_ov03_020fce76: ; 0x020fce76
	.byte 0x00, 0x00
data_ov03_020fce78: ; 0x020fce78
	.byte 0x89, 0x03
data_ov03_020fce7a: ; 0x020fce7a
	.byte 0x00, 0x00
data_ov03_020fce7c: ; 0x020fce7c
	.byte 0x09, 0x00
data_ov03_020fce7e: ; 0x020fce7e
	.byte 0x02, 0x00
data_ov03_020fce80: ; 0x020fce80
	.byte 0x01, 0x00
data_ov03_020fce82: ; 0x020fce82
	.byte 0x00, 0x00
data_ov03_020fce84: ; 0x020fce84
	.byte 0x08, 0x00
data_ov03_020fce86: ; 0x020fce86
	.byte 0x00, 0x00
data_ov03_020fce88: ; 0x020fce88
	.byte 0x3e, 0x00
data_ov03_020fce8a: ; 0x020fce8a
	.byte 0x00, 0x00
data_ov03_020fce8c: ; 0x020fce8c
	.byte 0x00, 0x00
data_ov03_020fce8e: ; 0x020fce8e
	.byte 0x00, 0x00
data_ov03_020fce90: ; 0x020fce90
	.byte 0x92, 0x03
data_ov03_020fce92: ; 0x020fce92
	.byte 0x00, 0x00
data_ov03_020fce94: ; 0x020fce94
	.byte 0x0f, 0x00
data_ov03_020fce96: ; 0x020fce96
	.byte 0x04, 0x00
data_ov03_020fce98: ; 0x020fce98
	.byte 0x01, 0x00
data_ov03_020fce9a: ; 0x020fce9a
	.byte 0x00, 0x00
data_ov03_020fce9c: ; 0x020fce9c
	.byte 0x08, 0x00
data_ov03_020fce9e: ; 0x020fce9e
	.byte 0x00, 0x00
data_ov03_020fcea0: ; 0x020fcea0
	.byte 0x3f, 0x00
data_ov03_020fcea2: ; 0x020fcea2
	.byte 0x00, 0x00
data_ov03_020fcea4: ; 0x020fcea4
	.byte 0x00, 0x00
data_ov03_020fcea6: ; 0x020fcea6
	.byte 0x00, 0x00
data_ov03_020fcea8: ; 0x020fcea8
	.byte 0xa1, 0x03
data_ov03_020fceaa: ; 0x020fceaa
	.byte 0x00, 0x00
data_ov03_020fceac: ; 0x020fceac
	.byte 0x0a, 0x00
data_ov03_020fceae: ; 0x020fceae
	.byte 0x03, 0x00
data_ov03_020fceb0: ; 0x020fceb0
	.byte 0x01, 0x00
data_ov03_020fceb2: ; 0x020fceb2
	.byte 0x00, 0x00
data_ov03_020fceb4: ; 0x020fceb4
	.byte 0x08, 0x00
data_ov03_020fceb6: ; 0x020fceb6
	.byte 0x00, 0x00
data_ov03_020fceb8: ; 0x020fceb8
	.byte 0x40, 0x00
data_ov03_020fceba: ; 0x020fceba
	.byte 0x00, 0x00
data_ov03_020fcebc: ; 0x020fcebc
	.byte 0x00, 0x00
data_ov03_020fcebe: ; 0x020fcebe
	.byte 0x00, 0x00
data_ov03_020fcec0: ; 0x020fcec0
	.byte 0xab, 0x03
data_ov03_020fcec2: ; 0x020fcec2
	.byte 0x00, 0x00
data_ov03_020fcec4: ; 0x020fcec4
	.byte 0x0f, 0x00
data_ov03_020fcec6: ; 0x020fcec6
	.byte 0x02, 0x00
data_ov03_020fcec8: ; 0x020fcec8
	.byte 0x01, 0x00
data_ov03_020fceca: ; 0x020fceca
	.byte 0x00, 0x00
data_ov03_020fcecc: ; 0x020fcecc
	.byte 0x08, 0x00
data_ov03_020fcece: ; 0x020fcece
	.byte 0x00, 0x00
data_ov03_020fced0: ; 0x020fced0
	.byte 0x41, 0x00
data_ov03_020fced2: ; 0x020fced2
	.byte 0x00, 0x00
data_ov03_020fced4: ; 0x020fced4
	.byte 0x00, 0x00
data_ov03_020fced6: ; 0x020fced6
	.byte 0x00, 0x00
data_ov03_020fced8: ; 0x020fced8
	.byte 0xba, 0x03
data_ov03_020fceda: ; 0x020fceda
	.byte 0x00, 0x00
data_ov03_020fcedc: ; 0x020fcedc
	.byte 0x0d, 0x00
data_ov03_020fcede: ; 0x020fcede
	.byte 0x02, 0x00
data_ov03_020fcee0: ; 0x020fcee0
	.byte 0x01, 0x00
data_ov03_020fcee2: ; 0x020fcee2
	.byte 0x00, 0x00
data_ov03_020fcee4: ; 0x020fcee4
	.byte 0x08, 0x00
data_ov03_020fcee6: ; 0x020fcee6
	.byte 0x00, 0x00
data_ov03_020fcee8: ; 0x020fcee8
	.byte 0x42, 0x00
data_ov03_020fceea: ; 0x020fceea
	.byte 0x00, 0x00
data_ov03_020fceec: ; 0x020fceec
	.byte 0x00, 0x00
data_ov03_020fceee: ; 0x020fceee
	.byte 0x00, 0x00
data_ov03_020fcef0: ; 0x020fcef0
	.byte 0xc7, 0x03
data_ov03_020fcef2: ; 0x020fcef2
	.byte 0x00, 0x00
data_ov03_020fcef4: ; 0x020fcef4
	.byte 0x09, 0x00
data_ov03_020fcef6: ; 0x020fcef6
	.byte 0x01, 0x00
data_ov03_020fcef8: ; 0x020fcef8
	.byte 0x01, 0x00
data_ov03_020fcefa: ; 0x020fcefa
	.byte 0x00, 0x00
data_ov03_020fcefc: ; 0x020fcefc
	.byte 0x08, 0x00
data_ov03_020fcefe: ; 0x020fcefe
	.byte 0x00, 0x00
data_ov03_020fcf00: ; 0x020fcf00
	.byte 0x43, 0x00
data_ov03_020fcf02: ; 0x020fcf02
	.byte 0x00, 0x00
data_ov03_020fcf04: ; 0x020fcf04
	.byte 0x00, 0x00
data_ov03_020fcf06: ; 0x020fcf06
	.byte 0x00, 0x00
data_ov03_020fcf08: ; 0x020fcf08
	.byte 0xd0, 0x03
data_ov03_020fcf0a: ; 0x020fcf0a
	.byte 0x00, 0x00
data_ov03_020fcf0c: ; 0x020fcf0c
	.byte 0x0d, 0x00
data_ov03_020fcf0e: ; 0x020fcf0e
	.byte 0x03, 0x00
data_ov03_020fcf10: ; 0x020fcf10
	.byte 0x01, 0x00
data_ov03_020fcf12: ; 0x020fcf12
	.byte 0x00, 0x00
data_ov03_020fcf14: ; 0x020fcf14
	.byte 0x08, 0x00
data_ov03_020fcf16: ; 0x020fcf16
	.byte 0x00, 0x00
data_ov03_020fcf18: ; 0x020fcf18
	.byte 0x44, 0x00
data_ov03_020fcf1a: ; 0x020fcf1a
	.byte 0x00, 0x00
data_ov03_020fcf1c: ; 0x020fcf1c
	.byte 0x00, 0x00
data_ov03_020fcf1e: ; 0x020fcf1e
	.byte 0x00, 0x00
data_ov03_020fcf20: ; 0x020fcf20
	.byte 0xdd, 0x03
data_ov03_020fcf22: ; 0x020fcf22
	.byte 0x00, 0x00
data_ov03_020fcf24: ; 0x020fcf24
	.byte 0x08, 0x00
data_ov03_020fcf26: ; 0x020fcf26
	.byte 0x01, 0x00
data_ov03_020fcf28: ; 0x020fcf28
	.byte 0x01, 0x00
data_ov03_020fcf2a: ; 0x020fcf2a
	.byte 0x00, 0x00
data_ov03_020fcf2c: ; 0x020fcf2c
	.byte 0x08, 0x00
data_ov03_020fcf2e: ; 0x020fcf2e
	.byte 0x00, 0x00
data_ov03_020fcf30: ; 0x020fcf30
	.byte 0x45, 0x00
data_ov03_020fcf32: ; 0x020fcf32
	.byte 0x00, 0x00
data_ov03_020fcf34: ; 0x020fcf34
	.byte 0x00, 0x00
data_ov03_020fcf36: ; 0x020fcf36
	.byte 0x00, 0x00
data_ov03_020fcf38: ; 0x020fcf38
	.byte 0xe5, 0x03
data_ov03_020fcf3a: ; 0x020fcf3a
	.byte 0x00, 0x00
data_ov03_020fcf3c: ; 0x020fcf3c
	.byte 0x0d, 0x00
data_ov03_020fcf3e: ; 0x020fcf3e
	.byte 0x03, 0x00
data_ov03_020fcf40: ; 0x020fcf40
	.byte 0x01, 0x00
data_ov03_020fcf42: ; 0x020fcf42
	.byte 0x00, 0x00
data_ov03_020fcf44: ; 0x020fcf44
	.byte 0x08, 0x00
data_ov03_020fcf46: ; 0x020fcf46
	.byte 0x00, 0x00
data_ov03_020fcf48: ; 0x020fcf48
	.byte 0x46, 0x00
data_ov03_020fcf4a: ; 0x020fcf4a
	.byte 0x00, 0x00
data_ov03_020fcf4c: ; 0x020fcf4c
	.byte 0x00, 0x00
data_ov03_020fcf4e: ; 0x020fcf4e
	.byte 0x00, 0x00
data_ov03_020fcf50: ; 0x020fcf50
	.byte 0xf2, 0x03
data_ov03_020fcf52: ; 0x020fcf52
	.byte 0x00, 0x00
data_ov03_020fcf54: ; 0x020fcf54
	.byte 0x04, 0x00
data_ov03_020fcf56: ; 0x020fcf56
	.byte 0x01, 0x00
data_ov03_020fcf58: ; 0x020fcf58
	.byte 0x01, 0x00
data_ov03_020fcf5a: ; 0x020fcf5a
	.byte 0x00, 0x00
data_ov03_020fcf5c: ; 0x020fcf5c
	.byte 0x08, 0x00
data_ov03_020fcf5e: ; 0x020fcf5e
	.byte 0x00, 0x00
data_ov03_020fcf60: ; 0x020fcf60
	.byte 0x47, 0x00
data_ov03_020fcf62: ; 0x020fcf62
	.byte 0x00, 0x00
data_ov03_020fcf64: ; 0x020fcf64
	.byte 0x00, 0x00
data_ov03_020fcf66: ; 0x020fcf66
	.byte 0x00, 0x00
data_ov03_020fcf68: ; 0x020fcf68
	.byte 0xf6, 0x03
data_ov03_020fcf6a: ; 0x020fcf6a
	.byte 0x00, 0x00
data_ov03_020fcf6c: ; 0x020fcf6c
	.byte 0x11, 0x00
data_ov03_020fcf6e: ; 0x020fcf6e
	.byte 0x04, 0x00
data_ov03_020fcf70: ; 0x020fcf70
	.byte 0x01, 0x00
data_ov03_020fcf72: ; 0x020fcf72
	.byte 0x00, 0x00
data_ov03_020fcf74: ; 0x020fcf74
	.byte 0x08, 0x00
data_ov03_020fcf76: ; 0x020fcf76
	.byte 0x00, 0x00
data_ov03_020fcf78: ; 0x020fcf78
	.byte 0x48, 0x00
data_ov03_020fcf7a: ; 0x020fcf7a
	.byte 0x00, 0x00
data_ov03_020fcf7c: ; 0x020fcf7c
	.byte 0x00, 0x00
data_ov03_020fcf7e: ; 0x020fcf7e
	.byte 0x00, 0x00
data_ov03_020fcf80: ; 0x020fcf80
	.byte 0x07, 0x04
data_ov03_020fcf82: ; 0x020fcf82
	.byte 0x00, 0x00
data_ov03_020fcf84: ; 0x020fcf84
	.byte 0x0d, 0x00
data_ov03_020fcf86: ; 0x020fcf86
	.byte 0x03, 0x00
data_ov03_020fcf88: ; 0x020fcf88
	.byte 0x01, 0x00
data_ov03_020fcf8a: ; 0x020fcf8a
	.byte 0x00, 0x00
data_ov03_020fcf8c: ; 0x020fcf8c
	.byte 0x08, 0x00
data_ov03_020fcf8e: ; 0x020fcf8e
	.byte 0x00, 0x00
data_ov03_020fcf90: ; 0x020fcf90
	.byte 0x49, 0x00
data_ov03_020fcf92: ; 0x020fcf92
	.byte 0x00, 0x00
data_ov03_020fcf94: ; 0x020fcf94
	.byte 0x00, 0x00
data_ov03_020fcf96: ; 0x020fcf96
	.byte 0x00, 0x00
data_ov03_020fcf98: ; 0x020fcf98
	.byte 0x14, 0x04
data_ov03_020fcf9a: ; 0x020fcf9a
	.byte 0x00, 0x00
data_ov03_020fcf9c: ; 0x020fcf9c
	.byte 0x0c, 0x00
data_ov03_020fcf9e: ; 0x020fcf9e
	.byte 0x02, 0x00
data_ov03_020fcfa0: ; 0x020fcfa0
	.byte 0x01, 0x00
data_ov03_020fcfa2: ; 0x020fcfa2
	.byte 0x00, 0x00
data_ov03_020fcfa4: ; 0x020fcfa4
	.byte 0x08, 0x00
data_ov03_020fcfa6: ; 0x020fcfa6
	.byte 0x00, 0x00
data_ov03_020fcfa8: ; 0x020fcfa8
	.byte 0x4a, 0x00
data_ov03_020fcfaa: ; 0x020fcfaa
	.byte 0x00, 0x00
data_ov03_020fcfac: ; 0x020fcfac
	.byte 0x00, 0x00
data_ov03_020fcfae: ; 0x020fcfae
	.byte 0x00, 0x00
data_ov03_020fcfb0: ; 0x020fcfb0
	.byte 0x20, 0x04
data_ov03_020fcfb2: ; 0x020fcfb2
	.byte 0x00, 0x00
data_ov03_020fcfb4: ; 0x020fcfb4
	.byte 0x0f, 0x00
data_ov03_020fcfb6: ; 0x020fcfb6
	.byte 0x03, 0x00
data_ov03_020fcfb8: ; 0x020fcfb8
	.byte 0x01, 0x00
data_ov03_020fcfba: ; 0x020fcfba
	.byte 0x00, 0x00
data_ov03_020fcfbc: ; 0x020fcfbc
	.byte 0x08, 0x00
data_ov03_020fcfbe: ; 0x020fcfbe
	.byte 0x00, 0x00
data_ov03_020fcfc0: ; 0x020fcfc0
	.byte 0x4b, 0x00
data_ov03_020fcfc2: ; 0x020fcfc2
	.byte 0x00, 0x00
data_ov03_020fcfc4: ; 0x020fcfc4
	.byte 0x00, 0x00
data_ov03_020fcfc6: ; 0x020fcfc6
	.byte 0x00, 0x00
data_ov03_020fcfc8: ; 0x020fcfc8
	.byte 0x2f, 0x04
data_ov03_020fcfca: ; 0x020fcfca
	.byte 0x00, 0x00
data_ov03_020fcfcc: ; 0x020fcfcc
	.byte 0x0c, 0x00
data_ov03_020fcfce: ; 0x020fcfce
	.byte 0x02, 0x00
data_ov03_020fcfd0: ; 0x020fcfd0
	.byte 0x01, 0x00
data_ov03_020fcfd2: ; 0x020fcfd2
	.byte 0x00, 0x00
data_ov03_020fcfd4: ; 0x020fcfd4
	.byte 0x08, 0x00
data_ov03_020fcfd6: ; 0x020fcfd6
	.byte 0x00, 0x00
data_ov03_020fcfd8: ; 0x020fcfd8
	.byte 0x4c, 0x00
data_ov03_020fcfda: ; 0x020fcfda
	.byte 0x00, 0x00
data_ov03_020fcfdc: ; 0x020fcfdc
	.byte 0x00, 0x00
data_ov03_020fcfde: ; 0x020fcfde
	.byte 0x00, 0x00
data_ov03_020fcfe0: ; 0x020fcfe0
	.byte 0x3b, 0x04
data_ov03_020fcfe2: ; 0x020fcfe2
	.byte 0x00, 0x00
data_ov03_020fcfe4: ; 0x020fcfe4
	.byte 0x0b, 0x00
data_ov03_020fcfe6: ; 0x020fcfe6
	.byte 0x03, 0x00
data_ov03_020fcfe8: ; 0x020fcfe8
	.byte 0x01, 0x00
data_ov03_020fcfea: ; 0x020fcfea
	.byte 0x00, 0x00
data_ov03_020fcfec: ; 0x020fcfec
	.byte 0x08, 0x00
data_ov03_020fcfee: ; 0x020fcfee
	.byte 0x00, 0x00
data_ov03_020fcff0: ; 0x020fcff0
	.byte 0x4d, 0x00
data_ov03_020fcff2: ; 0x020fcff2
	.byte 0x00, 0x00
data_ov03_020fcff4: ; 0x020fcff4
	.byte 0x00, 0x00
data_ov03_020fcff6: ; 0x020fcff6
	.byte 0x00, 0x00
data_ov03_020fcff8: ; 0x020fcff8
	.byte 0x46, 0x04
data_ov03_020fcffa: ; 0x020fcffa
	.byte 0x00, 0x00
data_ov03_020fcffc: ; 0x020fcffc
	.byte 0x0c, 0x00
data_ov03_020fcffe: ; 0x020fcffe
	.byte 0x03, 0x00
data_ov03_020fd000: ; 0x020fd000
	.byte 0x01, 0x00
data_ov03_020fd002: ; 0x020fd002
	.byte 0x00, 0x00
data_ov03_020fd004: ; 0x020fd004
	.byte 0x08, 0x00
data_ov03_020fd006: ; 0x020fd006
	.byte 0x00, 0x00
data_ov03_020fd008: ; 0x020fd008
	.byte 0x4e, 0x00
data_ov03_020fd00a: ; 0x020fd00a
	.byte 0x00, 0x00
data_ov03_020fd00c: ; 0x020fd00c
	.byte 0x00, 0x00
data_ov03_020fd00e: ; 0x020fd00e
	.byte 0x00, 0x00
data_ov03_020fd010: ; 0x020fd010
	.byte 0x52, 0x04
data_ov03_020fd012: ; 0x020fd012
	.byte 0x00, 0x00
data_ov03_020fd014: ; 0x020fd014
	.byte 0x0d, 0x00
data_ov03_020fd016: ; 0x020fd016
	.byte 0x01, 0x00
data_ov03_020fd018: ; 0x020fd018
	.byte 0x01, 0x00
data_ov03_020fd01a: ; 0x020fd01a
	.byte 0x00, 0x00
data_ov03_020fd01c: ; 0x020fd01c
	.byte 0x08, 0x00
data_ov03_020fd01e: ; 0x020fd01e
	.byte 0x00, 0x00
data_ov03_020fd020: ; 0x020fd020
	.byte 0x4f, 0x00
data_ov03_020fd022: ; 0x020fd022
	.byte 0x00, 0x00
data_ov03_020fd024: ; 0x020fd024
	.byte 0x00, 0x00
data_ov03_020fd026: ; 0x020fd026
	.byte 0x00, 0x00
data_ov03_020fd028: ; 0x020fd028
	.byte 0x5f, 0x04
data_ov03_020fd02a: ; 0x020fd02a
	.byte 0x00, 0x00
data_ov03_020fd02c: ; 0x020fd02c
	.byte 0x0d, 0x00
data_ov03_020fd02e: ; 0x020fd02e
	.byte 0x02, 0x00
data_ov03_020fd030: ; 0x020fd030
	.byte 0x01, 0x00
data_ov03_020fd032: ; 0x020fd032
	.byte 0x00, 0x00
data_ov03_020fd034: ; 0x020fd034
	.byte 0x08, 0x00
data_ov03_020fd036: ; 0x020fd036
	.byte 0x00, 0x00
data_ov03_020fd038: ; 0x020fd038
	.byte 0x50, 0x00
data_ov03_020fd03a: ; 0x020fd03a
	.byte 0x00, 0x00
data_ov03_020fd03c: ; 0x020fd03c
	.byte 0x00, 0x00
data_ov03_020fd03e: ; 0x020fd03e
	.byte 0x00, 0x00
data_ov03_020fd040: ; 0x020fd040
	.byte 0x6c, 0x04
data_ov03_020fd042: ; 0x020fd042
	.byte 0x00, 0x00
data_ov03_020fd044: ; 0x020fd044
	.byte 0x0f, 0x00
data_ov03_020fd046: ; 0x020fd046
	.byte 0x01, 0x00
data_ov03_020fd048: ; 0x020fd048
	.byte 0x01, 0x00
data_ov03_020fd04a: ; 0x020fd04a
	.byte 0x00, 0x00
data_ov03_020fd04c: ; 0x020fd04c
	.byte 0x08, 0x00
data_ov03_020fd04e: ; 0x020fd04e
	.byte 0x00, 0x00
data_ov03_020fd050: ; 0x020fd050
	.byte 0x51, 0x00
data_ov03_020fd052: ; 0x020fd052
	.byte 0x00, 0x00
data_ov03_020fd054: ; 0x020fd054
	.byte 0x00, 0x00
data_ov03_020fd056: ; 0x020fd056
	.byte 0x00, 0x00
data_ov03_020fd058: ; 0x020fd058
	.byte 0x7b, 0x04
data_ov03_020fd05a: ; 0x020fd05a
	.byte 0x00, 0x00
data_ov03_020fd05c: ; 0x020fd05c
	.byte 0x0b, 0x00
data_ov03_020fd05e: ; 0x020fd05e
	.byte 0x02, 0x00
data_ov03_020fd060: ; 0x020fd060
	.byte 0x01, 0x00
data_ov03_020fd062: ; 0x020fd062
	.byte 0x00, 0x00
data_ov03_020fd064: ; 0x020fd064
	.byte 0x08, 0x00
data_ov03_020fd066: ; 0x020fd066
	.byte 0x00, 0x00
data_ov03_020fd068: ; 0x020fd068
	.byte 0x52, 0x00
data_ov03_020fd06a: ; 0x020fd06a
	.byte 0x00, 0x00
data_ov03_020fd06c: ; 0x020fd06c
	.byte 0x00, 0x00
data_ov03_020fd06e: ; 0x020fd06e
	.byte 0x00, 0x00
data_ov03_020fd070: ; 0x020fd070
	.byte 0x86, 0x04
data_ov03_020fd072: ; 0x020fd072
	.byte 0x00, 0x00
data_ov03_020fd074: ; 0x020fd074
	.byte 0x0a, 0x00
data_ov03_020fd076: ; 0x020fd076
	.byte 0x02, 0x00
data_ov03_020fd078: ; 0x020fd078
	.byte 0x01, 0x00
data_ov03_020fd07a: ; 0x020fd07a
	.byte 0x00, 0x00
data_ov03_020fd07c: ; 0x020fd07c
	.byte 0x08, 0x00
data_ov03_020fd07e: ; 0x020fd07e
	.byte 0x00, 0x00
data_ov03_020fd080: ; 0x020fd080
	.byte 0x53, 0x00
data_ov03_020fd082: ; 0x020fd082
	.byte 0x00, 0x00
data_ov03_020fd084: ; 0x020fd084
	.byte 0x00, 0x00
data_ov03_020fd086: ; 0x020fd086
	.byte 0x00, 0x00
data_ov03_020fd088: ; 0x020fd088
	.byte 0x90, 0x04
data_ov03_020fd08a: ; 0x020fd08a
	.byte 0x00, 0x00
data_ov03_020fd08c: ; 0x020fd08c
	.byte 0x07, 0x00
data_ov03_020fd08e: ; 0x020fd08e
	.byte 0x02, 0x00
data_ov03_020fd090: ; 0x020fd090
	.byte 0x01, 0x00
data_ov03_020fd092: ; 0x020fd092
	.byte 0x00, 0x00
data_ov03_020fd094: ; 0x020fd094
	.byte 0x08, 0x00
data_ov03_020fd096: ; 0x020fd096
	.byte 0x00, 0x00
data_ov03_020fd098: ; 0x020fd098
	.byte 0x54, 0x00
data_ov03_020fd09a: ; 0x020fd09a
	.byte 0x00, 0x00
data_ov03_020fd09c: ; 0x020fd09c
	.byte 0x00, 0x00
data_ov03_020fd09e: ; 0x020fd09e
	.byte 0x00, 0x00
data_ov03_020fd0a0: ; 0x020fd0a0
	.byte 0x97, 0x04
data_ov03_020fd0a2: ; 0x020fd0a2
	.byte 0x00, 0x00
data_ov03_020fd0a4: ; 0x020fd0a4
	.byte 0x0b, 0x00
data_ov03_020fd0a6: ; 0x020fd0a6
	.byte 0x01, 0x00
data_ov03_020fd0a8: ; 0x020fd0a8
	.byte 0x01, 0x00
data_ov03_020fd0aa: ; 0x020fd0aa
	.byte 0x00, 0x00
data_ov03_020fd0ac: ; 0x020fd0ac
	.byte 0x08, 0x00
data_ov03_020fd0ae: ; 0x020fd0ae
	.byte 0x00, 0x00
data_ov03_020fd0b0: ; 0x020fd0b0
	.byte 0x55, 0x00
data_ov03_020fd0b2: ; 0x020fd0b2
	.byte 0x00, 0x00
data_ov03_020fd0b4: ; 0x020fd0b4
	.byte 0x00, 0x00
data_ov03_020fd0b6: ; 0x020fd0b6
	.byte 0x00, 0x00
data_ov03_020fd0b8: ; 0x020fd0b8
	.byte 0xa2, 0x04
data_ov03_020fd0ba: ; 0x020fd0ba
	.byte 0x00, 0x00
data_ov03_020fd0bc: ; 0x020fd0bc
	.byte 0x0b, 0x00
data_ov03_020fd0be: ; 0x020fd0be
	.byte 0x02, 0x00
data_ov03_020fd0c0: ; 0x020fd0c0
	.byte 0x01, 0x00
data_ov03_020fd0c2: ; 0x020fd0c2
	.byte 0x00, 0x00
data_ov03_020fd0c4: ; 0x020fd0c4
	.byte 0x08, 0x00
data_ov03_020fd0c6: ; 0x020fd0c6
	.byte 0x00, 0x00
data_ov03_020fd0c8: ; 0x020fd0c8
	.byte 0x56, 0x00
data_ov03_020fd0ca: ; 0x020fd0ca
	.byte 0x00, 0x00
data_ov03_020fd0cc: ; 0x020fd0cc
	.byte 0x00, 0x00
data_ov03_020fd0ce: ; 0x020fd0ce
	.byte 0x00, 0x00
data_ov03_020fd0d0: ; 0x020fd0d0
	.byte 0xad, 0x04
data_ov03_020fd0d2: ; 0x020fd0d2
	.byte 0x00, 0x00
data_ov03_020fd0d4: ; 0x020fd0d4
	.byte 0x08, 0x00
data_ov03_020fd0d6: ; 0x020fd0d6
	.byte 0x01, 0x00
data_ov03_020fd0d8: ; 0x020fd0d8
	.byte 0x01, 0x00
data_ov03_020fd0da: ; 0x020fd0da
	.byte 0x00, 0x00
data_ov03_020fd0dc: ; 0x020fd0dc
	.byte 0x08, 0x00
data_ov03_020fd0de: ; 0x020fd0de
	.byte 0x00, 0x00
data_ov03_020fd0e0: ; 0x020fd0e0
	.byte 0x57, 0x00
data_ov03_020fd0e2: ; 0x020fd0e2
	.byte 0x00, 0x00
data_ov03_020fd0e4: ; 0x020fd0e4
	.byte 0x00, 0x00
data_ov03_020fd0e6: ; 0x020fd0e6
	.byte 0x00, 0x00
data_ov03_020fd0e8: ; 0x020fd0e8
	.byte 0xb5, 0x04
data_ov03_020fd0ea: ; 0x020fd0ea
	.byte 0x00, 0x00
data_ov03_020fd0ec: ; 0x020fd0ec
	.byte 0x0d, 0x00
data_ov03_020fd0ee: ; 0x020fd0ee
	.byte 0x02, 0x00
data_ov03_020fd0f0: ; 0x020fd0f0
	.byte 0x01, 0x00
data_ov03_020fd0f2: ; 0x020fd0f2
	.byte 0x00, 0x00
data_ov03_020fd0f4: ; 0x020fd0f4
	.byte 0x08, 0x00
data_ov03_020fd0f6: ; 0x020fd0f6
	.byte 0x00, 0x00
data_ov03_020fd0f8: ; 0x020fd0f8
	.byte 0x58, 0x00
data_ov03_020fd0fa: ; 0x020fd0fa
	.byte 0x00, 0x00
data_ov03_020fd0fc: ; 0x020fd0fc
	.byte 0x00, 0x00
data_ov03_020fd0fe: ; 0x020fd0fe
	.byte 0x00, 0x00
data_ov03_020fd100: ; 0x020fd100
	.byte 0xc2, 0x04
data_ov03_020fd102: ; 0x020fd102
	.byte 0x00, 0x00
data_ov03_020fd104: ; 0x020fd104
	.byte 0x0d, 0x00
data_ov03_020fd106: ; 0x020fd106
	.byte 0x03, 0x00
data_ov03_020fd108: ; 0x020fd108
	.byte 0x01, 0x00
data_ov03_020fd10a: ; 0x020fd10a
	.byte 0x00, 0x00
data_ov03_020fd10c: ; 0x020fd10c
	.byte 0x08, 0x00
data_ov03_020fd10e: ; 0x020fd10e
	.byte 0x00, 0x00
data_ov03_020fd110: ; 0x020fd110
	.byte 0x59, 0x00
data_ov03_020fd112: ; 0x020fd112
	.byte 0x00, 0x00
data_ov03_020fd114: ; 0x020fd114
	.byte 0x00, 0x00
data_ov03_020fd116: ; 0x020fd116
	.byte 0x00, 0x00
data_ov03_020fd118: ; 0x020fd118
	.byte 0xcf, 0x04
data_ov03_020fd11a: ; 0x020fd11a
	.byte 0x00, 0x00
data_ov03_020fd11c: ; 0x020fd11c
	.byte 0x06, 0x00
data_ov03_020fd11e: ; 0x020fd11e
	.byte 0x01, 0x00
data_ov03_020fd120: ; 0x020fd120
	.byte 0x01, 0x00
data_ov03_020fd122: ; 0x020fd122
	.byte 0x00, 0x00
data_ov03_020fd124: ; 0x020fd124
	.byte 0x10, 0x00
data_ov03_020fd126: ; 0x020fd126
	.byte 0x00, 0x00
data_ov03_020fd128: ; 0x020fd128
	.byte 0x5a, 0x00
data_ov03_020fd12a: ; 0x020fd12a
	.byte 0x00, 0x00
data_ov03_020fd12c: ; 0x020fd12c
	.byte 0x00, 0x00
data_ov03_020fd12e: ; 0x020fd12e
	.byte 0x00, 0x00
data_ov03_020fd130: ; 0x020fd130
	.byte 0xd5, 0x04
data_ov03_020fd132: ; 0x020fd132
	.byte 0x00, 0x00
data_ov03_020fd134: ; 0x020fd134
	.byte 0x07, 0x00
data_ov03_020fd136: ; 0x020fd136
	.byte 0x01, 0x00
data_ov03_020fd138: ; 0x020fd138
	.byte 0x01, 0x00
data_ov03_020fd13a: ; 0x020fd13a
	.byte 0x00, 0x00
data_ov03_020fd13c: ; 0x020fd13c
	.byte 0x10, 0x00
data_ov03_020fd13e: ; 0x020fd13e
	.byte 0x00, 0x00
data_ov03_020fd140: ; 0x020fd140
	.byte 0x5b, 0x00
data_ov03_020fd142: ; 0x020fd142
	.byte 0x00, 0x00
data_ov03_020fd144: ; 0x020fd144
	.byte 0x00, 0x00
data_ov03_020fd146: ; 0x020fd146
	.byte 0x00, 0x00
data_ov03_020fd148: ; 0x020fd148
	.byte 0xdc, 0x04
data_ov03_020fd14a: ; 0x020fd14a
	.byte 0x00, 0x00
data_ov03_020fd14c: ; 0x020fd14c
	.byte 0x0a, 0x00
data_ov03_020fd14e: ; 0x020fd14e
	.byte 0x01, 0x00
data_ov03_020fd150: ; 0x020fd150
	.byte 0x01, 0x00
data_ov03_020fd152: ; 0x020fd152
	.byte 0x00, 0x00
data_ov03_020fd154: ; 0x020fd154
	.byte 0x08, 0x00
data_ov03_020fd156: ; 0x020fd156
	.byte 0x00, 0x00
data_ov03_020fd158: ; 0x020fd158
	.byte 0x5c, 0x00
data_ov03_020fd15a: ; 0x020fd15a
	.byte 0x00, 0x00
data_ov03_020fd15c: ; 0x020fd15c
	.byte 0x00, 0x00
data_ov03_020fd15e: ; 0x020fd15e
	.byte 0x00, 0x00
data_ov03_020fd160: ; 0x020fd160
	.byte 0xe6, 0x04
data_ov03_020fd162: ; 0x020fd162
	.byte 0x00, 0x00
data_ov03_020fd164: ; 0x020fd164
	.byte 0x11, 0x00
data_ov03_020fd166: ; 0x020fd166
	.byte 0x05, 0x00
data_ov03_020fd168: ; 0x020fd168
	.byte 0x01, 0x00
data_ov03_020fd16a: ; 0x020fd16a
	.byte 0x00, 0x00
data_ov03_020fd16c: ; 0x020fd16c
	.byte 0x08, 0x00
data_ov03_020fd16e: ; 0x020fd16e
	.byte 0x00, 0x00
data_ov03_020fd170: ; 0x020fd170
	.byte 0x5d, 0x00
data_ov03_020fd172: ; 0x020fd172
	.byte 0x00, 0x00
data_ov03_020fd174: ; 0x020fd174
	.byte 0x00, 0x00
data_ov03_020fd176: ; 0x020fd176
	.byte 0x00, 0x00
data_ov03_020fd178: ; 0x020fd178
	.byte 0xf7, 0x04
data_ov03_020fd17a: ; 0x020fd17a
	.byte 0x00, 0x00
data_ov03_020fd17c: ; 0x020fd17c
	.byte 0x13, 0x00
data_ov03_020fd17e: ; 0x020fd17e
	.byte 0x06, 0x00
data_ov03_020fd180: ; 0x020fd180
	.byte 0x01, 0x00
data_ov03_020fd182: ; 0x020fd182
	.byte 0x00, 0x00
data_ov03_020fd184: ; 0x020fd184
	.byte 0x08, 0x00
data_ov03_020fd186: ; 0x020fd186
	.byte 0x00, 0x00
data_ov03_020fd188: ; 0x020fd188
	.byte 0x5e, 0x00
data_ov03_020fd18a: ; 0x020fd18a
	.byte 0x00, 0x00
data_ov03_020fd18c: ; 0x020fd18c
	.byte 0x00, 0x00
data_ov03_020fd18e: ; 0x020fd18e
	.byte 0x00, 0x00
data_ov03_020fd190: ; 0x020fd190
	.byte 0x0a, 0x05
data_ov03_020fd192: ; 0x020fd192
	.byte 0x00, 0x00
data_ov03_020fd194: ; 0x020fd194
	.byte 0x0a, 0x00
data_ov03_020fd196: ; 0x020fd196
	.byte 0x03, 0x00
data_ov03_020fd198: ; 0x020fd198
	.byte 0x01, 0x00
data_ov03_020fd19a: ; 0x020fd19a
	.byte 0x00, 0x00
data_ov03_020fd19c: ; 0x020fd19c
	.byte 0x08, 0x00
data_ov03_020fd19e: ; 0x020fd19e
	.byte 0x00, 0x00
data_ov03_020fd1a0: ; 0x020fd1a0
	.byte 0x5f, 0x00
data_ov03_020fd1a2: ; 0x020fd1a2
	.byte 0x00, 0x00
data_ov03_020fd1a4: ; 0x020fd1a4
	.byte 0x00, 0x00
data_ov03_020fd1a6: ; 0x020fd1a6
	.byte 0x00, 0x00
data_ov03_020fd1a8: ; 0x020fd1a8
	.byte 0x14, 0x05
data_ov03_020fd1aa: ; 0x020fd1aa
	.byte 0x00, 0x00
data_ov03_020fd1ac: ; 0x020fd1ac
	.byte 0x10, 0x00
data_ov03_020fd1ae: ; 0x020fd1ae
	.byte 0x05, 0x00
data_ov03_020fd1b0: ; 0x020fd1b0
	.byte 0x01, 0x00
data_ov03_020fd1b2: ; 0x020fd1b2
	.byte 0x00, 0x00
data_ov03_020fd1b4: ; 0x020fd1b4
	.byte 0x08, 0x00
data_ov03_020fd1b6: ; 0x020fd1b6
	.byte 0x00, 0x00
data_ov03_020fd1b8: ; 0x020fd1b8
	.byte 0x60, 0x00
data_ov03_020fd1ba: ; 0x020fd1ba
	.byte 0x00, 0x00
data_ov03_020fd1bc: ; 0x020fd1bc
	.byte 0x00, 0x00
data_ov03_020fd1be: ; 0x020fd1be
	.byte 0x00, 0x00
data_ov03_020fd1c0: ; 0x020fd1c0
	.byte 0x24, 0x05
data_ov03_020fd1c2: ; 0x020fd1c2
	.byte 0x00, 0x00
data_ov03_020fd1c4: ; 0x020fd1c4
	.byte 0x0e, 0x00
data_ov03_020fd1c6: ; 0x020fd1c6
	.byte 0x04, 0x00
data_ov03_020fd1c8: ; 0x020fd1c8
	.byte 0x01, 0x00
data_ov03_020fd1ca: ; 0x020fd1ca
	.byte 0x00, 0x00
data_ov03_020fd1cc: ; 0x020fd1cc
	.byte 0x08, 0x00
data_ov03_020fd1ce: ; 0x020fd1ce
	.byte 0x00, 0x00
data_ov03_020fd1d0: ; 0x020fd1d0
	.byte 0x61, 0x00
data_ov03_020fd1d2: ; 0x020fd1d2
	.byte 0x00, 0x00
data_ov03_020fd1d4: ; 0x020fd1d4
	.byte 0x00, 0x00
data_ov03_020fd1d6: ; 0x020fd1d6
	.byte 0x00, 0x00
data_ov03_020fd1d8: ; 0x020fd1d8
	.byte 0x32, 0x05
data_ov03_020fd1da: ; 0x020fd1da
	.byte 0x00, 0x00
data_ov03_020fd1dc: ; 0x020fd1dc
	.byte 0x10, 0x00
data_ov03_020fd1de: ; 0x020fd1de
	.byte 0x05, 0x00
data_ov03_020fd1e0: ; 0x020fd1e0
	.byte 0x01, 0x00
data_ov03_020fd1e2: ; 0x020fd1e2
	.byte 0x00, 0x00
data_ov03_020fd1e4: ; 0x020fd1e4
	.byte 0x08, 0x00
data_ov03_020fd1e6: ; 0x020fd1e6
	.byte 0x00, 0x00
data_ov03_020fd1e8: ; 0x020fd1e8
	.byte 0x62, 0x00
data_ov03_020fd1ea: ; 0x020fd1ea
	.byte 0x00, 0x00
data_ov03_020fd1ec: ; 0x020fd1ec
	.byte 0x00, 0x00
data_ov03_020fd1ee: ; 0x020fd1ee
	.byte 0x00, 0x00
data_ov03_020fd1f0: ; 0x020fd1f0
	.byte 0x42, 0x05
data_ov03_020fd1f2: ; 0x020fd1f2
	.byte 0x00, 0x00
data_ov03_020fd1f4: ; 0x020fd1f4
	.byte 0x0c, 0x00
data_ov03_020fd1f6: ; 0x020fd1f6
	.byte 0x03, 0x00
data_ov03_020fd1f8: ; 0x020fd1f8
	.byte 0x01, 0x00
data_ov03_020fd1fa: ; 0x020fd1fa
	.byte 0x00, 0x00
data_ov03_020fd1fc: ; 0x020fd1fc
	.byte 0x08, 0x00
data_ov03_020fd1fe: ; 0x020fd1fe
	.byte 0x00, 0x00
data_ov03_020fd200: ; 0x020fd200
	.byte 0x63, 0x00
data_ov03_020fd202: ; 0x020fd202
	.byte 0x00, 0x00
data_ov03_020fd204: ; 0x020fd204
	.byte 0x00, 0x00
data_ov03_020fd206: ; 0x020fd206
	.byte 0x00, 0x00
data_ov03_020fd208: ; 0x020fd208
	.byte 0x4e, 0x05
data_ov03_020fd20a: ; 0x020fd20a
	.byte 0x00, 0x00
data_ov03_020fd20c: ; 0x020fd20c
	.byte 0x11, 0x00
data_ov03_020fd20e: ; 0x020fd20e
	.byte 0x04, 0x00
data_ov03_020fd210: ; 0x020fd210
	.byte 0x01, 0x00
data_ov03_020fd212: ; 0x020fd212
	.byte 0x00, 0x00
data_ov03_020fd214: ; 0x020fd214
	.byte 0x08, 0x00
data_ov03_020fd216: ; 0x020fd216
	.byte 0x00, 0x00
data_ov03_020fd218: ; 0x020fd218
	.byte 0x64, 0x00
data_ov03_020fd21a: ; 0x020fd21a
	.byte 0x00, 0x00
data_ov03_020fd21c: ; 0x020fd21c
	.byte 0x00, 0x00
data_ov03_020fd21e: ; 0x020fd21e
	.byte 0x00, 0x00
data_ov03_020fd220: ; 0x020fd220
	.byte 0x5f, 0x05
data_ov03_020fd222: ; 0x020fd222
	.byte 0x00, 0x00
data_ov03_020fd224: ; 0x020fd224
	.byte 0x11, 0x00
data_ov03_020fd226: ; 0x020fd226
	.byte 0x05, 0x00
data_ov03_020fd228: ; 0x020fd228
	.byte 0x01, 0x00
data_ov03_020fd22a: ; 0x020fd22a
	.byte 0x00, 0x00
data_ov03_020fd22c: ; 0x020fd22c
	.byte 0x08, 0x00
data_ov03_020fd22e: ; 0x020fd22e
	.byte 0x00, 0x00
data_ov03_020fd230: ; 0x020fd230
	.byte 0x65, 0x00
data_ov03_020fd232: ; 0x020fd232
	.byte 0x00, 0x00
data_ov03_020fd234: ; 0x020fd234
	.byte 0x00, 0x00
data_ov03_020fd236: ; 0x020fd236
	.byte 0x00, 0x00
data_ov03_020fd238: ; 0x020fd238
	.byte 0x70, 0x05
data_ov03_020fd23a: ; 0x020fd23a
	.byte 0x00, 0x00
data_ov03_020fd23c: ; 0x020fd23c
	.byte 0x0e, 0x00
data_ov03_020fd23e: ; 0x020fd23e
	.byte 0x03, 0x00
data_ov03_020fd240: ; 0x020fd240
	.byte 0x01, 0x00
data_ov03_020fd242: ; 0x020fd242
	.byte 0x00, 0x00
data_ov03_020fd244: ; 0x020fd244
	.byte 0x08, 0x00
data_ov03_020fd246: ; 0x020fd246
	.byte 0x00, 0x00
data_ov03_020fd248: ; 0x020fd248
	.byte 0x66, 0x00
data_ov03_020fd24a: ; 0x020fd24a
	.byte 0x00, 0x00
data_ov03_020fd24c: ; 0x020fd24c
	.byte 0x00, 0x00
data_ov03_020fd24e: ; 0x020fd24e
	.byte 0x00, 0x00
data_ov03_020fd250: ; 0x020fd250
	.byte 0x7e, 0x05
data_ov03_020fd252: ; 0x020fd252
	.byte 0x00, 0x00
data_ov03_020fd254: ; 0x020fd254
	.byte 0x14, 0x00
data_ov03_020fd256: ; 0x020fd256
	.byte 0x06, 0x00
data_ov03_020fd258: ; 0x020fd258
	.byte 0x01, 0x00
data_ov03_020fd25a: ; 0x020fd25a
	.byte 0x00, 0x00
data_ov03_020fd25c: ; 0x020fd25c
	.byte 0x08, 0x00
data_ov03_020fd25e: ; 0x020fd25e
	.byte 0x00, 0x00
data_ov03_020fd260: ; 0x020fd260
	.byte 0x67, 0x00
data_ov03_020fd262: ; 0x020fd262
	.byte 0x00, 0x00
data_ov03_020fd264: ; 0x020fd264
	.byte 0x00, 0x00
data_ov03_020fd266: ; 0x020fd266
	.byte 0x00, 0x00
data_ov03_020fd268: ; 0x020fd268
	.byte 0x92, 0x05
data_ov03_020fd26a: ; 0x020fd26a
	.byte 0x00, 0x00
data_ov03_020fd26c: ; 0x020fd26c
	.byte 0x10, 0x00
data_ov03_020fd26e: ; 0x020fd26e
	.byte 0x04, 0x00
data_ov03_020fd270: ; 0x020fd270
	.byte 0x01, 0x00
data_ov03_020fd272: ; 0x020fd272
	.byte 0x00, 0x00
data_ov03_020fd274: ; 0x020fd274
	.byte 0x08, 0x00
data_ov03_020fd276: ; 0x020fd276
	.byte 0x00, 0x00
data_ov03_020fd278: ; 0x020fd278
	.byte 0x68, 0x00
data_ov03_020fd27a: ; 0x020fd27a
	.byte 0x00, 0x00
data_ov03_020fd27c: ; 0x020fd27c
	.byte 0x00, 0x00
data_ov03_020fd27e: ; 0x020fd27e
	.byte 0x00, 0x00
data_ov03_020fd280: ; 0x020fd280
	.byte 0xa2, 0x05
data_ov03_020fd282: ; 0x020fd282
	.byte 0x00, 0x00
data_ov03_020fd284: ; 0x020fd284
	.byte 0x0c, 0x00
data_ov03_020fd286: ; 0x020fd286
	.byte 0x03, 0x00
data_ov03_020fd288: ; 0x020fd288
	.byte 0x01, 0x00
data_ov03_020fd28a: ; 0x020fd28a
	.byte 0x00, 0x00
data_ov03_020fd28c: ; 0x020fd28c
	.byte 0x08, 0x00
data_ov03_020fd28e: ; 0x020fd28e
	.byte 0x00, 0x00
data_ov03_020fd290: ; 0x020fd290
	.byte 0x69, 0x00
data_ov03_020fd292: ; 0x020fd292
	.byte 0x00, 0x00
data_ov03_020fd294: ; 0x020fd294
	.byte 0x00, 0x00
data_ov03_020fd296: ; 0x020fd296
	.byte 0x00, 0x00
data_ov03_020fd298: ; 0x020fd298
	.byte 0xae, 0x05
data_ov03_020fd29a: ; 0x020fd29a
	.byte 0x00, 0x00
data_ov03_020fd29c: ; 0x020fd29c
	.byte 0x0c, 0x00
data_ov03_020fd29e: ; 0x020fd29e
	.byte 0x03, 0x00
data_ov03_020fd2a0: ; 0x020fd2a0
	.byte 0x01, 0x00
data_ov03_020fd2a2: ; 0x020fd2a2
	.byte 0x00, 0x00
data_ov03_020fd2a4: ; 0x020fd2a4
	.byte 0x08, 0x00
data_ov03_020fd2a6: ; 0x020fd2a6
	.byte 0x00, 0x00
data_ov03_020fd2a8: ; 0x020fd2a8
	.byte 0x6a, 0x00
data_ov03_020fd2aa: ; 0x020fd2aa
	.byte 0x00, 0x00
data_ov03_020fd2ac: ; 0x020fd2ac
	.byte 0x00, 0x00
data_ov03_020fd2ae: ; 0x020fd2ae
	.byte 0x00, 0x00
data_ov03_020fd2b0: ; 0x020fd2b0
	.byte 0xba, 0x05
data_ov03_020fd2b2: ; 0x020fd2b2
	.byte 0x00, 0x00
data_ov03_020fd2b4: ; 0x020fd2b4
	.byte 0x0f, 0x00
data_ov03_020fd2b6: ; 0x020fd2b6
	.byte 0x04, 0x00
data_ov03_020fd2b8: ; 0x020fd2b8
	.byte 0x01, 0x00
data_ov03_020fd2ba: ; 0x020fd2ba
	.byte 0x00, 0x00
data_ov03_020fd2bc: ; 0x020fd2bc
	.byte 0x08, 0x00
data_ov03_020fd2be: ; 0x020fd2be
	.byte 0x00, 0x00
data_ov03_020fd2c0: ; 0x020fd2c0
	.byte 0x6b, 0x00
data_ov03_020fd2c2: ; 0x020fd2c2
	.byte 0x00, 0x00
data_ov03_020fd2c4: ; 0x020fd2c4
	.byte 0x00, 0x00
data_ov03_020fd2c6: ; 0x020fd2c6
	.byte 0x00, 0x00
data_ov03_020fd2c8: ; 0x020fd2c8
	.byte 0xc9, 0x05
data_ov03_020fd2ca: ; 0x020fd2ca
	.byte 0x00, 0x00
data_ov03_020fd2cc: ; 0x020fd2cc
	.byte 0x13, 0x00
data_ov03_020fd2ce: ; 0x020fd2ce
	.byte 0x05, 0x00
data_ov03_020fd2d0: ; 0x020fd2d0
	.byte 0x01, 0x00
data_ov03_020fd2d2: ; 0x020fd2d2
	.byte 0x00, 0x00
data_ov03_020fd2d4: ; 0x020fd2d4
	.byte 0x08, 0x00
data_ov03_020fd2d6: ; 0x020fd2d6
	.byte 0x00, 0x00
data_ov03_020fd2d8: ; 0x020fd2d8
	.byte 0x6c, 0x00
data_ov03_020fd2da: ; 0x020fd2da
	.byte 0x00, 0x00
data_ov03_020fd2dc: ; 0x020fd2dc
	.byte 0x00, 0x00
data_ov03_020fd2de: ; 0x020fd2de
	.byte 0x00, 0x00
data_ov03_020fd2e0: ; 0x020fd2e0
	.byte 0xdc, 0x05
data_ov03_020fd2e2: ; 0x020fd2e2
	.byte 0x00, 0x00
data_ov03_020fd2e4: ; 0x020fd2e4
	.byte 0x0e, 0x00
data_ov03_020fd2e6: ; 0x020fd2e6
	.byte 0x03, 0x00
data_ov03_020fd2e8: ; 0x020fd2e8
	.byte 0x01, 0x00
data_ov03_020fd2ea: ; 0x020fd2ea
	.byte 0x00, 0x00
data_ov03_020fd2ec: ; 0x020fd2ec
	.byte 0x08, 0x00
data_ov03_020fd2ee: ; 0x020fd2ee
	.byte 0x00, 0x00
data_ov03_020fd2f0: ; 0x020fd2f0
	.byte 0x6d, 0x00
data_ov03_020fd2f2: ; 0x020fd2f2
	.byte 0x00, 0x00
data_ov03_020fd2f4: ; 0x020fd2f4
	.byte 0x00, 0x00
data_ov03_020fd2f6: ; 0x020fd2f6
	.byte 0x00, 0x00
data_ov03_020fd2f8: ; 0x020fd2f8
	.byte 0xea, 0x05
data_ov03_020fd2fa: ; 0x020fd2fa
	.byte 0x00, 0x00
data_ov03_020fd2fc: ; 0x020fd2fc
	.byte 0x14, 0x00
data_ov03_020fd2fe: ; 0x020fd2fe
	.byte 0x05, 0x00
data_ov03_020fd300: ; 0x020fd300
	.byte 0x01, 0x00
data_ov03_020fd302: ; 0x020fd302
	.byte 0x00, 0x00
data_ov03_020fd304: ; 0x020fd304
	.byte 0x08, 0x00
data_ov03_020fd306: ; 0x020fd306
	.byte 0x00, 0x00
data_ov03_020fd308: ; 0x020fd308
	.byte 0x6e, 0x00
data_ov03_020fd30a: ; 0x020fd30a
	.byte 0x00, 0x00
data_ov03_020fd30c: ; 0x020fd30c
	.byte 0x00, 0x00
data_ov03_020fd30e: ; 0x020fd30e
	.byte 0x00, 0x00
data_ov03_020fd310: ; 0x020fd310
	.byte 0xfe, 0x05
data_ov03_020fd312: ; 0x020fd312
	.byte 0x00, 0x00
data_ov03_020fd314: ; 0x020fd314
	.byte 0x0a, 0x00
data_ov03_020fd316: ; 0x020fd316
	.byte 0x03, 0x00
data_ov03_020fd318: ; 0x020fd318
	.byte 0x01, 0x00
data_ov03_020fd31a: ; 0x020fd31a
	.byte 0x00, 0x00
data_ov03_020fd31c: ; 0x020fd31c
	.byte 0x08, 0x00
data_ov03_020fd31e: ; 0x020fd31e
	.byte 0x00, 0x00
data_ov03_020fd320: ; 0x020fd320
	.byte 0x6f, 0x00
data_ov03_020fd322: ; 0x020fd322
	.byte 0x00, 0x00
data_ov03_020fd324: ; 0x020fd324
	.byte 0x00, 0x00
data_ov03_020fd326: ; 0x020fd326
	.byte 0x00, 0x00
data_ov03_020fd328: ; 0x020fd328
	.byte 0x08, 0x06
data_ov03_020fd32a: ; 0x020fd32a
	.byte 0x00, 0x00
data_ov03_020fd32c: ; 0x020fd32c
	.byte 0x16, 0x00
data_ov03_020fd32e: ; 0x020fd32e
	.byte 0x06, 0x00
data_ov03_020fd330: ; 0x020fd330
	.byte 0x01, 0x00
data_ov03_020fd332: ; 0x020fd332
	.byte 0x00, 0x00
data_ov03_020fd334: ; 0x020fd334
	.byte 0x08, 0x00
data_ov03_020fd336: ; 0x020fd336
	.byte 0x00, 0x00
data_ov03_020fd338: ; 0x020fd338
	.byte 0x70, 0x00
data_ov03_020fd33a: ; 0x020fd33a
	.byte 0x00, 0x00
data_ov03_020fd33c: ; 0x020fd33c
	.byte 0x00, 0x00
data_ov03_020fd33e: ; 0x020fd33e
	.byte 0x00, 0x00
data_ov03_020fd340: ; 0x020fd340
	.byte 0x1e, 0x06
data_ov03_020fd342: ; 0x020fd342
	.byte 0x00, 0x00
data_ov03_020fd344: ; 0x020fd344
	.byte 0x13, 0x00
data_ov03_020fd346: ; 0x020fd346
	.byte 0x04, 0x00
data_ov03_020fd348: ; 0x020fd348
	.byte 0x01, 0x00
data_ov03_020fd34a: ; 0x020fd34a
	.byte 0x00, 0x00
data_ov03_020fd34c: ; 0x020fd34c
	.byte 0x08, 0x00
data_ov03_020fd34e: ; 0x020fd34e
	.byte 0x00, 0x00
data_ov03_020fd350: ; 0x020fd350
	.byte 0x71, 0x00
data_ov03_020fd352: ; 0x020fd352
	.byte 0x00, 0x00
data_ov03_020fd354: ; 0x020fd354
	.byte 0x00, 0x00
data_ov03_020fd356: ; 0x020fd356
	.byte 0x00, 0x00
data_ov03_020fd358: ; 0x020fd358
	.byte 0x31, 0x06
data_ov03_020fd35a: ; 0x020fd35a
	.byte 0x00, 0x00
data_ov03_020fd35c: ; 0x020fd35c
	.byte 0x0e, 0x00
data_ov03_020fd35e: ; 0x020fd35e
	.byte 0x02, 0x00
data_ov03_020fd360: ; 0x020fd360
	.byte 0x01, 0x00
data_ov03_020fd362: ; 0x020fd362
	.byte 0x00, 0x00
data_ov03_020fd364: ; 0x020fd364
	.byte 0x08, 0x00
data_ov03_020fd366: ; 0x020fd366
	.byte 0x00, 0x00
data_ov03_020fd368: ; 0x020fd368
	.byte 0x72, 0x00
data_ov03_020fd36a: ; 0x020fd36a
	.byte 0x00, 0x00
data_ov03_020fd36c: ; 0x020fd36c
	.byte 0x00, 0x00
data_ov03_020fd36e: ; 0x020fd36e
	.byte 0x00, 0x00
data_ov03_020fd370: ; 0x020fd370
	.byte 0x3f, 0x06
data_ov03_020fd372: ; 0x020fd372
	.byte 0x00, 0x00
data_ov03_020fd374: ; 0x020fd374
	.byte 0x13, 0x00
data_ov03_020fd376: ; 0x020fd376
	.byte 0x04, 0x00
data_ov03_020fd378: ; 0x020fd378
	.byte 0x01, 0x00
data_ov03_020fd37a: ; 0x020fd37a
	.byte 0x00, 0x00
data_ov03_020fd37c: ; 0x020fd37c
	.byte 0x08, 0x00
data_ov03_020fd37e: ; 0x020fd37e
	.byte 0x00, 0x00
data_ov03_020fd380: ; 0x020fd380
	.byte 0x73, 0x00
data_ov03_020fd382: ; 0x020fd382
	.byte 0x00, 0x00
data_ov03_020fd384: ; 0x020fd384
	.byte 0x00, 0x00
data_ov03_020fd386: ; 0x020fd386
	.byte 0x00, 0x00
data_ov03_020fd388: ; 0x020fd388
	.byte 0x52, 0x06
data_ov03_020fd38a: ; 0x020fd38a
	.byte 0x00, 0x00
data_ov03_020fd38c: ; 0x020fd38c
	.byte 0x0a, 0x00
data_ov03_020fd38e: ; 0x020fd38e
	.byte 0x02, 0x00
data_ov03_020fd390: ; 0x020fd390
	.byte 0x01, 0x00
data_ov03_020fd392: ; 0x020fd392
	.byte 0x00, 0x00
data_ov03_020fd394: ; 0x020fd394
	.byte 0x08, 0x00
data_ov03_020fd396: ; 0x020fd396
	.byte 0x00, 0x00
data_ov03_020fd398: ; 0x020fd398
	.byte 0x74, 0x00
data_ov03_020fd39a: ; 0x020fd39a
	.byte 0x00, 0x00
data_ov03_020fd39c: ; 0x020fd39c
	.byte 0x00, 0x00
data_ov03_020fd39e: ; 0x020fd39e
	.byte 0x00, 0x00
data_ov03_020fd3a0: ; 0x020fd3a0
	.byte 0x5c, 0x06
data_ov03_020fd3a2: ; 0x020fd3a2
	.byte 0x00, 0x00
data_ov03_020fd3a4: ; 0x020fd3a4
	.byte 0x17, 0x00
data_ov03_020fd3a6: ; 0x020fd3a6
	.byte 0x05, 0x00
data_ov03_020fd3a8: ; 0x020fd3a8
	.byte 0x01, 0x00
data_ov03_020fd3aa: ; 0x020fd3aa
	.byte 0x00, 0x00
data_ov03_020fd3ac: ; 0x020fd3ac
	.byte 0x10, 0x00
data_ov03_020fd3ae: ; 0x020fd3ae
	.byte 0x00, 0x00
data_ov03_020fd3b0: ; 0x020fd3b0
	.byte 0x75, 0x00
data_ov03_020fd3b2: ; 0x020fd3b2
	.byte 0x00, 0x00
data_ov03_020fd3b4: ; 0x020fd3b4
	.byte 0x00, 0x00
data_ov03_020fd3b6: ; 0x020fd3b6
	.byte 0x00, 0x00
data_ov03_020fd3b8: ; 0x020fd3b8
	.byte 0x73, 0x06
data_ov03_020fd3ba: ; 0x020fd3ba
	.byte 0x00, 0x00
data_ov03_020fd3bc: ; 0x020fd3bc
	.byte 0x0d, 0x00
data_ov03_020fd3be: ; 0x020fd3be
	.byte 0x01, 0x00
data_ov03_020fd3c0: ; 0x020fd3c0
	.byte 0x01, 0x00
data_ov03_020fd3c2: ; 0x020fd3c2
	.byte 0x00, 0x00
data_ov03_020fd3c4: ; 0x020fd3c4
	.byte 0x10, 0x00
data_ov03_020fd3c6: ; 0x020fd3c6
	.byte 0x00, 0x00
data_ov03_020fd3c8: ; 0x020fd3c8
	.byte 0x75, 0x00
data_ov03_020fd3ca: ; 0x020fd3ca
	.byte 0x00, 0x00
data_ov03_020fd3cc: ; 0x020fd3cc
	.byte 0x00, 0x00
data_ov03_020fd3ce: ; 0x020fd3ce
	.byte 0x00, 0x00
data_ov03_020fd3d0: ; 0x020fd3d0
	.byte 0x80, 0x06
data_ov03_020fd3d2: ; 0x020fd3d2
	.byte 0x00, 0x00
data_ov03_020fd3d4: ; 0x020fd3d4
	.byte 0x09, 0x00
data_ov03_020fd3d6: ; 0x020fd3d6
	.byte 0x01, 0x00
data_ov03_020fd3d8: ; 0x020fd3d8
	.byte 0x01, 0x00
data_ov03_020fd3da: ; 0x020fd3da
	.byte 0x00, 0x00
data_ov03_020fd3dc: ; 0x020fd3dc
	.byte 0x10, 0x00
data_ov03_020fd3de: ; 0x020fd3de
	.byte 0x00, 0x00
data_ov03_020fd3e0: ; 0x020fd3e0
	.byte 0x76, 0x00
data_ov03_020fd3e2: ; 0x020fd3e2
	.byte 0x00, 0x00
data_ov03_020fd3e4: ; 0x020fd3e4
	.byte 0x00, 0x00
data_ov03_020fd3e6: ; 0x020fd3e6
	.byte 0x00, 0x00
data_ov03_020fd3e8: ; 0x020fd3e8
	.byte 0x89, 0x06
data_ov03_020fd3ea: ; 0x020fd3ea
	.byte 0x00, 0x00
data_ov03_020fd3ec: ; 0x020fd3ec
	.byte 0x07, 0x00
data_ov03_020fd3ee: ; 0x020fd3ee
	.byte 0x01, 0x00
data_ov03_020fd3f0: ; 0x020fd3f0
	.byte 0x01, 0x00
data_ov03_020fd3f2: ; 0x020fd3f2
	.byte 0x00, 0x00
data_ov03_020fd3f4: ; 0x020fd3f4
	.byte 0x01, 0x00
data_ov03_020fd3f6: ; 0x020fd3f6
	.byte 0x00, 0x00
data_ov03_020fd3f8: ; 0x020fd3f8
	.byte 0x76, 0x00
data_ov03_020fd3fa: ; 0x020fd3fa
	.byte 0x00, 0x00
data_ov03_020fd3fc: ; 0x020fd3fc
	.byte 0x00, 0x00
data_ov03_020fd3fe: ; 0x020fd3fe
	.byte 0x00, 0x00
data_ov03_020fd400: ; 0x020fd400
	.byte 0x90, 0x06
data_ov03_020fd402: ; 0x020fd402
	.byte 0x00, 0x00
data_ov03_020fd404: ; 0x020fd404
	.byte 0x06, 0x00
data_ov03_020fd406: ; 0x020fd406
	.byte 0x01, 0x00
data_ov03_020fd408: ; 0x020fd408
	.byte 0x01, 0x00
data_ov03_020fd40a: ; 0x020fd40a
	.byte 0x00, 0x00
data_ov03_020fd40c: ; 0x020fd40c
	.byte 0x10, 0x00
data_ov03_020fd40e: ; 0x020fd40e
	.byte 0x00, 0x00
data_ov03_020fd410: ; 0x020fd410
	.byte 0x77, 0x00
data_ov03_020fd412: ; 0x020fd412
	.byte 0x00, 0x00
data_ov03_020fd414: ; 0x020fd414
	.byte 0x00, 0x00
data_ov03_020fd416: ; 0x020fd416
	.byte 0x00, 0x00
data_ov03_020fd418: ; 0x020fd418
	.byte 0x96, 0x06
data_ov03_020fd41a: ; 0x020fd41a
	.byte 0x00, 0x00
data_ov03_020fd41c: ; 0x020fd41c
	.byte 0x06, 0x00
data_ov03_020fd41e: ; 0x020fd41e
	.byte 0x01, 0x00
data_ov03_020fd420: ; 0x020fd420
	.byte 0x01, 0x00
data_ov03_020fd422: ; 0x020fd422
	.byte 0x00, 0x00
data_ov03_020fd424: ; 0x020fd424
	.byte 0x10, 0x00
data_ov03_020fd426: ; 0x020fd426
	.byte 0x00, 0x00
data_ov03_020fd428: ; 0x020fd428
	.byte 0x78, 0x00
data_ov03_020fd42a: ; 0x020fd42a
	.byte 0x00, 0x00
data_ov03_020fd42c: ; 0x020fd42c
	.byte 0x00, 0x00
data_ov03_020fd42e: ; 0x020fd42e
	.byte 0x00, 0x00
data_ov03_020fd430: ; 0x020fd430
	.byte 0x9c, 0x06
data_ov03_020fd432: ; 0x020fd432
	.byte 0x00, 0x00
data_ov03_020fd434: ; 0x020fd434
	.byte 0x06, 0x00
data_ov03_020fd436: ; 0x020fd436
	.byte 0x01, 0x00
data_ov03_020fd438: ; 0x020fd438
	.byte 0x01, 0x00
data_ov03_020fd43a: ; 0x020fd43a
	.byte 0x00, 0x00
data_ov03_020fd43c: ; 0x020fd43c
	.byte 0x10, 0x00
data_ov03_020fd43e: ; 0x020fd43e
	.byte 0x00, 0x00
data_ov03_020fd440: ; 0x020fd440
	.byte 0x79, 0x00
data_ov03_020fd442: ; 0x020fd442
	.byte 0x00, 0x00
data_ov03_020fd444: ; 0x020fd444
	.byte 0x00, 0x00
data_ov03_020fd446: ; 0x020fd446
	.byte 0x00, 0x00
data_ov03_020fd448: ; 0x020fd448
	.byte 0xa2, 0x06
data_ov03_020fd44a: ; 0x020fd44a
	.byte 0x00, 0x00
data_ov03_020fd44c: ; 0x020fd44c
	.byte 0x09, 0x00
data_ov03_020fd44e: ; 0x020fd44e
	.byte 0x01, 0x00
data_ov03_020fd450: ; 0x020fd450
	.byte 0x01, 0x00
data_ov03_020fd452: ; 0x020fd452
	.byte 0x00, 0x00
data_ov03_020fd454: ; 0x020fd454
	.byte 0x10, 0x00
data_ov03_020fd456: ; 0x020fd456
	.byte 0x00, 0x00
data_ov03_020fd458: ; 0x020fd458
	.byte 0x79, 0x00
data_ov03_020fd45a: ; 0x020fd45a
	.byte 0x00, 0x00
data_ov03_020fd45c: ; 0x020fd45c
	.byte 0x00, 0x00
data_ov03_020fd45e: ; 0x020fd45e
	.byte 0x00, 0x00
data_ov03_020fd460: ; 0x020fd460
	.byte 0xab, 0x06
data_ov03_020fd462: ; 0x020fd462
	.byte 0x00, 0x00
data_ov03_020fd464: ; 0x020fd464
	.byte 0x0a, 0x00
data_ov03_020fd466: ; 0x020fd466
	.byte 0x01, 0x00
data_ov03_020fd468: ; 0x020fd468
	.byte 0x01, 0x00
data_ov03_020fd46a: ; 0x020fd46a
	.byte 0x00, 0x00
data_ov03_020fd46c: ; 0x020fd46c
	.byte 0x10, 0x00
data_ov03_020fd46e: ; 0x020fd46e
	.byte 0x00, 0x00
data_ov03_020fd470: ; 0x020fd470
	.byte 0x79, 0x00
data_ov03_020fd472: ; 0x020fd472
	.byte 0x00, 0x00
data_ov03_020fd474: ; 0x020fd474
	.byte 0x00, 0x00
data_ov03_020fd476: ; 0x020fd476
	.byte 0x00, 0x00
data_ov03_020fd478: ; 0x020fd478
	.byte 0xb5, 0x06
data_ov03_020fd47a: ; 0x020fd47a
	.byte 0x00, 0x00
data_ov03_020fd47c: ; 0x020fd47c
	.byte 0x0b, 0x00
data_ov03_020fd47e: ; 0x020fd47e
	.byte 0x01, 0x00
data_ov03_020fd480: ; 0x020fd480
	.byte 0x01, 0x00
data_ov03_020fd482: ; 0x020fd482
	.byte 0x00, 0x00
data_ov03_020fd484: ; 0x020fd484
	.byte 0x10, 0x00
data_ov03_020fd486: ; 0x020fd486
	.byte 0x00, 0x00
data_ov03_020fd488: ; 0x020fd488
	.byte 0x79, 0x00
data_ov03_020fd48a: ; 0x020fd48a
	.byte 0x00, 0x00
data_ov03_020fd48c: ; 0x020fd48c
	.byte 0x00, 0x00
data_ov03_020fd48e: ; 0x020fd48e
	.byte 0x00, 0x00
data_ov03_020fd490: ; 0x020fd490
	.byte 0xc0, 0x06
data_ov03_020fd492: ; 0x020fd492
	.byte 0x00, 0x00
data_ov03_020fd494: ; 0x020fd494
	.byte 0x0a, 0x00
data_ov03_020fd496: ; 0x020fd496
	.byte 0x01, 0x00
data_ov03_020fd498: ; 0x020fd498
	.byte 0x01, 0x00
data_ov03_020fd49a: ; 0x020fd49a
	.byte 0x00, 0x00
data_ov03_020fd49c: ; 0x020fd49c
	.byte 0x10, 0x00
data_ov03_020fd49e: ; 0x020fd49e
	.byte 0x00, 0x00
data_ov03_020fd4a0: ; 0x020fd4a0
	.byte 0x79, 0x00
data_ov03_020fd4a2: ; 0x020fd4a2
	.byte 0x00, 0x00
data_ov03_020fd4a4: ; 0x020fd4a4
	.byte 0x00, 0x00
data_ov03_020fd4a6: ; 0x020fd4a6
	.byte 0x00, 0x00
data_ov03_020fd4a8: ; 0x020fd4a8
	.byte 0xca, 0x06
data_ov03_020fd4aa: ; 0x020fd4aa
	.byte 0x00, 0x00
data_ov03_020fd4ac: ; 0x020fd4ac
	.byte 0x09, 0x00
data_ov03_020fd4ae: ; 0x020fd4ae
	.byte 0x01, 0x00
data_ov03_020fd4b0: ; 0x020fd4b0
	.byte 0x01, 0x00
data_ov03_020fd4b2: ; 0x020fd4b2
	.byte 0x00, 0x00
data_ov03_020fd4b4: ; 0x020fd4b4
	.byte 0x10, 0x00
data_ov03_020fd4b6: ; 0x020fd4b6
	.byte 0x00, 0x00
data_ov03_020fd4b8: ; 0x020fd4b8
	.byte 0x79, 0x00
data_ov03_020fd4ba: ; 0x020fd4ba
	.byte 0x00, 0x00
data_ov03_020fd4bc: ; 0x020fd4bc
	.byte 0x00, 0x00
data_ov03_020fd4be: ; 0x020fd4be
	.byte 0x00, 0x00
data_ov03_020fd4c0: ; 0x020fd4c0
	.byte 0xd3, 0x06
data_ov03_020fd4c2: ; 0x020fd4c2
	.byte 0x00, 0x00
data_ov03_020fd4c4: ; 0x020fd4c4
	.byte 0x0a, 0x00
data_ov03_020fd4c6: ; 0x020fd4c6
	.byte 0x01, 0x00
data_ov03_020fd4c8: ; 0x020fd4c8
	.byte 0x01, 0x00
data_ov03_020fd4ca: ; 0x020fd4ca
	.byte 0x00, 0x00
data_ov03_020fd4cc: ; 0x020fd4cc
	.byte 0x10, 0x00
data_ov03_020fd4ce: ; 0x020fd4ce
	.byte 0x00, 0x00
data_ov03_020fd4d0: ; 0x020fd4d0
	.byte 0x79, 0x00
data_ov03_020fd4d2: ; 0x020fd4d2
	.byte 0x00, 0x00
data_ov03_020fd4d4: ; 0x020fd4d4
	.byte 0x00, 0x00
data_ov03_020fd4d6: ; 0x020fd4d6
	.byte 0x00, 0x00
data_ov03_020fd4d8: ; 0x020fd4d8
	.byte 0xdd, 0x06
data_ov03_020fd4da: ; 0x020fd4da
	.byte 0x00, 0x00
data_ov03_020fd4dc: ; 0x020fd4dc
	.byte 0x09, 0x00
data_ov03_020fd4de: ; 0x020fd4de
	.byte 0x01, 0x00
data_ov03_020fd4e0: ; 0x020fd4e0
	.byte 0x01, 0x00
data_ov03_020fd4e2: ; 0x020fd4e2
	.byte 0x00, 0x00
data_ov03_020fd4e4: ; 0x020fd4e4
	.byte 0x10, 0x00
data_ov03_020fd4e6: ; 0x020fd4e6
	.byte 0x00, 0x00
data_ov03_020fd4e8: ; 0x020fd4e8
	.byte 0x79, 0x00
data_ov03_020fd4ea: ; 0x020fd4ea
	.byte 0x00, 0x00
data_ov03_020fd4ec: ; 0x020fd4ec
	.byte 0x00, 0x00
data_ov03_020fd4ee: ; 0x020fd4ee
	.byte 0x00, 0x00
data_ov03_020fd4f0: ; 0x020fd4f0
	.byte 0xe6, 0x06
data_ov03_020fd4f2: ; 0x020fd4f2
	.byte 0x00, 0x00
data_ov03_020fd4f4: ; 0x020fd4f4
	.byte 0x09, 0x00
data_ov03_020fd4f6: ; 0x020fd4f6
	.byte 0x01, 0x00
data_ov03_020fd4f8: ; 0x020fd4f8
	.byte 0x01, 0x00
data_ov03_020fd4fa: ; 0x020fd4fa
	.byte 0x00, 0x00
data_ov03_020fd4fc: ; 0x020fd4fc
	.byte 0x10, 0x00
data_ov03_020fd4fe: ; 0x020fd4fe
	.byte 0x00, 0x00
data_ov03_020fd500: ; 0x020fd500
	.byte 0x79, 0x00
data_ov03_020fd502: ; 0x020fd502
	.byte 0x00, 0x00
data_ov03_020fd504: ; 0x020fd504
	.byte 0x00, 0x00
data_ov03_020fd506: ; 0x020fd506
	.byte 0x00, 0x00
data_ov03_020fd508: ; 0x020fd508
	.byte 0xef, 0x06
data_ov03_020fd50a: ; 0x020fd50a
	.byte 0x00, 0x00
data_ov03_020fd50c: ; 0x020fd50c
	.byte 0x0a, 0x00
data_ov03_020fd50e: ; 0x020fd50e
	.byte 0x01, 0x00
data_ov03_020fd510: ; 0x020fd510
	.byte 0x01, 0x00
data_ov03_020fd512: ; 0x020fd512
	.byte 0x00, 0x00
data_ov03_020fd514: ; 0x020fd514
	.byte 0x10, 0x00
data_ov03_020fd516: ; 0x020fd516
	.byte 0x00, 0x00
data_ov03_020fd518: ; 0x020fd518
	.byte 0x79, 0x00
data_ov03_020fd51a: ; 0x020fd51a
	.byte 0x00, 0x00
data_ov03_020fd51c: ; 0x020fd51c
	.byte 0x00, 0x00
data_ov03_020fd51e: ; 0x020fd51e
	.byte 0x00, 0x00
data_ov03_020fd520: ; 0x020fd520
	.byte 0xf9, 0x06
data_ov03_020fd522: ; 0x020fd522
	.byte 0x00, 0x00
data_ov03_020fd524: ; 0x020fd524
	.byte 0x0b, 0x00
data_ov03_020fd526: ; 0x020fd526
	.byte 0x01, 0x00
data_ov03_020fd528: ; 0x020fd528
	.byte 0x01, 0x00
data_ov03_020fd52a: ; 0x020fd52a
	.byte 0x00, 0x00
data_ov03_020fd52c: ; 0x020fd52c
	.byte 0x10, 0x00
data_ov03_020fd52e: ; 0x020fd52e
	.byte 0x00, 0x00
data_ov03_020fd530: ; 0x020fd530
	.byte 0x79, 0x00
data_ov03_020fd532: ; 0x020fd532
	.byte 0x00, 0x00
data_ov03_020fd534: ; 0x020fd534
	.byte 0x00, 0x00
data_ov03_020fd536: ; 0x020fd536
	.byte 0x00, 0x00
data_ov03_020fd538: ; 0x020fd538
	.byte 0x04, 0x07
data_ov03_020fd53a: ; 0x020fd53a
	.byte 0x00, 0x00
data_ov03_020fd53c: ; 0x020fd53c
	.byte 0x09, 0x00
data_ov03_020fd53e: ; 0x020fd53e
	.byte 0x01, 0x00
data_ov03_020fd540: ; 0x020fd540
	.byte 0x01, 0x00
data_ov03_020fd542: ; 0x020fd542
	.byte 0x00, 0x00
data_ov03_020fd544: ; 0x020fd544
	.byte 0x10, 0x00
data_ov03_020fd546: ; 0x020fd546
	.byte 0x00, 0x00
data_ov03_020fd548: ; 0x020fd548
	.byte 0x79, 0x00
data_ov03_020fd54a: ; 0x020fd54a
	.byte 0x00, 0x00
data_ov03_020fd54c: ; 0x020fd54c
	.byte 0x00, 0x00
data_ov03_020fd54e: ; 0x020fd54e
	.byte 0x00, 0x00
data_ov03_020fd550: ; 0x020fd550
	.byte 0x0d, 0x07
data_ov03_020fd552: ; 0x020fd552
	.byte 0x00, 0x00
data_ov03_020fd554: ; 0x020fd554
	.byte 0x0a, 0x00
data_ov03_020fd556: ; 0x020fd556
	.byte 0x01, 0x00
data_ov03_020fd558: ; 0x020fd558
	.byte 0x01, 0x00
data_ov03_020fd55a: ; 0x020fd55a
	.byte 0x00, 0x00
data_ov03_020fd55c: ; 0x020fd55c
	.byte 0x10, 0x00
data_ov03_020fd55e: ; 0x020fd55e
	.byte 0x00, 0x00
data_ov03_020fd560: ; 0x020fd560
	.byte 0x79, 0x00
data_ov03_020fd562: ; 0x020fd562
	.byte 0x00, 0x00
data_ov03_020fd564: ; 0x020fd564
	.byte 0x00, 0x00
data_ov03_020fd566: ; 0x020fd566
	.byte 0x00, 0x00
data_ov03_020fd568: ; 0x020fd568
	.byte 0x17, 0x07
data_ov03_020fd56a: ; 0x020fd56a
	.byte 0x00, 0x00
data_ov03_020fd56c: ; 0x020fd56c
	.byte 0x09, 0x00
data_ov03_020fd56e: ; 0x020fd56e
	.byte 0x01, 0x00
data_ov03_020fd570: ; 0x020fd570
	.byte 0x01, 0x00
data_ov03_020fd572: ; 0x020fd572
	.byte 0x00, 0x00
data_ov03_020fd574: ; 0x020fd574
	.byte 0x10, 0x00
data_ov03_020fd576: ; 0x020fd576
	.byte 0x00, 0x00
data_ov03_020fd578: ; 0x020fd578
	.byte 0x79, 0x00
data_ov03_020fd57a: ; 0x020fd57a
	.byte 0x00, 0x00
data_ov03_020fd57c: ; 0x020fd57c
	.byte 0x00, 0x00
data_ov03_020fd57e: ; 0x020fd57e
	.byte 0x00, 0x00
data_ov03_020fd580: ; 0x020fd580
	.byte 0x20, 0x07
data_ov03_020fd582: ; 0x020fd582
	.byte 0x00, 0x00
data_ov03_020fd584: ; 0x020fd584
	.byte 0x0a, 0x00
data_ov03_020fd586: ; 0x020fd586
	.byte 0x01, 0x00
data_ov03_020fd588: ; 0x020fd588
	.byte 0x01, 0x00
data_ov03_020fd58a: ; 0x020fd58a
	.byte 0x00, 0x00
data_ov03_020fd58c: ; 0x020fd58c
	.byte 0x20, 0x00
data_ov03_020fd58e: ; 0x020fd58e
	.byte 0x00, 0x00
data_ov03_020fd590: ; 0x020fd590
	.byte 0x7a, 0x00
data_ov03_020fd592: ; 0x020fd592
	.byte 0x00, 0x00
data_ov03_020fd594: ; 0x020fd594
	.byte 0x00, 0x00
data_ov03_020fd596: ; 0x020fd596
	.byte 0x00, 0x00
data_ov03_020fd598: ; 0x020fd598
	.byte 0x2a, 0x07
data_ov03_020fd59a: ; 0x020fd59a
	.byte 0x00, 0x00
data_ov03_020fd59c: ; 0x020fd59c
	.byte 0x06, 0x00
data_ov03_020fd59e: ; 0x020fd59e
	.byte 0x01, 0x00
data_ov03_020fd5a0: ; 0x020fd5a0
	.byte 0x01, 0x00
data_ov03_020fd5a2: ; 0x020fd5a2
	.byte 0x00, 0x00
data_ov03_020fd5a4: ; 0x020fd5a4
	.byte 0x20, 0x00
data_ov03_020fd5a6: ; 0x020fd5a6
	.byte 0x00, 0x00
data_ov03_020fd5a8: ; 0x020fd5a8
	.byte 0x7b, 0x00
data_ov03_020fd5aa: ; 0x020fd5aa
	.byte 0x00, 0x00
data_ov03_020fd5ac: ; 0x020fd5ac
	.byte 0x00, 0x00
data_ov03_020fd5ae: ; 0x020fd5ae
	.byte 0x00, 0x00
data_ov03_020fd5b0: ; 0x020fd5b0
	.byte 0x30, 0x07
data_ov03_020fd5b2: ; 0x020fd5b2
	.byte 0x00, 0x00
data_ov03_020fd5b4: ; 0x020fd5b4
	.byte 0x06, 0x00
data_ov03_020fd5b6: ; 0x020fd5b6
	.byte 0x01, 0x00
data_ov03_020fd5b8: ; 0x020fd5b8
	.byte 0x01, 0x00
data_ov03_020fd5ba: ; 0x020fd5ba
	.byte 0x00, 0x00
data_ov03_020fd5bc: ; 0x020fd5bc
	.byte 0x20, 0x00
data_ov03_020fd5be: ; 0x020fd5be
	.byte 0x00, 0x00
data_ov03_020fd5c0: ; 0x020fd5c0
	.byte 0x7c, 0x00
data_ov03_020fd5c2: ; 0x020fd5c2
	.byte 0x00, 0x00
data_ov03_020fd5c4: ; 0x020fd5c4
	.byte 0x00, 0x00
data_ov03_020fd5c6: ; 0x020fd5c6
	.byte 0x00, 0x00
data_ov03_020fd5c8: ; 0x020fd5c8
	.byte 0x36, 0x07
data_ov03_020fd5ca: ; 0x020fd5ca
	.byte 0x00, 0x00
data_ov03_020fd5cc: ; 0x020fd5cc
	.byte 0x06, 0x00
data_ov03_020fd5ce: ; 0x020fd5ce
	.byte 0x01, 0x00
data_ov03_020fd5d0: ; 0x020fd5d0
	.byte 0x01, 0x00
data_ov03_020fd5d2: ; 0x020fd5d2
	.byte 0x00, 0x00
data_ov03_020fd5d4: ; 0x020fd5d4
	.byte 0x20, 0x00
data_ov03_020fd5d6: ; 0x020fd5d6
	.byte 0x00, 0x00
data_ov03_020fd5d8: ; 0x020fd5d8
	.byte 0x7d, 0x00
data_ov03_020fd5da: ; 0x020fd5da
	.byte 0x00, 0x00
data_ov03_020fd5dc: ; 0x020fd5dc
	.byte 0x00, 0x00
data_ov03_020fd5de: ; 0x020fd5de
	.byte 0x00, 0x00
data_ov03_020fd5e0: ; 0x020fd5e0
	.byte 0x3c, 0x07
data_ov03_020fd5e2: ; 0x020fd5e2
	.byte 0x00, 0x00
data_ov03_020fd5e4: ; 0x020fd5e4
	.byte 0x06, 0x00
data_ov03_020fd5e6: ; 0x020fd5e6
	.byte 0x01, 0x00
data_ov03_020fd5e8: ; 0x020fd5e8
	.byte 0x01, 0x00
data_ov03_020fd5ea: ; 0x020fd5ea
	.byte 0x00, 0x00
data_ov03_020fd5ec: ; 0x020fd5ec
	.byte 0x40, 0x00
data_ov03_020fd5ee: ; 0x020fd5ee
	.byte 0x00, 0x00
data_ov03_020fd5f0: ; 0x020fd5f0
	.byte 0x7e, 0x00
data_ov03_020fd5f2: ; 0x020fd5f2
	.byte 0x00, 0x00
data_ov03_020fd5f4: ; 0x020fd5f4
	.byte 0x00, 0x00
data_ov03_020fd5f6: ; 0x020fd5f6
	.byte 0x00, 0x00
data_ov03_020fd5f8: ; 0x020fd5f8
	.byte 0x42, 0x07
data_ov03_020fd5fa: ; 0x020fd5fa
	.byte 0x00, 0x00
data_ov03_020fd5fc: ; 0x020fd5fc
	.byte 0x05, 0x00
data_ov03_020fd5fe: ; 0x020fd5fe
	.byte 0x01, 0x00
data_ov03_020fd600: ; 0x020fd600
	.byte 0x01, 0x00
data_ov03_020fd602: ; 0x020fd602
	.byte 0x00, 0x00
data_ov03_020fd604: ; 0x020fd604
	.byte 0x40, 0x00
data_ov03_020fd606: ; 0x020fd606
	.byte 0x00, 0x00
data_ov03_020fd608: ; 0x020fd608
	.byte 0x7e, 0x00
data_ov03_020fd60a: ; 0x020fd60a
	.byte 0x00, 0x00
data_ov03_020fd60c: ; 0x020fd60c
	.byte 0x00, 0x00
data_ov03_020fd60e: ; 0x020fd60e
	.byte 0x00, 0x00
data_ov03_020fd610: ; 0x020fd610
	.byte 0x47, 0x07
data_ov03_020fd612: ; 0x020fd612
	.byte 0x00, 0x00
data_ov03_020fd614: ; 0x020fd614
	.byte 0x05, 0x00
data_ov03_020fd616: ; 0x020fd616
	.byte 0x01, 0x00
data_ov03_020fd618: ; 0x020fd618
	.byte 0x01, 0x00
data_ov03_020fd61a: ; 0x020fd61a
	.byte 0x00, 0x00
data_ov03_020fd61c: ; 0x020fd61c
	.byte 0x40, 0x00
data_ov03_020fd61e: ; 0x020fd61e
	.byte 0x00, 0x00
data_ov03_020fd620: ; 0x020fd620
	.byte 0x7f, 0x00
data_ov03_020fd622: ; 0x020fd622
	.byte 0x00, 0x00
data_ov03_020fd624: ; 0x020fd624
	.byte 0x00, 0x00
data_ov03_020fd626: ; 0x020fd626
	.byte 0x00, 0x00
data_ov03_020fd628: ; 0x020fd628
	.byte 0x4c, 0x07
data_ov03_020fd62a: ; 0x020fd62a
	.byte 0x00, 0x00
data_ov03_020fd62c: ; 0x020fd62c
	.byte 0x07, 0x00
data_ov03_020fd62e: ; 0x020fd62e
	.byte 0x01, 0x00
data_ov03_020fd630: ; 0x020fd630
	.byte 0x01, 0x00
data_ov03_020fd632: ; 0x020fd632
	.byte 0x00, 0x00
data_ov03_020fd634: ; 0x020fd634
	.byte 0x40, 0x00
data_ov03_020fd636: ; 0x020fd636
	.byte 0x00, 0x00
data_ov03_020fd638: ; 0x020fd638
	.byte 0x7f, 0x00
data_ov03_020fd63a: ; 0x020fd63a
	.byte 0x00, 0x00
data_ov03_020fd63c: ; 0x020fd63c
	.byte 0x00, 0x00
data_ov03_020fd63e: ; 0x020fd63e
	.byte 0x00, 0x00
data_ov03_020fd640: ; 0x020fd640
	.byte 0x53, 0x07
data_ov03_020fd642: ; 0x020fd642
	.byte 0x00, 0x00
data_ov03_020fd644: ; 0x020fd644
	.byte 0x07, 0x00
data_ov03_020fd646: ; 0x020fd646
	.byte 0x01, 0x00
data_ov03_020fd648: ; 0x020fd648
	.byte 0x01, 0x00
data_ov03_020fd64a: ; 0x020fd64a
	.byte 0x00, 0x00
data_ov03_020fd64c: ; 0x020fd64c
	.byte 0x40, 0x00
data_ov03_020fd64e: ; 0x020fd64e
	.byte 0x00, 0x00
data_ov03_020fd650: ; 0x020fd650
	.byte 0x80, 0x00
data_ov03_020fd652: ; 0x020fd652
	.byte 0x00, 0x00
data_ov03_020fd654: ; 0x020fd654
	.byte 0x00, 0x00
data_ov03_020fd656: ; 0x020fd656
	.byte 0x00, 0x00
data_ov03_020fd658: ; 0x020fd658
	.byte 0x5a, 0x07
data_ov03_020fd65a: ; 0x020fd65a
	.byte 0x00, 0x00
data_ov03_020fd65c: ; 0x020fd65c
	.byte 0x05, 0x00
data_ov03_020fd65e: ; 0x020fd65e
	.byte 0x01, 0x00
data_ov03_020fd660: ; 0x020fd660
	.byte 0x01, 0x00
data_ov03_020fd662: ; 0x020fd662
	.byte 0x00, 0x00
data_ov03_020fd664: ; 0x020fd664
	.byte 0x40, 0x00
data_ov03_020fd666: ; 0x020fd666
	.byte 0x00, 0x00
data_ov03_020fd668: ; 0x020fd668
	.byte 0x80, 0x00
data_ov03_020fd66a: ; 0x020fd66a
	.byte 0x00, 0x00
data_ov03_020fd66c: ; 0x020fd66c
	.byte 0x00, 0x00
data_ov03_020fd66e: ; 0x020fd66e
	.byte 0x00, 0x00
data_ov03_020fd670: ; 0x020fd670
	.byte 0x5f, 0x07
data_ov03_020fd672: ; 0x020fd672
	.byte 0x00, 0x00
data_ov03_020fd674: ; 0x020fd674
	.byte 0x05, 0x00
data_ov03_020fd676: ; 0x020fd676
	.byte 0x01, 0x00
data_ov03_020fd678: ; 0x020fd678
	.byte 0x01, 0x00
data_ov03_020fd67a: ; 0x020fd67a
	.byte 0x00, 0x00
data_ov03_020fd67c: ; 0x020fd67c
	.byte 0x40, 0x00
data_ov03_020fd67e: ; 0x020fd67e
	.byte 0x00, 0x00
data_ov03_020fd680: ; 0x020fd680
	.byte 0x81, 0x00
data_ov03_020fd682: ; 0x020fd682
	.byte 0x00, 0x00
data_ov03_020fd684: ; 0x020fd684
	.byte 0x00, 0x00
data_ov03_020fd686: ; 0x020fd686
	.byte 0x00, 0x00
data_ov03_020fd688: ; 0x020fd688
	.byte 0x64, 0x07
data_ov03_020fd68a: ; 0x020fd68a
	.byte 0x00, 0x00
data_ov03_020fd68c: ; 0x020fd68c
	.byte 0x07, 0x00
data_ov03_020fd68e: ; 0x020fd68e
	.byte 0x01, 0x00
data_ov03_020fd690: ; 0x020fd690
	.byte 0x01, 0x00
data_ov03_020fd692: ; 0x020fd692
	.byte 0x00, 0x00
data_ov03_020fd694: ; 0x020fd694
	.byte 0x40, 0x00
data_ov03_020fd696: ; 0x020fd696
	.byte 0x00, 0x00
data_ov03_020fd698: ; 0x020fd698
	.byte 0x81, 0x00
data_ov03_020fd69a: ; 0x020fd69a
	.byte 0x00, 0x00
data_ov03_020fd69c: ; 0x020fd69c
	.byte 0x00, 0x00
data_ov03_020fd69e: ; 0x020fd69e
	.byte 0x00, 0x00
data_ov03_020fd6a0: ; 0x020fd6a0
	.byte 0x6b, 0x07
data_ov03_020fd6a2: ; 0x020fd6a2
	.byte 0x00, 0x00
data_ov03_020fd6a4: ; 0x020fd6a4
	.byte 0x07, 0x00
data_ov03_020fd6a6: ; 0x020fd6a6
	.byte 0x01, 0x00
data_ov03_020fd6a8: ; 0x020fd6a8
	.byte 0x01, 0x00
data_ov03_020fd6aa: ; 0x020fd6aa
	.byte 0x00, 0x00
data_ov03_020fd6ac: ; 0x020fd6ac
	.byte 0x40, 0x00
data_ov03_020fd6ae: ; 0x020fd6ae
	.byte 0x00, 0x00
data_ov03_020fd6b0: ; 0x020fd6b0
	.byte 0x81, 0x00
data_ov03_020fd6b2: ; 0x020fd6b2
	.byte 0x00, 0x00
data_ov03_020fd6b4: ; 0x020fd6b4
	.byte 0x00, 0x00
data_ov03_020fd6b6: ; 0x020fd6b6
	.byte 0x00, 0x00
data_ov03_020fd6b8: ; 0x020fd6b8
	.byte 0x72, 0x07
data_ov03_020fd6ba: ; 0x020fd6ba
	.byte 0x00, 0x00
data_ov03_020fd6bc: ; 0x020fd6bc
	.byte 0x07, 0x00
data_ov03_020fd6be: ; 0x020fd6be
	.byte 0x01, 0x00
data_ov03_020fd6c0: ; 0x020fd6c0
	.byte 0x01, 0x00
data_ov03_020fd6c2: ; 0x020fd6c2
	.byte 0x00, 0x00
data_ov03_020fd6c4: ; 0x020fd6c4
	.byte 0x40, 0x00
data_ov03_020fd6c6: ; 0x020fd6c6
	.byte 0x00, 0x00
data_ov03_020fd6c8: ; 0x020fd6c8
	.byte 0x81, 0x00
data_ov03_020fd6ca: ; 0x020fd6ca
	.byte 0x00, 0x00
data_ov03_020fd6cc: ; 0x020fd6cc
	.byte 0x00, 0x00
data_ov03_020fd6ce: ; 0x020fd6ce
	.byte 0x00, 0x00
data_ov03_020fd6d0: ; 0x020fd6d0
	.byte 0x79, 0x07
data_ov03_020fd6d2: ; 0x020fd6d2
	.byte 0x00, 0x00
data_ov03_020fd6d4: ; 0x020fd6d4
	.byte 0x07, 0x00
data_ov03_020fd6d6: ; 0x020fd6d6
	.byte 0x01, 0x00
data_ov03_020fd6d8: ; 0x020fd6d8
	.byte 0x01, 0x00
data_ov03_020fd6da: ; 0x020fd6da
	.byte 0x00, 0x00
data_ov03_020fd6dc: ; 0x020fd6dc
	.byte 0x40, 0x00
data_ov03_020fd6de: ; 0x020fd6de
	.byte 0x00, 0x00
data_ov03_020fd6e0: ; 0x020fd6e0
	.byte 0x82, 0x00
data_ov03_020fd6e2: ; 0x020fd6e2
	.byte 0x00, 0x00
data_ov03_020fd6e4: ; 0x020fd6e4
	.byte 0x00, 0x00
data_ov03_020fd6e6: ; 0x020fd6e6
	.byte 0x00, 0x00
data_ov03_020fd6e8: ; 0x020fd6e8
	.byte 0x80, 0x07
data_ov03_020fd6ea: ; 0x020fd6ea
	.byte 0x00, 0x00
data_ov03_020fd6ec: ; 0x020fd6ec
	.byte 0x07, 0x00
data_ov03_020fd6ee: ; 0x020fd6ee
	.byte 0x01, 0x00
data_ov03_020fd6f0: ; 0x020fd6f0
	.byte 0x01, 0x00
data_ov03_020fd6f2: ; 0x020fd6f2
	.byte 0x00, 0x00
data_ov03_020fd6f4: ; 0x020fd6f4
	.byte 0x40, 0x00
data_ov03_020fd6f6: ; 0x020fd6f6
	.byte 0x00, 0x00
data_ov03_020fd6f8: ; 0x020fd6f8
	.byte 0x82, 0x00
data_ov03_020fd6fa: ; 0x020fd6fa
	.byte 0x00, 0x00
data_ov03_020fd6fc: ; 0x020fd6fc
	.byte 0x00, 0x00
data_ov03_020fd6fe: ; 0x020fd6fe
	.byte 0x00, 0x00
data_ov03_020fd700: ; 0x020fd700
	.byte 0x87, 0x07
data_ov03_020fd702: ; 0x020fd702
	.byte 0x00, 0x00
data_ov03_020fd704: ; 0x020fd704
	.byte 0x07, 0x00
data_ov03_020fd706: ; 0x020fd706
	.byte 0x01, 0x00
data_ov03_020fd708: ; 0x020fd708
	.byte 0x01, 0x00
data_ov03_020fd70a: ; 0x020fd70a
	.byte 0x00, 0x00
data_ov03_020fd70c: ; 0x020fd70c
	.byte 0x40, 0x00
data_ov03_020fd70e: ; 0x020fd70e
	.byte 0x00, 0x00
data_ov03_020fd710: ; 0x020fd710
	.byte 0x83, 0x00
data_ov03_020fd712: ; 0x020fd712
	.byte 0x00, 0x00
data_ov03_020fd714: ; 0x020fd714
	.byte 0x00, 0x00
data_ov03_020fd716: ; 0x020fd716
	.byte 0x00, 0x00
data_ov03_020fd718: ; 0x020fd718
	.byte 0x8e, 0x07
data_ov03_020fd71a: ; 0x020fd71a
	.byte 0x00, 0x00
data_ov03_020fd71c: ; 0x020fd71c
	.byte 0x06, 0x00
data_ov03_020fd71e: ; 0x020fd71e
	.byte 0x01, 0x00
data_ov03_020fd720: ; 0x020fd720
	.byte 0x01, 0x00
data_ov03_020fd722: ; 0x020fd722
	.byte 0x00, 0x00
data_ov03_020fd724: ; 0x020fd724
	.byte 0x40, 0x00
data_ov03_020fd726: ; 0x020fd726
	.byte 0x00, 0x00
data_ov03_020fd728: ; 0x020fd728
	.byte 0x83, 0x00
data_ov03_020fd72a: ; 0x020fd72a
	.byte 0x00, 0x00
data_ov03_020fd72c: ; 0x020fd72c
	.byte 0x00, 0x00
data_ov03_020fd72e: ; 0x020fd72e
	.byte 0x00, 0x00
data_ov03_020fd730: ; 0x020fd730
	.byte 0x94, 0x07
data_ov03_020fd732: ; 0x020fd732
	.byte 0x00, 0x00
data_ov03_020fd734: ; 0x020fd734
	.byte 0x06, 0x00
data_ov03_020fd736: ; 0x020fd736
	.byte 0x01, 0x00
data_ov03_020fd738: ; 0x020fd738
	.byte 0x07, 0x00
data_ov03_020fd73a: ; 0x020fd73a
	.byte 0x09, 0x00
data_ov03_020fd73c: ; 0x020fd73c
	.byte 0x36, 0x00
data_ov03_020fd73e: ; 0x020fd73e
	.byte 0x30, 0x00
data_ov03_020fd740: ; 0x020fd740
	.byte 0xff, 0xff
data_ov03_020fd742: ; 0x020fd742
	.byte 0xff, 0xff
data_ov03_020fd744: ; 0x020fd744
	.byte 0x33, 0x00
data_ov03_020fd746: ; 0x020fd746
	.byte 0x09, 0x00
data_ov03_020fd748: ; 0x020fd748
	.byte 0x0d, 0x00
data_ov03_020fd74a: ; 0x020fd74a
	.byte 0x35, 0x00
data_ov03_020fd74c: ; 0x020fd74c
	.byte 0xff, 0xff
data_ov03_020fd74e: ; 0x020fd74e
	.byte 0xff, 0xff
data_ov03_020fd750: ; 0x020fd750
	.byte 0x1d, 0x00
data_ov03_020fd752: ; 0x020fd752
	.byte 0x00, 0x00
data_ov03_020fd754: ; 0x020fd754
	.byte 0x21, 0x00
data_ov03_020fd756: ; 0x020fd756
	.byte 0x3e, 0x00
data_ov03_020fd758: ; 0x020fd758
	.byte 0xff, 0xff
data_ov03_020fd75a: ; 0x020fd75a
	.byte 0xff, 0xff
data_ov03_020fd75c: ; 0x020fd75c
	.byte 0x00, 0x00
data_ov03_020fd75e: ; 0x020fd75e
	.byte 0x1f, 0x00
data_ov03_020fd760: ; 0x020fd760
	.byte 0x3c, 0x00
data_ov03_020fd762: ; 0x020fd762
	.byte 0x20, 0x00
data_ov03_020fd764: ; 0x020fd764
	.byte 0xff, 0xff
data_ov03_020fd766: ; 0x020fd766
	.byte 0xff, 0xff
data_ov03_020fd768: ; 0x020fd768
	.byte 0x1d, 0x00
data_ov03_020fd76a: ; 0x020fd76a
	.byte 0x00, 0x00
data_ov03_020fd76c: ; 0x020fd76c
	.byte 0x1f, 0x00
data_ov03_020fd76e: ; 0x020fd76e
	.byte 0x3e, 0x00
data_ov03_020fd770: ; 0x020fd770
	.byte 0xff, 0xff
data_ov03_020fd772: ; 0x020fd772
	.byte 0xff, 0xff
data_ov03_020fd774: ; 0x020fd774
	.byte 0x22, 0x00
data_ov03_020fd776: ; 0x020fd776
	.byte 0x00, 0x00
data_ov03_020fd778: ; 0x020fd778
	.byte 0x26, 0x00
data_ov03_020fd77a: ; 0x020fd77a
	.byte 0x3f, 0x00
data_ov03_020fd77c: ; 0x020fd77c
	.byte 0xff, 0xff
data_ov03_020fd77e: ; 0x020fd77e
	.byte 0xff, 0xff
data_ov03_020fd780: ; 0x020fd780
	.byte 0x06, 0x00
data_ov03_020fd782: ; 0x020fd782
	.byte 0x20, 0x00
data_ov03_020fd784: ; 0x020fd784
	.byte 0x34, 0x00
data_ov03_020fd786: ; 0x020fd786
	.byte 0x1a, 0x00
data_ov03_020fd788: ; 0x020fd788
	.byte 0xff, 0xff
data_ov03_020fd78a: ; 0x020fd78a
	.byte 0xff, 0xff
data_ov03_020fd78c: ; 0x020fd78c
	.byte 0x01, 0x00
data_ov03_020fd78e: ; 0x020fd78e
	.byte 0x20, 0x00
data_ov03_020fd790: ; 0x020fd790
	.byte 0x3e, 0x00
data_ov03_020fd792: ; 0x020fd792
	.byte 0x20, 0x00
data_ov03_020fd794: ; 0x020fd794
	.byte 0xff, 0xff
data_ov03_020fd796: ; 0x020fd796
	.byte 0xff, 0xff
data_ov03_020fd798: ; 0x020fd798
	.byte 0x18, 0x00
data_ov03_020fd79a: ; 0x020fd79a
	.byte 0x01, 0x00
data_ov03_020fd79c: ; 0x020fd79c
	.byte 0x0b, 0x00
data_ov03_020fd79e: ; 0x020fd79e
	.byte 0x0f, 0x00
data_ov03_020fd7a0: ; 0x020fd7a0
	.byte 0x11, 0x00
data_ov03_020fd7a2: ; 0x020fd7a2
	.byte 0x34, 0x00
data_ov03_020fd7a4: ; 0x020fd7a4
	.byte 0x24, 0x00
data_ov03_020fd7a6: ; 0x020fd7a6
	.byte 0x3f, 0x00
data_ov03_020fd7a8: ; 0x020fd7a8
	.byte 0x33, 0x00
data_ov03_020fd7aa: ; 0x020fd7aa
	.byte 0x25, 0x00
data_ov03_020fd7ac: ; 0x020fd7ac
	.byte 0x2b, 0x00
data_ov03_020fd7ae: ; 0x020fd7ae
	.byte 0x03, 0x00
data_ov03_020fd7b0: ; 0x020fd7b0
	.byte 0x18, 0x00
data_ov03_020fd7b2: ; 0x020fd7b2
	.byte 0x00, 0x00
data_ov03_020fd7b4: ; 0x020fd7b4
	.byte 0xff, 0xff
data_ov03_020fd7b6: ; 0x020fd7b6
	.byte 0xff, 0xff
data_ov03_020fd7b8: ; 0x020fd7b8
	.byte 0x20, 0x00
data_ov03_020fd7ba: ; 0x020fd7ba
	.byte 0x01, 0x00
data_ov03_020fd7bc: ; 0x020fd7bc
	.byte 0x2b, 0x00
data_ov03_020fd7be: ; 0x020fd7be
	.byte 0x08, 0x00
data_ov03_020fd7c0: ; 0x020fd7c0
	.byte 0x32, 0x00
data_ov03_020fd7c2: ; 0x020fd7c2
	.byte 0x1b, 0x00
data_ov03_020fd7c4: ; 0x020fd7c4
	.byte 0x2a, 0x00
data_ov03_020fd7c6: ; 0x020fd7c6
	.byte 0x3e, 0x00
data_ov03_020fd7c8: ; 0x020fd7c8
	.byte 0x1a, 0x00
data_ov03_020fd7ca: ; 0x020fd7ca
	.byte 0x3d, 0x00
data_ov03_020fd7cc: ; 0x020fd7cc
	.byte 0x0e, 0x00
data_ov03_020fd7ce: ; 0x020fd7ce
	.byte 0x27, 0x00
data_ov03_020fd7d0: ; 0x020fd7d0
	.byte 0x0c, 0x00
data_ov03_020fd7d2: ; 0x020fd7d2
	.byte 0x13, 0x00
data_ov03_020fd7d4: ; 0x020fd7d4
	.byte 0x1c, 0x00
data_ov03_020fd7d6: ; 0x020fd7d6
	.byte 0x03, 0x00
data_ov03_020fd7d8: ; 0x020fd7d8
	.byte 0xff, 0xff
data_ov03_020fd7da: ; 0x020fd7da
	.byte 0xff, 0xff
data_ov03_020fd7dc: ; 0x020fd7dc
	.byte 0x1f, 0x00
data_ov03_020fd7de: ; 0x020fd7de
	.byte 0x04, 0x00
data_ov03_020fd7e0: ; 0x020fd7e0
	.byte 0x11, 0x00
data_ov03_020fd7e2: ; 0x020fd7e2
	.byte 0x16, 0x00
data_ov03_020fd7e4: ; 0x020fd7e4
	.byte 0x13, 0x00
data_ov03_020fd7e6: ; 0x020fd7e6
	.byte 0x32, 0x00
data_ov03_020fd7e8: ; 0x020fd7e8
	.byte 0x20, 0x00
data_ov03_020fd7ea: ; 0x020fd7ea
	.byte 0x3b, 0x00
data_ov03_020fd7ec: ; 0x020fd7ec
	.byte 0x2d, 0x00
data_ov03_020fd7ee: ; 0x020fd7ee
	.byte 0x32, 0x00
data_ov03_020fd7f0: ; 0x020fd7f0
	.byte 0x2c, 0x00
data_ov03_020fd7f2: ; 0x020fd7f2
	.byte 0x0b, 0x00
data_ov03_020fd7f4: ; 0x020fd7f4
	.byte 0x20, 0x00
data_ov03_020fd7f6: ; 0x020fd7f6
	.byte 0x02, 0x00
data_ov03_020fd7f8: ; 0x020fd7f8
	.byte 0xff, 0xff
data_ov03_020fd7fa: ; 0x020fd7fa
	.byte 0xff, 0xff
data_ov03_020fd7fc: ; 0x020fd7fc
	.byte 0x30, 0x00
data_ov03_020fd7fe: ; 0x020fd7fe
	.byte 0x00, 0x00
data_ov03_020fd800: ; 0x020fd800
	.byte 0x0f, 0x00
data_ov03_020fd802: ; 0x020fd802
	.byte 0x3e, 0x00
data_ov03_020fd804: ; 0x020fd804
	.byte 0xff, 0xff
data_ov03_020fd806: ; 0x020fd806
	.byte 0xff, 0xff
data_ov03_020fd808: ; 0x020fd808
	.byte 0x1f, 0x00
data_ov03_020fd80a: ; 0x020fd80a
	.byte 0x00, 0x00
data_ov03_020fd80c: ; 0x020fd80c
	.byte 0x20, 0x00
data_ov03_020fd80e: ; 0x020fd80e
	.byte 0x3e, 0x00
data_ov03_020fd810: ; 0x020fd810
	.byte 0xff, 0xff
data_ov03_020fd812: ; 0x020fd812
	.byte 0xff, 0xff
data_ov03_020fd814: ; 0x020fd814
	.byte 0x16, 0x00
data_ov03_020fd816: ; 0x020fd816
	.byte 0x0a, 0x00
data_ov03_020fd818: ; 0x020fd818
	.byte 0x24, 0x00
data_ov03_020fd81a: ; 0x020fd81a
	.byte 0x00, 0x00
data_ov03_020fd81c: ; 0x020fd81c
	.byte 0x28, 0x00
data_ov03_020fd81e: ; 0x020fd81e
	.byte 0x3f, 0x00
data_ov03_020fd820: ; 0x020fd820
	.byte 0xff, 0xff
data_ov03_020fd822: ; 0x020fd822
	.byte 0xff, 0xff
data_ov03_020fd824: ; 0x020fd824
	.byte 0x12, 0x00
data_ov03_020fd826: ; 0x020fd826
	.byte 0x11, 0x00
data_ov03_020fd828: ; 0x020fd828
	.byte 0x21, 0x00
data_ov03_020fd82a: ; 0x020fd82a
	.byte 0x00, 0x00
data_ov03_020fd82c: ; 0x020fd82c
	.byte 0x21, 0x00
data_ov03_020fd82e: ; 0x020fd82e
	.byte 0x36, 0x00
data_ov03_020fd830: ; 0x020fd830
	.byte 0xff, 0xff
data_ov03_020fd832: ; 0x020fd832
	.byte 0xff, 0xff
data_ov03_020fd834: ; 0x020fd834
	.byte 0x18, 0x00
data_ov03_020fd836: ; 0x020fd836
	.byte 0x3f, 0x00
data_ov03_020fd838: ; 0x020fd838
	.byte 0x2a, 0x00
data_ov03_020fd83a: ; 0x020fd83a
	.byte 0x3f, 0x00
data_ov03_020fd83c: ; 0x020fd83c
	.byte 0xff, 0xff
data_ov03_020fd83e: ; 0x020fd83e
	.byte 0xff, 0xff
data_ov03_020fd840: ; 0x020fd840
	.byte 0x12, 0x00
data_ov03_020fd842: ; 0x020fd842
	.byte 0x13, 0x00
data_ov03_020fd844: ; 0x020fd844
	.byte 0x0d, 0x00
data_ov03_020fd846: ; 0x020fd846
	.byte 0x07, 0x00
data_ov03_020fd848: ; 0x020fd848
	.byte 0x1e, 0x00
data_ov03_020fd84a: ; 0x020fd84a
	.byte 0x00, 0x00
data_ov03_020fd84c: ; 0x020fd84c
	.byte 0x2f, 0x00
data_ov03_020fd84e: ; 0x020fd84e
	.byte 0x15, 0x00
data_ov03_020fd850: ; 0x020fd850
	.byte 0x0d, 0x00
data_ov03_020fd852: ; 0x020fd852
	.byte 0x3f, 0x00
data_ov03_020fd854: ; 0x020fd854
	.byte 0x32, 0x00
data_ov03_020fd856: ; 0x020fd856
	.byte 0x3e, 0x00
data_ov03_020fd858: ; 0x020fd858
	.byte 0xff, 0xff
data_ov03_020fd85a: ; 0x020fd85a
	.byte 0xff, 0xff
data_ov03_020fd85c: ; 0x020fd85c
	.byte 0x10, 0x00
data_ov03_020fd85e: ; 0x020fd85e
	.byte 0x0b, 0x00
data_ov03_020fd860: ; 0x020fd860
	.byte 0x18, 0x00
data_ov03_020fd862: ; 0x020fd862
	.byte 0x00, 0x00
data_ov03_020fd864: ; 0x020fd864
	.byte 0x2c, 0x00
data_ov03_020fd866: ; 0x020fd866
	.byte 0x05, 0x00
data_ov03_020fd868: ; 0x020fd868
	.byte 0x2e, 0x00
data_ov03_020fd86a: ; 0x020fd86a
	.byte 0x18, 0x00
data_ov03_020fd86c: ; 0x020fd86c
	.byte 0x1a, 0x00
data_ov03_020fd86e: ; 0x020fd86e
	.byte 0x1c, 0x00
data_ov03_020fd870: ; 0x020fd870
	.byte 0x33, 0x00
data_ov03_020fd872: ; 0x020fd872
	.byte 0x32, 0x00
data_ov03_020fd874: ; 0x020fd874
	.byte 0x20, 0x00
data_ov03_020fd876: ; 0x020fd876
	.byte 0x3f, 0x00
data_ov03_020fd878: ; 0x020fd878
	.byte 0x0b, 0x00
data_ov03_020fd87a: ; 0x020fd87a
	.byte 0x34, 0x00
data_ov03_020fd87c: ; 0x020fd87c
	.byte 0xff, 0xff
data_ov03_020fd87e: ; 0x020fd87e
	.byte 0xff, 0xff
data_ov03_020fd880: ; 0x020fd880
	.byte 0x21, 0x00
data_ov03_020fd882: ; 0x020fd882
	.byte 0x00, 0x00
data_ov03_020fd884: ; 0x020fd884
	.byte 0x0c, 0x00
data_ov03_020fd886: ; 0x020fd886
	.byte 0x2c, 0x00
data_ov03_020fd888: ; 0x020fd888
	.byte 0x32, 0x00
data_ov03_020fd88a: ; 0x020fd88a
	.byte 0x2c, 0x00
data_ov03_020fd88c: ; 0x020fd88c
	.byte 0xff, 0xff
data_ov03_020fd88e: ; 0x020fd88e
	.byte 0xff, 0xff
data_ov03_020fd890: ; 0x020fd890
	.byte 0x22, 0x00
data_ov03_020fd892: ; 0x020fd892
	.byte 0x09, 0x00
data_ov03_020fd894: ; 0x020fd894
	.byte 0x24, 0x00
data_ov03_020fd896: ; 0x020fd896
	.byte 0x3f, 0x00
data_ov03_020fd898: ; 0x020fd898
	.byte 0xff, 0xff
data_ov03_020fd89a: ; 0x020fd89a
	.byte 0xff, 0xff
data_ov03_020fd89c: ; 0x020fd89c
	.byte 0x39, 0x00
data_ov03_020fd89e: ; 0x020fd89e
	.byte 0x26, 0x00
data_ov03_020fd8a0: ; 0x020fd8a0
	.byte 0x04, 0x00
data_ov03_020fd8a2: ; 0x020fd8a2
	.byte 0x28, 0x00
data_ov03_020fd8a4: ; 0x020fd8a4
	.byte 0x1d, 0x00
data_ov03_020fd8a6: ; 0x020fd8a6
	.byte 0x00, 0x00
data_ov03_020fd8a8: ; 0x020fd8a8
	.byte 0x25, 0x00
data_ov03_020fd8aa: ; 0x020fd8aa
	.byte 0x3f, 0x00
data_ov03_020fd8ac: ; 0x020fd8ac
	.byte 0xff, 0xff
data_ov03_020fd8ae: ; 0x020fd8ae
	.byte 0xff, 0xff
data_ov03_020fd8b0: ; 0x020fd8b0
	.byte 0x0e, 0x00
data_ov03_020fd8b2: ; 0x020fd8b2
	.byte 0x00, 0x00
data_ov03_020fd8b4: ; 0x020fd8b4
	.byte 0x0f, 0x00
data_ov03_020fd8b6: ; 0x020fd8b6
	.byte 0x23, 0x00
data_ov03_020fd8b8: ; 0x020fd8b8
	.byte 0x21, 0x00
data_ov03_020fd8ba: ; 0x020fd8ba
	.byte 0x1e, 0x00
data_ov03_020fd8bc: ; 0x020fd8bc
	.byte 0x30, 0x00
data_ov03_020fd8be: ; 0x020fd8be
	.byte 0x2d, 0x00
data_ov03_020fd8c0: ; 0x020fd8c0
	.byte 0x25, 0x00
data_ov03_020fd8c2: ; 0x020fd8c2
	.byte 0x3f, 0x00
data_ov03_020fd8c4: ; 0x020fd8c4
	.byte 0x11, 0x00
data_ov03_020fd8c6: ; 0x020fd8c6
	.byte 0x37, 0x00
data_ov03_020fd8c8: ; 0x020fd8c8
	.byte 0xff, 0xff
data_ov03_020fd8ca: ; 0x020fd8ca
	.byte 0xff, 0xff
data_ov03_020fd8cc: ; 0x020fd8cc
	.byte 0x10, 0x00
data_ov03_020fd8ce: ; 0x020fd8ce
	.byte 0x0c, 0x00
data_ov03_020fd8d0: ; 0x020fd8d0
	.byte 0x2c, 0x00
data_ov03_020fd8d2: ; 0x020fd8d2
	.byte 0x0c, 0x00
data_ov03_020fd8d4: ; 0x020fd8d4
	.byte 0xff, 0xff
data_ov03_020fd8d6: ; 0x020fd8d6
	.byte 0xff, 0xff
data_ov03_020fd8d8: ; 0x020fd8d8
	.byte 0x0f, 0x00
data_ov03_020fd8da: ; 0x020fd8da
	.byte 0x02, 0x00
data_ov03_020fd8dc: ; 0x020fd8dc
	.byte 0x31, 0x00
data_ov03_020fd8de: ; 0x020fd8de
	.byte 0x00, 0x00
data_ov03_020fd8e0: ; 0x020fd8e0
	.byte 0xff, 0xff
data_ov03_020fd8e2: ; 0x020fd8e2
	.byte 0xff, 0xff
data_ov03_020fd8e4: ; 0x020fd8e4
	.byte 0x0c, 0x00
data_ov03_020fd8e6: ; 0x020fd8e6
	.byte 0x02, 0x00
data_ov03_020fd8e8: ; 0x020fd8e8
	.byte 0x10, 0x00
data_ov03_020fd8ea: ; 0x020fd8ea
	.byte 0x1f, 0x00
data_ov03_020fd8ec: ; 0x020fd8ec
	.byte 0x22, 0x00
data_ov03_020fd8ee: ; 0x020fd8ee
	.byte 0x1c, 0x00
data_ov03_020fd8f0: ; 0x020fd8f0
	.byte 0x32, 0x00
data_ov03_020fd8f2: ; 0x020fd8f2
	.byte 0x2c, 0x00
data_ov03_020fd8f4: ; 0x020fd8f4
	.byte 0x24, 0x00
data_ov03_020fd8f6: ; 0x020fd8f6
	.byte 0x3f, 0x00
data_ov03_020fd8f8: ; 0x020fd8f8
	.byte 0x0e, 0x00
data_ov03_020fd8fa: ; 0x020fd8fa
	.byte 0x39, 0x00
data_ov03_020fd8fc: ; 0x020fd8fc
	.byte 0xff, 0xff
data_ov03_020fd8fe: ; 0x020fd8fe
	.byte 0xff, 0xff
data_ov03_020fd900: ; 0x020fd900
	.byte 0x1d, 0x00
data_ov03_020fd902: ; 0x020fd902
	.byte 0x00, 0x00
data_ov03_020fd904: ; 0x020fd904
	.byte 0x13, 0x00
data_ov03_020fd906: ; 0x020fd906
	.byte 0x1e, 0x00
data_ov03_020fd908: ; 0x020fd908
	.byte 0x14, 0x00
data_ov03_020fd90a: ; 0x020fd90a
	.byte 0x37, 0x00
data_ov03_020fd90c: ; 0x020fd90c
	.byte 0x1d, 0x00
data_ov03_020fd90e: ; 0x020fd90e
	.byte 0x3f, 0x00
data_ov03_020fd910: ; 0x020fd910
	.byte 0x2c, 0x00
data_ov03_020fd912: ; 0x020fd912
	.byte 0x33, 0x00
data_ov03_020fd914: ; 0x020fd914
	.byte 0x25, 0x00
data_ov03_020fd916: ; 0x020fd916
	.byte 0x24, 0x00
data_ov03_020fd918: ; 0x020fd918
	.byte 0x13, 0x00
data_ov03_020fd91a: ; 0x020fd91a
	.byte 0x26, 0x00
data_ov03_020fd91c: ; 0x020fd91c
	.byte 0xff, 0xff
data_ov03_020fd91e: ; 0x020fd91e
	.byte 0xff, 0xff
data_ov03_020fd920: ; 0x020fd920
	.byte 0x2a, 0x00
data_ov03_020fd922: ; 0x020fd922
	.byte 0x09, 0x00
data_ov03_020fd924: ; 0x020fd924
	.byte 0x25, 0x00
data_ov03_020fd926: ; 0x020fd926
	.byte 0x00, 0x00
data_ov03_020fd928: ; 0x020fd928
	.byte 0x14, 0x00
data_ov03_020fd92a: ; 0x020fd92a
	.byte 0x04, 0x00
data_ov03_020fd92c: ; 0x020fd92c
	.byte 0x0e, 0x00
data_ov03_020fd92e: ; 0x020fd92e
	.byte 0x2c, 0x00
data_ov03_020fd930: ; 0x020fd930
	.byte 0x1f, 0x00
data_ov03_020fd932: ; 0x020fd932
	.byte 0x3f, 0x00
data_ov03_020fd934: ; 0x020fd934
	.byte 0x31, 0x00
data_ov03_020fd936: ; 0x020fd936
	.byte 0x36, 0x00
data_ov03_020fd938: ; 0x020fd938
	.byte 0x2b, 0x00
data_ov03_020fd93a: ; 0x020fd93a
	.byte 0x22, 0x00
data_ov03_020fd93c: ; 0x020fd93c
	.byte 0x12, 0x00
data_ov03_020fd93e: ; 0x020fd93e
	.byte 0x24, 0x00
data_ov03_020fd940: ; 0x020fd940
	.byte 0xff, 0xff
data_ov03_020fd942: ; 0x020fd942
	.byte 0xff, 0xff
data_ov03_020fd944: ; 0x020fd944
	.byte 0x0d, 0x00
data_ov03_020fd946: ; 0x020fd946
	.byte 0x00, 0x00
data_ov03_020fd948: ; 0x020fd948
	.byte 0x0f, 0x00
data_ov03_020fd94a: ; 0x020fd94a
	.byte 0x11, 0x00
data_ov03_020fd94c: ; 0x020fd94c
	.byte 0xff, 0xff
data_ov03_020fd94e: ; 0x020fd94e
	.byte 0xff, 0xff
data_ov03_020fd950: ; 0x020fd950
	.byte 0x13, 0x00
data_ov03_020fd952: ; 0x020fd952
	.byte 0x04, 0x00
data_ov03_020fd954: ; 0x020fd954
	.byte 0x32, 0x00
data_ov03_020fd956: ; 0x020fd956
	.byte 0x03, 0x00
data_ov03_020fd958: ; 0x020fd958
	.byte 0x22, 0x00
data_ov03_020fd95a: ; 0x020fd95a
	.byte 0x3f, 0x00
data_ov03_020fd95c: ; 0x020fd95c
	.byte 0xff, 0xff
data_ov03_020fd95e: ; 0x020fd95e
	.byte 0xff, 0xff
data_ov03_020fd960: ; 0x020fd960
	.byte 0x0a, 0x00
data_ov03_020fd962: ; 0x020fd962
	.byte 0x01, 0x00
data_ov03_020fd964: ; 0x020fd964
	.byte 0x35, 0x00
data_ov03_020fd966: ; 0x020fd966
	.byte 0x00, 0x00
data_ov03_020fd968: ; 0x020fd968
	.byte 0x19, 0x00
data_ov03_020fd96a: ; 0x020fd96a
	.byte 0x3e, 0x00
data_ov03_020fd96c: ; 0x020fd96c
	.byte 0xff, 0xff
data_ov03_020fd96e: ; 0x020fd96e
	.byte 0xff, 0xff
data_ov03_020fd970: ; 0x020fd970
	.byte 0x0e, 0x00
data_ov03_020fd972: ; 0x020fd972
	.byte 0x01, 0x00
data_ov03_020fd974: ; 0x020fd974
	.byte 0x31, 0x00
data_ov03_020fd976: ; 0x020fd976
	.byte 0x01, 0x00
data_ov03_020fd978: ; 0x020fd978
	.byte 0x18, 0x00
data_ov03_020fd97a: ; 0x020fd97a
	.byte 0x3e, 0x00
data_ov03_020fd97c: ; 0x020fd97c
	.byte 0xff, 0xff
data_ov03_020fd97e: ; 0x020fd97e
	.byte 0xff, 0xff
data_ov03_020fd980: ; 0x020fd980
	.byte 0x19, 0x00
data_ov03_020fd982: ; 0x020fd982
	.byte 0x1c, 0x00
data_ov03_020fd984: ; 0x020fd984
	.byte 0x27, 0x00
data_ov03_020fd986: ; 0x020fd986
	.byte 0x25, 0x00
data_ov03_020fd988: ; 0x020fd988
	.byte 0xff, 0xff
data_ov03_020fd98a: ; 0x020fd98a
	.byte 0xff, 0xff
data_ov03_020fd98c: ; 0x020fd98c
	.byte 0x19, 0x00
data_ov03_020fd98e: ; 0x020fd98e
	.byte 0x3e, 0x00
data_ov03_020fd990: ; 0x020fd990
	.byte 0x35, 0x00
data_ov03_020fd992: ; 0x020fd992
	.byte 0x00, 0x00
data_ov03_020fd994: ; 0x020fd994
	.byte 0x0a, 0x00
data_ov03_020fd996: ; 0x020fd996
	.byte 0x01, 0x00
data_ov03_020fd998: ; 0x020fd998
	.byte 0xff, 0xff
data_ov03_020fd99a: ; 0x020fd99a
	.byte 0xff, 0xff
data_ov03_020fd99c: ; 0x020fd99c
	.byte 0x27, 0x00
data_ov03_020fd99e: ; 0x020fd99e
	.byte 0x0b, 0x00
data_ov03_020fd9a0: ; 0x020fd9a0
	.byte 0x17, 0x00
data_ov03_020fd9a2: ; 0x020fd9a2
	.byte 0x00, 0x00
data_ov03_020fd9a4: ; 0x020fd9a4
	.byte 0x0e, 0x00
data_ov03_020fd9a6: ; 0x020fd9a6
	.byte 0x10, 0x00
data_ov03_020fd9a8: ; 0x020fd9a8
	.byte 0x2c, 0x00
data_ov03_020fd9aa: ; 0x020fd9aa
	.byte 0x25, 0x00
data_ov03_020fd9ac: ; 0x020fd9ac
	.byte 0x30, 0x00
data_ov03_020fd9ae: ; 0x020fd9ae
	.byte 0x35, 0x00
data_ov03_020fd9b0: ; 0x020fd9b0
	.byte 0x25, 0x00
data_ov03_020fd9b2: ; 0x020fd9b2
	.byte 0x3f, 0x00
data_ov03_020fd9b4: ; 0x020fd9b4
	.byte 0x13, 0x00
data_ov03_020fd9b6: ; 0x020fd9b6
	.byte 0x3a, 0x00
data_ov03_020fd9b8: ; 0x020fd9b8
	.byte 0x10, 0x00
data_ov03_020fd9ba: ; 0x020fd9ba
	.byte 0x26, 0x00
data_ov03_020fd9bc: ; 0x020fd9bc
	.byte 0x2b, 0x00
data_ov03_020fd9be: ; 0x020fd9be
	.byte 0x11, 0x00
data_ov03_020fd9c0: ; 0x020fd9c0
	.byte 0xff, 0xff
data_ov03_020fd9c2: ; 0x020fd9c2
	.byte 0xff, 0xff
data_ov03_020fd9c4: ; 0x020fd9c4
	.byte 0x27, 0x00
data_ov03_020fd9c6: ; 0x020fd9c6
	.byte 0x15, 0x00
data_ov03_020fd9c8: ; 0x020fd9c8
	.byte 0x2d, 0x00
data_ov03_020fd9ca: ; 0x020fd9ca
	.byte 0x0c, 0x00
data_ov03_020fd9cc: ; 0x020fd9cc
	.byte 0x27, 0x00
data_ov03_020fd9ce: ; 0x020fd9ce
	.byte 0x01, 0x00
data_ov03_020fd9d0: ; 0x020fd9d0
	.byte 0x14, 0x00
data_ov03_020fd9d2: ; 0x020fd9d2
	.byte 0x07, 0x00
data_ov03_020fd9d4: ; 0x020fd9d4
	.byte 0x15, 0x00
data_ov03_020fd9d6: ; 0x020fd9d6
	.byte 0x17, 0x00
data_ov03_020fd9d8: ; 0x020fd9d8
	.byte 0x2c, 0x00
data_ov03_020fd9da: ; 0x020fd9da
	.byte 0x2e, 0x00
data_ov03_020fd9dc: ; 0x020fd9dc
	.byte 0x28, 0x00
data_ov03_020fd9de: ; 0x020fd9de
	.byte 0x3e, 0x00
data_ov03_020fd9e0: ; 0x020fd9e0
	.byte 0x1c, 0x00
data_ov03_020fd9e2: ; 0x020fd9e2
	.byte 0x3d, 0x00
data_ov03_020fd9e4: ; 0x020fd9e4
	.byte 0x16, 0x00
data_ov03_020fd9e6: ; 0x020fd9e6
	.byte 0x2a, 0x00
data_ov03_020fd9e8: ; 0x020fd9e8
	.byte 0x28, 0x00
data_ov03_020fd9ea: ; 0x020fd9ea
	.byte 0x13, 0x00
data_ov03_020fd9ec: ; 0x020fd9ec
	.byte 0xff, 0xff
data_ov03_020fd9ee: ; 0x020fd9ee
	.byte 0xff, 0xff
data_ov03_020fd9f0: ; 0x020fd9f0
	.byte 0x18, 0x00
data_ov03_020fd9f2: ; 0x020fd9f2
	.byte 0x1b, 0x00
data_ov03_020fd9f4: ; 0x020fd9f4
	.byte 0x10, 0x00
data_ov03_020fd9f6: ; 0x020fd9f6
	.byte 0x0c, 0x00
data_ov03_020fd9f8: ; 0x020fd9f8
	.byte 0x14, 0x00
data_ov03_020fd9fa: ; 0x020fd9fa
	.byte 0x01, 0x00
data_ov03_020fd9fc: ; 0x020fd9fc
	.byte 0x23, 0x00
data_ov03_020fd9fe: ; 0x020fd9fe
	.byte 0x04, 0x00
data_ov03_020fda00: ; 0x020fda00
	.byte 0x27, 0x00
data_ov03_020fda02: ; 0x020fda02
	.byte 0x11, 0x00
data_ov03_020fda04: ; 0x020fda04
	.byte 0x14, 0x00
data_ov03_020fda06: ; 0x020fda06
	.byte 0x25, 0x00
data_ov03_020fda08: ; 0x020fda08
	.byte 0x17, 0x00
data_ov03_020fda0a: ; 0x020fda0a
	.byte 0x3e, 0x00
data_ov03_020fda0c: ; 0x020fda0c
	.byte 0x2e, 0x00
data_ov03_020fda0e: ; 0x020fda0e
	.byte 0x34, 0x00
data_ov03_020fda10: ; 0x020fda10
	.byte 0x1f, 0x00
data_ov03_020fda12: ; 0x020fda12
	.byte 0x1e, 0x00
data_ov03_020fda14: ; 0x020fda14
	.byte 0xff, 0xff
data_ov03_020fda16: ; 0x020fda16
	.byte 0xff, 0xff
data_ov03_020fda18: ; 0x020fda18
	.byte 0x2e, 0x00
data_ov03_020fda1a: ; 0x020fda1a
	.byte 0x10, 0x00
data_ov03_020fda1c: ; 0x020fda1c
	.byte 0x20, 0x00
data_ov03_020fda1e: ; 0x020fda1e
	.byte 0x00, 0x00
data_ov03_020fda20: ; 0x020fda20
	.byte 0x0f, 0x00
data_ov03_020fda22: ; 0x020fda22
	.byte 0x0c, 0x00
data_ov03_020fda24: ; 0x020fda24
	.byte 0x18, 0x00
data_ov03_020fda26: ; 0x020fda26
	.byte 0x1f, 0x00
data_ov03_020fda28: ; 0x020fda28
	.byte 0x2e, 0x00
data_ov03_020fda2a: ; 0x020fda2a
	.byte 0x13, 0x00
data_ov03_020fda2c: ; 0x020fda2c
	.byte 0x24, 0x00
data_ov03_020fda2e: ; 0x020fda2e
	.byte 0x3d, 0x00
data_ov03_020fda30: ; 0x020fda30
	.byte 0xff, 0xff
data_ov03_020fda32: ; 0x020fda32
	.byte 0xff, 0xff
data_ov03_020fda34: ; 0x020fda34
	.byte 0x2e, 0x00
data_ov03_020fda36: ; 0x020fda36
	.byte 0x0f, 0x00
data_ov03_020fda38: ; 0x020fda38
	.byte 0x2b, 0x00
data_ov03_020fda3a: ; 0x020fda3a
	.byte 0x1c, 0x00
data_ov03_020fda3c: ; 0x020fda3c
	.byte 0x1d, 0x00
data_ov03_020fda3e: ; 0x020fda3e
	.byte 0x1d, 0x00
data_ov03_020fda40: ; 0x020fda40
	.byte 0x12, 0x00
data_ov03_020fda42: ; 0x020fda42
	.byte 0x16, 0x00
data_ov03_020fda44: ; 0x020fda44
	.byte 0x0f, 0x00
data_ov03_020fda46: ; 0x020fda46
	.byte 0x08, 0x00
data_ov03_020fda48: ; 0x020fda48
	.byte 0x21, 0x00
data_ov03_020fda4a: ; 0x020fda4a
	.byte 0x00, 0x00
data_ov03_020fda4c: ; 0x020fda4c
	.byte 0x2d, 0x00
data_ov03_020fda4e: ; 0x020fda4e
	.byte 0x0a, 0x00
data_ov03_020fda50: ; 0x020fda50
	.byte 0x26, 0x00
data_ov03_020fda52: ; 0x020fda52
	.byte 0x3e, 0x00
data_ov03_020fda54: ; 0x020fda54
	.byte 0xff, 0xff
data_ov03_020fda56: ; 0x020fda56
	.byte 0xff, 0xff
data_ov03_020fda58: ; 0x020fda58
	.byte 0x3d, 0x00
data_ov03_020fda5a: ; 0x020fda5a
	.byte 0x0b, 0x00
data_ov03_020fda5c: ; 0x020fda5c
	.byte 0x00, 0x00
data_ov03_020fda5e: ; 0x020fda5e
	.byte 0x1f, 0x00
data_ov03_020fda60: ; 0x020fda60
	.byte 0x3d, 0x00
data_ov03_020fda62: ; 0x020fda62
	.byte 0x32, 0x00
data_ov03_020fda64: ; 0x020fda64
	.byte 0xff, 0xff
data_ov03_020fda66: ; 0x020fda66
	.byte 0xff, 0xff
data_ov03_020fda68: ; 0x020fda68
	.byte 0x00, 0x00
data_ov03_020fda6a: ; 0x020fda6a
	.byte 0x15, 0x00
data_ov03_020fda6c: ; 0x020fda6c
	.byte 0x3d, 0x00
data_ov03_020fda6e: ; 0x020fda6e
	.byte 0x13, 0x00
data_ov03_020fda70: ; 0x020fda70
	.byte 0xff, 0xff
data_ov03_020fda72: ; 0x020fda72
	.byte 0xff, 0xff
data_ov03_020fda74: ; 0x020fda74
	.byte 0x00, 0x00
data_ov03_020fda76: ; 0x020fda76
	.byte 0x2b, 0x00
data_ov03_020fda78: ; 0x020fda78
	.byte 0x3c, 0x00
data_ov03_020fda7a: ; 0x020fda7a
	.byte 0x2a, 0x00
data_ov03_020fda7c: ; 0x020fda7c
	.byte 0xff, 0xff
data_ov03_020fda7e: ; 0x020fda7e
	.byte 0xff, 0xff
data_ov03_020fda80: ; 0x020fda80
	.byte 0x00, 0x00
data_ov03_020fda82: ; 0x020fda82
	.byte 0x08, 0x00
data_ov03_020fda84: ; 0x020fda84
	.byte 0x3f, 0x00
data_ov03_020fda86: ; 0x020fda86
	.byte 0x1e, 0x00
data_ov03_020fda88: ; 0x020fda88
	.byte 0x00, 0x00
data_ov03_020fda8a: ; 0x020fda8a
	.byte 0x36, 0x00
data_ov03_020fda8c: ; 0x020fda8c
	.byte 0xff, 0xff
data_ov03_020fda8e: ; 0x020fda8e
	.byte 0xff, 0xff
data_ov03_020fda90: ; 0x020fda90
	.byte 0x2d, 0x00
data_ov03_020fda92: ; 0x020fda92
	.byte 0x12, 0x00
data_ov03_020fda94: ; 0x020fda94
	.byte 0x22, 0x00
data_ov03_020fda96: ; 0x020fda96
	.byte 0x00, 0x00
data_ov03_020fda98: ; 0x020fda98
	.byte 0x0f, 0x00
data_ov03_020fda9a: ; 0x020fda9a
	.byte 0x05, 0x00
data_ov03_020fda9c: ; 0x020fda9c
	.byte 0x06, 0x00
data_ov03_020fda9e: ; 0x020fda9e
	.byte 0x14, 0x00
data_ov03_020fdaa0: ; 0x020fdaa0
	.byte 0x04, 0x00
data_ov03_020fdaa2: ; 0x020fdaa2
	.byte 0x31, 0x00
data_ov03_020fdaa4: ; 0x020fdaa4
	.byte 0x0a, 0x00
data_ov03_020fdaa6: ; 0x020fdaa6
	.byte 0x3c, 0x00
data_ov03_020fdaa8: ; 0x020fdaa8
	.byte 0x19, 0x00
data_ov03_020fdaaa: ; 0x020fdaaa
	.byte 0x3b, 0x00
data_ov03_020fdaac: ; 0x020fdaac
	.byte 0x29, 0x00
data_ov03_020fdaae: ; 0x020fdaae
	.byte 0x18, 0x00
data_ov03_020fdab0: ; 0x020fdab0
	.byte 0x2a, 0x00
data_ov03_020fdab2: ; 0x020fdab2
	.byte 0x27, 0x00
data_ov03_020fdab4: ; 0x020fdab4
	.byte 0x3a, 0x00
data_ov03_020fdab6: ; 0x020fdab6
	.byte 0x3e, 0x00
data_ov03_020fdab8: ; 0x020fdab8
	.byte 0xff, 0xff
data_ov03_020fdaba: ; 0x020fdaba
	.byte 0xff, 0xff
data_ov03_020fdabc: ; 0x020fdabc
	.byte 0x0f, 0x00
data_ov03_020fdabe: ; 0x020fdabe
	.byte 0x00, 0x00
data_ov03_020fdac0: ; 0x020fdac0
	.byte 0x12, 0x00
data_ov03_020fdac2: ; 0x020fdac2
	.byte 0x3a, 0x00
data_ov03_020fdac4: ; 0x020fdac4
	.byte 0x10, 0x00
data_ov03_020fdac6: ; 0x020fdac6
	.byte 0x2c, 0x00
data_ov03_020fdac8: ; 0x020fdac8
	.byte 0x1d, 0x00
data_ov03_020fdaca: ; 0x020fdaca
	.byte 0x21, 0x00
data_ov03_020fdacc: ; 0x020fdacc
	.byte 0x27, 0x00
data_ov03_020fdace: ; 0x020fdace
	.byte 0x24, 0x00
data_ov03_020fdad0: ; 0x020fdad0
	.byte 0x2f, 0x00
data_ov03_020fdad2: ; 0x020fdad2
	.byte 0x34, 0x00
data_ov03_020fdad4: ; 0x020fdad4
	.byte 0x20, 0x00
data_ov03_020fdad6: ; 0x020fdad6
	.byte 0x3f, 0x00
data_ov03_020fdad8: ; 0x020fdad8
	.byte 0x11, 0x00
data_ov03_020fdada: ; 0x020fdada
	.byte 0x38, 0x00
data_ov03_020fdadc: ; 0x020fdadc
	.byte 0xff, 0xff
data_ov03_020fdade: ; 0x020fdade
	.byte 0xff, 0xff
data_ov03_020fdae0: ; 0x020fdae0
	.byte 0x13, 0x00
data_ov03_020fdae2: ; 0x020fdae2
	.byte 0x00, 0x00
data_ov03_020fdae4: ; 0x020fdae4
	.byte 0x16, 0x00
data_ov03_020fdae6: ; 0x020fdae6
	.byte 0x3c, 0x00
data_ov03_020fdae8: ; 0x020fdae8
	.byte 0xff, 0xff
data_ov03_020fdaea: ; 0x020fdaea
	.byte 0xff, 0xff
data_ov03_020fdaec: ; 0x020fdaec
	.byte 0x16, 0x00
data_ov03_020fdaee: ; 0x020fdaee
	.byte 0x24, 0x00
data_ov03_020fdaf0: ; 0x020fdaf0
	.byte 0x2b, 0x00
data_ov03_020fdaf2: ; 0x020fdaf2
	.byte 0x2d, 0x00
data_ov03_020fdaf4: ; 0x020fdaf4
	.byte 0x24, 0x00
data_ov03_020fdaf6: ; 0x020fdaf6
	.byte 0x3e, 0x00
data_ov03_020fdaf8: ; 0x020fdaf8
	.byte 0x17, 0x00
data_ov03_020fdafa: ; 0x020fdafa
	.byte 0x3d, 0x00
data_ov03_020fdafc: ; 0x020fdafc
	.byte 0xff, 0xff
data_ov03_020fdafe: ; 0x020fdafe
	.byte 0xff, 0xff
data_ov03_020fdb00: ; 0x020fdb00
	.byte 0x0c, 0x00
data_ov03_020fdb02: ; 0x020fdb02
	.byte 0x38, 0x00
data_ov03_020fdb04: ; 0x020fdb04
	.byte 0x1d, 0x00
data_ov03_020fdb06: ; 0x020fdb06
	.byte 0x28, 0x00
data_ov03_020fdb08: ; 0x020fdb08
	.byte 0x22, 0x00
data_ov03_020fdb0a: ; 0x020fdb0a
	.byte 0x00, 0x00
data_ov03_020fdb0c: ; 0x020fdb0c
	.byte 0x17, 0x00
data_ov03_020fdb0e: ; 0x020fdb0e
	.byte 0x35, 0x00
data_ov03_020fdb10: ; 0x020fdb10
	.byte 0x1d, 0x00
data_ov03_020fdb12: ; 0x020fdb12
	.byte 0x3f, 0x00
data_ov03_020fdb14: ; 0x020fdb14
	.byte 0x23, 0x00
data_ov03_020fdb16: ; 0x020fdb16
	.byte 0x3a, 0x00
data_ov03_020fdb18: ; 0x020fdb18
	.byte 0x20, 0x00
data_ov03_020fdb1a: ; 0x020fdb1a
	.byte 0x2e, 0x00
data_ov03_020fdb1c: ; 0x020fdb1c
	.byte 0x31, 0x00
data_ov03_020fdb1e: ; 0x020fdb1e
	.byte 0x34, 0x00
data_ov03_020fdb20: ; 0x020fdb20
	.byte 0xff, 0xff
data_ov03_020fdb22: ; 0x020fdb22
	.byte 0xff, 0xff
data_ov03_020fdb24: ; 0x020fdb24
	.byte 0x37, 0x00
data_ov03_020fdb26: ; 0x020fdb26
	.byte 0x12, 0x00
data_ov03_020fdb28: ; 0x020fdb28
	.byte 0x2c, 0x00
data_ov03_020fdb2a: ; 0x020fdb2a
	.byte 0x04, 0x00
data_ov03_020fdb2c: ; 0x020fdb2c
	.byte 0x17, 0x00
data_ov03_020fdb2e: ; 0x020fdb2e
	.byte 0x00, 0x00
data_ov03_020fdb30: ; 0x020fdb30
	.byte 0x07, 0x00
data_ov03_020fdb32: ; 0x020fdb32
	.byte 0x0f, 0x00
data_ov03_020fdb34: ; 0x020fdb34
	.byte 0x06, 0x00
data_ov03_020fdb36: ; 0x020fdb36
	.byte 0x22, 0x00
data_ov03_020fdb38: ; 0x020fdb38
	.byte 0x10, 0x00
data_ov03_020fdb3a: ; 0x020fdb3a
	.byte 0x36, 0x00
data_ov03_020fdb3c: ; 0x020fdb3c
	.byte 0x23, 0x00
data_ov03_020fdb3e: ; 0x020fdb3e
	.byte 0x3f, 0x00
data_ov03_020fdb40: ; 0x020fdb40
	.byte 0x38, 0x00
data_ov03_020fdb42: ; 0x020fdb42
	.byte 0x31, 0x00
data_ov03_020fdb44: ; 0x020fdb44
	.byte 0xff, 0xff
data_ov03_020fdb46: ; 0x020fdb46
	.byte 0xff, 0xff
data_ov03_020fdb48: ; 0x020fdb48
	.byte 0x23, 0x00
data_ov03_020fdb4a: ; 0x020fdb4a
	.byte 0x29, 0x00
data_ov03_020fdb4c: ; 0x020fdb4c
	.byte 0x15, 0x00
data_ov03_020fdb4e: ; 0x020fdb4e
	.byte 0x1a, 0x00
data_ov03_020fdb50: ; 0x020fdb50
	.byte 0x07, 0x00
data_ov03_020fdb52: ; 0x020fdb52
	.byte 0x26, 0x00
data_ov03_020fdb54: ; 0x020fdb54
	.byte 0x14, 0x00
data_ov03_020fdb56: ; 0x020fdb56
	.byte 0x3f, 0x00
data_ov03_020fdb58: ; 0x020fdb58
	.byte 0x20, 0x00
data_ov03_020fdb5a: ; 0x020fdb5a
	.byte 0x34, 0x00
data_ov03_020fdb5c: ; 0x020fdb5c
	.byte 0x23, 0x00
data_ov03_020fdb5e: ; 0x020fdb5e
	.byte 0x00, 0x00
data_ov03_020fdb60: ; 0x020fdb60
	.byte 0x28, 0x00
data_ov03_020fdb62: ; 0x020fdb62
	.byte 0x37, 0x00
data_ov03_020fdb64: ; 0x020fdb64
	.byte 0x34, 0x00
data_ov03_020fdb66: ; 0x020fdb66
	.byte 0x3c, 0x00
data_ov03_020fdb68: ; 0x020fdb68
	.byte 0xff, 0xff
data_ov03_020fdb6a: ; 0x020fdb6a
	.byte 0xff, 0xff
data_ov03_020fdb6c: ; 0x020fdb6c
	.byte 0x28, 0x00
data_ov03_020fdb6e: ; 0x020fdb6e
	.byte 0x1c, 0x00
data_ov03_020fdb70: ; 0x020fdb70
	.byte 0x13, 0x00
data_ov03_020fdb72: ; 0x020fdb72
	.byte 0x19, 0x00
data_ov03_020fdb74: ; 0x020fdb74
	.byte 0x0a, 0x00
data_ov03_020fdb76: ; 0x020fdb76
	.byte 0x29, 0x00
data_ov03_020fdb78: ; 0x020fdb78
	.byte 0x1b, 0x00
data_ov03_020fdb7a: ; 0x020fdb7a
	.byte 0x38, 0x00
data_ov03_020fdb7c: ; 0x020fdb7c
	.byte 0x29, 0x00
data_ov03_020fdb7e: ; 0x020fdb7e
	.byte 0x2e, 0x00
data_ov03_020fdb80: ; 0x020fdb80
	.byte 0xff, 0xff
data_ov03_020fdb82: ; 0x020fdb82
	.byte 0xff, 0xff
data_ov03_020fdb84: ; 0x020fdb84
	.byte 0x2e, 0x00
data_ov03_020fdb86: ; 0x020fdb86
	.byte 0x00, 0x00
data_ov03_020fdb88: ; 0x020fdb88
	.byte 0x2a, 0x00
data_ov03_020fdb8a: ; 0x020fdb8a
	.byte 0x2c, 0x00
data_ov03_020fdb8c: ; 0x020fdb8c
	.byte 0x34, 0x00
data_ov03_020fdb8e: ; 0x020fdb8e
	.byte 0x3d, 0x00
data_ov03_020fdb90: ; 0x020fdb90
	.byte 0xff, 0xff
data_ov03_020fdb92: ; 0x020fdb92
	.byte 0xff, 0xff
data_ov03_020fdb94: ; 0x020fdb94
	.byte 0x0a, 0x00
data_ov03_020fdb96: ; 0x020fdb96
	.byte 0x1f, 0x00
data_ov03_020fdb98: ; 0x020fdb98
	.byte 0x33, 0x00
data_ov03_020fdb9a: ; 0x020fdb9a
	.byte 0x1b, 0x00
data_ov03_020fdb9c: ; 0x020fdb9c
	.byte 0x34, 0x00
data_ov03_020fdb9e: ; 0x020fdb9e
	.byte 0x0e, 0x00
data_ov03_020fdba0: ; 0x020fdba0
	.byte 0x28, 0x00
data_ov03_020fdba2: ; 0x020fdba2
	.byte 0x03, 0x00
data_ov03_020fdba4: ; 0x020fdba4
	.byte 0x17, 0x00
data_ov03_020fdba6: ; 0x020fdba6
	.byte 0x02, 0x00
data_ov03_020fdba8: ; 0x020fdba8
	.byte 0x07, 0x00
data_ov03_020fdbaa: ; 0x020fdbaa
	.byte 0x10, 0x00
data_ov03_020fdbac: ; 0x020fdbac
	.byte 0x05, 0x00
data_ov03_020fdbae: ; 0x020fdbae
	.byte 0x2c, 0x00
data_ov03_020fdbb0: ; 0x020fdbb0
	.byte 0x1a, 0x00
data_ov03_020fdbb2: ; 0x020fdbb2
	.byte 0x3e, 0x00
data_ov03_020fdbb4: ; 0x020fdbb4
	.byte 0x3b, 0x00
data_ov03_020fdbb6: ; 0x020fdbb6
	.byte 0x38, 0x00
data_ov03_020fdbb8: ; 0x020fdbb8
	.byte 0xff, 0xff
data_ov03_020fdbba: ; 0x020fdbba
	.byte 0xff, 0xff
data_ov03_020fdbbc: ; 0x020fdbbc
	.byte 0x2e, 0x00
data_ov03_020fdbbe: ; 0x020fdbbe
	.byte 0x16, 0x00
data_ov03_020fdbc0: ; 0x020fdbc0
	.byte 0x27, 0x00
data_ov03_020fdbc2: ; 0x020fdbc2
	.byte 0x02, 0x00
data_ov03_020fdbc4: ; 0x020fdbc4
	.byte 0x19, 0x00
data_ov03_020fdbc6: ; 0x020fdbc6
	.byte 0x05, 0x00
data_ov03_020fdbc8: ; 0x020fdbc8
	.byte 0x24, 0x00
data_ov03_020fdbca: ; 0x020fdbca
	.byte 0x31, 0x00
data_ov03_020fdbcc: ; 0x020fdbcc
	.byte 0x1c, 0x00
data_ov03_020fdbce: ; 0x020fdbce
	.byte 0x3e, 0x00
data_ov03_020fdbd0: ; 0x020fdbd0
	.byte 0xff, 0xff
data_ov03_020fdbd2: ; 0x020fdbd2
	.byte 0xff, 0xff
data_ov03_020fdbd4: ; 0x020fdbd4
	.byte 0x0e, 0x00
data_ov03_020fdbd6: ; 0x020fdbd6
	.byte 0x23, 0x00
data_ov03_020fdbd8: ; 0x020fdbd8
	.byte 0x2b, 0x00
data_ov03_020fdbda: ; 0x020fdbda
	.byte 0x24, 0x00
data_ov03_020fdbdc: ; 0x020fdbdc
	.byte 0xff, 0xff
data_ov03_020fdbde: ; 0x020fdbde
	.byte 0xff, 0xff
data_ov03_020fdbe0: ; 0x020fdbe0
	.byte 0x12, 0x00
data_ov03_020fdbe2: ; 0x020fdbe2
	.byte 0x27, 0x00
data_ov03_020fdbe4: ; 0x020fdbe4
	.byte 0x28, 0x00
data_ov03_020fdbe6: ; 0x020fdbe6
	.byte 0x13, 0x00
data_ov03_020fdbe8: ; 0x020fdbe8
	.byte 0x27, 0x00
data_ov03_020fdbea: ; 0x020fdbea
	.byte 0x00, 0x00
data_ov03_020fdbec: ; 0x020fdbec
	.byte 0x1c, 0x00
data_ov03_020fdbee: ; 0x020fdbee
	.byte 0x38, 0x00
data_ov03_020fdbf0: ; 0x020fdbf0
	.byte 0x25, 0x00
data_ov03_020fdbf2: ; 0x020fdbf2
	.byte 0x3e, 0x00
data_ov03_020fdbf4: ; 0x020fdbf4
	.byte 0x20, 0x00
data_ov03_020fdbf6: ; 0x020fdbf6
	.byte 0x21, 0x00
data_ov03_020fdbf8: ; 0x020fdbf8
	.byte 0x2b, 0x00
data_ov03_020fdbfa: ; 0x020fdbfa
	.byte 0x22, 0x00
data_ov03_020fdbfc: ; 0x020fdbfc
	.byte 0xff, 0xff
data_ov03_020fdbfe: ; 0x020fdbfe
	.byte 0xff, 0xff
data_ov03_020fdc00: ; 0x020fdc00
	.byte 0x27, 0x00
data_ov03_020fdc02: ; 0x020fdc02
	.byte 0x0d, 0x00
data_ov03_020fdc04: ; 0x020fdc04
	.byte 0x24, 0x00
data_ov03_020fdc06: ; 0x020fdc06
	.byte 0x02, 0x00
data_ov03_020fdc08: ; 0x020fdc08
	.byte 0x18, 0x00
data_ov03_020fdc0a: ; 0x020fdc0a
	.byte 0x00, 0x00
data_ov03_020fdc0c: ; 0x020fdc0c
	.byte 0x0f, 0x00
data_ov03_020fdc0e: ; 0x020fdc0e
	.byte 0x10, 0x00
data_ov03_020fdc10: ; 0x020fdc10
	.byte 0x18, 0x00
data_ov03_020fdc12: ; 0x020fdc12
	.byte 0x18, 0x00
data_ov03_020fdc14: ; 0x020fdc14
	.byte 0x29, 0x00
data_ov03_020fdc16: ; 0x020fdc16
	.byte 0x09, 0x00
data_ov03_020fdc18: ; 0x020fdc18
	.byte 0x26, 0x00
data_ov03_020fdc1a: ; 0x020fdc1a
	.byte 0x38, 0x00
data_ov03_020fdc1c: ; 0x020fdc1c
	.byte 0x18, 0x00
data_ov03_020fdc1e: ; 0x020fdc1e
	.byte 0x3e, 0x00
data_ov03_020fdc20: ; 0x020fdc20
	.byte 0x17, 0x00
data_ov03_020fdc22: ; 0x020fdc22
	.byte 0x2c, 0x00
data_ov03_020fdc24: ; 0x020fdc24
	.byte 0x2e, 0x00
data_ov03_020fdc26: ; 0x020fdc26
	.byte 0x1a, 0x00
data_ov03_020fdc28: ; 0x020fdc28
	.byte 0xff, 0xff
data_ov03_020fdc2a: ; 0x020fdc2a
	.byte 0xff, 0xff
data_ov03_020fdc2c: ; 0x020fdc2c
	.byte 0x1c, 0x00
data_ov03_020fdc2e: ; 0x020fdc2e
	.byte 0x00, 0x00
data_ov03_020fdc30: ; 0x020fdc30
	.byte 0x22, 0x00
data_ov03_020fdc32: ; 0x020fdc32
	.byte 0x05, 0x00
data_ov03_020fdc34: ; 0x020fdc34
	.byte 0x0f, 0x00
data_ov03_020fdc36: ; 0x020fdc36
	.byte 0x0d, 0x00
data_ov03_020fdc38: ; 0x020fdc38
	.byte 0x10, 0x00
data_ov03_020fdc3a: ; 0x020fdc3a
	.byte 0x1b, 0x00
data_ov03_020fdc3c: ; 0x020fdc3c
	.byte 0x26, 0x00
data_ov03_020fdc3e: ; 0x020fdc3e
	.byte 0x19, 0x00
data_ov03_020fdc40: ; 0x020fdc40
	.byte 0x2f, 0x00
data_ov03_020fdc42: ; 0x020fdc42
	.byte 0x10, 0x00
data_ov03_020fdc44: ; 0x020fdc44
	.byte 0x29, 0x00
data_ov03_020fdc46: ; 0x020fdc46
	.byte 0x08, 0x00
data_ov03_020fdc48: ; 0x020fdc48
	.byte 0xff, 0xff
data_ov03_020fdc4a: ; 0x020fdc4a
	.byte 0xff, 0xff
data_ov03_020fdc4c: ; 0x020fdc4c
	.byte 0x18, 0x00
data_ov03_020fdc4e: ; 0x020fdc4e
	.byte 0x20, 0x00
data_ov03_020fdc50: ; 0x020fdc50
	.byte 0x14, 0x00
data_ov03_020fdc52: ; 0x020fdc52
	.byte 0x28, 0x00
data_ov03_020fdc54: ; 0x020fdc54
	.byte 0x2f, 0x00
data_ov03_020fdc56: ; 0x020fdc56
	.byte 0x2a, 0x00
data_ov03_020fdc58: ; 0x020fdc58
	.byte 0x33, 0x00
data_ov03_020fdc5a: ; 0x020fdc5a
	.byte 0x36, 0x00
data_ov03_020fdc5c: ; 0x020fdc5c
	.byte 0x15, 0x00
data_ov03_020fdc5e: ; 0x020fdc5e
	.byte 0x3e, 0x00
data_ov03_020fdc60: ; 0x020fdc60
	.byte 0x0b, 0x00
data_ov03_020fdc62: ; 0x020fdc62
	.byte 0x33, 0x00
data_ov03_020fdc64: ; 0x020fdc64
	.byte 0x15, 0x00
data_ov03_020fdc66: ; 0x020fdc66
	.byte 0x2a, 0x00
data_ov03_020fdc68: ; 0x020fdc68
	.byte 0xff, 0xff
data_ov03_020fdc6a: ; 0x020fdc6a
	.byte 0xff, 0xff
data_ov03_020fdc6c: ; 0x020fdc6c
	.byte 0x11, 0x00
data_ov03_020fdc6e: ; 0x020fdc6e
	.byte 0x00, 0x00
data_ov03_020fdc70: ; 0x020fdc70
	.byte 0x13, 0x00
data_ov03_020fdc72: ; 0x020fdc72
	.byte 0x3e, 0x00
data_ov03_020fdc74: ; 0x020fdc74
	.byte 0x19, 0x00
data_ov03_020fdc76: ; 0x020fdc76
	.byte 0x21, 0x00
data_ov03_020fdc78: ; 0x020fdc78
	.byte 0x20, 0x00
data_ov03_020fdc7a: ; 0x020fdc7a
	.byte 0x22, 0x00
data_ov03_020fdc7c: ; 0x020fdc7c
	.byte 0x22, 0x00
data_ov03_020fdc7e: ; 0x020fdc7e
	.byte 0x35, 0x00
data_ov03_020fdc80: ; 0x020fdc80
	.byte 0x2b, 0x00
data_ov03_020fdc82: ; 0x020fdc82
	.byte 0x3e, 0x00
data_ov03_020fdc84: ; 0x020fdc84
	.byte 0xff, 0xff
data_ov03_020fdc86: ; 0x020fdc86
	.byte 0xff, 0xff
data_ov03_020fdc88: ; 0x020fdc88
	.byte 0x1a, 0x00
data_ov03_020fdc8a: ; 0x020fdc8a
	.byte 0x00, 0x00
data_ov03_020fdc8c: ; 0x020fdc8c
	.byte 0x21, 0x00
data_ov03_020fdc8e: ; 0x020fdc8e
	.byte 0x05, 0x00
data_ov03_020fdc90: ; 0x020fdc90
	.byte 0xff, 0xff
data_ov03_020fdc92: ; 0x020fdc92
	.byte 0xff, 0xff
data_ov03_020fdc94: ; 0x020fdc94
	.byte 0x1f, 0x00
data_ov03_020fdc96: ; 0x020fdc96
	.byte 0x14, 0x00
data_ov03_020fdc98: ; 0x020fdc98
	.byte 0x23, 0x00
data_ov03_020fdc9a: ; 0x020fdc9a
	.byte 0x3c, 0x00
data_ov03_020fdc9c: ; 0x020fdc9c
	.byte 0xff, 0xff
data_ov03_020fdc9e: ; 0x020fdc9e
	.byte 0xff, 0xff
data_ov03_020fdca0: ; 0x020fdca0
	.byte 0x1f, 0x00
data_ov03_020fdca2: ; 0x020fdca2
	.byte 0x15, 0x00
data_ov03_020fdca4: ; 0x020fdca4
	.byte 0x1f, 0x00
data_ov03_020fdca6: ; 0x020fdca6
	.byte 0x3e, 0x00
data_ov03_020fdca8: ; 0x020fdca8
	.byte 0xff, 0xff
data_ov03_020fdcaa: ; 0x020fdcaa
	.byte 0xff, 0xff
data_ov03_020fdcac: ; 0x020fdcac
	.byte 0x1a, 0x00
data_ov03_020fdcae: ; 0x020fdcae
	.byte 0x00, 0x00
data_ov03_020fdcb0: ; 0x020fdcb0
	.byte 0x25, 0x00
data_ov03_020fdcb2: ; 0x020fdcb2
	.byte 0x09, 0x00
data_ov03_020fdcb4: ; 0x020fdcb4
	.byte 0xff, 0xff
data_ov03_020fdcb6: ; 0x020fdcb6
	.byte 0xff, 0xff
data_ov03_020fdcb8: ; 0x020fdcb8
	.byte 0x13, 0x00
data_ov03_020fdcba: ; 0x020fdcba
	.byte 0x18, 0x00
data_ov03_020fdcbc: ; 0x020fdcbc
	.byte 0x22, 0x00
data_ov03_020fdcbe: ; 0x020fdcbe
	.byte 0x0e, 0x00
data_ov03_020fdcc0: ; 0x020fdcc0
	.byte 0x1d, 0x00
data_ov03_020fdcc2: ; 0x020fdcc2
	.byte 0x38, 0x00
data_ov03_020fdcc4: ; 0x020fdcc4
	.byte 0x24, 0x00
data_ov03_020fdcc6: ; 0x020fdcc6
	.byte 0x3f, 0x00
data_ov03_020fdcc8: ; 0x020fdcc8
	.byte 0x2c, 0x00
data_ov03_020fdcca: ; 0x020fdcca
	.byte 0x33, 0x00
data_ov03_020fdccc: ; 0x020fdccc
	.byte 0xff, 0xff
data_ov03_020fdcce: ; 0x020fdcce
	.byte 0xff, 0xff
data_ov03_020fdcd0: ; 0x020fdcd0
	.byte 0x1d, 0x00
data_ov03_020fdcd2: ; 0x020fdcd2
	.byte 0x01, 0x00
data_ov03_020fdcd4: ; 0x020fdcd4
	.byte 0x28, 0x00
data_ov03_020fdcd6: ; 0x020fdcd6
	.byte 0x0a, 0x00
data_ov03_020fdcd8: ; 0x020fdcd8
	.byte 0xff, 0xff
data_ov03_020fdcda: ; 0x020fdcda
	.byte 0xff, 0xff
data_ov03_020fdcdc: ; 0x020fdcdc
	.byte 0x19, 0x00
data_ov03_020fdcde: ; 0x020fdcde
	.byte 0x00, 0x00
data_ov03_020fdce0: ; 0x020fdce0
	.byte 0x21, 0x00
data_ov03_020fdce2: ; 0x020fdce2
	.byte 0x06, 0x00
data_ov03_020fdce4: ; 0x020fdce4
	.byte 0xff, 0xff
data_ov03_020fdce6: ; 0x020fdce6
	.byte 0xff, 0xff
data_ov03_020fdce8: ; 0x020fdce8
	.byte 0x13, 0x00
data_ov03_020fdcea: ; 0x020fdcea
	.byte 0x16, 0x00
data_ov03_020fdcec: ; 0x020fdcec
	.byte 0x1d, 0x00
data_ov03_020fdcee: ; 0x020fdcee
	.byte 0x13, 0x00
data_ov03_020fdcf0: ; 0x020fdcf0
	.byte 0x1c, 0x00
data_ov03_020fdcf2: ; 0x020fdcf2
	.byte 0x39, 0x00
data_ov03_020fdcf4: ; 0x020fdcf4
	.byte 0x29, 0x00
data_ov03_020fdcf6: ; 0x020fdcf6
	.byte 0x3c, 0x00
data_ov03_020fdcf8: ; 0x020fdcf8
	.byte 0xff, 0xff
data_ov03_020fdcfa: ; 0x020fdcfa
	.byte 0xff, 0xff
data_ov03_020fdcfc: ; 0x020fdcfc
	.byte 0x0c, 0x00
data_ov03_020fdcfe: ; 0x020fdcfe
	.byte 0x3c, 0x00
data_ov03_020fdd00: ; 0x020fdd00
	.byte 0x28, 0x00
data_ov03_020fdd02: ; 0x020fdd02
	.byte 0x10, 0x00
data_ov03_020fdd04: ; 0x020fdd04
	.byte 0x20, 0x00
data_ov03_020fdd06: ; 0x020fdd06
	.byte 0x36, 0x00
data_ov03_020fdd08: ; 0x020fdd08
	.byte 0x28, 0x00
data_ov03_020fdd0a: ; 0x020fdd0a
	.byte 0x3f, 0x00
data_ov03_020fdd0c: ; 0x020fdd0c
	.byte 0x33, 0x00
data_ov03_020fdd0e: ; 0x020fdd0e
	.byte 0x36, 0x00
data_ov03_020fdd10: ; 0x020fdd10
	.byte 0xff, 0xff
data_ov03_020fdd12: ; 0x020fdd12
	.byte 0xff, 0xff
data_ov03_020fdd14: ; 0x020fdd14
	.byte 0x29, 0x00
data_ov03_020fdd16: ; 0x020fdd16
	.byte 0x01, 0x00
data_ov03_020fdd18: ; 0x020fdd18
	.byte 0x30, 0x00
data_ov03_020fdd1a: ; 0x020fdd1a
	.byte 0x06, 0x00
data_ov03_020fdd1c: ; 0x020fdd1c
	.byte 0xff, 0xff
data_ov03_020fdd1e: ; 0x020fdd1e
	.byte 0xff, 0xff
data_ov03_020fdd20: ; 0x020fdd20
	.byte 0x20, 0x00
data_ov03_020fdd22: ; 0x020fdd22
	.byte 0x00, 0x00
data_ov03_020fdd24: ; 0x020fdd24
	.byte 0x26, 0x00
data_ov03_020fdd26: ; 0x020fdd26
	.byte 0x06, 0x00
data_ov03_020fdd28: ; 0x020fdd28
	.byte 0xff, 0xff
data_ov03_020fdd2a: ; 0x020fdd2a
	.byte 0xff, 0xff
data_ov03_020fdd2c: ; 0x020fdd2c
	.byte 0x26, 0x00
data_ov03_020fdd2e: ; 0x020fdd2e
	.byte 0x11, 0x00
data_ov03_020fdd30: ; 0x020fdd30
	.byte 0x28, 0x00
data_ov03_020fdd32: ; 0x020fdd32
	.byte 0x39, 0x00
data_ov03_020fdd34: ; 0x020fdd34
	.byte 0x1c, 0x00
data_ov03_020fdd36: ; 0x020fdd36
	.byte 0x3e, 0x00
data_ov03_020fdd38: ; 0x020fdd38
	.byte 0x14, 0x00
data_ov03_020fdd3a: ; 0x020fdd3a
	.byte 0x34, 0x00
data_ov03_020fdd3c: ; 0x020fdd3c
	.byte 0xff, 0xff
data_ov03_020fdd3e: ; 0x020fdd3e
	.byte 0xff, 0xff
data_ov03_020fdd40: ; 0x020fdd40
	.byte 0x17, 0x00
data_ov03_020fdd42: ; 0x020fdd42
	.byte 0x12, 0x00
data_ov03_020fdd44: ; 0x020fdd44
	.byte 0x24, 0x00
data_ov03_020fdd46: ; 0x020fdd46
	.byte 0x0b, 0x00
data_ov03_020fdd48: ; 0x020fdd48
	.byte 0x25, 0x00
data_ov03_020fdd4a: ; 0x020fdd4a
	.byte 0x28, 0x00
data_ov03_020fdd4c: ; 0x020fdd4c
	.byte 0x1f, 0x00
data_ov03_020fdd4e: ; 0x020fdd4e
	.byte 0x3f, 0x00
data_ov03_020fdd50: ; 0x020fdd50
	.byte 0x15, 0x00
data_ov03_020fdd52: ; 0x020fdd52
	.byte 0x3c, 0x00
data_ov03_020fdd54: ; 0x020fdd54
	.byte 0x15, 0x00
data_ov03_020fdd56: ; 0x020fdd56
	.byte 0x2c, 0x00
data_ov03_020fdd58: ; 0x020fdd58
	.byte 0x2b, 0x00
data_ov03_020fdd5a: ; 0x020fdd5a
	.byte 0x1e, 0x00
data_ov03_020fdd5c: ; 0x020fdd5c
	.byte 0xff, 0xff
data_ov03_020fdd5e: ; 0x020fdd5e
	.byte 0xff, 0xff
data_ov03_020fdd60: ; 0x020fdd60
	.byte 0x1a, 0x00
data_ov03_020fdd62: ; 0x020fdd62
	.byte 0x00, 0x00
data_ov03_020fdd64: ; 0x020fdd64
	.byte 0x28, 0x00
data_ov03_020fdd66: ; 0x020fdd66
	.byte 0x08, 0x00
data_ov03_020fdd68: ; 0x020fdd68
	.byte 0xff, 0xff
data_ov03_020fdd6a: ; 0x020fdd6a
	.byte 0xff, 0xff
data_ov03_020fdd6c: ; 0x020fdd6c
	.byte 0x1a, 0x00
data_ov03_020fdd6e: ; 0x020fdd6e
	.byte 0x00, 0x00
data_ov03_020fdd70: ; 0x020fdd70
	.byte 0x23, 0x00
data_ov03_020fdd72: ; 0x020fdd72
	.byte 0x05, 0x00
data_ov03_020fdd74: ; 0x020fdd74
	.byte 0xff, 0xff
data_ov03_020fdd76: ; 0x020fdd76
	.byte 0xff, 0xff
data_ov03_020fdd78: ; 0x020fdd78
	.byte 0x14, 0x00
data_ov03_020fdd7a: ; 0x020fdd7a
	.byte 0x13, 0x00
data_ov03_020fdd7c: ; 0x020fdd7c
	.byte 0x23, 0x00
data_ov03_020fdd7e: ; 0x020fdd7e
	.byte 0x14, 0x00
data_ov03_020fdd80: ; 0x020fdd80
	.byte 0x26, 0x00
data_ov03_020fdd82: ; 0x020fdd82
	.byte 0x34, 0x00
data_ov03_020fdd84: ; 0x020fdd84
	.byte 0x1d, 0x00
data_ov03_020fdd86: ; 0x020fdd86
	.byte 0x3f, 0x00
data_ov03_020fdd88: ; 0x020fdd88
	.byte 0x1b, 0x00
data_ov03_020fdd8a: ; 0x020fdd8a
	.byte 0x2f, 0x00
data_ov03_020fdd8c: ; 0x020fdd8c
	.byte 0x2a, 0x00
data_ov03_020fdd8e: ; 0x020fdd8e
	.byte 0x21, 0x00
data_ov03_020fdd90: ; 0x020fdd90
	.byte 0xff, 0xff
data_ov03_020fdd92: ; 0x020fdd92
	.byte 0xff, 0xff
data_ov03_020fdd94: ; 0x020fdd94
	.byte 0x15, 0x00
data_ov03_020fdd96: ; 0x020fdd96
	.byte 0x00, 0x00
data_ov03_020fdd98: ; 0x020fdd98
	.byte 0x16, 0x00
data_ov03_020fdd9a: ; 0x020fdd9a
	.byte 0x3c, 0x00
data_ov03_020fdd9c: ; 0x020fdd9c
	.byte 0xff, 0xff
data_ov03_020fdd9e: ; 0x020fdd9e
	.byte 0xff, 0xff
data_ov03_020fdda0: ; 0x020fdda0
	.byte 0x29, 0x00
data_ov03_020fdda2: ; 0x020fdda2
	.byte 0x1e, 0x00
data_ov03_020fdda4: ; 0x020fdda4
	.byte 0x12, 0x00
data_ov03_020fdda6: ; 0x020fdda6
	.byte 0x2a, 0x00
data_ov03_020fdda8: ; 0x020fdda8
	.byte 0x2b, 0x00
data_ov03_020fddaa: ; 0x020fddaa
	.byte 0x3c, 0x00
data_ov03_020fddac: ; 0x020fddac
	.byte 0xff, 0xff
data_ov03_020fddae: ; 0x020fddae
	.byte 0xff, 0xff
data_ov03_020fddb0: ; 0x020fddb0
	.byte 0x11, 0x00
data_ov03_020fddb2: ; 0x020fddb2
	.byte 0x00, 0x00
data_ov03_020fddb4: ; 0x020fddb4
	.byte 0x12, 0x00
data_ov03_020fddb6: ; 0x020fddb6
	.byte 0x3c, 0x00
data_ov03_020fddb8: ; 0x020fddb8
	.byte 0xff, 0xff
data_ov03_020fddba: ; 0x020fddba
	.byte 0xff, 0xff
data_ov03_020fddbc: ; 0x020fddbc
	.byte 0x23, 0x00
data_ov03_020fddbe: ; 0x020fddbe
	.byte 0x1f, 0x00
data_ov03_020fddc0: ; 0x020fddc0
	.byte 0x11, 0x00
data_ov03_020fddc2: ; 0x020fddc2
	.byte 0x32, 0x00
data_ov03_020fddc4: ; 0x020fddc4
	.byte 0xff, 0xff
data_ov03_020fddc6: ; 0x020fddc6
	.byte 0xff, 0xff
data_ov03_020fddc8: ; 0x020fddc8
	.byte 0x1b, 0x00
data_ov03_020fddca: ; 0x020fddca
	.byte 0x2e, 0x00
data_ov03_020fddcc: ; 0x020fddcc
	.byte 0x2f, 0x00
data_ov03_020fddce: ; 0x020fddce
	.byte 0x3f, 0x00
data_ov03_020fddd0: ; 0x020fddd0
	.byte 0xff, 0xff
data_ov03_020fddd2: ; 0x020fddd2
	.byte 0xff, 0xff
data_ov03_020fddd4: ; 0x020fddd4
	.byte 0x08, 0x00
data_ov03_020fddd6: ; 0x020fddd6
	.byte 0x1b, 0x00
data_ov03_020fddd8: ; 0x020fddd8
	.byte 0x20, 0x00
data_ov03_020fddda: ; 0x020fddda
	.byte 0x12, 0x00
data_ov03_020fdddc: ; 0x020fdddc
	.byte 0x22, 0x00
data_ov03_020fddde: ; 0x020fddde
	.byte 0x01, 0x00
data_ov03_020fdde0: ; 0x020fdde0
	.byte 0x17, 0x00
data_ov03_020fdde2: ; 0x020fdde2
	.byte 0x03, 0x00
data_ov03_020fdde4: ; 0x020fdde4
	.byte 0x14, 0x00
data_ov03_020fdde6: ; 0x020fdde6
	.byte 0x0d, 0x00
data_ov03_020fdde8: ; 0x020fdde8
	.byte 0x16, 0x00
data_ov03_020fddea: ; 0x020fddea
	.byte 0x3f, 0x00
data_ov03_020fddec: ; 0x020fddec
	.byte 0x15, 0x00
data_ov03_020fddee: ; 0x020fddee
	.byte 0x24, 0x00
data_ov03_020fddf0: ; 0x020fddf0
	.byte 0x27, 0x00
data_ov03_020fddf2: ; 0x020fddf2
	.byte 0x19, 0x00
data_ov03_020fddf4: ; 0x020fddf4
	.byte 0x29, 0x00
data_ov03_020fddf6: ; 0x020fddf6
	.byte 0x24, 0x00
data_ov03_020fddf8: ; 0x020fddf8
	.byte 0x16, 0x00
data_ov03_020fddfa: ; 0x020fddfa
	.byte 0x27, 0x00
data_ov03_020fddfc: ; 0x020fddfc
	.byte 0x27, 0x00
data_ov03_020fddfe: ; 0x020fddfe
	.byte 0x3a, 0x00
data_ov03_020fde00: ; 0x020fde00
	.byte 0x35, 0x00
data_ov03_020fde02: ; 0x020fde02
	.byte 0x39, 0x00
data_ov03_020fde04: ; 0x020fde04
	.byte 0xff, 0xff
data_ov03_020fde06: ; 0x020fde06
	.byte 0xff, 0xff
data_ov03_020fde08: ; 0x020fde08
	.byte 0x11, 0x00
data_ov03_020fde0a: ; 0x020fde0a
	.byte 0x3d, 0x00
data_ov03_020fde0c: ; 0x020fde0c
	.byte 0x26, 0x00
data_ov03_020fde0e: ; 0x020fde0e
	.byte 0x14, 0x00
data_ov03_020fde10: ; 0x020fde10
	.byte 0x21, 0x00
data_ov03_020fde12: ; 0x020fde12
	.byte 0x00, 0x00
data_ov03_020fde14: ; 0x020fde14
	.byte 0x1d, 0x00
data_ov03_020fde16: ; 0x020fde16
	.byte 0x2f, 0x00
data_ov03_020fde18: ; 0x020fde18
	.byte 0x2c, 0x00
data_ov03_020fde1a: ; 0x020fde1a
	.byte 0x3e, 0x00
data_ov03_020fde1c: ; 0x020fde1c
	.byte 0xff, 0xff
data_ov03_020fde1e: ; 0x020fde1e
	.byte 0xff, 0xff
data_ov03_020fde20: ; 0x020fde20
	.byte 0x02, 0x00
data_ov03_020fde22: ; 0x020fde22
	.byte 0x00, 0x00
data_ov03_020fde24: ; 0x020fde24
	.byte 0x04, 0x00
data_ov03_020fde26: ; 0x020fde26
	.byte 0x3e, 0x00
data_ov03_020fde28: ; 0x020fde28
	.byte 0x08, 0x00
data_ov03_020fde2a: ; 0x020fde2a
	.byte 0x17, 0x00
data_ov03_020fde2c: ; 0x020fde2c
	.byte 0x14, 0x00
data_ov03_020fde2e: ; 0x020fde2e
	.byte 0x05, 0x00
data_ov03_020fde30: ; 0x020fde30
	.byte 0x1b, 0x00
data_ov03_020fde32: ; 0x020fde32
	.byte 0x11, 0x00
data_ov03_020fde34: ; 0x020fde34
	.byte 0x1b, 0x00
data_ov03_020fde36: ; 0x020fde36
	.byte 0x37, 0x00
data_ov03_020fde38: ; 0x020fde38
	.byte 0x1d, 0x00
data_ov03_020fde3a: ; 0x020fde3a
	.byte 0x17, 0x00
data_ov03_020fde3c: ; 0x020fde3c
	.byte 0x2b, 0x00
data_ov03_020fde3e: ; 0x020fde3e
	.byte 0x04, 0x00
data_ov03_020fde40: ; 0x020fde40
	.byte 0x3a, 0x00
data_ov03_020fde42: ; 0x020fde42
	.byte 0x3b, 0x00
data_ov03_020fde44: ; 0x020fde44
	.byte 0xff, 0xff
data_ov03_020fde46: ; 0x020fde46
	.byte 0xff, 0xff
data_ov03_020fde48: ; 0x020fde48
	.byte 0x00, 0x00
data_ov03_020fde4a: ; 0x020fde4a
	.byte 0x15, 0x00
data_ov03_020fde4c: ; 0x020fde4c
	.byte 0x04, 0x00
data_ov03_020fde4e: ; 0x020fde4e
	.byte 0x08, 0x00
data_ov03_020fde50: ; 0x020fde50
	.byte 0x10, 0x00
data_ov03_020fde52: ; 0x020fde52
	.byte 0x09, 0x00
data_ov03_020fde54: ; 0x020fde54
	.byte 0x12, 0x00
data_ov03_020fde56: ; 0x020fde56
	.byte 0x35, 0x00
data_ov03_020fde58: ; 0x020fde58
	.byte 0x12, 0x00
data_ov03_020fde5a: ; 0x020fde5a
	.byte 0x15, 0x00
data_ov03_020fde5c: ; 0x020fde5c
	.byte 0x1e, 0x00
data_ov03_020fde5e: ; 0x020fde5e
	.byte 0x0b, 0x00
data_ov03_020fde60: ; 0x020fde60
	.byte 0x26, 0x00
data_ov03_020fde62: ; 0x020fde62
	.byte 0x38, 0x00
data_ov03_020fde64: ; 0x020fde64
	.byte 0x23, 0x00
data_ov03_020fde66: ; 0x020fde66
	.byte 0x19, 0x00
data_ov03_020fde68: ; 0x020fde68
	.byte 0x30, 0x00
data_ov03_020fde6a: ; 0x020fde6a
	.byte 0x0c, 0x00
data_ov03_020fde6c: ; 0x020fde6c
	.byte 0x3a, 0x00
data_ov03_020fde6e: ; 0x020fde6e
	.byte 0x33, 0x00
data_ov03_020fde70: ; 0x020fde70
	.byte 0x3f, 0x00
data_ov03_020fde72: ; 0x020fde72
	.byte 0x32, 0x00
data_ov03_020fde74: ; 0x020fde74
	.byte 0xff, 0xff
data_ov03_020fde76: ; 0x020fde76
	.byte 0xff, 0xff
data_ov03_020fde78: ; 0x020fde78
	.byte 0x03, 0x00
data_ov03_020fde7a: ; 0x020fde7a
	.byte 0x02, 0x00
data_ov03_020fde7c: ; 0x020fde7c
	.byte 0x09, 0x00
data_ov03_020fde7e: ; 0x020fde7e
	.byte 0x3e, 0x00
data_ov03_020fde80: ; 0x020fde80
	.byte 0x0d, 0x00
data_ov03_020fde82: ; 0x020fde82
	.byte 0x15, 0x00
data_ov03_020fde84: ; 0x020fde84
	.byte 0x26, 0x00
data_ov03_020fde86: ; 0x020fde86
	.byte 0x00, 0x00
data_ov03_020fde88: ; 0x020fde88
	.byte 0x30, 0x00
data_ov03_020fde8a: ; 0x020fde8a
	.byte 0x06, 0x00
data_ov03_020fde8c: ; 0x020fde8c
	.byte 0x3a, 0x00
data_ov03_020fde8e: ; 0x020fde8e
	.byte 0x3a, 0x00
data_ov03_020fde90: ; 0x020fde90
	.byte 0xff, 0xff
data_ov03_020fde92: ; 0x020fde92
	.byte 0xff, 0xff
data_ov03_020fde94: ; 0x020fde94
	.byte 0x00, 0x00
data_ov03_020fde96: ; 0x020fde96
	.byte 0x12, 0x00
data_ov03_020fde98: ; 0x020fde98
	.byte 0x03, 0x00
data_ov03_020fde9a: ; 0x020fde9a
	.byte 0x03, 0x00
data_ov03_020fde9c: ; 0x020fde9c
	.byte 0x13, 0x00
data_ov03_020fde9e: ; 0x020fde9e
	.byte 0x07, 0x00
data_ov03_020fdea0: ; 0x020fdea0
	.byte 0x11, 0x00
data_ov03_020fdea2: ; 0x020fdea2
	.byte 0x3b, 0x00
data_ov03_020fdea4: ; 0x020fdea4
	.byte 0x1d, 0x00
data_ov03_020fdea6: ; 0x020fdea6
	.byte 0x0d, 0x00
data_ov03_020fdea8: ; 0x020fdea8
	.byte 0x2c, 0x00
data_ov03_020fdeaa: ; 0x020fdeaa
	.byte 0x0a, 0x00
data_ov03_020fdeac: ; 0x020fdeac
	.byte 0x32, 0x00
data_ov03_020fdeae: ; 0x020fdeae
	.byte 0x35, 0x00
data_ov03_020fdeb0: ; 0x020fdeb0
	.byte 0x3f, 0x00
data_ov03_020fdeb2: ; 0x020fdeb2
	.byte 0x3a, 0x00
data_ov03_020fdeb4: ; 0x020fdeb4
	.byte 0xff, 0xff
data_ov03_020fdeb6: ; 0x020fdeb6
	.byte 0xff, 0xff
data_ov03_020fdeb8: ; 0x020fdeb8
	.byte 0x1d, 0x00
data_ov03_020fdeba: ; 0x020fdeba
	.byte 0x00, 0x00
data_ov03_020fdebc: ; 0x020fdebc
	.byte 0x0a, 0x00
data_ov03_020fdebe: ; 0x020fdebe
	.byte 0x09, 0x00
data_ov03_020fdec0: ; 0x020fdec0
	.byte 0x01, 0x00
data_ov03_020fdec2: ; 0x020fdec2
	.byte 0x1e, 0x00
data_ov03_020fdec4: ; 0x020fdec4
	.byte 0x05, 0x00
data_ov03_020fdec6: ; 0x020fdec6
	.byte 0x2d, 0x00
data_ov03_020fdec8: ; 0x020fdec8
	.byte 0x19, 0x00
data_ov03_020fdeca: ; 0x020fdeca
	.byte 0x3f, 0x00
data_ov03_020fdecc: ; 0x020fdecc
	.byte 0x33, 0x00
data_ov03_020fdece: ; 0x020fdece
	.byte 0x38, 0x00
data_ov03_020fded0: ; 0x020fded0
	.byte 0x3d, 0x00
data_ov03_020fded2: ; 0x020fded2
	.byte 0x24, 0x00
data_ov03_020fded4: ; 0x020fded4
	.byte 0x2f, 0x00
data_ov03_020fded6: ; 0x020fded6
	.byte 0x09, 0x00
data_ov03_020fded8: ; 0x020fded8
	.byte 0x1d, 0x00
data_ov03_020fdeda: ; 0x020fdeda
	.byte 0x00, 0x00
data_ov03_020fdedc: ; 0x020fdedc
	.byte 0x13, 0x00
data_ov03_020fdede: ; 0x020fdede
	.byte 0x09, 0x00
data_ov03_020fdee0: ; 0x020fdee0
	.byte 0x1a, 0x00
data_ov03_020fdee2: ; 0x020fdee2
	.byte 0x16, 0x00
data_ov03_020fdee4: ; 0x020fdee4
	.byte 0x3b, 0x00
data_ov03_020fdee6: ; 0x020fdee6
	.byte 0x11, 0x00
data_ov03_020fdee8: ; 0x020fdee8
	.byte 0xff, 0xff
data_ov03_020fdeea: ; 0x020fdeea
	.byte 0xff, 0xff
data_ov03_020fdeec: ; 0x020fdeec
	.byte 0x1f, 0x00
data_ov03_020fdeee: ; 0x020fdeee
	.byte 0x0c, 0x00
data_ov03_020fdef0: ; 0x020fdef0
	.byte 0x03, 0x00
data_ov03_020fdef2: ; 0x020fdef2
	.byte 0x14, 0x00
data_ov03_020fdef4: ; 0x020fdef4
	.byte 0x00, 0x00
data_ov03_020fdef6: ; 0x020fdef6
	.byte 0x22, 0x00
data_ov03_020fdef8: ; 0x020fdef8
	.byte 0x0b, 0x00
data_ov03_020fdefa: ; 0x020fdefa
	.byte 0x2f, 0x00
data_ov03_020fdefc: ; 0x020fdefc
	.byte 0x2c, 0x00
data_ov03_020fdefe: ; 0x020fdefe
	.byte 0x33, 0x00
data_ov03_020fdf00: ; 0x020fdf00
	.byte 0x3f, 0x00
data_ov03_020fdf02: ; 0x020fdf02
	.byte 0x1f, 0x00
data_ov03_020fdf04: ; 0x020fdf04
	.byte 0x36, 0x00
data_ov03_020fdf06: ; 0x020fdf06
	.byte 0x10, 0x00
data_ov03_020fdf08: ; 0x020fdf08
	.byte 0x1f, 0x00
data_ov03_020fdf0a: ; 0x020fdf0a
	.byte 0x0a, 0x00
data_ov03_020fdf0c: ; 0x020fdf0c
	.byte 0xff, 0xff
data_ov03_020fdf0e: ; 0x020fdf0e
	.byte 0xff, 0xff
data_ov03_020fdf10: ; 0x020fdf10
	.byte 0x13, 0x00
data_ov03_020fdf12: ; 0x020fdf12
	.byte 0x00, 0x00
data_ov03_020fdf14: ; 0x020fdf14
	.byte 0x1d, 0x00
data_ov03_020fdf16: ; 0x020fdf16
	.byte 0x3c, 0x00
data_ov03_020fdf18: ; 0x020fdf18
	.byte 0xff, 0xff
data_ov03_020fdf1a: ; 0x020fdf1a
	.byte 0xff, 0xff
data_ov03_020fdf1c: ; 0x020fdf1c
	.byte 0x16, 0x00
data_ov03_020fdf1e: ; 0x020fdf1e
	.byte 0x09, 0x00
data_ov03_020fdf20: ; 0x020fdf20
	.byte 0x18, 0x00
data_ov03_020fdf22: ; 0x020fdf22
	.byte 0x03, 0x00
data_ov03_020fdf24: ; 0x020fdf24
	.byte 0x24, 0x00
data_ov03_020fdf26: ; 0x020fdf26
	.byte 0x06, 0x00
data_ov03_020fdf28: ; 0x020fdf28
	.byte 0x2c, 0x00
data_ov03_020fdf2a: ; 0x020fdf2a
	.byte 0x13, 0x00
data_ov03_020fdf2c: ; 0x020fdf2c
	.byte 0x22, 0x00
data_ov03_020fdf2e: ; 0x020fdf2e
	.byte 0x1e, 0x00
data_ov03_020fdf30: ; 0x020fdf30
	.byte 0x15, 0x00
data_ov03_020fdf32: ; 0x020fdf32
	.byte 0x1e, 0x00
data_ov03_020fdf34: ; 0x020fdf34
	.byte 0xff, 0xff
data_ov03_020fdf36: ; 0x020fdf36
	.byte 0xff, 0xff
data_ov03_020fdf38: ; 0x020fdf38
	.byte 0x11, 0x00
data_ov03_020fdf3a: ; 0x020fdf3a
	.byte 0x00, 0x00
data_ov03_020fdf3c: ; 0x020fdf3c
	.byte 0x1a, 0x00
data_ov03_020fdf3e: ; 0x020fdf3e
	.byte 0x3f, 0x00
data_ov03_020fdf40: ; 0x020fdf40
	.byte 0x14, 0x00
data_ov03_020fdf42: ; 0x020fdf42
	.byte 0x14, 0x00
data_ov03_020fdf44: ; 0x020fdf44
	.byte 0x24, 0x00
data_ov03_020fdf46: ; 0x020fdf46
	.byte 0x03, 0x00
data_ov03_020fdf48: ; 0x020fdf48
	.byte 0x2d, 0x00
data_ov03_020fdf4a: ; 0x020fdf4a
	.byte 0x0a, 0x00
data_ov03_020fdf4c: ; 0x020fdf4c
	.byte 0x24, 0x00
data_ov03_020fdf4e: ; 0x020fdf4e
	.byte 0x22, 0x00
data_ov03_020fdf50: ; 0x020fdf50
	.byte 0x15, 0x00
data_ov03_020fdf52: ; 0x020fdf52
	.byte 0x21, 0x00
data_ov03_020fdf54: ; 0x020fdf54
	.byte 0xff, 0xff
data_ov03_020fdf56: ; 0x020fdf56
	.byte 0xff, 0xff
data_ov03_020fdf58: ; 0x020fdf58
	.byte 0x27, 0x00
data_ov03_020fdf5a: ; 0x020fdf5a
	.byte 0x10, 0x00
data_ov03_020fdf5c: ; 0x020fdf5c
	.byte 0x25, 0x00
data_ov03_020fdf5e: ; 0x020fdf5e
	.byte 0x01, 0x00
data_ov03_020fdf60: ; 0x020fdf60
	.byte 0x1b, 0x00
data_ov03_020fdf62: ; 0x020fdf62
	.byte 0x00, 0x00
data_ov03_020fdf64: ; 0x020fdf64
	.byte 0x11, 0x00
data_ov03_020fdf66: ; 0x020fdf66
	.byte 0x15, 0x00
data_ov03_020fdf68: ; 0x020fdf68
	.byte 0x1b, 0x00
data_ov03_020fdf6a: ; 0x020fdf6a
	.byte 0x1a, 0x00
data_ov03_020fdf6c: ; 0x020fdf6c
	.byte 0x24, 0x00
data_ov03_020fdf6e: ; 0x020fdf6e
	.byte 0x12, 0x00
data_ov03_020fdf70: ; 0x020fdf70
	.byte 0x1d, 0x00
data_ov03_020fdf72: ; 0x020fdf72
	.byte 0x25, 0x00
data_ov03_020fdf74: ; 0x020fdf74
	.byte 0x22, 0x00
data_ov03_020fdf76: ; 0x020fdf76
	.byte 0x3e, 0x00
data_ov03_020fdf78: ; 0x020fdf78
	.byte 0x29, 0x00
data_ov03_020fdf7a: ; 0x020fdf7a
	.byte 0x3f, 0x00
data_ov03_020fdf7c: ; 0x020fdf7c
	.byte 0x2c, 0x00
data_ov03_020fdf7e: ; 0x020fdf7e
	.byte 0x35, 0x00
data_ov03_020fdf80: ; 0x020fdf80
	.byte 0x24, 0x00
data_ov03_020fdf82: ; 0x020fdf82
	.byte 0x20, 0x00
data_ov03_020fdf84: ; 0x020fdf84
	.byte 0x2c, 0x00
data_ov03_020fdf86: ; 0x020fdf86
	.byte 0x20, 0x00
data_ov03_020fdf88: ; 0x020fdf88
	.byte 0xff, 0xff
data_ov03_020fdf8a: ; 0x020fdf8a
	.byte 0xff, 0xff
data_ov03_020fdf8c: ; 0x020fdf8c
	.byte 0x28, 0x00
data_ov03_020fdf8e: ; 0x020fdf8e
	.byte 0x0b, 0x00
data_ov03_020fdf90: ; 0x020fdf90
	.byte 0x18, 0x00
data_ov03_020fdf92: ; 0x020fdf92
	.byte 0x00, 0x00
data_ov03_020fdf94: ; 0x020fdf94
	.byte 0x09, 0x00
data_ov03_020fdf96: ; 0x020fdf96
	.byte 0x10, 0x00
data_ov03_020fdf98: ; 0x020fdf98
	.byte 0x15, 0x00
data_ov03_020fdf9a: ; 0x020fdf9a
	.byte 0x1e, 0x00
data_ov03_020fdf9c: ; 0x020fdf9c
	.byte 0x29, 0x00
data_ov03_020fdf9e: ; 0x020fdf9e
	.byte 0x1a, 0x00
data_ov03_020fdfa0: ; 0x020fdfa0
	.byte 0xff, 0xff
data_ov03_020fdfa2: ; 0x020fdfa2
	.byte 0xff, 0xff
data_ov03_020fdfa4: ; 0x020fdfa4
	.byte 0x2c, 0x00
data_ov03_020fdfa6: ; 0x020fdfa6
	.byte 0x07, 0x00
data_ov03_020fdfa8: ; 0x020fdfa8
	.byte 0x33, 0x00
data_ov03_020fdfaa: ; 0x020fdfaa
	.byte 0x3f, 0x00
data_ov03_020fdfac: ; 0x020fdfac
	.byte 0xff, 0xff
data_ov03_020fdfae: ; 0x020fdfae
	.byte 0xff, 0xff
data_ov03_020fdfb0: ; 0x020fdfb0
	.byte 0x09, 0x00
data_ov03_020fdfb2: ; 0x020fdfb2
	.byte 0x00, 0x00
data_ov03_020fdfb4: ; 0x020fdfb4
	.byte 0x0f, 0x00
data_ov03_020fdfb6: ; 0x020fdfb6
	.byte 0x3f, 0x00
data_ov03_020fdfb8: ; 0x020fdfb8
	.byte 0x15, 0x00
data_ov03_020fdfba: ; 0x020fdfba
	.byte 0x0f, 0x00
data_ov03_020fdfbc: ; 0x020fdfbc
	.byte 0x24, 0x00
data_ov03_020fdfbe: ; 0x020fdfbe
	.byte 0x0a, 0x00
data_ov03_020fdfc0: ; 0x020fdfc0
	.byte 0x35, 0x00
data_ov03_020fdfc2: ; 0x020fdfc2
	.byte 0x0f, 0x00
data_ov03_020fdfc4: ; 0x020fdfc4
	.byte 0xff, 0xff
data_ov03_020fdfc6: ; 0x020fdfc6
	.byte 0xff, 0xff
data_ov03_020fdfc8: ; 0x020fdfc8
	.byte 0x00, 0x00
data_ov03_020fdfca: ; 0x020fdfca
	.byte 0x39, 0x00
data_ov03_020fdfcc: ; 0x020fdfcc
	.byte 0x09, 0x00
data_ov03_020fdfce: ; 0x020fdfce
	.byte 0x34, 0x00
data_ov03_020fdfd0: ; 0x020fdfd0
	.byte 0x21, 0x00
data_ov03_020fdfd2: ; 0x020fdfd2
	.byte 0x02, 0x00
data_ov03_020fdfd4: ; 0x020fdfd4
	.byte 0x20, 0x00
data_ov03_020fdfd6: ; 0x020fdfd6
	.byte 0x13, 0x00
data_ov03_020fdfd8: ; 0x020fdfd8
	.byte 0x32, 0x00
data_ov03_020fdfda: ; 0x020fdfda
	.byte 0x1b, 0x00
data_ov03_020fdfdc: ; 0x020fdfdc
	.byte 0x2e, 0x00
data_ov03_020fdfde: ; 0x020fdfde
	.byte 0x36, 0x00
data_ov03_020fdfe0: ; 0x020fdfe0
	.byte 0x3f, 0x00
data_ov03_020fdfe2: ; 0x020fdfe2
	.byte 0x39, 0x00
data_ov03_020fdfe4: ; 0x020fdfe4
	.byte 0xff, 0xff
data_ov03_020fdfe6: ; 0x020fdfe6
	.byte 0xff, 0xff
data_ov03_020fdfe8: ; 0x020fdfe8
	.byte 0x2f, 0x00
data_ov03_020fdfea: ; 0x020fdfea
	.byte 0x12, 0x00
data_ov03_020fdfec: ; 0x020fdfec
	.byte 0x29, 0x00
data_ov03_020fdfee: ; 0x020fdfee
	.byte 0x02, 0x00
data_ov03_020fdff0: ; 0x020fdff0
	.byte 0x13, 0x00
data_ov03_020fdff2: ; 0x020fdff2
	.byte 0x01, 0x00
data_ov03_020fdff4: ; 0x020fdff4
	.byte 0x0c, 0x00
data_ov03_020fdff6: ; 0x020fdff6
	.byte 0x0d, 0x00
data_ov03_020fdff8: ; 0x020fdff8
	.byte 0x10, 0x00
data_ov03_020fdffa: ; 0x020fdffa
	.byte 0x1a, 0x00
data_ov03_020fdffc: ; 0x020fdffc
	.byte 0x2c, 0x00
data_ov03_020fdffe: ; 0x020fdffe
	.byte 0x23, 0x00
data_ov03_020fe000: ; 0x020fe000
	.byte 0x31, 0x00
data_ov03_020fe002: ; 0x020fe002
	.byte 0x30, 0x00
data_ov03_020fe004: ; 0x020fe004
	.byte 0x22, 0x00
data_ov03_020fe006: ; 0x020fe006
	.byte 0x3f, 0x00
data_ov03_020fe008: ; 0x020fe008
	.byte 0x11, 0x00
data_ov03_020fe00a: ; 0x020fe00a
	.byte 0x3c, 0x00
data_ov03_020fe00c: ; 0x020fe00c
	.byte 0x0c, 0x00
data_ov03_020fe00e: ; 0x020fe00e
	.byte 0x30, 0x00
data_ov03_020fe010: ; 0x020fe010
	.byte 0xff, 0xff
data_ov03_020fe012: ; 0x020fe012
	.byte 0xff, 0xff
data_ov03_020fe014: ; 0x020fe014
	.byte 0x00, 0x00
data_ov03_020fe016: ; 0x020fe016
	.byte 0x38, 0x00
data_ov03_020fe018: ; 0x020fe018
	.byte 0x22, 0x00
data_ov03_020fe01a: ; 0x020fe01a
	.byte 0x04, 0x00
data_ov03_020fe01c: ; 0x020fe01c
	.byte 0x1d, 0x00
data_ov03_020fe01e: ; 0x020fe01e
	.byte 0x18, 0x00
data_ov03_020fe020: ; 0x020fe020
	.byte 0x2f, 0x00
data_ov03_020fe022: ; 0x020fe022
	.byte 0x1e, 0x00
data_ov03_020fe024: ; 0x020fe024
	.byte 0x34, 0x00
data_ov03_020fe026: ; 0x020fe026
	.byte 0x2e, 0x00
data_ov03_020fe028: ; 0x020fe028
	.byte 0x26, 0x00
data_ov03_020fe02a: ; 0x020fe02a
	.byte 0x39, 0x00
data_ov03_020fe02c: ; 0x020fe02c
	.byte 0x0d, 0x00
data_ov03_020fe02e: ; 0x020fe02e
	.byte 0x33, 0x00
data_ov03_020fe030: ; 0x020fe030
	.byte 0x18, 0x00
data_ov03_020fe032: ; 0x020fe032
	.byte 0x3a, 0x00
data_ov03_020fe034: ; 0x020fe034
	.byte 0x3e, 0x00
data_ov03_020fe036: ; 0x020fe036
	.byte 0x35, 0x00
data_ov03_020fe038: ; 0x020fe038
	.byte 0xff, 0xff
data_ov03_020fe03a: ; 0x020fe03a
	.byte 0xff, 0xff
data_ov03_020fe03c: ; 0x020fe03c
	.byte 0x0b, 0x00
data_ov03_020fe03e: ; 0x020fe03e
	.byte 0x14, 0x00
data_ov03_020fe040: ; 0x020fe040
	.byte 0x31, 0x00
data_ov03_020fe042: ; 0x020fe042
	.byte 0x0d, 0x00
data_ov03_020fe044: ; 0x020fe044
	.byte 0xff, 0xff
data_ov03_020fe046: ; 0x020fe046
	.byte 0xff, 0xff
data_ov03_020fe048: ; 0x020fe048
	.byte 0x23, 0x00
data_ov03_020fe04a: ; 0x020fe04a
	.byte 0x00, 0x00
data_ov03_020fe04c: ; 0x020fe04c
	.byte 0x1b, 0x00
data_ov03_020fe04e: ; 0x020fe04e
	.byte 0x2d, 0x00
data_ov03_020fe050: ; 0x020fe050
	.byte 0x20, 0x00
data_ov03_020fe052: ; 0x020fe052
	.byte 0x3b, 0x00
data_ov03_020fe054: ; 0x020fe054
	.byte 0x2a, 0x00
data_ov03_020fe056: ; 0x020fe056
	.byte 0x3f, 0x00
data_ov03_020fe058: ; 0x020fe058
	.byte 0x30, 0x00
data_ov03_020fe05a: ; 0x020fe05a
	.byte 0x38, 0x00
data_ov03_020fe05c: ; 0x020fe05c
	.byte 0xff, 0xff
data_ov03_020fe05e: ; 0x020fe05e
	.byte 0xff, 0xff
data_ov03_020fe060: ; 0x020fe060
	.byte 0x20, 0x00
data_ov03_020fe062: ; 0x020fe062
	.byte 0x00, 0x00
data_ov03_020fe064: ; 0x020fe064
	.byte 0x17, 0x00
data_ov03_020fe066: ; 0x020fe066
	.byte 0x38, 0x00
data_ov03_020fe068: ; 0x020fe068
	.byte 0x22, 0x00
data_ov03_020fe06a: ; 0x020fe06a
	.byte 0x3f, 0x00
data_ov03_020fe06c: ; 0x020fe06c
	.byte 0x33, 0x00
data_ov03_020fe06e: ; 0x020fe06e
	.byte 0x31, 0x00
data_ov03_020fe070: ; 0x020fe070
	.byte 0xff, 0xff
data_ov03_020fe072: ; 0x020fe072
	.byte 0xff, 0xff
data_ov03_020fe074: ; 0x020fe074
	.byte 0x0c, 0x00
data_ov03_020fe076: ; 0x020fe076
	.byte 0x17, 0x00
data_ov03_020fe078: ; 0x020fe078
	.byte 0x2f, 0x00
data_ov03_020fe07a: ; 0x020fe07a
	.byte 0x15, 0x00
data_ov03_020fe07c: ; 0x020fe07c
	.byte 0xff, 0xff
data_ov03_020fe07e: ; 0x020fe07e
	.byte 0xff, 0xff
data_ov03_020fe080: ; 0x020fe080
	.byte 0x0b, 0x00
data_ov03_020fe082: ; 0x020fe082
	.byte 0x3e, 0x00
data_ov03_020fe084: ; 0x020fe084
	.byte 0x21, 0x00
data_ov03_020fe086: ; 0x020fe086
	.byte 0x15, 0x00
data_ov03_020fe088: ; 0x020fe088
	.byte 0x24, 0x00
data_ov03_020fe08a: ; 0x020fe08a
	.byte 0x00, 0x00
data_ov03_020fe08c: ; 0x020fe08c
	.byte 0x1d, 0x00
data_ov03_020fe08e: ; 0x020fe08e
	.byte 0x32, 0x00
data_ov03_020fe090: ; 0x020fe090
	.byte 0x23, 0x00
data_ov03_020fe092: ; 0x020fe092
	.byte 0x3e, 0x00
data_ov03_020fe094: ; 0x020fe094
	.byte 0x37, 0x00
data_ov03_020fe096: ; 0x020fe096
	.byte 0x35, 0x00
data_ov03_020fe098: ; 0x020fe098
	.byte 0xff, 0xff
data_ov03_020fe09a: ; 0x020fe09a
	.byte 0xff, 0xff
data_ov03_020fe09c: ; 0x020fe09c
	.byte 0x06, 0x00
data_ov03_020fe09e: ; 0x020fe09e
	.byte 0x17, 0x00
data_ov03_020fe0a0: ; 0x020fe0a0
	.byte 0x34, 0x00
data_ov03_020fe0a2: ; 0x020fe0a2
	.byte 0x16, 0x00
data_ov03_020fe0a4: ; 0x020fe0a4
	.byte 0xff, 0xff
data_ov03_020fe0a6: ; 0x020fe0a6
	.byte 0xff, 0xff
data_ov03_020fe0a8: ; 0x020fe0a8
	.byte 0x06, 0x00
data_ov03_020fe0aa: ; 0x020fe0aa
	.byte 0x00, 0x00
data_ov03_020fe0ac: ; 0x020fe0ac
	.byte 0x08, 0x00
data_ov03_020fe0ae: ; 0x020fe0ae
	.byte 0x34, 0x00
data_ov03_020fe0b0: ; 0x020fe0b0
	.byte 0x16, 0x00
data_ov03_020fe0b2: ; 0x020fe0b2
	.byte 0x3e, 0x00
data_ov03_020fe0b4: ; 0x020fe0b4
	.byte 0x1e, 0x00
data_ov03_020fe0b6: ; 0x020fe0b6
	.byte 0x39, 0x00
data_ov03_020fe0b8: ; 0x020fe0b8
	.byte 0x2e, 0x00
data_ov03_020fe0ba: ; 0x020fe0ba
	.byte 0x01, 0x00
data_ov03_020fe0bc: ; 0x020fe0bc
	.byte 0x30, 0x00
data_ov03_020fe0be: ; 0x020fe0be
	.byte 0x2e, 0x00
data_ov03_020fe0c0: ; 0x020fe0c0
	.byte 0x3b, 0x00
data_ov03_020fe0c2: ; 0x020fe0c2
	.byte 0x3c, 0x00
data_ov03_020fe0c4: ; 0x020fe0c4
	.byte 0xff, 0xff
data_ov03_020fe0c6: ; 0x020fe0c6
	.byte 0xff, 0xff
data_ov03_020fe0c8: ; 0x020fe0c8
	.byte 0x01, 0x00
data_ov03_020fe0ca: ; 0x020fe0ca
	.byte 0x14, 0x00
data_ov03_020fe0cc: ; 0x020fe0cc
	.byte 0x02, 0x00
data_ov03_020fe0ce: ; 0x020fe0ce
	.byte 0x04, 0x00
data_ov03_020fe0d0: ; 0x020fe0d0
	.byte 0x11, 0x00
data_ov03_020fe0d2: ; 0x020fe0d2
	.byte 0x02, 0x00
data_ov03_020fe0d4: ; 0x020fe0d4
	.byte 0x0e, 0x00
data_ov03_020fe0d6: ; 0x020fe0d6
	.byte 0x36, 0x00
data_ov03_020fe0d8: ; 0x020fe0d8
	.byte 0x1c, 0x00
data_ov03_020fe0da: ; 0x020fe0da
	.byte 0x3d, 0x00
data_ov03_020fe0dc: ; 0x020fe0dc
	.byte 0x34, 0x00
data_ov03_020fe0de: ; 0x020fe0de
	.byte 0x01, 0x00
data_ov03_020fe0e0: ; 0x020fe0e0
	.byte 0x2d, 0x00
data_ov03_020fe0e2: ; 0x020fe0e2
	.byte 0x26, 0x00
data_ov03_020fe0e4: ; 0x020fe0e4
	.byte 0x31, 0x00
data_ov03_020fe0e6: ; 0x020fe0e6
	.byte 0x34, 0x00
data_ov03_020fe0e8: ; 0x020fe0e8
	.byte 0x3e, 0x00
data_ov03_020fe0ea: ; 0x020fe0ea
	.byte 0x3a, 0x00
data_ov03_020fe0ec: ; 0x020fe0ec
	.byte 0xff, 0xff
data_ov03_020fe0ee: ; 0x020fe0ee
	.byte 0xff, 0xff
data_ov03_020fe0f0: ; 0x020fe0f0
	.byte 0x06, 0x00
data_ov03_020fe0f2: ; 0x020fe0f2
	.byte 0x05, 0x00
data_ov03_020fe0f4: ; 0x020fe0f4
	.byte 0x24, 0x00
data_ov03_020fe0f6: ; 0x020fe0f6
	.byte 0x3e, 0x00
data_ov03_020fe0f8: ; 0x020fe0f8
	.byte 0x37, 0x00
data_ov03_020fe0fa: ; 0x020fe0fa
	.byte 0x00, 0x00
data_ov03_020fe0fc: ; 0x020fe0fc
	.byte 0xff, 0xff
data_ov03_020fe0fe: ; 0x020fe0fe
	.byte 0xff, 0xff
data_ov03_020fe100: ; 0x020fe100
	.byte 0x00, 0x00
data_ov03_020fe102: ; 0x020fe102
	.byte 0x15, 0x00
data_ov03_020fe104: ; 0x020fe104
	.byte 0x0c, 0x00
data_ov03_020fe106: ; 0x020fe106
	.byte 0x0f, 0x00
data_ov03_020fe108: ; 0x020fe108
	.byte 0x19, 0x00
data_ov03_020fe10a: ; 0x020fe10a
	.byte 0x33, 0x00
data_ov03_020fe10c: ; 0x020fe10c
	.byte 0x3d, 0x00
data_ov03_020fe10e: ; 0x020fe10e
	.byte 0x0b, 0x00
data_ov03_020fe110: ; 0x020fe110
	.byte 0xff, 0xff
data_ov03_020fe112: ; 0x020fe112
	.byte 0xff, 0xff
data_ov03_020fe114: ; 0x020fe114
	.byte 0x00, 0x00
data_ov03_020fe116: ; 0x020fe116
	.byte 0x07, 0x00
data_ov03_020fe118: ; 0x020fe118
	.byte 0x18, 0x00
data_ov03_020fe11a: ; 0x020fe11a
	.byte 0x36, 0x00
data_ov03_020fe11c: ; 0x020fe11c
	.byte 0x20, 0x00
data_ov03_020fe11e: ; 0x020fe11e
	.byte 0x0a, 0x00
data_ov03_020fe120: ; 0x020fe120
	.byte 0x36, 0x00
data_ov03_020fe122: ; 0x020fe122
	.byte 0x38, 0x00
data_ov03_020fe124: ; 0x020fe124
	.byte 0x3c, 0x00
data_ov03_020fe126: ; 0x020fe126
	.byte 0x07, 0x00
data_ov03_020fe128: ; 0x020fe128
	.byte 0xff, 0xff
data_ov03_020fe12a: ; 0x020fe12a
	.byte 0xff, 0xff
data_ov03_020fe12c: ; 0x020fe12c
	.byte 0x06, 0x00
data_ov03_020fe12e: ; 0x020fe12e
	.byte 0x04, 0x00
data_ov03_020fe130: ; 0x020fe130
	.byte 0x00, 0x00
data_ov03_020fe132: ; 0x020fe132
	.byte 0x1e, 0x00
data_ov03_020fe134: ; 0x020fe134
	.byte 0x0a, 0x00
data_ov03_020fe136: ; 0x020fe136
	.byte 0x38, 0x00
data_ov03_020fe138: ; 0x020fe138
	.byte 0x16, 0x00
data_ov03_020fe13a: ; 0x020fe13a
	.byte 0x30, 0x00
data_ov03_020fe13c: ; 0x020fe13c
	.byte 0x19, 0x00
data_ov03_020fe13e: ; 0x020fe13e
	.byte 0x20, 0x00
data_ov03_020fe140: ; 0x020fe140
	.byte 0x24, 0x00
data_ov03_020fe142: ; 0x020fe142
	.byte 0x35, 0x00
data_ov03_020fe144: ; 0x020fe144
	.byte 0x35, 0x00
data_ov03_020fe146: ; 0x020fe146
	.byte 0x36, 0x00
data_ov03_020fe148: ; 0x020fe148
	.byte 0x3e, 0x00
data_ov03_020fe14a: ; 0x020fe14a
	.byte 0x1e, 0x00
data_ov03_020fe14c: ; 0x020fe14c
	.byte 0x2f, 0x00
data_ov03_020fe14e: ; 0x020fe14e
	.byte 0x0a, 0x00
data_ov03_020fe150: ; 0x020fe150
	.byte 0xff, 0xff
data_ov03_020fe152: ; 0x020fe152
	.byte 0xff, 0xff
data_ov03_020fe154: ; 0x020fe154
	.byte 0x00, 0x00
data_ov03_020fe156: ; 0x020fe156
	.byte 0x12, 0x00
data_ov03_020fe158: ; 0x020fe158
	.byte 0x07, 0x00
data_ov03_020fe15a: ; 0x020fe15a
	.byte 0x0b, 0x00
data_ov03_020fe15c: ; 0x020fe15c
	.byte 0x0d, 0x00
data_ov03_020fe15e: ; 0x020fe15e
	.byte 0x0f, 0x00
data_ov03_020fe160: ; 0x020fe160
	.byte 0x0a, 0x00
data_ov03_020fe162: ; 0x020fe162
	.byte 0x28, 0x00
data_ov03_020fe164: ; 0x020fe164
	.byte 0x15, 0x00
data_ov03_020fe166: ; 0x020fe166
	.byte 0x34, 0x00
data_ov03_020fe168: ; 0x020fe168
	.byte 0x20, 0x00
data_ov03_020fe16a: ; 0x020fe16a
	.byte 0x28, 0x00
data_ov03_020fe16c: ; 0x020fe16c
	.byte 0x21, 0x00
data_ov03_020fe16e: ; 0x020fe16e
	.byte 0x17, 0x00
data_ov03_020fe170: ; 0x020fe170
	.byte 0x28, 0x00
data_ov03_020fe172: ; 0x020fe172
	.byte 0x2f, 0x00
data_ov03_020fe174: ; 0x020fe174
	.byte 0x39, 0x00
data_ov03_020fe176: ; 0x020fe176
	.byte 0x2e, 0x00
data_ov03_020fe178: ; 0x020fe178
	.byte 0x3d, 0x00
data_ov03_020fe17a: ; 0x020fe17a
	.byte 0x20, 0x00
data_ov03_020fe17c: ; 0x020fe17c
	.byte 0x35, 0x00
data_ov03_020fe17e: ; 0x020fe17e
	.byte 0x0a, 0x00
data_ov03_020fe180: ; 0x020fe180
	.byte 0x3f, 0x00
data_ov03_020fe182: ; 0x020fe182
	.byte 0x0e, 0x00
data_ov03_020fe184: ; 0x020fe184
	.byte 0xff, 0xff
data_ov03_020fe186: ; 0x020fe186
	.byte 0xff, 0xff
data_ov03_020fe188: ; 0x020fe188
	.byte 0x04, 0x00
data_ov03_020fe18a: ; 0x020fe18a
	.byte 0x00, 0x00
data_ov03_020fe18c: ; 0x020fe18c
	.byte 0x37, 0x00
data_ov03_020fe18e: ; 0x020fe18e
	.byte 0x31, 0x00
data_ov03_020fe190: ; 0x020fe190
	.byte 0xff, 0xff
data_ov03_020fe192: ; 0x020fe192
	.byte 0xff, 0xff
data_ov03_020fe194: ; 0x020fe194
	.byte 0x31, 0x00
data_ov03_020fe196: ; 0x020fe196
	.byte 0x01, 0x00
data_ov03_020fe198: ; 0x020fe198
	.byte 0x0d, 0x00
data_ov03_020fe19a: ; 0x020fe19a
	.byte 0x3b, 0x00
data_ov03_020fe19c: ; 0x020fe19c
	.byte 0xff, 0xff
data_ov03_020fe19e: ; 0x020fe19e
	.byte 0xff, 0xff
data_ov03_020fe1a0: ; 0x020fe1a0
	.byte 0x31, 0x00
data_ov03_020fe1a2: ; 0x020fe1a2
	.byte 0x01, 0x00
data_ov03_020fe1a4: ; 0x020fe1a4
	.byte 0x0e, 0x00
data_ov03_020fe1a6: ; 0x020fe1a6
	.byte 0x3c, 0x00
data_ov03_020fe1a8: ; 0x020fe1a8
	.byte 0xff, 0xff
data_ov03_020fe1aa: ; 0x020fe1aa
	.byte 0xff, 0xff
data_ov03_020fe1ac: ; 0x020fe1ac
	.byte 0x04, 0x00
data_ov03_020fe1ae: ; 0x020fe1ae
	.byte 0x07, 0x00
data_ov03_020fe1b0: ; 0x020fe1b0
	.byte 0x37, 0x00
data_ov03_020fe1b2: ; 0x020fe1b2
	.byte 0x3d, 0x00
data_ov03_020fe1b4: ; 0x020fe1b4
	.byte 0xff, 0xff
data_ov03_020fe1b6: ; 0x020fe1b6
	.byte 0xff, 0xff
data_ov03_020fe1b8: ; 0x020fe1b8
	.byte 0x00, 0x00
data_ov03_020fe1ba: ; 0x020fe1ba
	.byte 0x03, 0x00
data_ov03_020fe1bc: ; 0x020fe1bc
	.byte 0x12, 0x00
data_ov03_020fe1be: ; 0x020fe1be
	.byte 0x08, 0x00
data_ov03_020fe1c0: ; 0x020fe1c0
	.byte 0x20, 0x00
data_ov03_020fe1c2: ; 0x020fe1c2
	.byte 0x19, 0x00
data_ov03_020fe1c4: ; 0x020fe1c4
	.byte 0x1f, 0x00
data_ov03_020fe1c6: ; 0x020fe1c6
	.byte 0x26, 0x00
data_ov03_020fe1c8: ; 0x020fe1c8
	.byte 0x03, 0x00
data_ov03_020fe1ca: ; 0x020fe1ca
	.byte 0x38, 0x00
data_ov03_020fe1cc: ; 0x020fe1cc
	.byte 0xff, 0xff
data_ov03_020fe1ce: ; 0x020fe1ce
	.byte 0xff, 0xff
data_ov03_020fe1d0: ; 0x020fe1d0
	.byte 0x33, 0x00
data_ov03_020fe1d2: ; 0x020fe1d2
	.byte 0x06, 0x00
data_ov03_020fe1d4: ; 0x020fe1d4
	.byte 0x1e, 0x00
data_ov03_020fe1d6: ; 0x020fe1d6
	.byte 0x20, 0x00
data_ov03_020fe1d8: ; 0x020fe1d8
	.byte 0x1f, 0x00
data_ov03_020fe1da: ; 0x020fe1da
	.byte 0x32, 0x00
data_ov03_020fe1dc: ; 0x020fe1dc
	.byte 0x29, 0x00
data_ov03_020fe1de: ; 0x020fe1de
	.byte 0x39, 0x00
data_ov03_020fe1e0: ; 0x020fe1e0
	.byte 0x3e, 0x00
data_ov03_020fe1e2: ; 0x020fe1e2
	.byte 0x35, 0x00
data_ov03_020fe1e4: ; 0x020fe1e4
	.byte 0xff, 0xff
data_ov03_020fe1e6: ; 0x020fe1e6
	.byte 0xff, 0xff
data_ov03_020fe1e8: ; 0x020fe1e8
	.byte 0x11, 0x00
data_ov03_020fe1ea: ; 0x020fe1ea
	.byte 0x00, 0x00
data_ov03_020fe1ec: ; 0x020fe1ec
	.byte 0x21, 0x00
data_ov03_020fe1ee: ; 0x020fe1ee
	.byte 0x17, 0x00
data_ov03_020fe1f0: ; 0x020fe1f0
	.byte 0xff, 0xff
data_ov03_020fe1f2: ; 0x020fe1f2
	.byte 0xff, 0xff
data_ov03_020fe1f4: ; 0x020fe1f4
	.byte 0x2d, 0x00
data_ov03_020fe1f6: ; 0x020fe1f6
	.byte 0x04, 0x00
data_ov03_020fe1f8: ; 0x020fe1f8
	.byte 0x12, 0x00
data_ov03_020fe1fa: ; 0x020fe1fa
	.byte 0x3f, 0x00
data_ov03_020fe1fc: ; 0x020fe1fc
	.byte 0xff, 0xff
data_ov03_020fe1fe: ; 0x020fe1fe
	.byte 0xff, 0xff
data_ov03_020fe200: ; 0x020fe200
	.byte 0x31, 0x00
data_ov03_020fe202: ; 0x020fe202
	.byte 0x00, 0x00
data_ov03_020fe204: ; 0x020fe204
	.byte 0x10, 0x00
data_ov03_020fe206: ; 0x020fe206
	.byte 0x3e, 0x00
data_ov03_020fe208: ; 0x020fe208
	.byte 0xff, 0xff
data_ov03_020fe20a: ; 0x020fe20a
	.byte 0xff, 0xff
data_ov03_020fe20c: ; 0x020fe20c
	.byte 0x0d, 0x00
data_ov03_020fe20e: ; 0x020fe20e
	.byte 0x05, 0x00
data_ov03_020fe210: ; 0x020fe210
	.byte 0x21, 0x00
data_ov03_020fe212: ; 0x020fe212
	.byte 0x1c, 0x00
data_ov03_020fe214: ; 0x020fe214
	.byte 0xff, 0xff
data_ov03_020fe216: ; 0x020fe216
	.byte 0xff, 0xff
data_ov03_020fe218: ; 0x020fe218
	.byte 0x0b, 0x00
data_ov03_020fe21a: ; 0x020fe21a
	.byte 0x09, 0x00
data_ov03_020fe21c: ; 0x020fe21c
	.byte 0x0f, 0x00
data_ov03_020fe21e: ; 0x020fe21e
	.byte 0x00, 0x00
data_ov03_020fe220: ; 0x020fe220
	.byte 0x17, 0x00
data_ov03_020fe222: ; 0x020fe222
	.byte 0x04, 0x00
data_ov03_020fe224: ; 0x020fe224
	.byte 0x1d, 0x00
data_ov03_020fe226: ; 0x020fe226
	.byte 0x20, 0x00
data_ov03_020fe228: ; 0x020fe228
	.byte 0x2c, 0x00
data_ov03_020fe22a: ; 0x020fe22a
	.byte 0x0d, 0x00
data_ov03_020fe22c: ; 0x020fe22c
	.byte 0x2e, 0x00
data_ov03_020fe22e: ; 0x020fe22e
	.byte 0x37, 0x00
data_ov03_020fe230: ; 0x020fe230
	.byte 0x22, 0x00
data_ov03_020fe232: ; 0x020fe232
	.byte 0x3f, 0x00
data_ov03_020fe234: ; 0x020fe234
	.byte 0x15, 0x00
data_ov03_020fe236: ; 0x020fe236
	.byte 0x3c, 0x00
data_ov03_020fe238: ; 0x020fe238
	.byte 0x1c, 0x00
data_ov03_020fe23a: ; 0x020fe23a
	.byte 0x2c, 0x00
data_ov03_020fe23c: ; 0x020fe23c
	.byte 0x34, 0x00
data_ov03_020fe23e: ; 0x020fe23e
	.byte 0x1e, 0x00
data_ov03_020fe240: ; 0x020fe240
	.byte 0xff, 0xff
data_ov03_020fe242: ; 0x020fe242
	.byte 0xff, 0xff
data_ov03_020fe244: ; 0x020fe244
	.byte 0x08, 0x00
data_ov03_020fe246: ; 0x020fe246
	.byte 0x03, 0x00
data_ov03_020fe248: ; 0x020fe248
	.byte 0x36, 0x00
data_ov03_020fe24a: ; 0x020fe24a
	.byte 0x00, 0x00
data_ov03_020fe24c: ; 0x020fe24c
	.byte 0x09, 0x00
data_ov03_020fe24e: ; 0x020fe24e
	.byte 0x3b, 0x00
data_ov03_020fe250: ; 0x020fe250
	.byte 0x35, 0x00
data_ov03_020fe252: ; 0x020fe252
	.byte 0x3d, 0x00
data_ov03_020fe254: ; 0x020fe254
	.byte 0xff, 0xff
data_ov03_020fe256: ; 0x020fe256
	.byte 0xff, 0xff
data_ov03_020fe258: ; 0x020fe258
	.byte 0x14, 0x00
data_ov03_020fe25a: ; 0x020fe25a
	.byte 0x1b, 0x00
data_ov03_020fe25c: ; 0x020fe25c
	.byte 0x29, 0x00
data_ov03_020fe25e: ; 0x020fe25e
	.byte 0x2b, 0x00
data_ov03_020fe260: ; 0x020fe260
	.byte 0xff, 0xff
data_ov03_020fe262: ; 0x020fe262
	.byte 0xff, 0xff
data_ov03_020fe264: ; 0x020fe264
	.byte 0x10, 0x00
data_ov03_020fe266: ; 0x020fe266
	.byte 0x04, 0x00
data_ov03_020fe268: ; 0x020fe268
	.byte 0x22, 0x00
data_ov03_020fe26a: ; 0x020fe26a
	.byte 0x03, 0x00
data_ov03_020fe26c: ; 0x020fe26c
	.byte 0x19, 0x00
data_ov03_020fe26e: ; 0x020fe26e
	.byte 0x17, 0x00
data_ov03_020fe270: ; 0x020fe270
	.byte 0x22, 0x00
data_ov03_020fe272: ; 0x020fe272
	.byte 0x16, 0x00
data_ov03_020fe274: ; 0x020fe274
	.byte 0x26, 0x00
data_ov03_020fe276: ; 0x020fe276
	.byte 0x21, 0x00
data_ov03_020fe278: ; 0x020fe278
	.byte 0x20, 0x00
data_ov03_020fe27a: ; 0x020fe27a
	.byte 0x38, 0x00
data_ov03_020fe27c: ; 0x020fe27c
	.byte 0x16, 0x00
data_ov03_020fe27e: ; 0x020fe27e
	.byte 0x3e, 0x00
data_ov03_020fe280: ; 0x020fe280
	.byte 0x18, 0x00
data_ov03_020fe282: ; 0x020fe282
	.byte 0x2b, 0x00
data_ov03_020fe284: ; 0x020fe284
	.byte 0x2d, 0x00
data_ov03_020fe286: ; 0x020fe286
	.byte 0x1a, 0x00
data_ov03_020fe288: ; 0x020fe288
	.byte 0xff, 0xff
data_ov03_020fe28a: ; 0x020fe28a
	.byte 0xff, 0xff
data_ov03_020fe28c: ; 0x020fe28c
	.byte 0x07, 0x00
data_ov03_020fe28e: ; 0x020fe28e
	.byte 0x15, 0x00
data_ov03_020fe290: ; 0x020fe290
	.byte 0x28, 0x00
data_ov03_020fe292: ; 0x020fe292
	.byte 0x05, 0x00
data_ov03_020fe294: ; 0x020fe294
	.byte 0xff, 0xff
data_ov03_020fe296: ; 0x020fe296
	.byte 0xff, 0xff
data_ov03_020fe298: ; 0x020fe298
	.byte 0x1d, 0x00
data_ov03_020fe29a: ; 0x020fe29a
	.byte 0x00, 0x00
data_ov03_020fe29c: ; 0x020fe29c
	.byte 0x1c, 0x00
data_ov03_020fe29e: ; 0x020fe29e
	.byte 0x33, 0x00
data_ov03_020fe2a0: ; 0x020fe2a0
	.byte 0xff, 0xff
data_ov03_020fe2a2: ; 0x020fe2a2
	.byte 0xff, 0xff
data_ov03_020fe2a4: ; 0x020fe2a4
	.byte 0x27, 0x00
data_ov03_020fe2a6: ; 0x020fe2a6
	.byte 0x17, 0x00
data_ov03_020fe2a8: ; 0x020fe2a8
	.byte 0x1c, 0x00
data_ov03_020fe2aa: ; 0x020fe2aa
	.byte 0x34, 0x00
data_ov03_020fe2ac: ; 0x020fe2ac
	.byte 0x0e, 0x00
data_ov03_020fe2ae: ; 0x020fe2ae
	.byte 0x32, 0x00
data_ov03_020fe2b0: ; 0x020fe2b0
	.byte 0x16, 0x00
data_ov03_020fe2b2: ; 0x020fe2b2
	.byte 0x1e, 0x00
data_ov03_020fe2b4: ; 0x020fe2b4
	.byte 0x28, 0x00
data_ov03_020fe2b6: ; 0x020fe2b6
	.byte 0x1a, 0x00
data_ov03_020fe2b8: ; 0x020fe2b8
	.byte 0x38, 0x00
data_ov03_020fe2ba: ; 0x020fe2ba
	.byte 0x2b, 0x00
data_ov03_020fe2bc: ; 0x020fe2bc
	.byte 0x2f, 0x00
data_ov03_020fe2be: ; 0x020fe2be
	.byte 0x3f, 0x00
data_ov03_020fe2c0: ; 0x020fe2c0
	.byte 0xff, 0xff
data_ov03_020fe2c2: ; 0x020fe2c2
	.byte 0xff, 0xff
data_ov03_020fe2c4: ; 0x020fe2c4
	.byte 0x01, 0x00
data_ov03_020fe2c6: ; 0x020fe2c6
	.byte 0x0a, 0x00
data_ov03_020fe2c8: ; 0x020fe2c8
	.byte 0x02, 0x00
data_ov03_020fe2ca: ; 0x020fe2ca
	.byte 0x27, 0x00
data_ov03_020fe2cc: ; 0x020fe2cc
	.byte 0x0f, 0x00
data_ov03_020fe2ce: ; 0x020fe2ce
	.byte 0x34, 0x00
data_ov03_020fe2d0: ; 0x020fe2d0
	.byte 0xff, 0xff
data_ov03_020fe2d2: ; 0x020fe2d2
	.byte 0xff, 0xff
data_ov03_020fe2d4: ; 0x020fe2d4
	.byte 0x2f, 0x00
data_ov03_020fe2d6: ; 0x020fe2d6
	.byte 0x16, 0x00
data_ov03_020fe2d8: ; 0x020fe2d8
	.byte 0x3e, 0x00
data_ov03_020fe2da: ; 0x020fe2da
	.byte 0x26, 0x00
data_ov03_020fe2dc: ; 0x020fe2dc
	.byte 0xff, 0xff
data_ov03_020fe2de: ; 0x020fe2de
	.byte 0xff, 0xff
data_ov03_020fe2e0: ; 0x020fe2e0
	.byte 0x1b, 0x00
data_ov03_020fe2e2: ; 0x020fe2e2
	.byte 0x00, 0x00
data_ov03_020fe2e4: ; 0x020fe2e4
	.byte 0x28, 0x00
data_ov03_020fe2e6: ; 0x020fe2e6
	.byte 0x08, 0x00
data_ov03_020fe2e8: ; 0x020fe2e8
	.byte 0xff, 0xff
data_ov03_020fe2ea: ; 0x020fe2ea
	.byte 0xff, 0xff
data_ov03_020fe2ec: ; 0x020fe2ec
	.byte 0x0d, 0x00
data_ov03_020fe2ee: ; 0x020fe2ee
	.byte 0x1e, 0x00
data_ov03_020fe2f0: ; 0x020fe2f0
	.byte 0x1d, 0x00
data_ov03_020fe2f2: ; 0x020fe2f2
	.byte 0x15, 0x00
data_ov03_020fe2f4: ; 0x020fe2f4
	.byte 0x31, 0x00
data_ov03_020fe2f6: ; 0x020fe2f6
	.byte 0x1b, 0x00
data_ov03_020fe2f8: ; 0x020fe2f8
	.byte 0x2f, 0x00
data_ov03_020fe2fa: ; 0x020fe2fa
	.byte 0x2d, 0x00
data_ov03_020fe2fc: ; 0x020fe2fc
	.byte 0x1b, 0x00
data_ov03_020fe2fe: ; 0x020fe2fe
	.byte 0x3d, 0x00
data_ov03_020fe300: ; 0x020fe300
	.byte 0xff, 0xff
data_ov03_020fe302: ; 0x020fe302
	.byte 0xff, 0xff
data_ov03_020fe304: ; 0x020fe304
	.byte 0x10, 0x00
data_ov03_020fe306: ; 0x020fe306
	.byte 0x00, 0x00
data_ov03_020fe308: ; 0x020fe308
	.byte 0x1d, 0x00
data_ov03_020fe30a: ; 0x020fe30a
	.byte 0x0a, 0x00
data_ov03_020fe30c: ; 0x020fe30c
	.byte 0xff, 0xff
data_ov03_020fe30e: ; 0x020fe30e
	.byte 0xff, 0xff
data_ov03_020fe310: ; 0x020fe310
	.byte 0x0a, 0x00
data_ov03_020fe312: ; 0x020fe312
	.byte 0x1a, 0x00
data_ov03_020fe314: ; 0x020fe314
	.byte 0x1d, 0x00
data_ov03_020fe316: ; 0x020fe316
	.byte 0x17, 0x00
data_ov03_020fe318: ; 0x020fe318
	.byte 0x09, 0x00
data_ov03_020fe31a: ; 0x020fe31a
	.byte 0x3f, 0x00
data_ov03_020fe31c: ; 0x020fe31c
	.byte 0x14, 0x00
data_ov03_020fe31e: ; 0x020fe31e
	.byte 0x32, 0x00
data_ov03_020fe320: ; 0x020fe320
	.byte 0x22, 0x00
data_ov03_020fe322: ; 0x020fe322
	.byte 0x3d, 0x00
data_ov03_020fe324: ; 0x020fe324
	.byte 0x35, 0x00
data_ov03_020fe326: ; 0x020fe326
	.byte 0x34, 0x00
data_ov03_020fe328: ; 0x020fe328
	.byte 0xff, 0xff
data_ov03_020fe32a: ; 0x020fe32a
	.byte 0xff, 0xff
data_ov03_020fe32c: ; 0x020fe32c
	.byte 0x00, 0x00
data_ov03_020fe32e: ; 0x020fe32e
	.byte 0x12, 0x00
data_ov03_020fe330: ; 0x020fe330
	.byte 0x18, 0x00
data_ov03_020fe332: ; 0x020fe332
	.byte 0x05, 0x00
data_ov03_020fe334: ; 0x020fe334
	.byte 0xff, 0xff
data_ov03_020fe336: ; 0x020fe336
	.byte 0xff, 0xff
data_ov03_020fe338: ; 0x020fe338
	.byte 0x15, 0x00
data_ov03_020fe33a: ; 0x020fe33a
	.byte 0x00, 0x00
data_ov03_020fe33c: ; 0x020fe33c
	.byte 0x17, 0x00
data_ov03_020fe33e: ; 0x020fe33e
	.byte 0x3d, 0x00
data_ov03_020fe340: ; 0x020fe340
	.byte 0x0e, 0x00
data_ov03_020fe342: ; 0x020fe342
	.byte 0x35, 0x00
data_ov03_020fe344: ; 0x020fe344
	.byte 0x1f, 0x00
data_ov03_020fe346: ; 0x020fe346
	.byte 0x24, 0x00
data_ov03_020fe348: ; 0x020fe348
	.byte 0x35, 0x00
data_ov03_020fe34a: ; 0x020fe34a
	.byte 0x1f, 0x00
data_ov03_020fe34c: ; 0x020fe34c
	.byte 0x3f, 0x00
data_ov03_020fe34e: ; 0x020fe34e
	.byte 0x30, 0x00
data_ov03_020fe350: ; 0x020fe350
	.byte 0x2f, 0x00
data_ov03_020fe352: ; 0x020fe352
	.byte 0x3e, 0x00
data_ov03_020fe354: ; 0x020fe354
	.byte 0xff, 0xff
data_ov03_020fe356: ; 0x020fe356
	.byte 0xff, 0xff
data_ov03_020fe358: ; 0x020fe358
	.byte 0x32, 0x00
data_ov03_020fe35a: ; 0x020fe35a
	.byte 0x0d, 0x00
data_ov03_020fe35c: ; 0x020fe35c
	.byte 0x3d, 0x00
data_ov03_020fe35e: ; 0x020fe35e
	.byte 0x13, 0x00
data_ov03_020fe360: ; 0x020fe360
	.byte 0xff, 0xff
data_ov03_020fe362: ; 0x020fe362
	.byte 0xff, 0xff
data_ov03_020fe364: ; 0x020fe364
	.byte 0x00, 0x00
data_ov03_020fe366: ; 0x020fe366
	.byte 0x18, 0x00
data_ov03_020fe368: ; 0x020fe368
	.byte 0x23, 0x00
data_ov03_020fe36a: ; 0x020fe36a
	.byte 0x19, 0x00
data_ov03_020fe36c: ; 0x020fe36c
	.byte 0x24, 0x00
data_ov03_020fe36e: ; 0x020fe36e
	.byte 0x2a, 0x00
data_ov03_020fe370: ; 0x020fe370
	.byte 0x16, 0x00
data_ov03_020fe372: ; 0x020fe372
	.byte 0x39, 0x00
data_ov03_020fe374: ; 0x020fe374
	.byte 0xff, 0xff
data_ov03_020fe376: ; 0x020fe376
	.byte 0xff, 0xff
data_ov03_020fe378: ; 0x020fe378
	.byte 0x15, 0x00
data_ov03_020fe37a: ; 0x020fe37a
	.byte 0x00, 0x00
data_ov03_020fe37c: ; 0x020fe37c
	.byte 0x0b, 0x00
data_ov03_020fe37e: ; 0x020fe37e
	.byte 0x3b, 0x00
data_ov03_020fe380: ; 0x020fe380
	.byte 0xff, 0xff
data_ov03_020fe382: ; 0x020fe382
	.byte 0xff, 0xff
data_ov03_020fe384: ; 0x020fe384
	.byte 0x28, 0x00
data_ov03_020fe386: ; 0x020fe386
	.byte 0x14, 0x00
data_ov03_020fe388: ; 0x020fe388
	.byte 0x3e, 0x00
data_ov03_020fe38a: ; 0x020fe38a
	.byte 0x2b, 0x00
data_ov03_020fe38c: ; 0x020fe38c
	.byte 0xff, 0xff
data_ov03_020fe38e: ; 0x020fe38e
	.byte 0xff, 0xff
data_ov03_020fe390: ; 0x020fe390
	.byte 0x11, 0x00
data_ov03_020fe392: ; 0x020fe392
	.byte 0x0d, 0x00
data_ov03_020fe394: ; 0x020fe394
	.byte 0x24, 0x00
data_ov03_020fe396: ; 0x020fe396
	.byte 0x05, 0x00
data_ov03_020fe398: ; 0x020fe398
	.byte 0xff, 0xff
data_ov03_020fe39a: ; 0x020fe39a
	.byte 0xff, 0xff
data_ov03_020fe39c: ; 0x020fe39c
	.byte 0x13, 0x00
data_ov03_020fe39e: ; 0x020fe39e
	.byte 0x1e, 0x00
data_ov03_020fe3a0: ; 0x020fe3a0
	.byte 0x2c, 0x00
data_ov03_020fe3a2: ; 0x020fe3a2
	.byte 0x0d, 0x00
data_ov03_020fe3a4: ; 0x020fe3a4
	.byte 0xff, 0xff
data_ov03_020fe3a6: ; 0x020fe3a6
	.byte 0xff, 0xff
data_ov03_020fe3a8: ; 0x020fe3a8
	.byte 0x1c, 0x00
data_ov03_020fe3aa: ; 0x020fe3aa
	.byte 0x00, 0x00
data_ov03_020fe3ac: ; 0x020fe3ac
	.byte 0x2a, 0x00
data_ov03_020fe3ae: ; 0x020fe3ae
	.byte 0x20, 0x00
data_ov03_020fe3b0: ; 0x020fe3b0
	.byte 0xff, 0xff
data_ov03_020fe3b2: ; 0x020fe3b2
	.byte 0xff, 0xff
data_ov03_020fe3b4: ; 0x020fe3b4
	.byte 0x16, 0x00
data_ov03_020fe3b6: ; 0x020fe3b6
	.byte 0x33, 0x00
data_ov03_020fe3b8: ; 0x020fe3b8
	.byte 0x1c, 0x00
data_ov03_020fe3ba: ; 0x020fe3ba
	.byte 0x3c, 0x00
data_ov03_020fe3bc: ; 0x020fe3bc
	.byte 0x29, 0x00
data_ov03_020fe3be: ; 0x020fe3be
	.byte 0x3d, 0x00
data_ov03_020fe3c0: ; 0x020fe3c0
	.byte 0xff, 0xff
data_ov03_020fe3c2: ; 0x020fe3c2
	.byte 0xff, 0xff
data_ov03_020fe3c4: ; 0x020fe3c4
	.byte 0x28, 0x00
data_ov03_020fe3c6: ; 0x020fe3c6
	.byte 0x00, 0x00
data_ov03_020fe3c8: ; 0x020fe3c8
	.byte 0x15, 0x00
data_ov03_020fe3ca: ; 0x020fe3ca
	.byte 0x1c, 0x00
data_ov03_020fe3cc: ; 0x020fe3cc
	.byte 0x28, 0x00
data_ov03_020fe3ce: ; 0x020fe3ce
	.byte 0x3d, 0x00
data_ov03_020fe3d0: ; 0x020fe3d0
	.byte 0xff, 0xff
data_ov03_020fe3d2: ; 0x020fe3d2
	.byte 0xff, 0xff
data_ov03_020fe3d4: ; 0x020fe3d4
	.byte 0x09, 0x00
data_ov03_020fe3d6: ; 0x020fe3d6
	.byte 0x09, 0x00
data_ov03_020fe3d8: ; 0x020fe3d8
	.byte 0x08, 0x00
data_ov03_020fe3da: ; 0x020fe3da
	.byte 0x30, 0x00
data_ov03_020fe3dc: ; 0x020fe3dc
	.byte 0xff, 0xff
data_ov03_020fe3de: ; 0x020fe3de
	.byte 0xff, 0xff
data_ov03_020fe3e0: ; 0x020fe3e0
	.byte 0x20, 0x00
data_ov03_020fe3e2: ; 0x020fe3e2
	.byte 0x00, 0x00
data_ov03_020fe3e4: ; 0x020fe3e4
	.byte 0x29, 0x00
data_ov03_020fe3e6: ; 0x020fe3e6
	.byte 0x2a, 0x00
data_ov03_020fe3e8: ; 0x020fe3e8
	.byte 0x1d, 0x00
data_ov03_020fe3ea: ; 0x020fe3ea
	.byte 0x3d, 0x00
data_ov03_020fe3ec: ; 0x020fe3ec
	.byte 0xff, 0xff
data_ov03_020fe3ee: ; 0x020fe3ee
	.byte 0xff, 0xff
data_ov03_020fe3f0: ; 0x020fe3f0
	.byte 0x1a, 0x00
data_ov03_020fe3f2: ; 0x020fe3f2
	.byte 0x18, 0x00
data_ov03_020fe3f4: ; 0x020fe3f4
	.byte 0x36, 0x00
data_ov03_020fe3f6: ; 0x020fe3f6
	.byte 0x15, 0x00
data_ov03_020fe3f8: ; 0x020fe3f8
	.byte 0xff, 0xff
data_ov03_020fe3fa: ; 0x020fe3fa
	.byte 0xff, 0xff
data_ov03_020fe3fc: ; 0x020fe3fc
	.byte 0x08, 0x00
data_ov03_020fe3fe: ; 0x020fe3fe
	.byte 0x03, 0x00
data_ov03_020fe400: ; 0x020fe400
	.byte 0x27, 0x00
data_ov03_020fe402: ; 0x020fe402
	.byte 0x07, 0x00
data_ov03_020fe404: ; 0x020fe404
	.byte 0xff, 0xff
data_ov03_020fe406: ; 0x020fe406
	.byte 0xff, 0xff
data_ov03_020fe408: ; 0x020fe408
	.byte 0x0b, 0x00
data_ov03_020fe40a: ; 0x020fe40a
	.byte 0x36, 0x00
data_ov03_020fe40c: ; 0x020fe40c
	.byte 0x1f, 0x00
data_ov03_020fe40e: ; 0x020fe40e
	.byte 0x3e, 0x00
data_ov03_020fe410: ; 0x020fe410
	.byte 0x36, 0x00
data_ov03_020fe412: ; 0x020fe412
	.byte 0x30, 0x00
data_ov03_020fe414: ; 0x020fe414
	.byte 0xff, 0xff
data_ov03_020fe416: ; 0x020fe416
	.byte 0xff, 0xff
data_ov03_020fe418: ; 0x020fe418
	.byte 0x04, 0x00
data_ov03_020fe41a: ; 0x020fe41a
	.byte 0x16, 0x00
data_ov03_020fe41c: ; 0x020fe41c
	.byte 0x36, 0x00
data_ov03_020fe41e: ; 0x020fe41e
	.byte 0x06, 0x00
data_ov03_020fe420: ; 0x020fe420
	.byte 0xff, 0xff
data_ov03_020fe422: ; 0x020fe422
	.byte 0xff, 0xff
data_ov03_020fe424: ; 0x020fe424
	.byte 0x20, 0x00
data_ov03_020fe426: ; 0x020fe426
	.byte 0x00, 0x00
data_ov03_020fe428: ; 0x020fe428
	.byte 0x36, 0x00
data_ov03_020fe42a: ; 0x020fe42a
	.byte 0x1d, 0x00
data_ov03_020fe42c: ; 0x020fe42c
	.byte 0xff, 0xff
data_ov03_020fe42e: ; 0x020fe42e
	.byte 0xff, 0xff
data_ov03_020fe430: ; 0x020fe430
	.byte 0x19, 0x00
data_ov03_020fe432: ; 0x020fe432
	.byte 0x35, 0x00
data_ov03_020fe434: ; 0x020fe434
	.byte 0x26, 0x00
data_ov03_020fe436: ; 0x020fe436
	.byte 0x3f, 0x00
data_ov03_020fe438: ; 0x020fe438
	.byte 0x39, 0x00
data_ov03_020fe43a: ; 0x020fe43a
	.byte 0x3b, 0x00
data_ov03_020fe43c: ; 0x020fe43c
	.byte 0xff, 0xff
data_ov03_020fe43e: ; 0x020fe43e
	.byte 0xff, 0xff
data_ov03_020fe440: ; 0x020fe440
	.byte 0x08, 0x00
data_ov03_020fe442: ; 0x020fe442
	.byte 0x00, 0x00
data_ov03_020fe444: ; 0x020fe444
	.byte 0x09, 0x00
data_ov03_020fe446: ; 0x020fe446
	.byte 0x2b, 0x00
data_ov03_020fe448: ; 0x020fe448
	.byte 0x12, 0x00
data_ov03_020fe44a: ; 0x020fe44a
	.byte 0x3d, 0x00
data_ov03_020fe44c: ; 0x020fe44c
	.byte 0x27, 0x00
data_ov03_020fe44e: ; 0x020fe44e
	.byte 0x3a, 0x00
data_ov03_020fe450: ; 0x020fe450
	.byte 0x35, 0x00
data_ov03_020fe452: ; 0x020fe452
	.byte 0x28, 0x00
data_ov03_020fe454: ; 0x020fe454
	.byte 0xff, 0xff
data_ov03_020fe456: ; 0x020fe456
	.byte 0xff, 0xff
data_ov03_020fe458: ; 0x020fe458
	.byte 0x09, 0x00
data_ov03_020fe45a: ; 0x020fe45a
	.byte 0x14, 0x00
data_ov03_020fe45c: ; 0x020fe45c
	.byte 0x34, 0x00
data_ov03_020fe45e: ; 0x020fe45e
	.byte 0x09, 0x00
data_ov03_020fe460: ; 0x020fe460
	.byte 0xff, 0xff
data_ov03_020fe462: ; 0x020fe462
	.byte 0xff, 0xff
data_ov03_020fe464: ; 0x020fe464
	.byte 0x2a, 0x00
data_ov03_020fe466: ; 0x020fe466
	.byte 0x00, 0x00
data_ov03_020fe468: ; 0x020fe468
	.byte 0x2c, 0x00
data_ov03_020fe46a: ; 0x020fe46a
	.byte 0x1e, 0x00
data_ov03_020fe46c: ; 0x020fe46c
	.byte 0x27, 0x00
data_ov03_020fe46e: ; 0x020fe46e
	.byte 0x26, 0x00
data_ov03_020fe470: ; 0x020fe470
	.byte 0x1f, 0x00
data_ov03_020fe472: ; 0x020fe472
	.byte 0x22, 0x00
data_ov03_020fe474: ; 0x020fe474
	.byte 0x24, 0x00
data_ov03_020fe476: ; 0x020fe476
	.byte 0x1a, 0x00
data_ov03_020fe478: ; 0x020fe478
	.byte 0x2c, 0x00
data_ov03_020fe47a: ; 0x020fe47a
	.byte 0x1d, 0x00
data_ov03_020fe47c: ; 0x020fe47c
	.byte 0x2d, 0x00
data_ov03_020fe47e: ; 0x020fe47e
	.byte 0x3e, 0x00
data_ov03_020fe480: ; 0x020fe480
	.byte 0xff, 0xff
data_ov03_020fe482: ; 0x020fe482
	.byte 0xff, 0xff
data_ov03_020fe484: ; 0x020fe484
	.byte 0x01, 0x00
data_ov03_020fe486: ; 0x020fe486
	.byte 0x24, 0x00
data_ov03_020fe488: ; 0x020fe488
	.byte 0x1e, 0x00
data_ov03_020fe48a: ; 0x020fe48a
	.byte 0x11, 0x00
data_ov03_020fe48c: ; 0x020fe48c
	.byte 0x38, 0x00
data_ov03_020fe48e: ; 0x020fe48e
	.byte 0x0b, 0x00
data_ov03_020fe490: ; 0x020fe490
	.byte 0xff, 0xff
data_ov03_020fe492: ; 0x020fe492
	.byte 0xff, 0xff
data_ov03_020fe494: ; 0x020fe494
	.byte 0x28, 0x00
data_ov03_020fe496: ; 0x020fe496
	.byte 0x01, 0x00
data_ov03_020fe498: ; 0x020fe498
	.byte 0x26, 0x00
data_ov03_020fe49a: ; 0x020fe49a
	.byte 0x25, 0x00
data_ov03_020fe49c: ; 0x020fe49c
	.byte 0xff, 0xff
data_ov03_020fe49e: ; 0x020fe49e
	.byte 0xff, 0xff
data_ov03_020fe4a0: ; 0x020fe4a0
	.byte 0x10, 0x00
data_ov03_020fe4a2: ; 0x020fe4a2
	.byte 0x10, 0x00
data_ov03_020fe4a4: ; 0x020fe4a4
	.byte 0x18, 0x00
data_ov03_020fe4a6: ; 0x020fe4a6
	.byte 0x38, 0x00
data_ov03_020fe4a8: ; 0x020fe4a8
	.byte 0x25, 0x00
data_ov03_020fe4aa: ; 0x020fe4aa
	.byte 0x3c, 0x00
data_ov03_020fe4ac: ; 0x020fe4ac
	.byte 0x3d, 0x00
data_ov03_020fe4ae: ; 0x020fe4ae
	.byte 0x35, 0x00
data_ov03_020fe4b0: ; 0x020fe4b0
	.byte 0xff, 0xff
data_ov03_020fe4b2: ; 0x020fe4b2
	.byte 0xff, 0xff
data_ov03_020fe4b4: ; 0x020fe4b4
	.byte 0x12, 0x00
data_ov03_020fe4b6: ; 0x020fe4b6
	.byte 0x05, 0x00
data_ov03_020fe4b8: ; 0x020fe4b8
	.byte 0x2c, 0x00
data_ov03_020fe4ba: ; 0x020fe4ba
	.byte 0x00, 0x00
data_ov03_020fe4bc: ; 0x020fe4bc
	.byte 0x07, 0x00
data_ov03_020fe4be: ; 0x020fe4be
	.byte 0x29, 0x00
data_ov03_020fe4c0: ; 0x020fe4c0
	.byte 0x36, 0x00
data_ov03_020fe4c2: ; 0x020fe4c2
	.byte 0x14, 0x00
data_ov03_020fe4c4: ; 0x020fe4c4
	.byte 0x25, 0x00
data_ov03_020fe4c6: ; 0x020fe4c6
	.byte 0x2d, 0x00
data_ov03_020fe4c8: ; 0x020fe4c8
	.byte 0x27, 0x00
data_ov03_020fe4ca: ; 0x020fe4ca
	.byte 0x39, 0x00
data_ov03_020fe4cc: ; 0x020fe4cc
	.byte 0x33, 0x00
data_ov03_020fe4ce: ; 0x020fe4ce
	.byte 0x3e, 0x00
data_ov03_020fe4d0: ; 0x020fe4d0
	.byte 0xff, 0xff
data_ov03_020fe4d2: ; 0x020fe4d2
	.byte 0xff, 0xff
data_ov03_020fe4d4: ; 0x020fe4d4
	.byte 0x00, 0x00
data_ov03_020fe4d6: ; 0x020fe4d6
	.byte 0x12, 0x00
data_ov03_020fe4d8: ; 0x020fe4d8
	.byte 0x1c, 0x00
data_ov03_020fe4da: ; 0x020fe4da
	.byte 0x09, 0x00
data_ov03_020fe4dc: ; 0x020fe4dc
	.byte 0xff, 0xff
data_ov03_020fe4de: ; 0x020fe4de
	.byte 0xff, 0xff
data_ov03_020fe4e0: ; 0x020fe4e0
	.byte 0x16, 0x00
data_ov03_020fe4e2: ; 0x020fe4e2
	.byte 0x00, 0x00
data_ov03_020fe4e4: ; 0x020fe4e4
	.byte 0x0d, 0x00
data_ov03_020fe4e6: ; 0x020fe4e6
	.byte 0x3c, 0x00
data_ov03_020fe4e8: ; 0x020fe4e8
	.byte 0xff, 0xff
data_ov03_020fe4ea: ; 0x020fe4ea
	.byte 0xff, 0xff
data_ov03_020fe4ec: ; 0x020fe4ec
	.byte 0x1c, 0x00
data_ov03_020fe4ee: ; 0x020fe4ee
	.byte 0x20, 0x00
data_ov03_020fe4f0: ; 0x020fe4f0
	.byte 0x2f, 0x00
data_ov03_020fe4f2: ; 0x020fe4f2
	.byte 0x1d, 0x00
data_ov03_020fe4f4: ; 0x020fe4f4
	.byte 0xff, 0xff
data_ov03_020fe4f6: ; 0x020fe4f6
	.byte 0xff, 0xff
data_ov03_020fe4f8: ; 0x020fe4f8
	.byte 0x23, 0x00
data_ov03_020fe4fa: ; 0x020fe4fa
	.byte 0x31, 0x00
data_ov03_020fe4fc: ; 0x020fe4fc
	.byte 0x2d, 0x00
data_ov03_020fe4fe: ; 0x020fe4fe
	.byte 0x38, 0x00
data_ov03_020fe500: ; 0x020fe500
	.byte 0x3e, 0x00
data_ov03_020fe502: ; 0x020fe502
	.byte 0x32, 0x00
data_ov03_020fe504: ; 0x020fe504
	.byte 0xff, 0xff
data_ov03_020fe506: ; 0x020fe506
	.byte 0xff, 0xff
data_ov03_020fe508: ; 0x020fe508
	.byte 0x05, 0x00
data_ov03_020fe50a: ; 0x020fe50a
	.byte 0x15, 0x00
data_ov03_020fe50c: ; 0x020fe50c
	.byte 0x37, 0x00
data_ov03_020fe50e: ; 0x020fe50e
	.byte 0x08, 0x00
data_ov03_020fe510: ; 0x020fe510
	.byte 0xff, 0xff
data_ov03_020fe512: ; 0x020fe512
	.byte 0xff, 0xff
data_ov03_020fe514: ; 0x020fe514
	.byte 0x21, 0x00
data_ov03_020fe516: ; 0x020fe516
	.byte 0x01, 0x00
data_ov03_020fe518: ; 0x020fe518
	.byte 0x12, 0x00
data_ov03_020fe51a: ; 0x020fe51a
	.byte 0x26, 0x00
data_ov03_020fe51c: ; 0x020fe51c
	.byte 0x26, 0x00
data_ov03_020fe51e: ; 0x020fe51e
	.byte 0x1e, 0x00
data_ov03_020fe520: ; 0x020fe520
	.byte 0x37, 0x00
data_ov03_020fe522: ; 0x020fe522
	.byte 0x2a, 0x00
data_ov03_020fe524: ; 0x020fe524
	.byte 0x2c, 0x00
data_ov03_020fe526: ; 0x020fe526
	.byte 0x3c, 0x00
data_ov03_020fe528: ; 0x020fe528
	.byte 0x1b, 0x00
data_ov03_020fe52a: ; 0x020fe52a
	.byte 0x3e, 0x00
data_ov03_020fe52c: ; 0x020fe52c
	.byte 0xff, 0xff
data_ov03_020fe52e: ; 0x020fe52e
	.byte 0xff, 0xff
data_ov03_020fe530: ; 0x020fe530
	.byte 0x00, 0x00
data_ov03_020fe532: ; 0x020fe532
	.byte 0x22, 0x00
data_ov03_020fe534: ; 0x020fe534
	.byte 0x28, 0x00
data_ov03_020fe536: ; 0x020fe536
	.byte 0x0d, 0x00
data_ov03_020fe538: ; 0x020fe538
	.byte 0x38, 0x00
data_ov03_020fe53a: ; 0x020fe53a
	.byte 0x0e, 0x00
data_ov03_020fe53c: ; 0x020fe53c
	.byte 0x3d, 0x00
data_ov03_020fe53e: ; 0x020fe53e
	.byte 0x1d, 0x00
data_ov03_020fe540: ; 0x020fe540
	.byte 0x2c, 0x00
data_ov03_020fe542: ; 0x020fe542
	.byte 0x32, 0x00
data_ov03_020fe544: ; 0x020fe544
	.byte 0xff, 0xff
data_ov03_020fe546: ; 0x020fe546
	.byte 0xff, 0xff
data_ov03_020fe548: ; 0x020fe548
	.byte 0x07, 0x00
data_ov03_020fe54a: ; 0x020fe54a
	.byte 0x18, 0x00
data_ov03_020fe54c: ; 0x020fe54c
	.byte 0x37, 0x00
data_ov03_020fe54e: ; 0x020fe54e
	.byte 0x00, 0x00
data_ov03_020fe550: ; 0x020fe550
	.byte 0x25, 0x00
data_ov03_020fe552: ; 0x020fe552
	.byte 0x26, 0x00
data_ov03_020fe554: ; 0x020fe554
	.byte 0x30, 0x00
data_ov03_020fe556: ; 0x020fe556
	.byte 0x3f, 0x00
data_ov03_020fe558: ; 0x020fe558
	.byte 0xff, 0xff
data_ov03_020fe55a: ; 0x020fe55a
	.byte 0xff, 0xff
data_ov03_020fe55c: ; 0x020fe55c
	.byte 0x05, 0x00
data_ov03_020fe55e: ; 0x020fe55e
	.byte 0x01, 0x00
data_ov03_020fe560: ; 0x020fe560
	.byte 0x13, 0x00
data_ov03_020fe562: ; 0x020fe562
	.byte 0x1a, 0x00
data_ov03_020fe564: ; 0x020fe564
	.byte 0xff, 0xff
data_ov03_020fe566: ; 0x020fe566
	.byte 0xff, 0xff
data_ov03_020fe568: ; 0x020fe568
	.byte 0x2b, 0x00
data_ov03_020fe56a: ; 0x020fe56a
	.byte 0x0d, 0x00
data_ov03_020fe56c: ; 0x020fe56c
	.byte 0x15, 0x00
data_ov03_020fe56e: ; 0x020fe56e
	.byte 0x1d, 0x00
data_ov03_020fe570: ; 0x020fe570
	.byte 0x09, 0x00
data_ov03_020fe572: ; 0x020fe572
	.byte 0x34, 0x00
data_ov03_020fe574: ; 0x020fe574
	.byte 0x1d, 0x00
data_ov03_020fe576: ; 0x020fe576
	.byte 0x3f, 0x00
data_ov03_020fe578: ; 0x020fe578
	.byte 0x39, 0x00
data_ov03_020fe57a: ; 0x020fe57a
	.byte 0x31, 0x00
data_ov03_020fe57c: ; 0x020fe57c
	.byte 0xff, 0xff
data_ov03_020fe57e: ; 0x020fe57e
	.byte 0xff, 0xff
data_ov03_020fe580: ; 0x020fe580
	.byte 0x03, 0x00
data_ov03_020fe582: ; 0x020fe582
	.byte 0x10, 0x00
data_ov03_020fe584: ; 0x020fe584
	.byte 0x1d, 0x00
data_ov03_020fe586: ; 0x020fe586
	.byte 0x06, 0x00
data_ov03_020fe588: ; 0x020fe588
	.byte 0xff, 0xff
data_ov03_020fe58a: ; 0x020fe58a
	.byte 0xff, 0xff
data_ov03_020fe58c: ; 0x020fe58c
	.byte 0x1a, 0x00
data_ov03_020fe58e: ; 0x020fe58e
	.byte 0x00, 0x00
data_ov03_020fe590: ; 0x020fe590
	.byte 0x10, 0x00
data_ov03_020fe592: ; 0x020fe592
	.byte 0x2f, 0x00
data_ov03_020fe594: ; 0x020fe594
	.byte 0xff, 0xff
data_ov03_020fe596: ; 0x020fe596
	.byte 0xff, 0xff
data_ov03_020fe598: ; 0x020fe598
	.byte 0x2a, 0x00
data_ov03_020fe59a: ; 0x020fe59a
	.byte 0x0e, 0x00
data_ov03_020fe59c: ; 0x020fe59c
	.byte 0x39, 0x00
data_ov03_020fe59e: ; 0x020fe59e
	.byte 0x1a, 0x00
data_ov03_020fe5a0: ; 0x020fe5a0
	.byte 0xff, 0xff
data_ov03_020fe5a2: ; 0x020fe5a2
	.byte 0xff, 0xff
data_ov03_020fe5a4: ; 0x020fe5a4
	.byte 0x2f, 0x00
data_ov03_020fe5a6: ; 0x020fe5a6
	.byte 0x1d, 0x00
data_ov03_020fe5a8: ; 0x020fe5a8
	.byte 0x33, 0x00
data_ov03_020fe5aa: ; 0x020fe5aa
	.byte 0x3c, 0x00
data_ov03_020fe5ac: ; 0x020fe5ac
	.byte 0x20, 0x00
data_ov03_020fe5ae: ; 0x020fe5ae
	.byte 0x38, 0x00
data_ov03_020fe5b0: ; 0x020fe5b0
	.byte 0x22, 0x00
data_ov03_020fe5b2: ; 0x020fe5b2
	.byte 0x2d, 0x00
data_ov03_020fe5b4: ; 0x020fe5b4
	.byte 0x3c, 0x00
data_ov03_020fe5b6: ; 0x020fe5b6
	.byte 0x38, 0x00
data_ov03_020fe5b8: ; 0x020fe5b8
	.byte 0xff, 0xff
data_ov03_020fe5ba: ; 0x020fe5ba
	.byte 0xff, 0xff
data_ov03_020fe5bc: ; 0x020fe5bc
	.byte 0x06, 0x00
data_ov03_020fe5be: ; 0x020fe5be
	.byte 0x00, 0x00
data_ov03_020fe5c0: ; 0x020fe5c0
	.byte 0x02, 0x00
data_ov03_020fe5c2: ; 0x020fe5c2
	.byte 0x3f, 0x00
data_ov03_020fe5c4: ; 0x020fe5c4
	.byte 0xff, 0xff
data_ov03_020fe5c6: ; 0x020fe5c6
	.byte 0xff, 0xff
data_ov03_020fe5c8: ; 0x020fe5c8
	.byte 0x16, 0x00
data_ov03_020fe5ca: ; 0x020fe5ca
	.byte 0x12, 0x00
data_ov03_020fe5cc: ; 0x020fe5cc
	.byte 0x38, 0x00
data_ov03_020fe5ce: ; 0x020fe5ce
	.byte 0x0e, 0x00
data_ov03_020fe5d0: ; 0x020fe5d0
	.byte 0xff, 0xff
data_ov03_020fe5d2: ; 0x020fe5d2
	.byte 0xff, 0xff
data_ov03_020fe5d4: ; 0x020fe5d4
	.byte 0x1a, 0x00
data_ov03_020fe5d6: ; 0x020fe5d6
	.byte 0x34, 0x00
data_ov03_020fe5d8: ; 0x020fe5d8
	.byte 0x2a, 0x00
data_ov03_020fe5da: ; 0x020fe5da
	.byte 0x3c, 0x00
data_ov03_020fe5dc: ; 0x020fe5dc
	.byte 0x3e, 0x00
data_ov03_020fe5de: ; 0x020fe5de
	.byte 0x34, 0x00
data_ov03_020fe5e0: ; 0x020fe5e0
	.byte 0xff, 0xff
data_ov03_020fe5e2: ; 0x020fe5e2
	.byte 0xff, 0xff
data_ov03_020fe5e4: ; 0x020fe5e4
	.byte 0x08, 0x00
data_ov03_020fe5e6: ; 0x020fe5e6
	.byte 0x03, 0x00
data_ov03_020fe5e8: ; 0x020fe5e8
	.byte 0x10, 0x00
data_ov03_020fe5ea: ; 0x020fe5ea
	.byte 0x33, 0x00
data_ov03_020fe5ec: ; 0x020fe5ec
	.byte 0xff, 0xff
data_ov03_020fe5ee: ; 0x020fe5ee
	.byte 0xff, 0xff
data_ov03_020fe5f0: ; 0x020fe5f0
	.byte 0x21, 0x00
data_ov03_020fe5f2: ; 0x020fe5f2
	.byte 0x04, 0x00
data_ov03_020fe5f4: ; 0x020fe5f4
	.byte 0x15, 0x00
data_ov03_020fe5f6: ; 0x020fe5f6
	.byte 0x27, 0x00
data_ov03_020fe5f8: ; 0x020fe5f8
	.byte 0x0a, 0x00
data_ov03_020fe5fa: ; 0x020fe5fa
	.byte 0x35, 0x00
data_ov03_020fe5fc: ; 0x020fe5fc
	.byte 0x00, 0x00
data_ov03_020fe5fe: ; 0x020fe5fe
	.byte 0x34, 0x00
data_ov03_020fe600: ; 0x020fe600
	.byte 0x0b, 0x00
data_ov03_020fe602: ; 0x020fe602
	.byte 0x19, 0x00
data_ov03_020fe604: ; 0x020fe604
	.byte 0x29, 0x00
data_ov03_020fe606: ; 0x020fe606
	.byte 0x0f, 0x00
data_ov03_020fe608: ; 0x020fe608
	.byte 0x35, 0x00
data_ov03_020fe60a: ; 0x020fe60a
	.byte 0x1a, 0x00
data_ov03_020fe60c: ; 0x020fe60c
	.byte 0x35, 0x00
data_ov03_020fe60e: ; 0x020fe60e
	.byte 0x35, 0x00
data_ov03_020fe610: ; 0x020fe610
	.byte 0x25, 0x00
data_ov03_020fe612: ; 0x020fe612
	.byte 0x39, 0x00
data_ov03_020fe614: ; 0x020fe614
	.byte 0x29, 0x00
data_ov03_020fe616: ; 0x020fe616
	.byte 0x2f, 0x00
data_ov03_020fe618: ; 0x020fe618
	.byte 0x3e, 0x00
data_ov03_020fe61a: ; 0x020fe61a
	.byte 0x35, 0x00
data_ov03_020fe61c: ; 0x020fe61c
	.byte 0xff, 0xff
data_ov03_020fe61e: ; 0x020fe61e
	.byte 0xff, 0xff
data_ov03_020fe620: ; 0x020fe620
	.byte 0x10, 0x00
data_ov03_020fe622: ; 0x020fe622
	.byte 0x01, 0x00
data_ov03_020fe624: ; 0x020fe624
	.byte 0x12, 0x00
data_ov03_020fe626: ; 0x020fe626
	.byte 0x39, 0x00
data_ov03_020fe628: ; 0x020fe628
	.byte 0xff, 0xff
data_ov03_020fe62a: ; 0x020fe62a
	.byte 0xff, 0xff
data_ov03_020fe62c: ; 0x020fe62c
	.byte 0x00, 0x00
data_ov03_020fe62e: ; 0x020fe62e
	.byte 0x1e, 0x00
data_ov03_020fe630: ; 0x020fe630
	.byte 0x0e, 0x00
data_ov03_020fe632: ; 0x020fe632
	.byte 0x17, 0x00
data_ov03_020fe634: ; 0x020fe634
	.byte 0x07, 0x00
data_ov03_020fe636: ; 0x020fe636
	.byte 0x38, 0x00
data_ov03_020fe638: ; 0x020fe638
	.byte 0x17, 0x00
data_ov03_020fe63a: ; 0x020fe63a
	.byte 0x1d, 0x00
data_ov03_020fe63c: ; 0x020fe63c
	.byte 0x35, 0x00
data_ov03_020fe63e: ; 0x020fe63e
	.byte 0x17, 0x00
data_ov03_020fe640: ; 0x020fe640
	.byte 0x34, 0x00
data_ov03_020fe642: ; 0x020fe642
	.byte 0x3b, 0x00
data_ov03_020fe644: ; 0x020fe644
	.byte 0x24, 0x00
data_ov03_020fe646: ; 0x020fe646
	.byte 0x36, 0x00
data_ov03_020fe648: ; 0x020fe648
	.byte 0x2d, 0x00
data_ov03_020fe64a: ; 0x020fe64a
	.byte 0x2f, 0x00
data_ov03_020fe64c: ; 0x020fe64c
	.byte 0x3e, 0x00
data_ov03_020fe64e: ; 0x020fe64e
	.byte 0x38, 0x00
data_ov03_020fe650: ; 0x020fe650
	.byte 0xff, 0xff
data_ov03_020fe652: ; 0x020fe652
	.byte 0xff, 0xff
data_ov03_020fe654: ; 0x020fe654
	.byte 0x15, 0x00
data_ov03_020fe656: ; 0x020fe656
	.byte 0x0a, 0x00
data_ov03_020fe658: ; 0x020fe658
	.byte 0x0e, 0x00
data_ov03_020fe65a: ; 0x020fe65a
	.byte 0x36, 0x00
data_ov03_020fe65c: ; 0x020fe65c
	.byte 0x02, 0x00
data_ov03_020fe65e: ; 0x020fe65e
	.byte 0x2d, 0x00
data_ov03_020fe660: ; 0x020fe660
	.byte 0x0c, 0x00
data_ov03_020fe662: ; 0x020fe662
	.byte 0x10, 0x00
data_ov03_020fe664: ; 0x020fe664
	.byte 0x31, 0x00
data_ov03_020fe666: ; 0x020fe666
	.byte 0x05, 0x00
data_ov03_020fe668: ; 0x020fe668
	.byte 0x3e, 0x00
data_ov03_020fe66a: ; 0x020fe66a
	.byte 0x15, 0x00
data_ov03_020fe66c: ; 0x020fe66c
	.byte 0x3f, 0x00
data_ov03_020fe66e: ; 0x020fe66e
	.byte 0x24, 0x00
data_ov03_020fe670: ; 0x020fe670
	.byte 0x2f, 0x00
data_ov03_020fe672: ; 0x020fe672
	.byte 0x38, 0x00
data_ov03_020fe674: ; 0x020fe674
	.byte 0xff, 0xff
data_ov03_020fe676: ; 0x020fe676
	.byte 0xff, 0xff
data_ov03_020fe678: ; 0x020fe678
	.byte 0x04, 0x00
data_ov03_020fe67a: ; 0x020fe67a
	.byte 0x05, 0x00
data_ov03_020fe67c: ; 0x020fe67c
	.byte 0x04, 0x00
data_ov03_020fe67e: ; 0x020fe67e
	.byte 0x3c, 0x00
data_ov03_020fe680: ; 0x020fe680
	.byte 0xff, 0xff
data_ov03_020fe682: ; 0x020fe682
	.byte 0xff, 0xff
data_ov03_020fe684: ; 0x020fe684
	.byte 0x15, 0x00
data_ov03_020fe686: ; 0x020fe686
	.byte 0x0e, 0x00
data_ov03_020fe688: ; 0x020fe688
	.byte 0x34, 0x00
data_ov03_020fe68a: ; 0x020fe68a
	.byte 0x0a, 0x00
data_ov03_020fe68c: ; 0x020fe68c
	.byte 0xff, 0xff
data_ov03_020fe68e: ; 0x020fe68e
	.byte 0xff, 0xff
data_ov03_020fe690: ; 0x020fe690
	.byte 0x2b, 0x00
data_ov03_020fe692: ; 0x020fe692
	.byte 0x00, 0x00
data_ov03_020fe694: ; 0x020fe694
	.byte 0x36, 0x00
data_ov03_020fe696: ; 0x020fe696
	.byte 0x36, 0x00
data_ov03_020fe698: ; 0x020fe698
	.byte 0x2e, 0x00
data_ov03_020fe69a: ; 0x020fe69a
	.byte 0x3f, 0x00
data_ov03_020fe69c: ; 0x020fe69c
	.byte 0x19, 0x00
data_ov03_020fe69e: ; 0x020fe69e
	.byte 0x37, 0x00
data_ov03_020fe6a0: ; 0x020fe6a0
	.byte 0x1f, 0x00
data_ov03_020fe6a2: ; 0x020fe6a2
	.byte 0x2f, 0x00
data_ov03_020fe6a4: ; 0x020fe6a4
	.byte 0x3d, 0x00
data_ov03_020fe6a6: ; 0x020fe6a6
	.byte 0x37, 0x00
data_ov03_020fe6a8: ; 0x020fe6a8
	.byte 0xff, 0xff
data_ov03_020fe6aa: ; 0x020fe6aa
	.byte 0xff, 0xff
data_ov03_020fe6ac: ; 0x020fe6ac
	.byte 0x00, 0x00
data_ov03_020fe6ae: ; 0x020fe6ae
	.byte 0x14, 0x00
data_ov03_020fe6b0: ; 0x020fe6b0
	.byte 0x18, 0x00
data_ov03_020fe6b2: ; 0x020fe6b2
	.byte 0x06, 0x00
data_ov03_020fe6b4: ; 0x020fe6b4
	.byte 0x0c, 0x00
data_ov03_020fe6b6: ; 0x020fe6b6
	.byte 0x22, 0x00
data_ov03_020fe6b8: ; 0x020fe6b8
	.byte 0x14, 0x00
data_ov03_020fe6ba: ; 0x020fe6ba
	.byte 0x38, 0x00
data_ov03_020fe6bc: ; 0x020fe6bc
	.byte 0x22, 0x00
data_ov03_020fe6be: ; 0x020fe6be
	.byte 0x31, 0x00
data_ov03_020fe6c0: ; 0x020fe6c0
	.byte 0x2b, 0x00
data_ov03_020fe6c2: ; 0x020fe6c2
	.byte 0x14, 0x00
data_ov03_020fe6c4: ; 0x020fe6c4
	.byte 0x3f, 0x00
data_ov03_020fe6c6: ; 0x020fe6c6
	.byte 0x1b, 0x00
data_ov03_020fe6c8: ; 0x020fe6c8
	.byte 0xff, 0xff
data_ov03_020fe6ca: ; 0x020fe6ca
	.byte 0xff, 0xff
data_ov03_020fe6cc: ; 0x020fe6cc
	.byte 0x08, 0x00
data_ov03_020fe6ce: ; 0x020fe6ce
	.byte 0x03, 0x00
data_ov03_020fe6d0: ; 0x020fe6d0
	.byte 0x1b, 0x00
data_ov03_020fe6d2: ; 0x020fe6d2
	.byte 0x0c, 0x00
data_ov03_020fe6d4: ; 0x020fe6d4
	.byte 0x11, 0x00
data_ov03_020fe6d6: ; 0x020fe6d6
	.byte 0x19, 0x00
data_ov03_020fe6d8: ; 0x020fe6d8
	.byte 0x20, 0x00
data_ov03_020fe6da: ; 0x020fe6da
	.byte 0x28, 0x00
data_ov03_020fe6dc: ; 0x020fe6dc
	.byte 0x1b, 0x00
data_ov03_020fe6de: ; 0x020fe6de
	.byte 0x37, 0x00
data_ov03_020fe6e0: ; 0x020fe6e0
	.byte 0x0e, 0x00
data_ov03_020fe6e2: ; 0x020fe6e2
	.byte 0x35, 0x00
data_ov03_020fe6e4: ; 0x020fe6e4
	.byte 0xff, 0xff
data_ov03_020fe6e6: ; 0x020fe6e6
	.byte 0xff, 0xff
data_ov03_020fe6e8: ; 0x020fe6e8
	.byte 0x03, 0x00
data_ov03_020fe6ea: ; 0x020fe6ea
	.byte 0x22, 0x00
data_ov03_020fe6ec: ; 0x020fe6ec
	.byte 0x02, 0x00
data_ov03_020fe6ee: ; 0x020fe6ee
	.byte 0x3b, 0x00
data_ov03_020fe6f0: ; 0x020fe6f0
	.byte 0xff, 0xff
data_ov03_020fe6f2: ; 0x020fe6f2
	.byte 0xff, 0xff
data_ov03_020fe6f4: ; 0x020fe6f4
	.byte 0x2a, 0x00
data_ov03_020fe6f6: ; 0x020fe6f6
	.byte 0x24, 0x00
data_ov03_020fe6f8: ; 0x020fe6f8
	.byte 0x3e, 0x00
data_ov03_020fe6fa: ; 0x020fe6fa
	.byte 0x3b, 0x00
data_ov03_020fe6fc: ; 0x020fe6fc
	.byte 0xff, 0xff
data_ov03_020fe6fe: ; 0x020fe6fe
	.byte 0xff, 0xff
data_ov03_020fe700: ; 0x020fe700
	.byte 0x00, 0x00
data_ov03_020fe702: ; 0x020fe702
	.byte 0x29, 0x00
data_ov03_020fe704: ; 0x020fe704
	.byte 0x0d, 0x00
data_ov03_020fe706: ; 0x020fe706
	.byte 0x08, 0x00
data_ov03_020fe708: ; 0x020fe708
	.byte 0x3f, 0x00
data_ov03_020fe70a: ; 0x020fe70a
	.byte 0x34, 0x00
data_ov03_020fe70c: ; 0x020fe70c
	.byte 0xff, 0xff
data_ov03_020fe70e: ; 0x020fe70e
	.byte 0xff, 0xff
data_ov03_020fe710: ; 0x020fe710
	.byte 0x00, 0x00
data_ov03_020fe712: ; 0x020fe712
	.byte 0x03, 0x00
data_ov03_020fe714: ; 0x020fe714
	.byte 0x07, 0x00
data_ov03_020fe716: ; 0x020fe716
	.byte 0x39, 0x00
data_ov03_020fe718: ; 0x020fe718
	.byte 0xff, 0xff
data_ov03_020fe71a: ; 0x020fe71a
	.byte 0xff, 0xff
data_ov03_020fe71c: ; 0x020fe71c
	.byte 0x12, 0x00
data_ov03_020fe71e: ; 0x020fe71e
	.byte 0x06, 0x00
data_ov03_020fe720: ; 0x020fe720
	.byte 0x30, 0x00
data_ov03_020fe722: ; 0x020fe722
	.byte 0x03, 0x00
data_ov03_020fe724: ; 0x020fe724
	.byte 0xff, 0xff
data_ov03_020fe726: ; 0x020fe726
	.byte 0xff, 0xff
data_ov03_020fe728: ; 0x020fe728
	.byte 0x13, 0x00
data_ov03_020fe72a: ; 0x020fe72a
	.byte 0x1b, 0x00
data_ov03_020fe72c: ; 0x020fe72c
	.byte 0x2d, 0x00
data_ov03_020fe72e: ; 0x020fe72e
	.byte 0x13, 0x00
data_ov03_020fe730: ; 0x020fe730
	.byte 0xff, 0xff
data_ov03_020fe732: ; 0x020fe732
	.byte 0xff, 0xff
data_ov03_020fe734: ; 0x020fe734
	.byte 0x25, 0x00
data_ov03_020fe736: ; 0x020fe736
	.byte 0x07, 0x00
data_ov03_020fe738: ; 0x020fe738
	.byte 0x2e, 0x00
data_ov03_020fe73a: ; 0x020fe73a
	.byte 0x38, 0x00
data_ov03_020fe73c: ; 0x020fe73c
	.byte 0x23, 0x00
data_ov03_020fe73e: ; 0x020fe73e
	.byte 0x3c, 0x00
data_ov03_020fe740: ; 0x020fe740
	.byte 0x17, 0x00
data_ov03_020fe742: ; 0x020fe742
	.byte 0x31, 0x00
data_ov03_020fe744: ; 0x020fe744
	.byte 0x16, 0x00
data_ov03_020fe746: ; 0x020fe746
	.byte 0x2b, 0x00
data_ov03_020fe748: ; 0x020fe748
	.byte 0x2a, 0x00
data_ov03_020fe74a: ; 0x020fe74a
	.byte 0x2a, 0x00
data_ov03_020fe74c: ; 0x020fe74c
	.byte 0x3e, 0x00
data_ov03_020fe74e: ; 0x020fe74e
	.byte 0x35, 0x00
data_ov03_020fe750: ; 0x020fe750
	.byte 0xff, 0xff
data_ov03_020fe752: ; 0x020fe752
	.byte 0xff, 0xff
data_ov03_020fe754: ; 0x020fe754
	.byte 0x0a, 0x00
data_ov03_020fe756: ; 0x020fe756
	.byte 0x0a, 0x00
data_ov03_020fe758: ; 0x020fe758
	.byte 0x2c, 0x00
data_ov03_020fe75a: ; 0x020fe75a
	.byte 0x08, 0x00
data_ov03_020fe75c: ; 0x020fe75c
	.byte 0xff, 0xff
data_ov03_020fe75e: ; 0x020fe75e
	.byte 0xff, 0xff
data_ov03_020fe760: ; 0x020fe760
	.byte 0x12, 0x00
data_ov03_020fe762: ; 0x020fe762
	.byte 0x1b, 0x00
data_ov03_020fe764: ; 0x020fe764
	.byte 0x29, 0x00
data_ov03_020fe766: ; 0x020fe766
	.byte 0x15, 0x00
data_ov03_020fe768: ; 0x020fe768
	.byte 0xff, 0xff
data_ov03_020fe76a: ; 0x020fe76a
	.byte 0xff, 0xff
data_ov03_020fe76c: ; 0x020fe76c
	.byte 0x20, 0x00
data_ov03_020fe76e: ; 0x020fe76e
	.byte 0x00, 0x00
data_ov03_020fe770: ; 0x020fe770
	.byte 0x27, 0x00
data_ov03_020fe772: ; 0x020fe772
	.byte 0x3a, 0x00
data_ov03_020fe774: ; 0x020fe774
	.byte 0x1c, 0x00
data_ov03_020fe776: ; 0x020fe776
	.byte 0x3e, 0x00
data_ov03_020fe778: ; 0x020fe778
	.byte 0x0e, 0x00
data_ov03_020fe77a: ; 0x020fe77a
	.byte 0x2f, 0x00
data_ov03_020fe77c: ; 0x020fe77c
	.byte 0x22, 0x00
data_ov03_020fe77e: ; 0x020fe77e
	.byte 0x2a, 0x00
data_ov03_020fe780: ; 0x020fe780
	.byte 0x34, 0x00
data_ov03_020fe782: ; 0x020fe782
	.byte 0x35, 0x00
data_ov03_020fe784: ; 0x020fe784
	.byte 0xff, 0xff
data_ov03_020fe786: ; 0x020fe786
	.byte 0xff, 0xff
data_ov03_020fe788: ; 0x020fe788
	.byte 0x00, 0x00
data_ov03_020fe78a: ; 0x020fe78a
	.byte 0x0b, 0x00
data_ov03_020fe78c: ; 0x020fe78c
	.byte 0x16, 0x00
data_ov03_020fe78e: ; 0x020fe78e
	.byte 0x03, 0x00
data_ov03_020fe790: ; 0x020fe790
	.byte 0x17, 0x00
data_ov03_020fe792: ; 0x020fe792
	.byte 0x1c, 0x00
data_ov03_020fe794: ; 0x020fe794
	.byte 0x0b, 0x00
data_ov03_020fe796: ; 0x020fe796
	.byte 0x3a, 0x00
data_ov03_020fe798: ; 0x020fe798
	.byte 0x05, 0x00
data_ov03_020fe79a: ; 0x020fe79a
	.byte 0x2d, 0x00
data_ov03_020fe79c: ; 0x020fe79c
	.byte 0x11, 0x00
data_ov03_020fe79e: ; 0x020fe79e
	.byte 0x1d, 0x00
data_ov03_020fe7a0: ; 0x020fe7a0
	.byte 0x3e, 0x00
data_ov03_020fe7a2: ; 0x020fe7a2
	.byte 0x19, 0x00
data_ov03_020fe7a4: ; 0x020fe7a4
	.byte 0xff, 0xff
data_ov03_020fe7a6: ; 0x020fe7a6
	.byte 0xff, 0xff
data_ov03_020fe7a8: ; 0x020fe7a8
	.byte 0x2f, 0x00
data_ov03_020fe7aa: ; 0x020fe7aa
	.byte 0x03, 0x00
data_ov03_020fe7ac: ; 0x020fe7ac
	.byte 0x36, 0x00
data_ov03_020fe7ae: ; 0x020fe7ae
	.byte 0x22, 0x00
data_ov03_020fe7b0: ; 0x020fe7b0
	.byte 0x2e, 0x00
data_ov03_020fe7b2: ; 0x020fe7b2
	.byte 0x3c, 0x00
data_ov03_020fe7b4: ; 0x020fe7b4
	.byte 0xff, 0xff
data_ov03_020fe7b6: ; 0x020fe7b6
	.byte 0xff, 0xff
data_ov03_020fe7b8: ; 0x020fe7b8
	.byte 0x00, 0x00
data_ov03_020fe7ba: ; 0x020fe7ba
	.byte 0x17, 0x00
data_ov03_020fe7bc: ; 0x020fe7bc
	.byte 0x1a, 0x00
data_ov03_020fe7be: ; 0x020fe7be
	.byte 0x0e, 0x00
data_ov03_020fe7c0: ; 0x020fe7c0
	.byte 0xff, 0xff
data_ov03_020fe7c2: ; 0x020fe7c2
	.byte 0xff, 0xff
data_ov03_020fe7c4: ; 0x020fe7c4
	.byte 0x17, 0x00
data_ov03_020fe7c6: ; 0x020fe7c6
	.byte 0x04, 0x00
data_ov03_020fe7c8: ; 0x020fe7c8
	.byte 0x17, 0x00
data_ov03_020fe7ca: ; 0x020fe7ca
	.byte 0x29, 0x00
data_ov03_020fe7cc: ; 0x020fe7cc
	.byte 0x10, 0x00
data_ov03_020fe7ce: ; 0x020fe7ce
	.byte 0x2d, 0x00
data_ov03_020fe7d0: ; 0x020fe7d0
	.byte 0x0e, 0x00
data_ov03_020fe7d2: ; 0x020fe7d2
	.byte 0x23, 0x00
data_ov03_020fe7d4: ; 0x020fe7d4
	.byte 0x15, 0x00
data_ov03_020fe7d6: ; 0x020fe7d6
	.byte 0x21, 0x00
data_ov03_020fe7d8: ; 0x020fe7d8
	.byte 0x18, 0x00
data_ov03_020fe7da: ; 0x020fe7da
	.byte 0x34, 0x00
data_ov03_020fe7dc: ; 0x020fe7dc
	.byte 0x2a, 0x00
data_ov03_020fe7de: ; 0x020fe7de
	.byte 0x3b, 0x00
data_ov03_020fe7e0: ; 0x020fe7e0
	.byte 0x36, 0x00
data_ov03_020fe7e2: ; 0x020fe7e2
	.byte 0x2c, 0x00
data_ov03_020fe7e4: ; 0x020fe7e4
	.byte 0xff, 0xff
data_ov03_020fe7e6: ; 0x020fe7e6
	.byte 0xff, 0xff
data_ov03_020fe7e8: ; 0x020fe7e8
	.byte 0x30, 0x00
data_ov03_020fe7ea: ; 0x020fe7ea
	.byte 0x15, 0x00
data_ov03_020fe7ec: ; 0x020fe7ec
	.byte 0x3e, 0x00
data_ov03_020fe7ee: ; 0x020fe7ee
	.byte 0x20, 0x00
data_ov03_020fe7f0: ; 0x020fe7f0
	.byte 0xff, 0xff
data_ov03_020fe7f2: ; 0x020fe7f2
	.byte 0xff, 0xff
data_ov03_020fe7f4: ; 0x020fe7f4
	.byte 0x0c, 0x00
data_ov03_020fe7f6: ; 0x020fe7f6
	.byte 0x01, 0x00
data_ov03_020fe7f8: ; 0x020fe7f8
	.byte 0x17, 0x00
data_ov03_020fe7fa: ; 0x020fe7fa
	.byte 0x31, 0x00
data_ov03_020fe7fc: ; 0x020fe7fc
	.byte 0xff, 0xff
data_ov03_020fe7fe: ; 0x020fe7fe
	.byte 0xff, 0xff
data_ov03_020fe800: ; 0x020fe800
	.byte 0x23, 0x00
data_ov03_020fe802: ; 0x020fe802
	.byte 0x06, 0x00
data_ov03_020fe804: ; 0x020fe804
	.byte 0x13, 0x00
data_ov03_020fe806: ; 0x020fe806
	.byte 0x35, 0x00
data_ov03_020fe808: ; 0x020fe808
	.byte 0x0a, 0x00
data_ov03_020fe80a: ; 0x020fe80a
	.byte 0x3c, 0x00
data_ov03_020fe80c: ; 0x020fe80c
	.byte 0x03, 0x00
data_ov03_020fe80e: ; 0x020fe80e
	.byte 0x33, 0x00
data_ov03_020fe810: ; 0x020fe810
	.byte 0x0d, 0x00
data_ov03_020fe812: ; 0x020fe812
	.byte 0x1b, 0x00
data_ov03_020fe814: ; 0x020fe814
	.byte 0x2d, 0x00
data_ov03_020fe816: ; 0x020fe816
	.byte 0x12, 0x00
data_ov03_020fe818: ; 0x020fe818
	.byte 0x3b, 0x00
data_ov03_020fe81a: ; 0x020fe81a
	.byte 0x21, 0x00
data_ov03_020fe81c: ; 0x020fe81c
	.byte 0x33, 0x00
data_ov03_020fe81e: ; 0x020fe81e
	.byte 0x3e, 0x00
data_ov03_020fe820: ; 0x020fe820
	.byte 0xff, 0xff
data_ov03_020fe822: ; 0x020fe822
	.byte 0xff, 0xff
data_ov03_020fe824: ; 0x020fe824
	.byte 0x1a, 0x00
data_ov03_020fe826: ; 0x020fe826
	.byte 0x00, 0x00
data_ov03_020fe828: ; 0x020fe828
	.byte 0x1c, 0x00
data_ov03_020fe82a: ; 0x020fe82a
	.byte 0x3d, 0x00
data_ov03_020fe82c: ; 0x020fe82c
	.byte 0x29, 0x00
data_ov03_020fe82e: ; 0x020fe82e
	.byte 0x3d, 0x00
data_ov03_020fe830: ; 0x020fe830
	.byte 0x32, 0x00
data_ov03_020fe832: ; 0x020fe832
	.byte 0x2c, 0x00
data_ov03_020fe834: ; 0x020fe834
	.byte 0xff, 0xff
data_ov03_020fe836: ; 0x020fe836
	.byte 0xff, 0xff
data_ov03_020fe838: ; 0x020fe838
	.byte 0x0d, 0x00
data_ov03_020fe83a: ; 0x020fe83a
	.byte 0x14, 0x00
data_ov03_020fe83c: ; 0x020fe83c
	.byte 0x25, 0x00
data_ov03_020fe83e: ; 0x020fe83e
	.byte 0x11, 0x00
data_ov03_020fe840: ; 0x020fe840
	.byte 0xff, 0xff
data_ov03_020fe842: ; 0x020fe842
	.byte 0xff, 0xff
data_ov03_020fe844: ; 0x020fe844
	.byte 0x0d, 0x00
data_ov03_020fe846: ; 0x020fe846
	.byte 0x26, 0x00
data_ov03_020fe848: ; 0x020fe848
	.byte 0x27, 0x00
data_ov03_020fe84a: ; 0x020fe84a
	.byte 0x21, 0x00
data_ov03_020fe84c: ; 0x020fe84c
	.byte 0xff, 0xff
data_ov03_020fe84e: ; 0x020fe84e
	.byte 0xff, 0xff
data_ov03_020fe850: ; 0x020fe850
	.byte 0x06, 0x00
data_ov03_020fe852: ; 0x020fe852
	.byte 0x20, 0x00
data_ov03_020fe854: ; 0x020fe854
	.byte 0x19, 0x00
data_ov03_020fe856: ; 0x020fe856
	.byte 0x11, 0x00
data_ov03_020fe858: ; 0x020fe858
	.byte 0x34, 0x00
data_ov03_020fe85a: ; 0x020fe85a
	.byte 0x0b, 0x00
data_ov03_020fe85c: ; 0x020fe85c
	.byte 0x37, 0x00
data_ov03_020fe85e: ; 0x020fe85e
	.byte 0x1b, 0x00
data_ov03_020fe860: ; 0x020fe860
	.byte 0x2b, 0x00
data_ov03_020fe862: ; 0x020fe862
	.byte 0x23, 0x00
data_ov03_020fe864: ; 0x020fe864
	.byte 0xff, 0xff
data_ov03_020fe866: ; 0x020fe866
	.byte 0xff, 0xff
data_ov03_020fe868: ; 0x020fe868
	.byte 0x28, 0x00
data_ov03_020fe86a: ; 0x020fe86a
	.byte 0x01, 0x00
data_ov03_020fe86c: ; 0x020fe86c
	.byte 0x27, 0x00
data_ov03_020fe86e: ; 0x020fe86e
	.byte 0x0c, 0x00
data_ov03_020fe870: ; 0x020fe870
	.byte 0xff, 0xff
data_ov03_020fe872: ; 0x020fe872
	.byte 0xff, 0xff
data_ov03_020fe874: ; 0x020fe874
	.byte 0x10, 0x00
data_ov03_020fe876: ; 0x020fe876
	.byte 0x09, 0x00
data_ov03_020fe878: ; 0x020fe878
	.byte 0x24, 0x00
data_ov03_020fe87a: ; 0x020fe87a
	.byte 0x3b, 0x00
data_ov03_020fe87c: ; 0x020fe87c
	.byte 0xff, 0xff
data_ov03_020fe87e: ; 0x020fe87e
	.byte 0xff, 0xff
data_ov03_020fe880: ; 0x020fe880
	.byte 0x05, 0x00
data_ov03_020fe882: ; 0x020fe882
	.byte 0x09, 0x00
data_ov03_020fe884: ; 0x020fe884
	.byte 0x20, 0x00
data_ov03_020fe886: ; 0x020fe886
	.byte 0x00, 0x00
data_ov03_020fe888: ; 0x020fe888
	.byte 0x11, 0x00
data_ov03_020fe88a: ; 0x020fe88a
	.byte 0x37, 0x00
data_ov03_020fe88c: ; 0x020fe88c
	.byte 0x07, 0x00
data_ov03_020fe88e: ; 0x020fe88e
	.byte 0x3e, 0x00
data_ov03_020fe890: ; 0x020fe890
	.byte 0x07, 0x00
data_ov03_020fe892: ; 0x020fe892
	.byte 0x25, 0x00
data_ov03_020fe894: ; 0x020fe894
	.byte 0x20, 0x00
data_ov03_020fe896: ; 0x020fe896
	.byte 0x18, 0x00
data_ov03_020fe898: ; 0x020fe898
	.byte 0x30, 0x00
data_ov03_020fe89a: ; 0x020fe89a
	.byte 0x1d, 0x00
data_ov03_020fe89c: ; 0x020fe89c
	.byte 0x36, 0x00
data_ov03_020fe89e: ; 0x020fe89e
	.byte 0x29, 0x00
data_ov03_020fe8a0: ; 0x020fe8a0
	.byte 0x2e, 0x00
data_ov03_020fe8a2: ; 0x020fe8a2
	.byte 0x3c, 0x00
data_ov03_020fe8a4: ; 0x020fe8a4
	.byte 0x22, 0x00
data_ov03_020fe8a6: ; 0x020fe8a6
	.byte 0x3b, 0x00
data_ov03_020fe8a8: ; 0x020fe8a8
	.byte 0x29, 0x00
data_ov03_020fe8aa: ; 0x020fe8aa
	.byte 0x31, 0x00
data_ov03_020fe8ac: ; 0x020fe8ac
	.byte 0x3b, 0x00
data_ov03_020fe8ae: ; 0x020fe8ae
	.byte 0x36, 0x00
data_ov03_020fe8b0: ; 0x020fe8b0
	.byte 0xff, 0xff
data_ov03_020fe8b2: ; 0x020fe8b2
	.byte 0xff, 0xff
data_ov03_020fe8b4: ; 0x020fe8b4
	.byte 0x09, 0x00
data_ov03_020fe8b6: ; 0x020fe8b6
	.byte 0x06, 0x00
data_ov03_020fe8b8: ; 0x020fe8b8
	.byte 0x0c, 0x00
data_ov03_020fe8ba: ; 0x020fe8ba
	.byte 0x2a, 0x00
data_ov03_020fe8bc: ; 0x020fe8bc
	.byte 0x0e, 0x00
data_ov03_020fe8be: ; 0x020fe8be
	.byte 0x17, 0x00
data_ov03_020fe8c0: ; 0x020fe8c0
	.byte 0x19, 0x00
data_ov03_020fe8c2: ; 0x020fe8c2
	.byte 0x0e, 0x00
data_ov03_020fe8c4: ; 0x020fe8c4
	.byte 0x2a, 0x00
data_ov03_020fe8c6: ; 0x020fe8c6
	.byte 0x0e, 0x00
data_ov03_020fe8c8: ; 0x020fe8c8
	.byte 0x35, 0x00
data_ov03_020fe8ca: ; 0x020fe8ca
	.byte 0x17, 0x00
data_ov03_020fe8cc: ; 0x020fe8cc
	.byte 0x33, 0x00
data_ov03_020fe8ce: ; 0x020fe8ce
	.byte 0x26, 0x00
data_ov03_020fe8d0: ; 0x020fe8d0
	.byte 0x25, 0x00
data_ov03_020fe8d2: ; 0x020fe8d2
	.byte 0x2a, 0x00
data_ov03_020fe8d4: ; 0x020fe8d4
	.byte 0xff, 0xff
data_ov03_020fe8d6: ; 0x020fe8d6
	.byte 0xff, 0xff
data_ov03_020fe8d8: ; 0x020fe8d8
	.byte 0x1d, 0x00
data_ov03_020fe8da: ; 0x020fe8da
	.byte 0x00, 0x00
data_ov03_020fe8dc: ; 0x020fe8dc
	.byte 0x24, 0x00
data_ov03_020fe8de: ; 0x020fe8de
	.byte 0x1c, 0x00
data_ov03_020fe8e0: ; 0x020fe8e0
	.byte 0x1e, 0x00
data_ov03_020fe8e2: ; 0x020fe8e2
	.byte 0x3f, 0x00
data_ov03_020fe8e4: ; 0x020fe8e4
	.byte 0xff, 0xff
data_ov03_020fe8e6: ; 0x020fe8e6
	.byte 0xff, 0xff
data_ov03_020fe8e8: ; 0x020fe8e8
	.byte 0x08, 0x00
data_ov03_020fe8ea: ; 0x020fe8ea
	.byte 0x07, 0x00
data_ov03_020fe8ec: ; 0x020fe8ec
	.byte 0x1b, 0x00
data_ov03_020fe8ee: ; 0x020fe8ee
	.byte 0x00, 0x00
data_ov03_020fe8f0: ; 0x020fe8f0
	.byte 0x0c, 0x00
data_ov03_020fe8f2: ; 0x020fe8f2
	.byte 0x1d, 0x00
data_ov03_020fe8f4: ; 0x020fe8f4
	.byte 0x17, 0x00
data_ov03_020fe8f6: ; 0x020fe8f6
	.byte 0x11, 0x00
data_ov03_020fe8f8: ; 0x020fe8f8
	.byte 0x25, 0x00
data_ov03_020fe8fa: ; 0x020fe8fa
	.byte 0x16, 0x00
data_ov03_020fe8fc: ; 0x020fe8fc
	.byte 0x1d, 0x00
data_ov03_020fe8fe: ; 0x020fe8fe
	.byte 0x25, 0x00
data_ov03_020fe900: ; 0x020fe900
	.byte 0x14, 0x00
data_ov03_020fe902: ; 0x020fe902
	.byte 0x23, 0x00
data_ov03_020fe904: ; 0x020fe904
	.byte 0x1b, 0x00
data_ov03_020fe906: ; 0x020fe906
	.byte 0x20, 0x00
data_ov03_020fe908: ; 0x020fe908
	.byte 0x1a, 0x00
data_ov03_020fe90a: ; 0x020fe90a
	.byte 0x28, 0x00
data_ov03_020fe90c: ; 0x020fe90c
	.byte 0x06, 0x00
data_ov03_020fe90e: ; 0x020fe90e
	.byte 0x3f, 0x00
data_ov03_020fe910: ; 0x020fe910
	.byte 0x15, 0x00
data_ov03_020fe912: ; 0x020fe912
	.byte 0x30, 0x00
data_ov03_020fe914: ; 0x020fe914
	.byte 0x1c, 0x00
data_ov03_020fe916: ; 0x020fe916
	.byte 0x3a, 0x00
data_ov03_020fe918: ; 0x020fe918
	.byte 0x22, 0x00
data_ov03_020fe91a: ; 0x020fe91a
	.byte 0x30, 0x00
data_ov03_020fe91c: ; 0x020fe91c
	.byte 0x37, 0x00
data_ov03_020fe91e: ; 0x020fe91e
	.byte 0x3b, 0x00
data_ov03_020fe920: ; 0x020fe920
	.byte 0xff, 0xff
data_ov03_020fe922: ; 0x020fe922
	.byte 0xff, 0xff
data_ov03_020fe924: ; 0x020fe924
	.byte 0x18, 0x00
data_ov03_020fe926: ; 0x020fe926
	.byte 0x0e, 0x00
data_ov03_020fe928: ; 0x020fe928
	.byte 0x2d, 0x00
data_ov03_020fe92a: ; 0x020fe92a
	.byte 0x0a, 0x00
data_ov03_020fe92c: ; 0x020fe92c
	.byte 0xff, 0xff
data_ov03_020fe92e: ; 0x020fe92e
	.byte 0xff, 0xff
data_ov03_020fe930: ; 0x020fe930
	.byte 0x18, 0x00
data_ov03_020fe932: ; 0x020fe932
	.byte 0x00, 0x00
data_ov03_020fe934: ; 0x020fe934
	.byte 0x21, 0x00
data_ov03_020fe936: ; 0x020fe936
	.byte 0x39, 0x00
data_ov03_020fe938: ; 0x020fe938
	.byte 0x16, 0x00
data_ov03_020fe93a: ; 0x020fe93a
	.byte 0x3f, 0x00
data_ov03_020fe93c: ; 0x020fe93c
	.byte 0x09, 0x00
data_ov03_020fe93e: ; 0x020fe93e
	.byte 0x35, 0x00
data_ov03_020fe940: ; 0x020fe940
	.byte 0x09, 0x00
data_ov03_020fe942: ; 0x020fe942
	.byte 0x2e, 0x00
data_ov03_020fe944: ; 0x020fe944
	.byte 0x14, 0x00
data_ov03_020fe946: ; 0x020fe946
	.byte 0x2c, 0x00
data_ov03_020fe948: ; 0x020fe948
	.byte 0x35, 0x00
data_ov03_020fe94a: ; 0x020fe94a
	.byte 0x39, 0x00
data_ov03_020fe94c: ; 0x020fe94c
	.byte 0xff, 0xff
data_ov03_020fe94e: ; 0x020fe94e
	.byte 0xff, 0xff
data_ov03_020fe950: ; 0x020fe950
	.byte 0x15, 0x00
data_ov03_020fe952: ; 0x020fe952
	.byte 0x00, 0x00
data_ov03_020fe954: ; 0x020fe954
	.byte 0x26, 0x00
data_ov03_020fe956: ; 0x020fe956
	.byte 0x12, 0x00
data_ov03_020fe958: ; 0x020fe958
	.byte 0xff, 0xff
data_ov03_020fe95a: ; 0x020fe95a
	.byte 0xff, 0xff
data_ov03_020fe95c: ; 0x020fe95c
	.byte 0x19, 0x00
data_ov03_020fe95e: ; 0x020fe95e
	.byte 0x14, 0x00
data_ov03_020fe960: ; 0x020fe960
	.byte 0x13, 0x00
data_ov03_020fe962: ; 0x020fe962
	.byte 0x25, 0x00
data_ov03_020fe964: ; 0x020fe964
	.byte 0x24, 0x00
data_ov03_020fe966: ; 0x020fe966
	.byte 0x22, 0x00
data_ov03_020fe968: ; 0x020fe968
	.byte 0x2e, 0x00
data_ov03_020fe96a: ; 0x020fe96a
	.byte 0x30, 0x00
data_ov03_020fe96c: ; 0x020fe96c
	.byte 0x24, 0x00
data_ov03_020fe96e: ; 0x020fe96e
	.byte 0x3f, 0x00
data_ov03_020fe970: ; 0x020fe970
	.byte 0x11, 0x00
data_ov03_020fe972: ; 0x020fe972
	.byte 0x34, 0x00
data_ov03_020fe974: ; 0x020fe974
	.byte 0xff, 0xff
data_ov03_020fe976: ; 0x020fe976
	.byte 0xff, 0xff
data_ov03_020fe978: ; 0x020fe978
	.byte 0x15, 0x00
data_ov03_020fe97a: ; 0x020fe97a
	.byte 0x01, 0x00
data_ov03_020fe97c: ; 0x020fe97c
	.byte 0x14, 0x00
data_ov03_020fe97e: ; 0x020fe97e
	.byte 0x1e, 0x00
data_ov03_020fe980: ; 0x020fe980
	.byte 0xff, 0xff
data_ov03_020fe982: ; 0x020fe982
	.byte 0xff, 0xff
data_ov03_020fe984: ; 0x020fe984
	.byte 0x25, 0x00
data_ov03_020fe986: ; 0x020fe986
	.byte 0x11, 0x00
data_ov03_020fe988: ; 0x020fe988
	.byte 0x2d, 0x00
data_ov03_020fe98a: ; 0x020fe98a
	.byte 0x2c, 0x00
data_ov03_020fe98c: ; 0x020fe98c
	.byte 0x1e, 0x00
data_ov03_020fe98e: ; 0x020fe98e
	.byte 0x3d, 0x00
data_ov03_020fe990: ; 0x020fe990
	.byte 0xff, 0xff
data_ov03_020fe992: ; 0x020fe992
	.byte 0xff, 0xff
data_ov03_020fe994: ; 0x020fe994
	.byte 0x0e, 0x00
data_ov03_020fe996: ; 0x020fe996
	.byte 0x07, 0x00
data_ov03_020fe998: ; 0x020fe998
	.byte 0x24, 0x00
data_ov03_020fe99a: ; 0x020fe99a
	.byte 0x00, 0x00
data_ov03_020fe99c: ; 0x020fe99c
	.byte 0x0b, 0x00
data_ov03_020fe99e: ; 0x020fe99e
	.byte 0x2a, 0x00
data_ov03_020fe9a0: ; 0x020fe9a0
	.byte 0x14, 0x00
data_ov03_020fe9a2: ; 0x020fe9a2
	.byte 0x1e, 0x00
data_ov03_020fe9a4: ; 0x020fe9a4
	.byte 0x29, 0x00
data_ov03_020fe9a6: ; 0x020fe9a6
	.byte 0x1b, 0x00
data_ov03_020fe9a8: ; 0x020fe9a8
	.byte 0x33, 0x00
data_ov03_020fe9aa: ; 0x020fe9aa
	.byte 0x2e, 0x00
data_ov03_020fe9ac: ; 0x020fe9ac
	.byte 0x29, 0x00
data_ov03_020fe9ae: ; 0x020fe9ae
	.byte 0x3e, 0x00
data_ov03_020fe9b0: ; 0x020fe9b0
	.byte 0x1d, 0x00
data_ov03_020fe9b2: ; 0x020fe9b2
	.byte 0x3c, 0x00
data_ov03_020fe9b4: ; 0x020fe9b4
	.byte 0x1f, 0x00
data_ov03_020fe9b6: ; 0x020fe9b6
	.byte 0x34, 0x00
data_ov03_020fe9b8: ; 0x020fe9b8
	.byte 0x2f, 0x00
data_ov03_020fe9ba: ; 0x020fe9ba
	.byte 0x36, 0x00
data_ov03_020fe9bc: ; 0x020fe9bc
	.byte 0xff, 0xff
data_ov03_020fe9be: ; 0x020fe9be
	.byte 0xff, 0xff
data_ov03_020fe9c0: ; 0x020fe9c0
	.byte 0x14, 0x00
data_ov03_020fe9c2: ; 0x020fe9c2
	.byte 0x00, 0x00
data_ov03_020fe9c4: ; 0x020fe9c4
	.byte 0x16, 0x00
data_ov03_020fe9c6: ; 0x020fe9c6
	.byte 0x3b, 0x00
data_ov03_020fe9c8: ; 0x020fe9c8
	.byte 0xff, 0xff
data_ov03_020fe9ca: ; 0x020fe9ca
	.byte 0xff, 0xff
data_ov03_020fe9cc: ; 0x020fe9cc
	.byte 0x01, 0x00
data_ov03_020fe9ce: ; 0x020fe9ce
	.byte 0x20, 0x00
data_ov03_020fe9d0: ; 0x020fe9d0
	.byte 0x15, 0x00
data_ov03_020fe9d2: ; 0x020fe9d2
	.byte 0x12, 0x00
data_ov03_020fe9d4: ; 0x020fe9d4
	.byte 0x08, 0x00
data_ov03_020fe9d6: ; 0x020fe9d6
	.byte 0x3b, 0x00
data_ov03_020fe9d8: ; 0x020fe9d8
	.byte 0x33, 0x00
data_ov03_020fe9da: ; 0x020fe9da
	.byte 0x0f, 0x00
data_ov03_020fe9dc: ; 0x020fe9dc
	.byte 0x27, 0x00
data_ov03_020fe9de: ; 0x020fe9de
	.byte 0x2a, 0x00
data_ov03_020fe9e0: ; 0x020fe9e0
	.byte 0x30, 0x00
data_ov03_020fe9e2: ; 0x020fe9e2
	.byte 0x3e, 0x00
data_ov03_020fe9e4: ; 0x020fe9e4
	.byte 0x3d, 0x00
data_ov03_020fe9e6: ; 0x020fe9e6
	.byte 0x3f, 0x00
data_ov03_020fe9e8: ; 0x020fe9e8
	.byte 0xff, 0xff
data_ov03_020fe9ea: ; 0x020fe9ea
	.byte 0xff, 0xff
data_ov03_020fe9ec: ; 0x020fe9ec
	.byte 0x10, 0x00
data_ov03_020fe9ee: ; 0x020fe9ee
	.byte 0x08, 0x00
data_ov03_020fe9f0: ; 0x020fe9f0
	.byte 0x29, 0x00
data_ov03_020fe9f2: ; 0x020fe9f2
	.byte 0x00, 0x00
data_ov03_020fe9f4: ; 0x020fe9f4
	.byte 0x0c, 0x00
data_ov03_020fe9f6: ; 0x020fe9f6
	.byte 0x28, 0x00
data_ov03_020fe9f8: ; 0x020fe9f8
	.byte 0x1e, 0x00
data_ov03_020fe9fa: ; 0x020fe9fa
	.byte 0x18, 0x00
data_ov03_020fe9fc: ; 0x020fe9fc
	.byte 0x32, 0x00
data_ov03_020fe9fe: ; 0x020fe9fe
	.byte 0x1f, 0x00
data_ov03_020fea00: ; 0x020fea00
	.byte 0x2f, 0x00
data_ov03_020fea02: ; 0x020fea02
	.byte 0x34, 0x00
data_ov03_020fea04: ; 0x020fea04
	.byte 0x1d, 0x00
data_ov03_020fea06: ; 0x020fea06
	.byte 0x3c, 0x00
data_ov03_020fea08: ; 0x020fea08
	.byte 0xff, 0xff
data_ov03_020fea0a: ; 0x020fea0a
	.byte 0xff, 0xff
data_ov03_020fea0c: ; 0x020fea0c
	.byte 0x15, 0x00
data_ov03_020fea0e: ; 0x020fea0e
	.byte 0x00, 0x00
data_ov03_020fea10: ; 0x020fea10
	.byte 0x19, 0x00
data_ov03_020fea12: ; 0x020fea12
	.byte 0x36, 0x00
data_ov03_020fea14: ; 0x020fea14
	.byte 0xff, 0xff
data_ov03_020fea16: ; 0x020fea16
	.byte 0xff, 0xff
data_ov03_020fea18: ; 0x020fea18
	.byte 0x03, 0x00
data_ov03_020fea1a: ; 0x020fea1a
	.byte 0x1d, 0x00
data_ov03_020fea1c: ; 0x020fea1c
	.byte 0x11, 0x00
data_ov03_020fea1e: ; 0x020fea1e
	.byte 0x18, 0x00
data_ov03_020fea20: ; 0x020fea20
	.byte 0x0c, 0x00
data_ov03_020fea22: ; 0x020fea22
	.byte 0x39, 0x00
data_ov03_020fea24: ; 0x020fea24
	.byte 0x0c, 0x00
data_ov03_020fea26: ; 0x020fea26
	.byte 0x2d, 0x00
data_ov03_020fea28: ; 0x020fea28
	.byte 0x1e, 0x00
data_ov03_020fea2a: ; 0x020fea2a
	.byte 0x1b, 0x00
data_ov03_020fea2c: ; 0x020fea2c
	.byte 0x2c, 0x00
data_ov03_020fea2e: ; 0x020fea2e
	.byte 0x13, 0x00
data_ov03_020fea30: ; 0x020fea30
	.byte 0x38, 0x00
data_ov03_020fea32: ; 0x020fea32
	.byte 0x1a, 0x00
data_ov03_020fea34: ; 0x020fea34
	.byte 0x39, 0x00
data_ov03_020fea36: ; 0x020fea36
	.byte 0x32, 0x00
data_ov03_020fea38: ; 0x020fea38
	.byte 0x2c, 0x00
data_ov03_020fea3a: ; 0x020fea3a
	.byte 0x3d, 0x00
data_ov03_020fea3c: ; 0x020fea3c
	.byte 0xff, 0xff
data_ov03_020fea3e: ; 0x020fea3e
	.byte 0xff, 0xff
data_ov03_020fea40: ; 0x020fea40
	.byte 0x0b, 0x00
data_ov03_020fea42: ; 0x020fea42
	.byte 0x13, 0x00
data_ov03_020fea44: ; 0x020fea44
	.byte 0x2e, 0x00
data_ov03_020fea46: ; 0x020fea46
	.byte 0x06, 0x00
data_ov03_020fea48: ; 0x020fea48
	.byte 0xff, 0xff
data_ov03_020fea4a: ; 0x020fea4a
	.byte 0xff, 0xff
data_ov03_020fea4c: ; 0x020fea4c
	.byte 0x1e, 0x00
data_ov03_020fea4e: ; 0x020fea4e
	.byte 0x00, 0x00
data_ov03_020fea50: ; 0x020fea50
	.byte 0x15, 0x00
data_ov03_020fea52: ; 0x020fea52
	.byte 0x19, 0x00
data_ov03_020fea54: ; 0x020fea54
	.byte 0x20, 0x00
data_ov03_020fea56: ; 0x020fea56
	.byte 0x1a, 0x00
data_ov03_020fea58: ; 0x020fea58
	.byte 0x23, 0x00
data_ov03_020fea5a: ; 0x020fea5a
	.byte 0x27, 0x00
data_ov03_020fea5c: ; 0x020fea5c
	.byte 0xff, 0xff
data_ov03_020fea5e: ; 0x020fea5e
	.byte 0xff, 0xff
data_ov03_020fea60: ; 0x020fea60
	.byte 0x2b, 0x00
data_ov03_020fea62: ; 0x020fea62
	.byte 0x18, 0x00
data_ov03_020fea64: ; 0x020fea64
	.byte 0x15, 0x00
data_ov03_020fea66: ; 0x020fea66
	.byte 0x3a, 0x00
data_ov03_020fea68: ; 0x020fea68
	.byte 0x20, 0x00
data_ov03_020fea6a: ; 0x020fea6a
	.byte 0x3f, 0x00
data_ov03_020fea6c: ; 0x020fea6c
	.byte 0x35, 0x00
data_ov03_020fea6e: ; 0x020fea6e
	.byte 0x36, 0x00
data_ov03_020fea70: ; 0x020fea70
	.byte 0xff, 0xff
data_ov03_020fea72: ; 0x020fea72
	.byte 0xff, 0xff
data_ov03_020fea74: ; 0x020fea74
	.byte 0x12, 0x00
data_ov03_020fea76: ; 0x020fea76
	.byte 0x00, 0x00
data_ov03_020fea78: ; 0x020fea78
	.byte 0x02, 0x00
data_ov03_020fea7a: ; 0x020fea7a
	.byte 0x3f, 0x00
data_ov03_020fea7c: ; 0x020fea7c
	.byte 0x0e, 0x00
data_ov03_020fea7e: ; 0x020fea7e
	.byte 0x2a, 0x00
data_ov03_020fea80: ; 0x020fea80
	.byte 0x21, 0x00
data_ov03_020fea82: ; 0x020fea82
	.byte 0x3c, 0x00
data_ov03_020fea84: ; 0x020fea84
	.byte 0x3a, 0x00
data_ov03_020fea86: ; 0x020fea86
	.byte 0x2b, 0x00
data_ov03_020fea88: ; 0x020fea88
	.byte 0xff, 0xff
data_ov03_020fea8a: ; 0x020fea8a
	.byte 0xff, 0xff
data_ov03_020fea8c: ; 0x020fea8c
	.byte 0x22, 0x00
data_ov03_020fea8e: ; 0x020fea8e
	.byte 0x00, 0x00
data_ov03_020fea90: ; 0x020fea90
	.byte 0x0b, 0x00
data_ov03_020fea92: ; 0x020fea92
	.byte 0x3f, 0x00
data_ov03_020fea94: ; 0x020fea94
	.byte 0x3d, 0x00
data_ov03_020fea96: ; 0x020fea96
	.byte 0x19, 0x00
data_ov03_020fea98: ; 0x020fea98
	.byte 0x01, 0x00
data_ov03_020fea9a: ; 0x020fea9a
	.byte 0x19, 0x00
data_ov03_020fea9c: ; 0x020fea9c
	.byte 0x3c, 0x00
data_ov03_020fea9e: ; 0x020fea9e
	.byte 0x3c, 0x00
data_ov03_020feaa0: ; 0x020feaa0
	.byte 0x20, 0x00
data_ov03_020feaa2: ; 0x020feaa2
	.byte 0x01, 0x00
data_ov03_020feaa4: ; 0x020feaa4
	.byte 0xff, 0xff
data_ov03_020feaa6: ; 0x020feaa6
	.byte 0xff, 0xff
data_ov03_020feaa8: ; 0x020feaa8
	.byte 0x00, 0x00
data_ov03_020feaaa: ; 0x020feaaa
	.byte 0x23, 0x00
data_ov03_020feaac: ; 0x020feaac
	.byte 0x04, 0x00
data_ov03_020feaae: ; 0x020feaae
	.byte 0x14, 0x00
data_ov03_020feab0: ; 0x020feab0
	.byte 0x13, 0x00
data_ov03_020feab2: ; 0x020feab2
	.byte 0x12, 0x00
data_ov03_020feab4: ; 0x020feab4
	.byte 0x31, 0x00
data_ov03_020feab6: ; 0x020feab6
	.byte 0x2f, 0x00
data_ov03_020feab8: ; 0x020feab8
	.byte 0x3f, 0x00
data_ov03_020feaba: ; 0x020feaba
	.byte 0x22, 0x00
data_ov03_020feabc: ; 0x020feabc
	.byte 0x39, 0x00
data_ov03_020feabe: ; 0x020feabe
	.byte 0x12, 0x00
data_ov03_020feac0: ; 0x020feac0
	.byte 0x2a, 0x00
data_ov03_020feac2: ; 0x020feac2
	.byte 0x12, 0x00
data_ov03_020feac4: ; 0x020feac4
	.byte 0x0f, 0x00
data_ov03_020feac6: ; 0x020feac6
	.byte 0x2c, 0x00
data_ov03_020feac8: ; 0x020feac8
	.byte 0x02, 0x00
data_ov03_020feaca: ; 0x020feaca
	.byte 0x24, 0x00
data_ov03_020feacc: ; 0x020feacc
	.byte 0xff, 0xff
data_ov03_020feace: ; 0x020feace
	.byte 0xff, 0xff
data_ov03_020fead0: ; 0x020fead0
	.byte 0x00, 0x00
data_ov03_020fead2: ; 0x020fead2
	.byte 0x18, 0x00
data_ov03_020fead4: ; 0x020fead4
	.byte 0x23, 0x00
data_ov03_020fead6: ; 0x020fead6
	.byte 0x19, 0x00
data_ov03_020fead8: ; 0x020fead8
	.byte 0x24, 0x00
data_ov03_020feada: ; 0x020feada
	.byte 0x2a, 0x00
data_ov03_020feadc: ; 0x020feadc
	.byte 0x16, 0x00
data_ov03_020feade: ; 0x020feade
	.byte 0x39, 0x00
data_ov03_020feae0: ; 0x020feae0
	.byte 0xff, 0xff
data_ov03_020feae2: ; 0x020feae2
	.byte 0xff, 0xff
data_ov03_020feae4: ; 0x020feae4
	.byte 0x15, 0x00
data_ov03_020feae6: ; 0x020feae6
	.byte 0x00, 0x00
data_ov03_020feae8: ; 0x020feae8
	.byte 0x0b, 0x00
data_ov03_020feaea: ; 0x020feaea
	.byte 0x3b, 0x00
data_ov03_020feaec: ; 0x020feaec
	.byte 0xff, 0xff
data_ov03_020feaee: ; 0x020feaee
	.byte 0xff, 0xff
data_ov03_020feaf0: ; 0x020feaf0
	.byte 0x28, 0x00
data_ov03_020feaf2: ; 0x020feaf2
	.byte 0x14, 0x00
data_ov03_020feaf4: ; 0x020feaf4
	.byte 0x3e, 0x00
data_ov03_020feaf6: ; 0x020feaf6
	.byte 0x2b, 0x00
data_ov03_020feaf8: ; 0x020feaf8
	.byte 0xff, 0xff
data_ov03_020feafa: ; 0x020feafa
	.byte 0xff, 0xff
data_ov03_020feafc: ; 0x020feafc
	.byte 0x29, 0x00
data_ov03_020feafe: ; 0x020feafe
	.byte 0x0e, 0x00
data_ov03_020feb00: ; 0x020feb00
	.byte 0x32, 0x00
data_ov03_020feb02: ; 0x020feb02
	.byte 0x1b, 0x00
data_ov03_020feb04: ; 0x020feb04
	.byte 0xff, 0xff
data_ov03_020feb06: ; 0x020feb06
	.byte 0xff, 0xff
data_ov03_020feb08: ; 0x020feb08
	.byte 0x33, 0x00
data_ov03_020feb0a: ; 0x020feb0a
	.byte 0x09, 0x00
data_ov03_020feb0c: ; 0x020feb0c
	.byte 0x3b, 0x00
data_ov03_020feb0e: ; 0x020feb0e
	.byte 0x19, 0x00
data_ov03_020feb10: ; 0x020feb10
	.byte 0xff, 0xff
data_ov03_020feb12: ; 0x020feb12
	.byte 0xff, 0xff
data_ov03_020feb14: ; 0x020feb14
	.byte 0x00, 0x00
data_ov03_020feb16: ; 0x020feb16
	.byte 0x11, 0x00
data_ov03_020feb18: ; 0x020feb18
	.byte 0x29, 0x00
data_ov03_020feb1a: ; 0x020feb1a
	.byte 0x09, 0x00
data_ov03_020feb1c: ; 0x020feb1c
	.byte 0xff, 0xff
data_ov03_020feb1e: ; 0x020feb1e
	.byte 0xff, 0xff
data_ov03_020feb20: ; 0x020feb20
	.byte 0x13, 0x00
data_ov03_020feb22: ; 0x020feb22
	.byte 0x19, 0x00
data_ov03_020feb24: ; 0x020feb24
	.byte 0x28, 0x00
data_ov03_020feb26: ; 0x020feb26
	.byte 0x14, 0x00
data_ov03_020feb28: ; 0x020feb28
	.byte 0xff, 0xff
data_ov03_020feb2a: ; 0x020feb2a
	.byte 0xff, 0xff
data_ov03_020feb2c: ; 0x020feb2c
	.byte 0x1a, 0x00
data_ov03_020feb2e: ; 0x020feb2e
	.byte 0x05, 0x00
data_ov03_020feb30: ; 0x020feb30
	.byte 0x28, 0x00
data_ov03_020feb32: ; 0x020feb32
	.byte 0x21, 0x00
data_ov03_020feb34: ; 0x020feb34
	.byte 0xff, 0xff
data_ov03_020feb36: ; 0x020feb36
	.byte 0xff, 0xff
data_ov03_020feb38: ; 0x020feb38
	.byte 0x0f, 0x00
data_ov03_020feb3a: ; 0x020feb3a
	.byte 0x30, 0x00
data_ov03_020feb3c: ; 0x020feb3c
	.byte 0x16, 0x00
data_ov03_020feb3e: ; 0x020feb3e
	.byte 0x3b, 0x00
data_ov03_020feb40: ; 0x020feb40
	.byte 0x29, 0x00
data_ov03_020feb42: ; 0x020feb42
	.byte 0x33, 0x00
data_ov03_020feb44: ; 0x020feb44
	.byte 0xff, 0xff
data_ov03_020feb46: ; 0x020feb46
	.byte 0xff, 0xff
data_ov03_020feb48: ; 0x020feb48
	.byte 0x30, 0x00
data_ov03_020feb4a: ; 0x020feb4a
	.byte 0x10, 0x00
data_ov03_020feb4c: ; 0x020feb4c
	.byte 0x37, 0x00
data_ov03_020feb4e: ; 0x020feb4e
	.byte 0x1a, 0x00
data_ov03_020feb50: ; 0x020feb50
	.byte 0xff, 0xff
data_ov03_020feb52: ; 0x020feb52
	.byte 0xff, 0xff
data_ov03_020feb54: ; 0x020feb54
	.byte 0x37, 0x00
data_ov03_020feb56: ; 0x020feb56
	.byte 0x0d, 0x00
data_ov03_020feb58: ; 0x020feb58
	.byte 0x3f, 0x00
data_ov03_020feb5a: ; 0x020feb5a
	.byte 0x1b, 0x00
data_ov03_020feb5c: ; 0x020feb5c
	.byte 0xff, 0xff
data_ov03_020feb5e: ; 0x020feb5e
	.byte 0xff, 0xff
data_ov03_020feb60: ; 0x020feb60
	.byte 0x22, 0x00
data_ov03_020feb62: ; 0x020feb62
	.byte 0x00, 0x00
data_ov03_020feb64: ; 0x020feb64
	.byte 0x03, 0x00
data_ov03_020feb66: ; 0x020feb66
	.byte 0x24, 0x00
data_ov03_020feb68: ; 0x020feb68
	.byte 0x25, 0x00
data_ov03_020feb6a: ; 0x020feb6a
	.byte 0x3d, 0x00
data_ov03_020feb6c: ; 0x020feb6c
	.byte 0xff, 0xff
data_ov03_020feb6e: ; 0x020feb6e
	.byte 0xff, 0xff
data_ov03_020feb70: ; 0x020feb70
	.byte 0x29, 0x00
data_ov03_020feb72: ; 0x020feb72
	.byte 0x07, 0x00
data_ov03_020feb74: ; 0x020feb74
	.byte 0x32, 0x00
data_ov03_020feb76: ; 0x020feb76
	.byte 0x10, 0x00
data_ov03_020feb78: ; 0x020feb78
	.byte 0xff, 0xff
data_ov03_020feb7a: ; 0x020feb7a
	.byte 0xff, 0xff
data_ov03_020feb7c: ; 0x020feb7c
	.byte 0x32, 0x00
data_ov03_020feb7e: ; 0x020feb7e
	.byte 0x02, 0x00
data_ov03_020feb80: ; 0x020feb80
	.byte 0x3a, 0x00
data_ov03_020feb82: ; 0x020feb82
	.byte 0x0e, 0x00
data_ov03_020feb84: ; 0x020feb84
	.byte 0xff, 0xff
data_ov03_020feb86: ; 0x020feb86
	.byte 0xff, 0xff
data_ov03_020feb88: ; 0x020feb88
	.byte 0x09, 0x00
data_ov03_020feb8a: ; 0x020feb8a
	.byte 0x07, 0x00
data_ov03_020feb8c: ; 0x020feb8c
	.byte 0x0a, 0x00
data_ov03_020feb8e: ; 0x020feb8e
	.byte 0x2d, 0x00
data_ov03_020feb90: ; 0x020feb90
	.byte 0xff, 0xff
data_ov03_020feb92: ; 0x020feb92
	.byte 0xff, 0xff
data_ov03_020feb94: ; 0x020feb94
	.byte 0x1e, 0x00
data_ov03_020feb96: ; 0x020feb96
	.byte 0x00, 0x00
data_ov03_020feb98: ; 0x020feb98
	.byte 0x26, 0x00
data_ov03_020feb9a: ; 0x020feb9a
	.byte 0x19, 0x00
data_ov03_020feb9c: ; 0x020feb9c
	.byte 0x1d, 0x00
data_ov03_020feb9e: ; 0x020feb9e
	.byte 0x3e, 0x00
data_ov03_020feba0: ; 0x020feba0
	.byte 0xff, 0xff
data_ov03_020feba2: ; 0x020feba2
	.byte 0xff, 0xff
data_ov03_020feba4: ; 0x020feba4
	.byte 0x16, 0x00
data_ov03_020feba6: ; 0x020feba6
	.byte 0x1c, 0x00
data_ov03_020feba8: ; 0x020feba8
	.byte 0x30, 0x00
data_ov03_020febaa: ; 0x020febaa
	.byte 0x19, 0x00
data_ov03_020febac: ; 0x020febac
	.byte 0xff, 0xff
data_ov03_020febae: ; 0x020febae
	.byte 0xff, 0xff
data_ov03_020febb0: ; 0x020febb0
	.byte 0x2c, 0x00
data_ov03_020febb2: ; 0x020febb2
	.byte 0x09, 0x00
data_ov03_020febb4: ; 0x020febb4
	.byte 0x31, 0x00
data_ov03_020febb6: ; 0x020febb6
	.byte 0x10, 0x00
data_ov03_020febb8: ; 0x020febb8
	.byte 0xff, 0xff
data_ov03_020febba: ; 0x020febba
	.byte 0xff, 0xff
data_ov03_020febbc: ; 0x020febbc
	.byte 0x32, 0x00
data_ov03_020febbe: ; 0x020febbe
	.byte 0x05, 0x00
data_ov03_020febc0: ; 0x020febc0
	.byte 0x38, 0x00
data_ov03_020febc2: ; 0x020febc2
	.byte 0x11, 0x00
data_ov03_020febc4: ; 0x020febc4
	.byte 0xff, 0xff
data_ov03_020febc6: ; 0x020febc6
	.byte 0xff, 0xff
data_ov03_020febc8: ; 0x020febc8
	.byte 0x04, 0x00
data_ov03_020febca: ; 0x020febca
	.byte 0x04, 0x00
data_ov03_020febcc: ; 0x020febcc
	.byte 0x13, 0x00
data_ov03_020febce: ; 0x020febce
	.byte 0x01, 0x00
data_ov03_020febd0: ; 0x020febd0
	.byte 0x21, 0x00
data_ov03_020febd2: ; 0x020febd2
	.byte 0x09, 0x00
data_ov03_020febd4: ; 0x020febd4
	.byte 0xff, 0xff
data_ov03_020febd6: ; 0x020febd6
	.byte 0xff, 0xff
data_ov03_020febd8: ; 0x020febd8
	.byte 0x06, 0x00
data_ov03_020febda: ; 0x020febda
	.byte 0x33, 0x00
data_ov03_020febdc: ; 0x020febdc
	.byte 0x14, 0x00
data_ov03_020febde: ; 0x020febde
	.byte 0x3f, 0x00
data_ov03_020febe0: ; 0x020febe0
	.byte 0x2d, 0x00
data_ov03_020febe2: ; 0x020febe2
	.byte 0x36, 0x00
data_ov03_020febe4: ; 0x020febe4
	.byte 0xff, 0xff
data_ov03_020febe6: ; 0x020febe6
	.byte 0xff, 0xff
data_ov03_020febe8: ; 0x020febe8
	.byte 0x2e, 0x00
data_ov03_020febea: ; 0x020febea
	.byte 0x02, 0x00
data_ov03_020febec: ; 0x020febec
	.byte 0x33, 0x00
data_ov03_020febee: ; 0x020febee
	.byte 0x0b, 0x00
data_ov03_020febf0: ; 0x020febf0
	.byte 0xff, 0xff
data_ov03_020febf2: ; 0x020febf2
	.byte 0xff, 0xff
data_ov03_020febf4: ; 0x020febf4
	.byte 0x34, 0x00
data_ov03_020febf6: ; 0x020febf6
	.byte 0x00, 0x00
data_ov03_020febf8: ; 0x020febf8
	.byte 0x3a, 0x00
data_ov03_020febfa: ; 0x020febfa
	.byte 0x0b, 0x00
data_ov03_020febfc: ; 0x020febfc
	.byte 0xff, 0xff
data_ov03_020febfe: ; 0x020febfe
	.byte 0xff, 0xff
data_ov03_020fec00: ; 0x020fec00
	.byte 0x01, 0x00
data_ov03_020fec02: ; 0x020fec02
	.byte 0x18, 0x00
data_ov03_020fec04: ; 0x020fec04
	.byte 0x2e, 0x00
data_ov03_020fec06: ; 0x020fec06
	.byte 0x08, 0x00
data_ov03_020fec08: ; 0x020fec08
	.byte 0xff, 0xff
data_ov03_020fec0a: ; 0x020fec0a
	.byte 0xff, 0xff
data_ov03_020fec0c: ; 0x020fec0c
	.byte 0x1a, 0x00
data_ov03_020fec0e: ; 0x020fec0e
	.byte 0x04, 0x00
data_ov03_020fec10: ; 0x020fec10
	.byte 0x2c, 0x00
data_ov03_020fec12: ; 0x020fec12
	.byte 0x1e, 0x00
data_ov03_020fec14: ; 0x020fec14
	.byte 0xff, 0xff
data_ov03_020fec16: ; 0x020fec16
	.byte 0xff, 0xff
data_ov03_020fec18: ; 0x020fec18
	.byte 0x11, 0x00
data_ov03_020fec1a: ; 0x020fec1a
	.byte 0x35, 0x00
data_ov03_020fec1c: ; 0x020fec1c
	.byte 0x1b, 0x00
data_ov03_020fec1e: ; 0x020fec1e
	.byte 0x3c, 0x00
data_ov03_020fec20: ; 0x020fec20
	.byte 0x2b, 0x00
data_ov03_020fec22: ; 0x020fec22
	.byte 0x35, 0x00
data_ov03_020fec24: ; 0x020fec24
	.byte 0xff, 0xff
data_ov03_020fec26: ; 0x020fec26
	.byte 0xff, 0xff
data_ov03_020fec28: ; 0x020fec28
	.byte 0x33, 0x00
data_ov03_020fec2a: ; 0x020fec2a
	.byte 0x05, 0x00
data_ov03_020fec2c: ; 0x020fec2c
	.byte 0x3a, 0x00
data_ov03_020fec2e: ; 0x020fec2e
	.byte 0x10, 0x00
data_ov03_020fec30: ; 0x020fec30
	.byte 0xff, 0xff
data_ov03_020fec32: ; 0x020fec32
	.byte 0xff, 0xff
data_ov03_020fec34: ; 0x020fec34
	.byte 0x38, 0x00
data_ov03_020fec36: ; 0x020fec36
	.byte 0x02, 0x00
data_ov03_020fec38: ; 0x020fec38
	.byte 0x3e, 0x00
data_ov03_020fec3a: ; 0x020fec3a
	.byte 0x0b, 0x00
data_ov03_020fec3c: ; 0x020fec3c
	.byte 0xff, 0xff
data_ov03_020fec3e: ; 0x020fec3e
	.byte 0xff, 0xff
data_ov03_020fec40: ; 0x020fec40
	.byte 0x0b, 0x00
data_ov03_020fec42: ; 0x020fec42
	.byte 0x00, 0x00
data_ov03_020fec44: ; 0x020fec44
	.byte 0x0a, 0x00
data_ov03_020fec46: ; 0x020fec46
	.byte 0x2a, 0x00
data_ov03_020fec48: ; 0x020fec48
	.byte 0x11, 0x00
data_ov03_020fec4a: ; 0x020fec4a
	.byte 0x3d, 0x00
data_ov03_020fec4c: ; 0x020fec4c
	.byte 0x20, 0x00
data_ov03_020fec4e: ; 0x020fec4e
	.byte 0x3c, 0x00
data_ov03_020fec50: ; 0x020fec50
	.byte 0x2e, 0x00
data_ov03_020fec52: ; 0x020fec52
	.byte 0x2e, 0x00
data_ov03_020fec54: ; 0x020fec54
	.byte 0xff, 0xff
data_ov03_020fec56: ; 0x020fec56
	.byte 0xff, 0xff
data_ov03_020fec58: ; 0x020fec58
	.byte 0x24, 0x00
data_ov03_020fec5a: ; 0x020fec5a
	.byte 0x0d, 0x00
data_ov03_020fec5c: ; 0x020fec5c
	.byte 0x2b, 0x00
data_ov03_020fec5e: ; 0x020fec5e
	.byte 0x17, 0x00
data_ov03_020fec60: ; 0x020fec60
	.byte 0xff, 0xff
data_ov03_020fec62: ; 0x020fec62
	.byte 0xff, 0xff
data_ov03_020fec64: ; 0x020fec64
	.byte 0x2c, 0x00
data_ov03_020fec66: ; 0x020fec66
	.byte 0x0b, 0x00
data_ov03_020fec68: ; 0x020fec68
	.byte 0x34, 0x00
data_ov03_020fec6a: ; 0x020fec6a
	.byte 0x13, 0x00
data_ov03_020fec6c: ; 0x020fec6c
	.byte 0xff, 0xff
data_ov03_020fec6e: ; 0x020fec6e
	.byte 0xff, 0xff
data_ov03_020fec70: ; 0x020fec70
	.byte 0x00, 0x00
data_ov03_020fec72: ; 0x020fec72
	.byte 0x19, 0x00
data_ov03_020fec74: ; 0x020fec74
	.byte 0x2d, 0x00
data_ov03_020fec76: ; 0x020fec76
	.byte 0x0c, 0x00
data_ov03_020fec78: ; 0x020fec78
	.byte 0xff, 0xff
data_ov03_020fec7a: ; 0x020fec7a
	.byte 0xff, 0xff
data_ov03_020fec7c: ; 0x020fec7c
	.byte 0x21, 0x00
data_ov03_020fec7e: ; 0x020fec7e
	.byte 0x04, 0x00
data_ov03_020fec80: ; 0x020fec80
	.byte 0x23, 0x00
data_ov03_020fec82: ; 0x020fec82
	.byte 0x21, 0x00
data_ov03_020fec84: ; 0x020fec84
	.byte 0x1c, 0x00
data_ov03_020fec86: ; 0x020fec86
	.byte 0x28, 0x00
data_ov03_020fec88: ; 0x020fec88
	.byte 0x15, 0x00
data_ov03_020fec8a: ; 0x020fec8a
	.byte 0x23, 0x00
data_ov03_020fec8c: ; 0x020fec8c
	.byte 0x1a, 0x00
data_ov03_020fec8e: ; 0x020fec8e
	.byte 0x1c, 0x00
data_ov03_020fec90: ; 0x020fec90
	.byte 0x21, 0x00
data_ov03_020fec92: ; 0x020fec92
	.byte 0x1f, 0x00
data_ov03_020fec94: ; 0x020fec94
	.byte 0x23, 0x00
data_ov03_020fec96: ; 0x020fec96
	.byte 0x3a, 0x00
data_ov03_020fec98: ; 0x020fec98
	.byte 0xff, 0xff
data_ov03_020fec9a: ; 0x020fec9a
	.byte 0xff, 0xff
data_ov03_020fec9c: ; 0x020fec9c
	.byte 0x34, 0x00
data_ov03_020fec9e: ; 0x020fec9e
	.byte 0x0e, 0x00
data_ov03_020feca0: ; 0x020feca0
	.byte 0x38, 0x00
data_ov03_020feca2: ; 0x020feca2
	.byte 0x17, 0x00
data_ov03_020feca4: ; 0x020feca4
	.byte 0xff, 0xff
data_ov03_020feca6: ; 0x020feca6
	.byte 0xff, 0xff
data_ov03_020feca8: ; 0x020feca8
	.byte 0x3a, 0x00
data_ov03_020fecaa: ; 0x020fecaa
	.byte 0x0b, 0x00
data_ov03_020fecac: ; 0x020fecac
	.byte 0x3f, 0x00
data_ov03_020fecae: ; 0x020fecae
	.byte 0x16, 0x00
data_ov03_020fecb0: ; 0x020fecb0
	.byte 0xff, 0xff
data_ov03_020fecb2: ; 0x020fecb2
	.byte 0xff, 0xff
data_ov03_020fecb4: ; 0x020fecb4
	.byte 0x00, 0x00
data_ov03_020fecb6: ; 0x020fecb6
	.byte 0x26, 0x00
data_ov03_020fecb8: ; 0x020fecb8
	.byte 0x31, 0x00
data_ov03_020fecba: ; 0x020fecba
	.byte 0x10, 0x00
data_ov03_020fecbc: ; 0x020fecbc
	.byte 0xff, 0xff
data_ov03_020fecbe: ; 0x020fecbe
	.byte 0xff, 0xff
data_ov03_020fecc0: ; 0x020fecc0
	.byte 0x27, 0x00
data_ov03_020fecc2: ; 0x020fecc2
	.byte 0x08, 0x00
data_ov03_020fecc4: ; 0x020fecc4
	.byte 0x27, 0x00
data_ov03_020fecc6: ; 0x020fecc6
	.byte 0x21, 0x00
data_ov03_020fecc8: ; 0x020fecc8
	.byte 0xff, 0xff
data_ov03_020fecca: ; 0x020fecca
	.byte 0xff, 0xff
data_ov03_020feccc: ; 0x020feccc
	.byte 0x14, 0x00
data_ov03_020fecce: ; 0x020fecce
	.byte 0x11, 0x00
data_ov03_020fecd0: ; 0x020fecd0
	.byte 0x11, 0x00
data_ov03_020fecd2: ; 0x020fecd2
	.byte 0x28, 0x00
data_ov03_020fecd4: ; 0x020fecd4
	.byte 0x18, 0x00
data_ov03_020fecd6: ; 0x020fecd6
	.byte 0x37, 0x00
data_ov03_020fecd8: ; 0x020fecd8
	.byte 0x36, 0x00
data_ov03_020fecda: ; 0x020fecda
	.byte 0x30, 0x00
data_ov03_020fecdc: ; 0x020fecdc
	.byte 0xff, 0xff
data_ov03_020fecde: ; 0x020fecde
	.byte 0xff, 0xff
data_ov03_020fece0: ; 0x020fece0
	.byte 0x2d, 0x00
data_ov03_020fece2: ; 0x020fece2
	.byte 0x08, 0x00
data_ov03_020fece4: ; 0x020fece4
	.byte 0x36, 0x00
data_ov03_020fece6: ; 0x020fece6
	.byte 0x14, 0x00
data_ov03_020fece8: ; 0x020fece8
	.byte 0xff, 0xff
data_ov03_020fecea: ; 0x020fecea
	.byte 0xff, 0xff
data_ov03_020fecec: ; 0x020fecec
	.byte 0x37, 0x00
data_ov03_020fecee: ; 0x020fecee
	.byte 0x08, 0x00
data_ov03_020fecf0: ; 0x020fecf0
	.byte 0x3d, 0x00
data_ov03_020fecf2: ; 0x020fecf2
	.byte 0x13, 0x00
data_ov03_020fecf4: ; 0x020fecf4
	.byte 0xff, 0xff
data_ov03_020fecf6: ; 0x020fecf6
	.byte 0xff, 0xff
data_ov03_020fecf8: ; 0x020fecf8
	.byte 0x12, 0x00
data_ov03_020fecfa: ; 0x020fecfa
	.byte 0x05, 0x00
data_ov03_020fecfc: ; 0x020fecfc
	.byte 0x2c, 0x00
data_ov03_020fecfe: ; 0x020fecfe
	.byte 0x00, 0x00
data_ov03_020fed00: ; 0x020fed00
	.byte 0x07, 0x00
data_ov03_020fed02: ; 0x020fed02
	.byte 0x29, 0x00
data_ov03_020fed04: ; 0x020fed04
	.byte 0x36, 0x00
data_ov03_020fed06: ; 0x020fed06
	.byte 0x14, 0x00
data_ov03_020fed08: ; 0x020fed08
	.byte 0x25, 0x00
data_ov03_020fed0a: ; 0x020fed0a
	.byte 0x2d, 0x00
data_ov03_020fed0c: ; 0x020fed0c
	.byte 0x27, 0x00
data_ov03_020fed0e: ; 0x020fed0e
	.byte 0x39, 0x00
data_ov03_020fed10: ; 0x020fed10
	.byte 0x33, 0x00
data_ov03_020fed12: ; 0x020fed12
	.byte 0x3e, 0x00
data_ov03_020fed14: ; 0x020fed14
	.byte 0xff, 0xff
data_ov03_020fed16: ; 0x020fed16
	.byte 0xff, 0xff
data_ov03_020fed18: ; 0x020fed18
	.byte 0x2d, 0x00
data_ov03_020fed1a: ; 0x020fed1a
	.byte 0x10, 0x00
data_ov03_020fed1c: ; 0x020fed1c
	.byte 0x38, 0x00
data_ov03_020fed1e: ; 0x020fed1e
	.byte 0x1e, 0x00
data_ov03_020fed20: ; 0x020fed20
	.byte 0xff, 0xff
data_ov03_020fed22: ; 0x020fed22
	.byte 0xff, 0xff
data_ov03_020fed24: ; 0x020fed24
	.byte 0x37, 0x00
data_ov03_020fed26: ; 0x020fed26
	.byte 0x0d, 0x00
data_ov03_020fed28: ; 0x020fed28
	.byte 0x3d, 0x00
data_ov03_020fed2a: ; 0x020fed2a
	.byte 0x1a, 0x00
data_ov03_020fed2c: ; 0x020fed2c
	.byte 0xff, 0xff
data_ov03_020fed2e: ; 0x020fed2e
	.byte 0xff, 0xff
data_ov03_020fed30: ; 0x020fed30
	.byte 0x00, 0x00
data_ov03_020fed32: ; 0x020fed32
	.byte 0x16, 0x00
data_ov03_020fed34: ; 0x020fed34
	.byte 0x1c, 0x00
data_ov03_020fed36: ; 0x020fed36
	.byte 0x0b, 0x00
data_ov03_020fed38: ; 0x020fed38
	.byte 0xff, 0xff
data_ov03_020fed3a: ; 0x020fed3a
	.byte 0xff, 0xff
data_ov03_020fed3c: ; 0x020fed3c
	.byte 0x16, 0x00
data_ov03_020fed3e: ; 0x020fed3e
	.byte 0x03, 0x00
data_ov03_020fed40: ; 0x020fed40
	.byte 0x10, 0x00
data_ov03_020fed42: ; 0x020fed42
	.byte 0x0f, 0x00
data_ov03_020fed44: ; 0x020fed44
	.byte 0x12, 0x00
data_ov03_020fed46: ; 0x020fed46
	.byte 0x3a, 0x00
data_ov03_020fed48: ; 0x020fed48
	.byte 0xff, 0xff
data_ov03_020fed4a: ; 0x020fed4a
	.byte 0xff, 0xff
data_ov03_020fed4c: ; 0x020fed4c
	.byte 0x20, 0x00
data_ov03_020fed4e: ; 0x020fed4e
	.byte 0x22, 0x00
data_ov03_020fed50: ; 0x020fed50
	.byte 0x33, 0x00
data_ov03_020fed52: ; 0x020fed52
	.byte 0x21, 0x00
data_ov03_020fed54: ; 0x020fed54
	.byte 0xff, 0xff
data_ov03_020fed56: ; 0x020fed56
	.byte 0xff, 0xff
data_ov03_020fed58: ; 0x020fed58
	.byte 0x24, 0x00
data_ov03_020fed5a: ; 0x020fed5a
	.byte 0x37, 0x00
data_ov03_020fed5c: ; 0x020fed5c
	.byte 0x2c, 0x00
data_ov03_020fed5e: ; 0x020fed5e
	.byte 0x3d, 0x00
data_ov03_020fed60: ; 0x020fed60
	.byte 0x3b, 0x00
data_ov03_020fed62: ; 0x020fed62
	.byte 0x34, 0x00
data_ov03_020fed64: ; 0x020fed64
	.byte 0xff, 0xff
data_ov03_020fed66: ; 0x020fed66
	.byte 0xff, 0xff
data_ov03_020fed68: ; 0x020fed68
	.byte 0x33, 0x00
data_ov03_020fed6a: ; 0x020fed6a
	.byte 0x11, 0x00
data_ov03_020fed6c: ; 0x020fed6c
	.byte 0x38, 0x00
data_ov03_020fed6e: ; 0x020fed6e
	.byte 0x19, 0x00
data_ov03_020fed70: ; 0x020fed70
	.byte 0xff, 0xff
data_ov03_020fed72: ; 0x020fed72
	.byte 0xff, 0xff
data_ov03_020fed74: ; 0x020fed74
	.byte 0x3a, 0x00
data_ov03_020fed76: ; 0x020fed76
	.byte 0x0e, 0x00
data_ov03_020fed78: ; 0x020fed78
	.byte 0x3f, 0x00
data_ov03_020fed7a: ; 0x020fed7a
	.byte 0x17, 0x00
data_ov03_020fed7c: ; 0x020fed7c
	.byte 0xff, 0xff
data_ov03_020fed7e: ; 0x020fed7e
	.byte 0xff, 0xff
data_ov03_020fed80: ; 0x020fed80
	.byte 0x01, 0x00
data_ov03_020fed82: ; 0x020fed82
	.byte 0x14, 0x00
data_ov03_020fed84: ; 0x020fed84
	.byte 0x2c, 0x00
data_ov03_020fed86: ; 0x020fed86
	.byte 0x06, 0x00
data_ov03_020fed88: ; 0x020fed88
	.byte 0xff, 0xff
data_ov03_020fed8a: ; 0x020fed8a
	.byte 0xff, 0xff
data_ov03_020fed8c: ; 0x020fed8c
	.byte 0x19, 0x00
data_ov03_020fed8e: ; 0x020fed8e
	.byte 0x00, 0x00
data_ov03_020fed90: ; 0x020fed90
	.byte 0x0c, 0x00
data_ov03_020fed92: ; 0x020fed92
	.byte 0x26, 0x00
data_ov03_020fed94: ; 0x020fed94
	.byte 0x1e, 0x00
data_ov03_020fed96: ; 0x020fed96
	.byte 0x1f, 0x00
data_ov03_020fed98: ; 0x020fed98
	.byte 0x2f, 0x00
data_ov03_020fed9a: ; 0x020fed9a
	.byte 0x28, 0x00
data_ov03_020fed9c: ; 0x020fed9c
	.byte 0x2b, 0x00
data_ov03_020fed9e: ; 0x020fed9e
	.byte 0x37, 0x00
data_ov03_020feda0: ; 0x020feda0
	.byte 0x19, 0x00
data_ov03_020feda2: ; 0x020feda2
	.byte 0x3a, 0x00
data_ov03_020feda4: ; 0x020feda4
	.byte 0xff, 0xff
data_ov03_020feda6: ; 0x020feda6
	.byte 0xff, 0xff
data_ov03_020feda8: ; 0x020feda8
	.byte 0x30, 0x00
data_ov03_020fedaa: ; 0x020fedaa
	.byte 0x12, 0x00
data_ov03_020fedac: ; 0x020fedac
	.byte 0x34, 0x00
data_ov03_020fedae: ; 0x020fedae
	.byte 0x18, 0x00
data_ov03_020fedb0: ; 0x020fedb0
	.byte 0xff, 0xff
data_ov03_020fedb2: ; 0x020fedb2
	.byte 0xff, 0xff
data_ov03_020fedb4: ; 0x020fedb4
	.byte 0x37, 0x00
data_ov03_020fedb6: ; 0x020fedb6
	.byte 0x0c, 0x00
data_ov03_020fedb8: ; 0x020fedb8
	.byte 0x3f, 0x00
data_ov03_020fedba: ; 0x020fedba
	.byte 0x18, 0x00
data_ov03_020fedbc: ; 0x020fedbc
	.byte 0xff, 0xff
data_ov03_020fedbe: ; 0x020fedbe
	.byte 0xff, 0xff
data_ov03_020fedc0: ; 0x020fedc0
	.byte 0x00, 0x00
data_ov03_020fedc2: ; 0x020fedc2
	.byte 0x2c, 0x00
data_ov03_020fedc4: ; 0x020fedc4
	.byte 0x1a, 0x00
data_ov03_020fedc6: ; 0x020fedc6
	.byte 0x19, 0x00
data_ov03_020fedc8: ; 0x020fedc8
	.byte 0x2c, 0x00
data_ov03_020fedca: ; 0x020fedca
	.byte 0x17, 0x00
data_ov03_020fedcc: ; 0x020fedcc
	.byte 0x35, 0x00
data_ov03_020fedce: ; 0x020fedce
	.byte 0x24, 0x00
data_ov03_020fedd0: ; 0x020fedd0
	.byte 0x29, 0x00
data_ov03_020fedd2: ; 0x020fedd2
	.byte 0x31, 0x00
data_ov03_020fedd4: ; 0x020fedd4
	.byte 0xff, 0xff
data_ov03_020fedd6: ; 0x020fedd6
	.byte 0xff, 0xff
data_ov03_020fedd8: ; 0x020fedd8
	.byte 0x33, 0x00
data_ov03_020fedda: ; 0x020fedda
	.byte 0x0f, 0x00
data_ov03_020feddc: ; 0x020feddc
	.byte 0x37, 0x00
data_ov03_020fedde: ; 0x020fedde
	.byte 0x19, 0x00
data_ov03_020fede0: ; 0x020fede0
	.byte 0xff, 0xff
data_ov03_020fede2: ; 0x020fede2
	.byte 0xff, 0xff
data_ov03_020fede4: ; 0x020fede4
	.byte 0x3a, 0x00
data_ov03_020fede6: ; 0x020fede6
	.byte 0x0b, 0x00
data_ov03_020fede8: ; 0x020fede8
	.byte 0x3f, 0x00
data_ov03_020fedea: ; 0x020fedea
	.byte 0x18, 0x00
data_ov03_020fedec: ; 0x020fedec
	.byte 0xff, 0xff
data_ov03_020fedee: ; 0x020fedee
	.byte 0xff, 0xff
data_ov03_020fedf0: ; 0x020fedf0
	.byte 0x00, 0x00
data_ov03_020fedf2: ; 0x020fedf2
	.byte 0x1a, 0x00
data_ov03_020fedf4: ; 0x020fedf4
	.byte 0x2c, 0x00
data_ov03_020fedf6: ; 0x020fedf6
	.byte 0x05, 0x00
data_ov03_020fedf8: ; 0x020fedf8
	.byte 0x1e, 0x00
data_ov03_020fedfa: ; 0x020fedfa
	.byte 0x2a, 0x00
data_ov03_020fedfc: ; 0x020fedfc
	.byte 0x20, 0x00
data_ov03_020fedfe: ; 0x020fedfe
	.byte 0x35, 0x00
data_ov03_020fee00: ; 0x020fee00
	.byte 0x2e, 0x00
data_ov03_020fee02: ; 0x020fee02
	.byte 0x35, 0x00
data_ov03_020fee04: ; 0x020fee04
	.byte 0xff, 0xff
data_ov03_020fee06: ; 0x020fee06
	.byte 0xff, 0xff
data_ov03_020fee08: ; 0x020fee08
	.byte 0x33, 0x00
data_ov03_020fee0a: ; 0x020fee0a
	.byte 0x0b, 0x00
data_ov03_020fee0c: ; 0x020fee0c
	.byte 0x39, 0x00
data_ov03_020fee0e: ; 0x020fee0e
	.byte 0x14, 0x00
data_ov03_020fee10: ; 0x020fee10
	.byte 0xff, 0xff
data_ov03_020fee12: ; 0x020fee12
	.byte 0xff, 0xff
data_ov03_020fee14: ; 0x020fee14
	.byte 0x3a, 0x00
data_ov03_020fee16: ; 0x020fee16
	.byte 0x07, 0x00
data_ov03_020fee18: ; 0x020fee18
	.byte 0x3f, 0x00
data_ov03_020fee1a: ; 0x020fee1a
	.byte 0x11, 0x00
data_ov03_020fee1c: ; 0x020fee1c
	.byte 0xff, 0xff
data_ov03_020fee1e: ; 0x020fee1e
	.byte 0xff, 0xff
data_ov03_020fee20: ; 0x020fee20
	.byte 0x03, 0x00
data_ov03_020fee22: ; 0x020fee22
	.byte 0x00, 0x00
data_ov03_020fee24: ; 0x020fee24
	.byte 0x12, 0x00
data_ov03_020fee26: ; 0x020fee26
	.byte 0x19, 0x00
data_ov03_020fee28: ; 0x020fee28
	.byte 0xff, 0xff
data_ov03_020fee2a: ; 0x020fee2a
	.byte 0xff, 0xff
data_ov03_020fee2c: ; 0x020fee2c
	.byte 0x29, 0x00
data_ov03_020fee2e: ; 0x020fee2e
	.byte 0x09, 0x00
data_ov03_020fee30: ; 0x020fee30
	.byte 0x10, 0x00
data_ov03_020fee32: ; 0x020fee32
	.byte 0x1d, 0x00
data_ov03_020fee34: ; 0x020fee34
	.byte 0x07, 0x00
data_ov03_020fee36: ; 0x020fee36
	.byte 0x37, 0x00
data_ov03_020fee38: ; 0x020fee38
	.byte 0x10, 0x00
data_ov03_020fee3a: ; 0x020fee3a
	.byte 0x3e, 0x00
data_ov03_020fee3c: ; 0x020fee3c
	.byte 0x2f, 0x00
data_ov03_020fee3e: ; 0x020fee3e
	.byte 0x32, 0x00
data_ov03_020fee40: ; 0x020fee40
	.byte 0xff, 0xff
data_ov03_020fee42: ; 0x020fee42
	.byte 0xff, 0xff
data_ov03_020fee44: ; 0x020fee44
	.byte 0x2b, 0x00
data_ov03_020fee46: ; 0x020fee46
	.byte 0x01, 0x00
data_ov03_020fee48: ; 0x020fee48
	.byte 0x33, 0x00
data_ov03_020fee4a: ; 0x020fee4a
	.byte 0x10, 0x00
data_ov03_020fee4c: ; 0x020fee4c
	.byte 0xff, 0xff
data_ov03_020fee4e: ; 0x020fee4e
	.byte 0xff, 0xff
data_ov03_020fee50: ; 0x020fee50
	.byte 0x36, 0x00
data_ov03_020fee52: ; 0x020fee52
	.byte 0x02, 0x00
data_ov03_020fee54: ; 0x020fee54
	.byte 0x3c, 0x00
data_ov03_020fee56: ; 0x020fee56
	.byte 0x0e, 0x00
data_ov03_020fee58: ; 0x020fee58
	.byte 0xff, 0xff
data_ov03_020fee5a: ; 0x020fee5a
	.byte 0xff, 0xff
data_ov03_020fee5c: ; 0x020fee5c
	.byte 0x02, 0x00
data_ov03_020fee5e: ; 0x020fee5e
	.byte 0x0b, 0x00
data_ov03_020fee60: ; 0x020fee60
	.byte 0x07, 0x00
data_ov03_020fee62: ; 0x020fee62
	.byte 0x38, 0x00
data_ov03_020fee64: ; 0x020fee64
	.byte 0xff, 0xff
data_ov03_020fee66: ; 0x020fee66
	.byte 0xff, 0xff
data_ov03_020fee68: ; 0x020fee68
	.byte 0x11, 0x00
data_ov03_020fee6a: ; 0x020fee6a
	.byte 0x14, 0x00
data_ov03_020fee6c: ; 0x020fee6c
	.byte 0x2d, 0x00
data_ov03_020fee6e: ; 0x020fee6e
	.byte 0x0d, 0x00
data_ov03_020fee70: ; 0x020fee70
	.byte 0xff, 0xff
data_ov03_020fee72: ; 0x020fee72
	.byte 0xff, 0xff
data_ov03_020fee74: ; 0x020fee74
	.byte 0x24, 0x00
data_ov03_020fee76: ; 0x020fee76
	.byte 0x04, 0x00
data_ov03_020fee78: ; 0x020fee78
	.byte 0x2d, 0x00
data_ov03_020fee7a: ; 0x020fee7a
	.byte 0x37, 0x00
data_ov03_020fee7c: ; 0x020fee7c
	.byte 0x21, 0x00
data_ov03_020fee7e: ; 0x020fee7e
	.byte 0x3b, 0x00
data_ov03_020fee80: ; 0x020fee80
	.byte 0x15, 0x00
data_ov03_020fee82: ; 0x020fee82
	.byte 0x2c, 0x00
data_ov03_020fee84: ; 0x020fee84
	.byte 0x21, 0x00
data_ov03_020fee86: ; 0x020fee86
	.byte 0x28, 0x00
data_ov03_020fee88: ; 0x020fee88
	.byte 0x35, 0x00
data_ov03_020fee8a: ; 0x020fee8a
	.byte 0x30, 0x00
data_ov03_020fee8c: ; 0x020fee8c
	.byte 0xff, 0xff
data_ov03_020fee8e: ; 0x020fee8e
	.byte 0xff, 0xff
data_ov03_020fee90: ; 0x020fee90
	.byte 0x33, 0x00
data_ov03_020fee92: ; 0x020fee92
	.byte 0x0a, 0x00
data_ov03_020fee94: ; 0x020fee94
	.byte 0x3a, 0x00
data_ov03_020fee96: ; 0x020fee96
	.byte 0x13, 0x00
data_ov03_020fee98: ; 0x020fee98
	.byte 0xff, 0xff
data_ov03_020fee9a: ; 0x020fee9a
	.byte 0xff, 0xff
data_ov03_020fee9c: ; 0x020fee9c
	.byte 0x39, 0x00
data_ov03_020fee9e: ; 0x020fee9e
	.byte 0x08, 0x00
data_ov03_020feea0: ; 0x020feea0
	.byte 0x3e, 0x00
data_ov03_020feea2: ; 0x020feea2
	.byte 0x15, 0x00
data_ov03_020feea4: ; 0x020feea4
	.byte 0xff, 0xff
data_ov03_020feea6: ; 0x020feea6
	.byte 0xff, 0xff
data_ov03_020feea8: ; 0x020feea8
	.byte 0x00, 0x00
data_ov03_020feeaa: ; 0x020feeaa
	.byte 0x13, 0x00
data_ov03_020feeac: ; 0x020feeac
	.byte 0x1c, 0x00
data_ov03_020feeae: ; 0x020feeae
	.byte 0x05, 0x00
data_ov03_020feeb0: ; 0x020feeb0
	.byte 0x0d, 0x00
data_ov03_020feeb2: ; 0x020feeb2
	.byte 0x24, 0x00
data_ov03_020feeb4: ; 0x020feeb4
	.byte 0x12, 0x00
data_ov03_020feeb6: ; 0x020feeb6
	.byte 0x3a, 0x00
data_ov03_020feeb8: ; 0x020feeb8
	.byte 0x26, 0x00
data_ov03_020feeba: ; 0x020feeba
	.byte 0x33, 0x00
data_ov03_020feebc: ; 0x020feebc
	.byte 0x2d, 0x00
data_ov03_020feebe: ; 0x020feebe
	.byte 0x1b, 0x00
data_ov03_020feec0: ; 0x020feec0
	.byte 0x3a, 0x00
data_ov03_020feec2: ; 0x020feec2
	.byte 0x22, 0x00
data_ov03_020feec4: ; 0x020feec4
	.byte 0xff, 0xff
data_ov03_020feec6: ; 0x020feec6
	.byte 0xff, 0xff
data_ov03_020feec8: ; 0x020feec8
	.byte 0x33, 0x00
data_ov03_020feeca: ; 0x020feeca
	.byte 0x0d, 0x00
data_ov03_020feecc: ; 0x020feecc
	.byte 0x39, 0x00
data_ov03_020feece: ; 0x020feece
	.byte 0x13, 0x00
data_ov03_020feed0: ; 0x020feed0
	.byte 0xff, 0xff
data_ov03_020feed2: ; 0x020feed2
	.byte 0xff, 0xff
data_ov03_020feed4: ; 0x020feed4
	.byte 0x39, 0x00
data_ov03_020feed6: ; 0x020feed6
	.byte 0x0b, 0x00
data_ov03_020feed8: ; 0x020feed8
	.byte 0x3e, 0x00
data_ov03_020feeda: ; 0x020feeda
	.byte 0x12, 0x00
data_ov03_020feedc: ; 0x020feedc
	.byte 0xff, 0xff
data_ov03_020feede: ; 0x020feede
	.byte 0xff, 0xff
data_ov03_020feee0: ; 0x020feee0
	.byte 0x12, 0x00
data_ov03_020feee2: ; 0x020feee2
	.byte 0x05, 0x00
data_ov03_020feee4: ; 0x020feee4
	.byte 0x20, 0x00
data_ov03_020feee6: ; 0x020feee6
	.byte 0x10, 0x00
data_ov03_020feee8: ; 0x020feee8
	.byte 0x1f, 0x00
data_ov03_020feeea: ; 0x020feeea
	.byte 0x1b, 0x00
data_ov03_020feeec: ; 0x020feeec
	.byte 0x17, 0x00
data_ov03_020feeee: ; 0x020feeee
	.byte 0x19, 0x00
data_ov03_020feef0: ; 0x020feef0
	.byte 0x26, 0x00
data_ov03_020feef2: ; 0x020feef2
	.byte 0x31, 0x00
data_ov03_020feef4: ; 0x020feef4
	.byte 0x20, 0x00
data_ov03_020feef6: ; 0x020feef6
	.byte 0x3b, 0x00
data_ov03_020feef8: ; 0x020feef8
	.byte 0x0d, 0x00
data_ov03_020feefa: ; 0x020feefa
	.byte 0x2d, 0x00
data_ov03_020feefc: ; 0x020feefc
	.byte 0xff, 0xff
data_ov03_020feefe: ; 0x020feefe
	.byte 0xff, 0xff
data_ov03_020fef00: ; 0x020fef00
	.byte 0x02, 0x00
data_ov03_020fef02: ; 0x020fef02
	.byte 0x23, 0x00
data_ov03_020fef04: ; 0x020fef04
	.byte 0x01, 0x00
data_ov03_020fef06: ; 0x020fef06
	.byte 0x39, 0x00
data_ov03_020fef08: ; 0x020fef08
	.byte 0xff, 0xff
data_ov03_020fef0a: ; 0x020fef0a
	.byte 0xff, 0xff
data_ov03_020fef0c: ; 0x020fef0c
	.byte 0x2e, 0x00
data_ov03_020fef0e: ; 0x020fef0e
	.byte 0x25, 0x00
data_ov03_020fef10: ; 0x020fef10
	.byte 0x3d, 0x00
data_ov03_020fef12: ; 0x020fef12
	.byte 0x3a, 0x00
data_ov03_020fef14: ; 0x020fef14
	.byte 0xff, 0xff
data_ov03_020fef16: ; 0x020fef16
	.byte 0xff, 0xff
data_ov03_020fef18: ; 0x020fef18
	.byte 0x32, 0x00
data_ov03_020fef1a: ; 0x020fef1a
	.byte 0x0f, 0x00
data_ov03_020fef1c: ; 0x020fef1c
	.byte 0x37, 0x00
data_ov03_020fef1e: ; 0x020fef1e
	.byte 0x16, 0x00
data_ov03_020fef20: ; 0x020fef20
	.byte 0xff, 0xff
data_ov03_020fef22: ; 0x020fef22
	.byte 0xff, 0xff
data_ov03_020fef24: ; 0x020fef24
	.byte 0x38, 0x00
data_ov03_020fef26: ; 0x020fef26
	.byte 0x0b, 0x00
data_ov03_020fef28: ; 0x020fef28
	.byte 0x3e, 0x00
data_ov03_020fef2a: ; 0x020fef2a
	.byte 0x18, 0x00
data_ov03_020fef2c: ; 0x020fef2c
	.byte 0xff, 0xff
data_ov03_020fef2e: ; 0x020fef2e
	.byte 0xff, 0xff
data_ov03_020fef30: ; 0x020fef30
	.byte 0x00, 0x00
data_ov03_020fef32: ; 0x020fef32
	.byte 0x2d, 0x00
data_ov03_020fef34: ; 0x020fef34
	.byte 0x0d, 0x00
data_ov03_020fef36: ; 0x020fef36
	.byte 0x08, 0x00
data_ov03_020fef38: ; 0x020fef38
	.byte 0x3d, 0x00
data_ov03_020fef3a: ; 0x020fef3a
	.byte 0x35, 0x00
data_ov03_020fef3c: ; 0x020fef3c
	.byte 0xff, 0xff
data_ov03_020fef3e: ; 0x020fef3e
	.byte 0xff, 0xff
data_ov03_020fef40: ; 0x020fef40
	.byte 0x29, 0x00
data_ov03_020fef42: ; 0x020fef42
	.byte 0x08, 0x00
data_ov03_020fef44: ; 0x020fef44
	.byte 0x31, 0x00
data_ov03_020fef46: ; 0x020fef46
	.byte 0x13, 0x00
data_ov03_020fef48: ; 0x020fef48
	.byte 0xff, 0xff
data_ov03_020fef4a: ; 0x020fef4a
	.byte 0xff, 0xff
data_ov03_020fef4c: ; 0x020fef4c
	.byte 0x32, 0x00
data_ov03_020fef4e: ; 0x020fef4e
	.byte 0x05, 0x00
data_ov03_020fef50: ; 0x020fef50
	.byte 0x39, 0x00
data_ov03_020fef52: ; 0x020fef52
	.byte 0x13, 0x00
data_ov03_020fef54: ; 0x020fef54
	.byte 0xff, 0xff
data_ov03_020fef56: ; 0x020fef56
	.byte 0xff, 0xff
data_ov03_020fef58: ; 0x020fef58
	.byte 0x00, 0x00
data_ov03_020fef5a: ; 0x020fef5a
	.byte 0x02, 0x00
data_ov03_020fef5c: ; 0x020fef5c
	.byte 0x05, 0x00
data_ov03_020fef5e: ; 0x020fef5e
	.byte 0x3a, 0x00
data_ov03_020fef60: ; 0x020fef60
	.byte 0xff, 0xff
data_ov03_020fef62: ; 0x020fef62
	.byte 0xff, 0xff
data_ov03_020fef64: ; 0x020fef64
	.byte 0x10, 0x00
data_ov03_020fef66: ; 0x020fef66
	.byte 0x04, 0x00
data_ov03_020fef68: ; 0x020fef68
	.byte 0x2a, 0x00
data_ov03_020fef6a: ; 0x020fef6a
	.byte 0x01, 0x00
data_ov03_020fef6c: ; 0x020fef6c
	.byte 0xff, 0xff
data_ov03_020fef6e: ; 0x020fef6e
	.byte 0xff, 0xff
data_ov03_020fef70: ; 0x020fef70
	.byte 0x0f, 0x00
data_ov03_020fef72: ; 0x020fef72
	.byte 0x16, 0x00
data_ov03_020fef74: ; 0x020fef74
	.byte 0x2b, 0x00
data_ov03_020fef76: ; 0x020fef76
	.byte 0x10, 0x00
data_ov03_020fef78: ; 0x020fef78
	.byte 0xff, 0xff
data_ov03_020fef7a: ; 0x020fef7a
	.byte 0xff, 0xff
data_ov03_020fef7c: ; 0x020fef7c
	.byte 0x25, 0x00
data_ov03_020fef7e: ; 0x020fef7e
	.byte 0x05, 0x00
data_ov03_020fef80: ; 0x020fef80
	.byte 0x2d, 0x00
data_ov03_020fef82: ; 0x020fef82
	.byte 0x38, 0x00
data_ov03_020fef84: ; 0x020fef84
	.byte 0x21, 0x00
data_ov03_020fef86: ; 0x020fef86
	.byte 0x3e, 0x00
data_ov03_020fef88: ; 0x020fef88
	.byte 0x15, 0x00
data_ov03_020fef8a: ; 0x020fef8a
	.byte 0x30, 0x00
data_ov03_020fef8c: ; 0x020fef8c
	.byte 0x24, 0x00
data_ov03_020fef8e: ; 0x020fef8e
	.byte 0x2a, 0x00
data_ov03_020fef90: ; 0x020fef90
	.byte 0x36, 0x00
data_ov03_020fef92: ; 0x020fef92
	.byte 0x35, 0x00
data_ov03_020fef94: ; 0x020fef94
	.byte 0xff, 0xff
data_ov03_020fef96: ; 0x020fef96
	.byte 0xff, 0xff
data_ov03_020fef98: ; 0x020fef98
	.byte 0x33, 0x00
data_ov03_020fef9a: ; 0x020fef9a
	.byte 0x07, 0x00
data_ov03_020fef9c: ; 0x020fef9c
	.byte 0x3a, 0x00
data_ov03_020fef9e: ; 0x020fef9e
	.byte 0x11, 0x00
data_ov03_020fefa0: ; 0x020fefa0
	.byte 0xff, 0xff
data_ov03_020fefa2: ; 0x020fefa2
	.byte 0xff, 0xff
data_ov03_020fefa4: ; 0x020fefa4
	.byte 0x39, 0x00
data_ov03_020fefa6: ; 0x020fefa6
	.byte 0x01, 0x00
data_ov03_020fefa8: ; 0x020fefa8
	.byte 0x3f, 0x00
data_ov03_020fefaa: ; 0x020fefaa
	.byte 0x0f, 0x00
data_ov03_020fefac: ; 0x020fefac
	.byte 0xff, 0xff
data_ov03_020fefae: ; 0x020fefae
	.byte 0xff, 0xff
data_ov03_020fefb0: ; 0x020fefb0
	.byte 0x00, 0x00
data_ov03_020fefb2: ; 0x020fefb2
	.byte 0x08, 0x00
data_ov03_020fefb4: ; 0x020fefb4
	.byte 0x04, 0x00
data_ov03_020fefb6: ; 0x020fefb6
	.byte 0x3b, 0x00
data_ov03_020fefb8: ; 0x020fefb8
	.byte 0xff, 0xff
data_ov03_020fefba: ; 0x020fefba
	.byte 0xff, 0xff
data_ov03_020fefbc: ; 0x020fefbc
	.byte 0x0d, 0x00
data_ov03_020fefbe: ; 0x020fefbe
	.byte 0x15, 0x00
data_ov03_020fefc0: ; 0x020fefc0
	.byte 0x2d, 0x00
data_ov03_020fefc2: ; 0x020fefc2
	.byte 0x0d, 0x00
data_ov03_020fefc4: ; 0x020fefc4
	.byte 0xff, 0xff
data_ov03_020fefc6: ; 0x020fefc6
	.byte 0xff, 0xff
data_ov03_020fefc8: ; 0x020fefc8
	.byte 0x25, 0x00
data_ov03_020fefca: ; 0x020fefca
	.byte 0x02, 0x00
data_ov03_020fefcc: ; 0x020fefcc
	.byte 0x29, 0x00
data_ov03_020fefce: ; 0x020fefce
	.byte 0x38, 0x00
data_ov03_020fefd0: ; 0x020fefd0
	.byte 0x20, 0x00
data_ov03_020fefd2: ; 0x020fefd2
	.byte 0x3d, 0x00
data_ov03_020fefd4: ; 0x020fefd4
	.byte 0x13, 0x00
data_ov03_020fefd6: ; 0x020fefd6
	.byte 0x2e, 0x00
data_ov03_020fefd8: ; 0x020fefd8
	.byte 0x1e, 0x00
data_ov03_020fefda: ; 0x020fefda
	.byte 0x2a, 0x00
data_ov03_020fefdc: ; 0x020fefdc
	.byte 0x32, 0x00
data_ov03_020fefde: ; 0x020fefde
	.byte 0x32, 0x00
data_ov03_020fefe0: ; 0x020fefe0
	.byte 0xff, 0xff
data_ov03_020fefe2: ; 0x020fefe2
	.byte 0xff, 0xff
data_ov03_020fefe4: ; 0x020fefe4
	.byte 0x33, 0x00
data_ov03_020fefe6: ; 0x020fefe6
	.byte 0x05, 0x00
data_ov03_020fefe8: ; 0x020fefe8
	.byte 0x32, 0x00
data_ov03_020fefea: ; 0x020fefea
	.byte 0x0d, 0x00
data_ov03_020fefec: ; 0x020fefec
	.byte 0x3d, 0x00
data_ov03_020fefee: ; 0x020fefee
	.byte 0x0c, 0x00
data_ov03_020feff0: ; 0x020feff0
	.byte 0x3f, 0x00
data_ov03_020feff2: ; 0x020feff2
	.byte 0x06, 0x00
data_ov03_020feff4: ; 0x020feff4
	.byte 0x35, 0x00
data_ov03_020feff6: ; 0x020feff6
	.byte 0x02, 0x00
data_ov03_020feff8: ; 0x020feff8
	.byte 0xff, 0xff
data_ov03_020feffa: ; 0x020feffa
	.byte 0xff, 0xff
data_ov03_020feffc: ; 0x020feffc
	.byte 0x00, 0x00
data_ov03_020feffe: ; 0x020feffe
	.byte 0x15, 0x00
data_ov03_020ff000: ; 0x020ff000
	.byte 0x19, 0x00
data_ov03_020ff002: ; 0x020ff002
	.byte 0x01, 0x00
data_ov03_020ff004: ; 0x020ff004
	.byte 0x0c, 0x00
data_ov03_020ff006: ; 0x020ff006
	.byte 0x26, 0x00
data_ov03_020ff008: ; 0x020ff008
	.byte 0x12, 0x00
data_ov03_020ff00a: ; 0x020ff00a
	.byte 0x3d, 0x00
data_ov03_020ff00c: ; 0x020ff00c
	.byte 0x1f, 0x00
data_ov03_020ff00e: ; 0x020ff00e
	.byte 0x33, 0x00
data_ov03_020ff010: ; 0x020ff010
	.byte 0x28, 0x00
data_ov03_020ff012: ; 0x020ff012
	.byte 0x19, 0x00
data_ov03_020ff014: ; 0x020ff014
	.byte 0x37, 0x00
data_ov03_020ff016: ; 0x020ff016
	.byte 0x20, 0x00
data_ov03_020ff018: ; 0x020ff018
	.byte 0xff, 0xff
data_ov03_020ff01a: ; 0x020ff01a
	.byte 0xff, 0xff
data_ov03_020ff01c: ; 0x020ff01c
	.byte 0x34, 0x00
data_ov03_020ff01e: ; 0x020ff01e
	.byte 0x06, 0x00
data_ov03_020ff020: ; 0x020ff020
	.byte 0x30, 0x00
data_ov03_020ff022: ; 0x020ff022
	.byte 0x10, 0x00
data_ov03_020ff024: ; 0x020ff024
	.byte 0x3b, 0x00
data_ov03_020ff026: ; 0x020ff026
	.byte 0x14, 0x00
data_ov03_020ff028: ; 0x020ff028
	.byte 0x3f, 0x00
data_ov03_020ff02a: ; 0x020ff02a
	.byte 0x0c, 0x00
data_ov03_020ff02c: ; 0x020ff02c
	.byte 0x35, 0x00
data_ov03_020ff02e: ; 0x020ff02e
	.byte 0x05, 0x00
data_ov03_020ff030: ; 0x020ff030
	.byte 0xff, 0xff
data_ov03_020ff032: ; 0x020ff032
	.byte 0xff, 0xff
data_ov03_020ff034: ; 0x020ff034
	.byte 0x11, 0x00
data_ov03_020ff036: ; 0x020ff036
	.byte 0x08, 0x00
data_ov03_020ff038: ; 0x020ff038
	.byte 0x24, 0x00
data_ov03_020ff03a: ; 0x020ff03a
	.byte 0x10, 0x00
data_ov03_020ff03c: ; 0x020ff03c
	.byte 0x23, 0x00
data_ov03_020ff03e: ; 0x020ff03e
	.byte 0x1d, 0x00
data_ov03_020ff040: ; 0x020ff040
	.byte 0x19, 0x00
data_ov03_020ff042: ; 0x020ff042
	.byte 0x1c, 0x00
data_ov03_020ff044: ; 0x020ff044
	.byte 0x28, 0x00
data_ov03_020ff046: ; 0x020ff046
	.byte 0x2f, 0x00
data_ov03_020ff048: ; 0x020ff048
	.byte 0x1f, 0x00
data_ov03_020ff04a: ; 0x020ff04a
	.byte 0x36, 0x00
data_ov03_020ff04c: ; 0x020ff04c
	.byte 0x10, 0x00
data_ov03_020ff04e: ; 0x020ff04e
	.byte 0x32, 0x00
data_ov03_020ff050: ; 0x020ff050
	.byte 0xff, 0xff
data_ov03_020ff052: ; 0x020ff052
	.byte 0xff, 0xff
data_ov03_020ff054: ; 0x020ff054
	.byte 0x00, 0x00
data_ov03_020ff056: ; 0x020ff056
	.byte 0x20, 0x00
data_ov03_020ff058: ; 0x020ff058
	.byte 0x04, 0x00
data_ov03_020ff05a: ; 0x020ff05a
	.byte 0x38, 0x00
data_ov03_020ff05c: ; 0x020ff05c
	.byte 0xff, 0xff
data_ov03_020ff05e: ; 0x020ff05e
	.byte 0xff, 0xff
data_ov03_020ff060: ; 0x020ff060
	.byte 0x30, 0x00
data_ov03_020ff062: ; 0x020ff062
	.byte 0x28, 0x00
data_ov03_020ff064: ; 0x020ff064
	.byte 0x3e, 0x00
data_ov03_020ff066: ; 0x020ff066
	.byte 0x37, 0x00
data_ov03_020ff068: ; 0x020ff068
	.byte 0xff, 0xff
data_ov03_020ff06a: ; 0x020ff06a
	.byte 0xff, 0xff
data_ov03_020ff06c: ; 0x020ff06c
	.byte 0x34, 0x00
data_ov03_020ff06e: ; 0x020ff06e
	.byte 0x0a, 0x00
data_ov03_020ff070: ; 0x020ff070
	.byte 0x33, 0x00
data_ov03_020ff072: ; 0x020ff072
	.byte 0x15, 0x00
data_ov03_020ff074: ; 0x020ff074
	.byte 0x3f, 0x00
data_ov03_020ff076: ; 0x020ff076
	.byte 0x11, 0x00
data_ov03_020ff078: ; 0x020ff078
	.byte 0x32, 0x00
data_ov03_020ff07a: ; 0x020ff07a
	.byte 0x09, 0x00
data_ov03_020ff07c: ; 0x020ff07c
	.byte 0xff, 0xff
data_ov03_020ff07e: ; 0x020ff07e
	.byte 0xff, 0xff
data_ov03_020ff080: ; 0x020ff080
	.byte 0x01, 0x00
data_ov03_020ff082: ; 0x020ff082
	.byte 0x25, 0x00
data_ov03_020ff084: ; 0x020ff084
	.byte 0x06, 0x00
data_ov03_020ff086: ; 0x020ff086
	.byte 0x05, 0x00
data_ov03_020ff088: ; 0x020ff088
	.byte 0x3d, 0x00
data_ov03_020ff08a: ; 0x020ff08a
	.byte 0x3c, 0x00
data_ov03_020ff08c: ; 0x020ff08c
	.byte 0xff, 0xff
data_ov03_020ff08e: ; 0x020ff08e
	.byte 0xff, 0xff
data_ov03_020ff090: ; 0x020ff090
	.byte 0x2b, 0x00
data_ov03_020ff092: ; 0x020ff092
	.byte 0x00, 0x00
data_ov03_020ff094: ; 0x020ff094
	.byte 0x22, 0x00
data_ov03_020ff096: ; 0x020ff096
	.byte 0x0b, 0x00
data_ov03_020ff098: ; 0x020ff098
	.byte 0x2b, 0x00
data_ov03_020ff09a: ; 0x020ff09a
	.byte 0x12, 0x00
data_ov03_020ff09c: ; 0x020ff09c
	.byte 0x36, 0x00
data_ov03_020ff09e: ; 0x020ff09e
	.byte 0x07, 0x00
data_ov03_020ff0a0: ; 0x020ff0a0
	.byte 0x29, 0x00
data_ov03_020ff0a2: ; 0x020ff0a2
	.byte 0x00, 0x00
data_ov03_020ff0a4: ; 0x020ff0a4
	.byte 0xff, 0xff
data_ov03_020ff0a6: ; 0x020ff0a6
	.byte 0xff, 0xff
data_ov03_020ff0a8: ; 0x020ff0a8
	.byte 0x04, 0x00
data_ov03_020ff0aa: ; 0x020ff0aa
	.byte 0x00, 0x00
data_ov03_020ff0ac: ; 0x020ff0ac
	.byte 0x04, 0x00
data_ov03_020ff0ae: ; 0x020ff0ae
	.byte 0x3b, 0x00
data_ov03_020ff0b0: ; 0x020ff0b0
	.byte 0xff, 0xff
data_ov03_020ff0b2: ; 0x020ff0b2
	.byte 0xff, 0xff
data_ov03_020ff0b4: ; 0x020ff0b4
	.byte 0x12, 0x00
data_ov03_020ff0b6: ; 0x020ff0b6
	.byte 0x03, 0x00
data_ov03_020ff0b8: ; 0x020ff0b8
	.byte 0x2d, 0x00
data_ov03_020ff0ba: ; 0x020ff0ba
	.byte 0x02, 0x00
data_ov03_020ff0bc: ; 0x020ff0bc
	.byte 0xff, 0xff
data_ov03_020ff0be: ; 0x020ff0be
	.byte 0xff, 0xff
data_ov03_020ff0c0: ; 0x020ff0c0
	.byte 0x14, 0x00
data_ov03_020ff0c2: ; 0x020ff0c2
	.byte 0x18, 0x00
data_ov03_020ff0c4: ; 0x020ff0c4
	.byte 0x2d, 0x00
data_ov03_020ff0c6: ; 0x020ff0c6
	.byte 0x12, 0x00
data_ov03_020ff0c8: ; 0x020ff0c8
	.byte 0xff, 0xff
data_ov03_020ff0ca: ; 0x020ff0ca
	.byte 0xff, 0xff
data_ov03_020ff0cc: ; 0x020ff0cc
	.byte 0x28, 0x00
data_ov03_020ff0ce: ; 0x020ff0ce
	.byte 0x09, 0x00
data_ov03_020ff0d0: ; 0x020ff0d0
	.byte 0x2d, 0x00
data_ov03_020ff0d2: ; 0x020ff0d2
	.byte 0x36, 0x00
data_ov03_020ff0d4: ; 0x020ff0d4
	.byte 0x23, 0x00
data_ov03_020ff0d6: ; 0x020ff0d6
	.byte 0x3e, 0x00
data_ov03_020ff0d8: ; 0x020ff0d8
	.byte 0x12, 0x00
data_ov03_020ff0da: ; 0x020ff0da
	.byte 0x36, 0x00
data_ov03_020ff0dc: ; 0x020ff0dc
	.byte 0x14, 0x00
data_ov03_020ff0de: ; 0x020ff0de
	.byte 0x2e, 0x00
data_ov03_020ff0e0: ; 0x020ff0e0
	.byte 0x22, 0x00
data_ov03_020ff0e2: ; 0x020ff0e2
	.byte 0x2d, 0x00
data_ov03_020ff0e4: ; 0x020ff0e4
	.byte 0x35, 0x00
data_ov03_020ff0e6: ; 0x020ff0e6
	.byte 0x37, 0x00
data_ov03_020ff0e8: ; 0x020ff0e8
	.byte 0xff, 0xff
data_ov03_020ff0ea: ; 0x020ff0ea
	.byte 0xff, 0xff
data_ov03_020ff0ec: ; 0x020ff0ec
	.byte 0x35, 0x00
data_ov03_020ff0ee: ; 0x020ff0ee
	.byte 0x05, 0x00
data_ov03_020ff0f0: ; 0x020ff0f0
	.byte 0x37, 0x00
data_ov03_020ff0f2: ; 0x020ff0f2
	.byte 0x11, 0x00
data_ov03_020ff0f4: ; 0x020ff0f4
	.byte 0x3f, 0x00
data_ov03_020ff0f6: ; 0x020ff0f6
	.byte 0x0a, 0x00
data_ov03_020ff0f8: ; 0x020ff0f8
	.byte 0x3b, 0x00
data_ov03_020ff0fa: ; 0x020ff0fa
	.byte 0x01, 0x00
data_ov03_020ff0fc: ; 0x020ff0fc
	.byte 0x35, 0x00
data_ov03_020ff0fe: ; 0x020ff0fe
	.byte 0x03, 0x00
data_ov03_020ff100: ; 0x020ff100
	.byte 0xff, 0xff
data_ov03_020ff102: ; 0x020ff102
	.byte 0xff, 0xff
data_ov03_020ff104: ; 0x020ff104
	.byte 0x1d, 0x00
data_ov03_020ff106: ; 0x020ff106
	.byte 0x00, 0x00
data_ov03_020ff108: ; 0x020ff108
	.byte 0x0a, 0x00
data_ov03_020ff10a: ; 0x020ff10a
	.byte 0x09, 0x00
data_ov03_020ff10c: ; 0x020ff10c
	.byte 0x01, 0x00
data_ov03_020ff10e: ; 0x020ff10e
	.byte 0x1e, 0x00
data_ov03_020ff110: ; 0x020ff110
	.byte 0x05, 0x00
data_ov03_020ff112: ; 0x020ff112
	.byte 0x2d, 0x00
data_ov03_020ff114: ; 0x020ff114
	.byte 0x19, 0x00
data_ov03_020ff116: ; 0x020ff116
	.byte 0x3f, 0x00
data_ov03_020ff118: ; 0x020ff118
	.byte 0x33, 0x00
data_ov03_020ff11a: ; 0x020ff11a
	.byte 0x38, 0x00
data_ov03_020ff11c: ; 0x020ff11c
	.byte 0x3d, 0x00
data_ov03_020ff11e: ; 0x020ff11e
	.byte 0x24, 0x00
data_ov03_020ff120: ; 0x020ff120
	.byte 0x2f, 0x00
data_ov03_020ff122: ; 0x020ff122
	.byte 0x09, 0x00
data_ov03_020ff124: ; 0x020ff124
	.byte 0x1d, 0x00
data_ov03_020ff126: ; 0x020ff126
	.byte 0x00, 0x00
data_ov03_020ff128: ; 0x020ff128
	.byte 0x13, 0x00
data_ov03_020ff12a: ; 0x020ff12a
	.byte 0x09, 0x00
data_ov03_020ff12c: ; 0x020ff12c
	.byte 0x1a, 0x00
data_ov03_020ff12e: ; 0x020ff12e
	.byte 0x16, 0x00
data_ov03_020ff130: ; 0x020ff130
	.byte 0x3b, 0x00
data_ov03_020ff132: ; 0x020ff132
	.byte 0x11, 0x00
data_ov03_020ff134: ; 0x020ff134
	.byte 0xff, 0xff
data_ov03_020ff136: ; 0x020ff136
	.byte 0xff, 0xff
data_ov03_020ff138: ; 0x020ff138
	.byte 0x1f, 0x00
data_ov03_020ff13a: ; 0x020ff13a
	.byte 0x0c, 0x00
data_ov03_020ff13c: ; 0x020ff13c
	.byte 0x03, 0x00
data_ov03_020ff13e: ; 0x020ff13e
	.byte 0x14, 0x00
data_ov03_020ff140: ; 0x020ff140
	.byte 0x00, 0x00
data_ov03_020ff142: ; 0x020ff142
	.byte 0x22, 0x00
data_ov03_020ff144: ; 0x020ff144
	.byte 0x0b, 0x00
data_ov03_020ff146: ; 0x020ff146
	.byte 0x2f, 0x00
data_ov03_020ff148: ; 0x020ff148
	.byte 0x2c, 0x00
data_ov03_020ff14a: ; 0x020ff14a
	.byte 0x33, 0x00
data_ov03_020ff14c: ; 0x020ff14c
	.byte 0x3f, 0x00
data_ov03_020ff14e: ; 0x020ff14e
	.byte 0x1f, 0x00
data_ov03_020ff150: ; 0x020ff150
	.byte 0x36, 0x00
data_ov03_020ff152: ; 0x020ff152
	.byte 0x10, 0x00
data_ov03_020ff154: ; 0x020ff154
	.byte 0x1f, 0x00
data_ov03_020ff156: ; 0x020ff156
	.byte 0x0a, 0x00
data_ov03_020ff158: ; 0x020ff158
	.byte 0xff, 0xff
data_ov03_020ff15a: ; 0x020ff15a
	.byte 0xff, 0xff
data_ov03_020ff15c: ; 0x020ff15c
	.byte 0x01, 0x00
data_ov03_020ff15e: ; 0x020ff15e
	.byte 0x04, 0x00
data_ov03_020ff160: ; 0x020ff160
	.byte 0x3f, 0x00
data_ov03_020ff162: ; 0x020ff162
	.byte 0x02, 0x00
data_ov03_020ff164: ; 0x020ff164
	.byte 0x3c, 0x00
data_ov03_020ff166: ; 0x020ff166
	.byte 0x3e, 0x00
data_ov03_020ff168: ; 0x020ff168
	.byte 0x1a, 0x00
data_ov03_020ff16a: ; 0x020ff16a
	.byte 0x1a, 0x00
data_ov03_020ff16c: ; 0x020ff16c
	.byte 0x01, 0x00
data_ov03_020ff16e: ; 0x020ff16e
	.byte 0x3e, 0x00
data_ov03_020ff170: ; 0x020ff170
	.byte 0x01, 0x00
data_ov03_020ff172: ; 0x020ff172
	.byte 0x03, 0x00
data_ov03_020ff174: ; 0x020ff174
	.byte 0xff, 0xff
data_ov03_020ff176: ; 0x020ff176
	.byte 0xff, 0xff
data_ov03_020ff178: ; 0x020ff178
	.byte 0x08, 0x00
data_ov03_020ff17a: ; 0x020ff17a
	.byte 0x02, 0x00
data_ov03_020ff17c: ; 0x020ff17c
	.byte 0x3d, 0x00
data_ov03_020ff17e: ; 0x020ff17e
	.byte 0x00, 0x00
data_ov03_020ff180: ; 0x020ff180
	.byte 0x3d, 0x00
data_ov03_020ff182: ; 0x020ff182
	.byte 0x3d, 0x00
data_ov03_020ff184: ; 0x020ff184
	.byte 0x1c, 0x00
data_ov03_020ff186: ; 0x020ff186
	.byte 0x13, 0x00
data_ov03_020ff188: ; 0x020ff188
	.byte 0x01, 0x00
data_ov03_020ff18a: ; 0x020ff18a
	.byte 0x3e, 0x00
data_ov03_020ff18c: ; 0x020ff18c
	.byte 0xff, 0xff
data_ov03_020ff18e: ; 0x020ff18e
	.byte 0xff, 0xff
data_ov03_020ff190: ; 0x020ff190
	.byte 0x03, 0x00
data_ov03_020ff192: ; 0x020ff192
	.byte 0x05, 0x00
data_ov03_020ff194: ; 0x020ff194
	.byte 0x39, 0x00
data_ov03_020ff196: ; 0x020ff196
	.byte 0x04, 0x00
data_ov03_020ff198: ; 0x020ff198
	.byte 0x3f, 0x00
data_ov03_020ff19a: ; 0x020ff19a
	.byte 0x3a, 0x00
data_ov03_020ff19c: ; 0x020ff19c
	.byte 0x02, 0x00
data_ov03_020ff19e: ; 0x020ff19e
	.byte 0x3a, 0x00
data_ov03_020ff1a0: ; 0x020ff1a0
	.byte 0x02, 0x00
data_ov03_020ff1a2: ; 0x020ff1a2
	.byte 0x07, 0x00
data_ov03_020ff1a4: ; 0x020ff1a4
	.byte 0xff, 0xff
data_ov03_020ff1a6: ; 0x020ff1a6
	.byte 0xff, 0xff
data_ov03_020ff1a8: ; 0x020ff1a8
	.byte 0x00, 0x00
data_ov03_020ff1aa: ; 0x020ff1aa
	.byte 0x00, 0x00
data_ov03_020ff1ac: ; 0x020ff1ac
	.byte 0x3c, 0x00
data_ov03_020ff1ae: ; 0x020ff1ae
	.byte 0x00, 0x00
data_ov03_020ff1b0: ; 0x020ff1b0
	.byte 0x00, 0x00
data_ov03_020ff1b2: ; 0x020ff1b2
	.byte 0x3c, 0x00
data_ov03_020ff1b4: ; 0x020ff1b4
	.byte 0x3c, 0x00
data_ov03_020ff1b6: ; 0x020ff1b6
	.byte 0x3c, 0x00
data_ov03_020ff1b8: ; 0x020ff1b8
	.byte 0x00, 0x00
data_ov03_020ff1ba: ; 0x020ff1ba
	.byte 0x00, 0x00
data_ov03_020ff1bc: ; 0x020ff1bc
	.byte 0xff, 0xff
data_ov03_020ff1be: ; 0x020ff1be
	.byte 0xff, 0xff
data_ov03_020ff1c0: ; 0x020ff1c0
	.byte 0x1e, 0x00
data_ov03_020ff1c2: ; 0x020ff1c2
	.byte 0x00, 0x00
data_ov03_020ff1c4: ; 0x020ff1c4
	.byte 0x0f, 0x00
data_ov03_020ff1c6: ; 0x020ff1c6
	.byte 0x19, 0x00
data_ov03_020ff1c8: ; 0x020ff1c8
	.byte 0x2d, 0x00
data_ov03_020ff1ca: ; 0x020ff1ca
	.byte 0x19, 0x00
data_ov03_020ff1cc: ; 0x020ff1cc
	.byte 0x1e, 0x00
data_ov03_020ff1ce: ; 0x020ff1ce
	.byte 0x32, 0x00
data_ov03_020ff1d0: ; 0x020ff1d0
	.byte 0x0f, 0x00
data_ov03_020ff1d2: ; 0x020ff1d2
	.byte 0x19, 0x00
data_ov03_020ff1d4: ; 0x020ff1d4
	.byte 0x00, 0x00
data_ov03_020ff1d6: ; 0x020ff1d6
	.byte 0x32, 0x00
data_ov03_020ff1d8: ; 0x020ff1d8
	.byte 0x3c, 0x00
data_ov03_020ff1da: ; 0x020ff1da
	.byte 0x32, 0x00
data_ov03_020ff1dc: ; 0x020ff1dc
	.byte 0x1e, 0x00
data_ov03_020ff1de: ; 0x020ff1de
	.byte 0x00, 0x00
data_ov03_020ff1e0: ; 0x020ff1e0
	.byte 0xff, 0xff
data_ov03_020ff1e2: ; 0x020ff1e2
	.byte 0xff, 0xff
data_ov03_020ff1e4: ; 0x020ff1e4
	.byte 0x1e, 0x00
data_ov03_020ff1e6: ; 0x020ff1e6
	.byte 0x00, 0x00
data_ov03_020ff1e8: ; 0x020ff1e8
	.byte 0x0f, 0x00
data_ov03_020ff1ea: ; 0x020ff1ea
	.byte 0x19, 0x00
data_ov03_020ff1ec: ; 0x020ff1ec
	.byte 0x2d, 0x00
data_ov03_020ff1ee: ; 0x020ff1ee
	.byte 0x19, 0x00
data_ov03_020ff1f0: ; 0x020ff1f0
	.byte 0x1e, 0x00
data_ov03_020ff1f2: ; 0x020ff1f2
	.byte 0x32, 0x00
data_ov03_020ff1f4: ; 0x020ff1f4
	.byte 0x00, 0x00
data_ov03_020ff1f6: ; 0x020ff1f6
	.byte 0x32, 0x00
data_ov03_020ff1f8: ; 0x020ff1f8
	.byte 0x0f, 0x00
data_ov03_020ff1fa: ; 0x020ff1fa
	.byte 0x19, 0x00
data_ov03_020ff1fc: ; 0x020ff1fc
	.byte 0x1e, 0x00
data_ov03_020ff1fe: ; 0x020ff1fe
	.byte 0x32, 0x00
data_ov03_020ff200: ; 0x020ff200
	.byte 0x3c, 0x00
data_ov03_020ff202: ; 0x020ff202
	.byte 0x32, 0x00
data_ov03_020ff204: ; 0x020ff204
	.byte 0x1e, 0x00
data_ov03_020ff206: ; 0x020ff206
	.byte 0x00, 0x00
data_ov03_020ff208: ; 0x020ff208
	.byte 0xff, 0xff
data_ov03_020ff20a: ; 0x020ff20a
	.byte 0xff, 0xff
data_ov03_020ff20c: ; 0x020ff20c
	.byte 0x1e, 0x00
data_ov03_020ff20e: ; 0x020ff20e
	.byte 0x00, 0x00
data_ov03_020ff210: ; 0x020ff210
	.byte 0x0f, 0x00
data_ov03_020ff212: ; 0x020ff212
	.byte 0x19, 0x00
data_ov03_020ff214: ; 0x020ff214
	.byte 0x2d, 0x00
data_ov03_020ff216: ; 0x020ff216
	.byte 0x19, 0x00
data_ov03_020ff218: ; 0x020ff218
	.byte 0x3c, 0x00
data_ov03_020ff21a: ; 0x020ff21a
	.byte 0x32, 0x00
data_ov03_020ff21c: ; 0x020ff21c
	.byte 0x1e, 0x00
data_ov03_020ff21e: ; 0x020ff21e
	.byte 0x32, 0x00
data_ov03_020ff220: ; 0x020ff220
	.byte 0x0f, 0x00
data_ov03_020ff222: ; 0x020ff222
	.byte 0x19, 0x00
data_ov03_020ff224: ; 0x020ff224
	.byte 0x00, 0x00
data_ov03_020ff226: ; 0x020ff226
	.byte 0x32, 0x00
data_ov03_020ff228: ; 0x020ff228
	.byte 0x1e, 0x00
data_ov03_020ff22a: ; 0x020ff22a
	.byte 0x32, 0x00
data_ov03_020ff22c: ; 0x020ff22c
	.byte 0x2d, 0x00
data_ov03_020ff22e: ; 0x020ff22e
	.byte 0x19, 0x00
data_ov03_020ff230: ; 0x020ff230
	.byte 0x1e, 0x00
data_ov03_020ff232: ; 0x020ff232
	.byte 0x00, 0x00
data_ov03_020ff234: ; 0x020ff234
	.byte 0xff, 0xff
data_ov03_020ff236: ; 0x020ff236
	.byte 0xff, 0xff
data_ov03_020ff238: ; 0x020ff238
	.byte 0x1e, 0x00
data_ov03_020ff23a: ; 0x020ff23a
	.byte 0x00, 0x00
data_ov03_020ff23c: ; 0x020ff23c
	.byte 0x0f, 0x00
data_ov03_020ff23e: ; 0x020ff23e
	.byte 0x19, 0x00
data_ov03_020ff240: ; 0x020ff240
	.byte 0x2d, 0x00
data_ov03_020ff242: ; 0x020ff242
	.byte 0x19, 0x00
data_ov03_020ff244: ; 0x020ff244
	.byte 0x3c, 0x00
data_ov03_020ff246: ; 0x020ff246
	.byte 0x32, 0x00
data_ov03_020ff248: ; 0x020ff248
	.byte 0x00, 0x00
data_ov03_020ff24a: ; 0x020ff24a
	.byte 0x32, 0x00
data_ov03_020ff24c: ; 0x020ff24c
	.byte 0x0f, 0x00
data_ov03_020ff24e: ; 0x020ff24e
	.byte 0x19, 0x00
data_ov03_020ff250: ; 0x020ff250
	.byte 0x1e, 0x00
data_ov03_020ff252: ; 0x020ff252
	.byte 0x32, 0x00
data_ov03_020ff254: ; 0x020ff254
	.byte 0x2d, 0x00
data_ov03_020ff256: ; 0x020ff256
	.byte 0x19, 0x00
data_ov03_020ff258: ; 0x020ff258
	.byte 0x1e, 0x00
data_ov03_020ff25a: ; 0x020ff25a
	.byte 0x00, 0x00
data_ov03_020ff25c: ; 0x020ff25c
	.byte 0xff, 0xff
data_ov03_020ff25e: ; 0x020ff25e
	.byte 0xff, 0xff
data_ov03_020ff260: ; 0x020ff260
	.byte 0x1e, 0x00
data_ov03_020ff262: ; 0x020ff262
	.byte 0x00, 0x00
data_ov03_020ff264: ; 0x020ff264
	.byte 0x00, 0x00
data_ov03_020ff266: ; 0x020ff266
	.byte 0x32, 0x00
data_ov03_020ff268: ; 0x020ff268
	.byte 0x1e, 0x00
data_ov03_020ff26a: ; 0x020ff26a
	.byte 0x32, 0x00
data_ov03_020ff26c: ; 0x020ff26c
	.byte 0x0f, 0x00
data_ov03_020ff26e: ; 0x020ff26e
	.byte 0x19, 0x00
data_ov03_020ff270: ; 0x020ff270
	.byte 0x2d, 0x00
data_ov03_020ff272: ; 0x020ff272
	.byte 0x19, 0x00
data_ov03_020ff274: ; 0x020ff274
	.byte 0x1e, 0x00
data_ov03_020ff276: ; 0x020ff276
	.byte 0x32, 0x00
data_ov03_020ff278: ; 0x020ff278
	.byte 0x3c, 0x00
data_ov03_020ff27a: ; 0x020ff27a
	.byte 0x32, 0x00
data_ov03_020ff27c: ; 0x020ff27c
	.byte 0x1e, 0x00
data_ov03_020ff27e: ; 0x020ff27e
	.byte 0x00, 0x00
data_ov03_020ff280: ; 0x020ff280
	.byte 0xff, 0xff
data_ov03_020ff282: ; 0x020ff282
	.byte 0xff, 0xff
data_ov03_020ff284: ; 0x020ff284
	.byte 0x1e, 0x00
data_ov03_020ff286: ; 0x020ff286
	.byte 0x00, 0x00
data_ov03_020ff288: ; 0x020ff288
	.byte 0x00, 0x00
data_ov03_020ff28a: ; 0x020ff28a
	.byte 0x32, 0x00
data_ov03_020ff28c: ; 0x020ff28c
	.byte 0x1e, 0x00
data_ov03_020ff28e: ; 0x020ff28e
	.byte 0x32, 0x00
data_ov03_020ff290: ; 0x020ff290
	.byte 0x0f, 0x00
data_ov03_020ff292: ; 0x020ff292
	.byte 0x19, 0x00
data_ov03_020ff294: ; 0x020ff294
	.byte 0x2d, 0x00
data_ov03_020ff296: ; 0x020ff296
	.byte 0x19, 0x00
data_ov03_020ff298: ; 0x020ff298
	.byte 0x3c, 0x00
data_ov03_020ff29a: ; 0x020ff29a
	.byte 0x32, 0x00
data_ov03_020ff29c: ; 0x020ff29c
	.byte 0x1e, 0x00
data_ov03_020ff29e: ; 0x020ff29e
	.byte 0x32, 0x00
data_ov03_020ff2a0: ; 0x020ff2a0
	.byte 0x2d, 0x00
data_ov03_020ff2a2: ; 0x020ff2a2
	.byte 0x19, 0x00
data_ov03_020ff2a4: ; 0x020ff2a4
	.byte 0x1e, 0x00
data_ov03_020ff2a6: ; 0x020ff2a6
	.byte 0x00, 0x00
data_ov03_020ff2a8: ; 0x020ff2a8
	.byte 0xff, 0xff
data_ov03_020ff2aa: ; 0x020ff2aa
	.byte 0xff, 0xff
data_ov03_020ff2ac: ; 0x020ff2ac
	.byte 0x1e, 0x00
data_ov03_020ff2ae: ; 0x020ff2ae
	.byte 0x00, 0x00
data_ov03_020ff2b0: ; 0x020ff2b0
	.byte 0x00, 0x00
data_ov03_020ff2b2: ; 0x020ff2b2
	.byte 0x32, 0x00
data_ov03_020ff2b4: ; 0x020ff2b4
	.byte 0x3c, 0x00
data_ov03_020ff2b6: ; 0x020ff2b6
	.byte 0x32, 0x00
data_ov03_020ff2b8: ; 0x020ff2b8
	.byte 0x2d, 0x00
data_ov03_020ff2ba: ; 0x020ff2ba
	.byte 0x19, 0x00
data_ov03_020ff2bc: ; 0x020ff2bc
	.byte 0x1e, 0x00
data_ov03_020ff2be: ; 0x020ff2be
	.byte 0x32, 0x00
data_ov03_020ff2c0: ; 0x020ff2c0
	.byte 0x0f, 0x00
data_ov03_020ff2c2: ; 0x020ff2c2
	.byte 0x19, 0x00
data_ov03_020ff2c4: ; 0x020ff2c4
	.byte 0x2d, 0x00
data_ov03_020ff2c6: ; 0x020ff2c6
	.byte 0x19, 0x00
data_ov03_020ff2c8: ; 0x020ff2c8
	.byte 0x1e, 0x00
data_ov03_020ff2ca: ; 0x020ff2ca
	.byte 0x00, 0x00
data_ov03_020ff2cc: ; 0x020ff2cc
	.byte 0xff, 0xff
data_ov03_020ff2ce: ; 0x020ff2ce
	.byte 0xff, 0xff
data_ov03_020ff2d0: ; 0x020ff2d0
	.byte 0x1e, 0x00
data_ov03_020ff2d2: ; 0x020ff2d2
	.byte 0x00, 0x00
data_ov03_020ff2d4: ; 0x020ff2d4
	.byte 0x00, 0x00
data_ov03_020ff2d6: ; 0x020ff2d6
	.byte 0x32, 0x00
data_ov03_020ff2d8: ; 0x020ff2d8
	.byte 0x3c, 0x00
data_ov03_020ff2da: ; 0x020ff2da
	.byte 0x32, 0x00
data_ov03_020ff2dc: ; 0x020ff2dc
	.byte 0x2d, 0x00
data_ov03_020ff2de: ; 0x020ff2de
	.byte 0x19, 0x00
data_ov03_020ff2e0: ; 0x020ff2e0
	.byte 0x0f, 0x00
data_ov03_020ff2e2: ; 0x020ff2e2
	.byte 0x19, 0x00
data_ov03_020ff2e4: ; 0x020ff2e4
	.byte 0x1e, 0x00
data_ov03_020ff2e6: ; 0x020ff2e6
	.byte 0x32, 0x00
data_ov03_020ff2e8: ; 0x020ff2e8
	.byte 0x2d, 0x00
data_ov03_020ff2ea: ; 0x020ff2ea
	.byte 0x19, 0x00
data_ov03_020ff2ec: ; 0x020ff2ec
	.byte 0x1e, 0x00
data_ov03_020ff2ee: ; 0x020ff2ee
	.byte 0x00, 0x00
data_ov03_020ff2f0: ; 0x020ff2f0
	.byte 0xff, 0xff
data_ov03_020ff2f2: ; 0x020ff2f2
	.byte 0xff, 0xff
data_ov03_020ff2f4: ; 0x020ff2f4
	.byte 0x1e, 0x00
data_ov03_020ff2f6: ; 0x020ff2f6
	.byte 0x00, 0x00
data_ov03_020ff2f8: ; 0x020ff2f8
	.byte 0x0f, 0x00
data_ov03_020ff2fa: ; 0x020ff2fa
	.byte 0x19, 0x00
data_ov03_020ff2fc: ; 0x020ff2fc
	.byte 0x1e, 0x00
data_ov03_020ff2fe: ; 0x020ff2fe
	.byte 0x32, 0x00
data_ov03_020ff300: ; 0x020ff300
	.byte 0x00, 0x00
data_ov03_020ff302: ; 0x020ff302
	.byte 0x32, 0x00
data_ov03_020ff304: ; 0x020ff304
	.byte 0x0f, 0x00
data_ov03_020ff306: ; 0x020ff306
	.byte 0x19, 0x00
data_ov03_020ff308: ; 0x020ff308
	.byte 0x2d, 0x00
data_ov03_020ff30a: ; 0x020ff30a
	.byte 0x19, 0x00
data_ov03_020ff30c: ; 0x020ff30c
	.byte 0x1e, 0x00
data_ov03_020ff30e: ; 0x020ff30e
	.byte 0x32, 0x00
data_ov03_020ff310: ; 0x020ff310
	.byte 0x3c, 0x00
data_ov03_020ff312: ; 0x020ff312
	.byte 0x32, 0x00
data_ov03_020ff314: ; 0x020ff314
	.byte 0x1e, 0x00
data_ov03_020ff316: ; 0x020ff316
	.byte 0x00, 0x00
data_ov03_020ff318: ; 0x020ff318
	.byte 0xff, 0xff
data_ov03_020ff31a: ; 0x020ff31a
	.byte 0xff, 0xff
data_ov03_020ff31c: ; 0x020ff31c
	.byte 0x1e, 0x00
data_ov03_020ff31e: ; 0x020ff31e
	.byte 0x00, 0x00
data_ov03_020ff320: ; 0x020ff320
	.byte 0x0f, 0x00
data_ov03_020ff322: ; 0x020ff322
	.byte 0x19, 0x00
data_ov03_020ff324: ; 0x020ff324
	.byte 0x1e, 0x00
data_ov03_020ff326: ; 0x020ff326
	.byte 0x32, 0x00
data_ov03_020ff328: ; 0x020ff328
	.byte 0x00, 0x00
data_ov03_020ff32a: ; 0x020ff32a
	.byte 0x32, 0x00
data_ov03_020ff32c: ; 0x020ff32c
	.byte 0x0f, 0x00
data_ov03_020ff32e: ; 0x020ff32e
	.byte 0x19, 0x00
data_ov03_020ff330: ; 0x020ff330
	.byte 0x2d, 0x00
data_ov03_020ff332: ; 0x020ff332
	.byte 0x19, 0x00
data_ov03_020ff334: ; 0x020ff334
	.byte 0x3c, 0x00
data_ov03_020ff336: ; 0x020ff336
	.byte 0x32, 0x00
data_ov03_020ff338: ; 0x020ff338
	.byte 0x1e, 0x00
data_ov03_020ff33a: ; 0x020ff33a
	.byte 0x32, 0x00
data_ov03_020ff33c: ; 0x020ff33c
	.byte 0x2d, 0x00
data_ov03_020ff33e: ; 0x020ff33e
	.byte 0x19, 0x00
data_ov03_020ff340: ; 0x020ff340
	.byte 0x1e, 0x00
data_ov03_020ff342: ; 0x020ff342
	.byte 0x00, 0x00
data_ov03_020ff344: ; 0x020ff344
	.byte 0xff, 0xff
data_ov03_020ff346: ; 0x020ff346
	.byte 0xff, 0xff
data_ov03_020ff348: ; 0x020ff348
	.byte 0x1e, 0x00
data_ov03_020ff34a: ; 0x020ff34a
	.byte 0x00, 0x00
data_ov03_020ff34c: ; 0x020ff34c
	.byte 0x0f, 0x00
data_ov03_020ff34e: ; 0x020ff34e
	.byte 0x19, 0x00
data_ov03_020ff350: ; 0x020ff350
	.byte 0x1e, 0x00
data_ov03_020ff352: ; 0x020ff352
	.byte 0x32, 0x00
data_ov03_020ff354: ; 0x020ff354
	.byte 0x2d, 0x00
data_ov03_020ff356: ; 0x020ff356
	.byte 0x19, 0x00
data_ov03_020ff358: ; 0x020ff358
	.byte 0x0f, 0x00
data_ov03_020ff35a: ; 0x020ff35a
	.byte 0x19, 0x00
data_ov03_020ff35c: ; 0x020ff35c
	.byte 0x00, 0x00
data_ov03_020ff35e: ; 0x020ff35e
	.byte 0x32, 0x00
data_ov03_020ff360: ; 0x020ff360
	.byte 0x3c, 0x00
data_ov03_020ff362: ; 0x020ff362
	.byte 0x32, 0x00
data_ov03_020ff364: ; 0x020ff364
	.byte 0x1e, 0x00
data_ov03_020ff366: ; 0x020ff366
	.byte 0x00, 0x00
data_ov03_020ff368: ; 0x020ff368
	.byte 0xff, 0xff
data_ov03_020ff36a: ; 0x020ff36a
	.byte 0xff, 0xff
data_ov03_020ff36c: ; 0x020ff36c
	.byte 0x1e, 0x00
data_ov03_020ff36e: ; 0x020ff36e
	.byte 0x00, 0x00
data_ov03_020ff370: ; 0x020ff370
	.byte 0x0f, 0x00
data_ov03_020ff372: ; 0x020ff372
	.byte 0x19, 0x00
data_ov03_020ff374: ; 0x020ff374
	.byte 0x1e, 0x00
data_ov03_020ff376: ; 0x020ff376
	.byte 0x32, 0x00
data_ov03_020ff378: ; 0x020ff378
	.byte 0x2d, 0x00
data_ov03_020ff37a: ; 0x020ff37a
	.byte 0x19, 0x00
data_ov03_020ff37c: ; 0x020ff37c
	.byte 0x3c, 0x00
data_ov03_020ff37e: ; 0x020ff37e
	.byte 0x32, 0x00
data_ov03_020ff380: ; 0x020ff380
	.byte 0x00, 0x00
data_ov03_020ff382: ; 0x020ff382
	.byte 0x32, 0x00
data_ov03_020ff384: ; 0x020ff384
	.byte 0x0f, 0x00
data_ov03_020ff386: ; 0x020ff386
	.byte 0x19, 0x00
data_ov03_020ff388: ; 0x020ff388
	.byte 0x2d, 0x00
data_ov03_020ff38a: ; 0x020ff38a
	.byte 0x19, 0x00
data_ov03_020ff38c: ; 0x020ff38c
	.byte 0x1e, 0x00
data_ov03_020ff38e: ; 0x020ff38e
	.byte 0x00, 0x00
data_ov03_020ff390: ; 0x020ff390
	.byte 0xff, 0xff
data_ov03_020ff392: ; 0x020ff392
	.byte 0xff, 0xff
data_ov03_020ff394: ; 0x020ff394
	.byte 0x1e, 0x00
data_ov03_020ff396: ; 0x020ff396
	.byte 0x00, 0x00
data_ov03_020ff398: ; 0x020ff398
	.byte 0x00, 0x00
data_ov03_020ff39a: ; 0x020ff39a
	.byte 0x32, 0x00
data_ov03_020ff39c: ; 0x020ff39c
	.byte 0x1e, 0x00
data_ov03_020ff39e: ; 0x020ff39e
	.byte 0x32, 0x00
data_ov03_020ff3a0: ; 0x020ff3a0
	.byte 0x2d, 0x00
data_ov03_020ff3a2: ; 0x020ff3a2
	.byte 0x19, 0x00
data_ov03_020ff3a4: ; 0x020ff3a4
	.byte 0x0f, 0x00
data_ov03_020ff3a6: ; 0x020ff3a6
	.byte 0x19, 0x00
data_ov03_020ff3a8: ; 0x020ff3a8
	.byte 0x1e, 0x00
data_ov03_020ff3aa: ; 0x020ff3aa
	.byte 0x32, 0x00
data_ov03_020ff3ac: ; 0x020ff3ac
	.byte 0x3c, 0x00
data_ov03_020ff3ae: ; 0x020ff3ae
	.byte 0x32, 0x00
data_ov03_020ff3b0: ; 0x020ff3b0
	.byte 0x1e, 0x00
data_ov03_020ff3b2: ; 0x020ff3b2
	.byte 0x00, 0x00
data_ov03_020ff3b4: ; 0x020ff3b4
	.byte 0xff, 0xff
data_ov03_020ff3b6: ; 0x020ff3b6
	.byte 0xff, 0xff
data_ov03_020ff3b8: ; 0x020ff3b8
	.byte 0x1e, 0x00
data_ov03_020ff3ba: ; 0x020ff3ba
	.byte 0x00, 0x00
data_ov03_020ff3bc: ; 0x020ff3bc
	.byte 0x00, 0x00
data_ov03_020ff3be: ; 0x020ff3be
	.byte 0x32, 0x00
data_ov03_020ff3c0: ; 0x020ff3c0
	.byte 0x1e, 0x00
data_ov03_020ff3c2: ; 0x020ff3c2
	.byte 0x32, 0x00
data_ov03_020ff3c4: ; 0x020ff3c4
	.byte 0x2d, 0x00
data_ov03_020ff3c6: ; 0x020ff3c6
	.byte 0x19, 0x00
data_ov03_020ff3c8: ; 0x020ff3c8
	.byte 0x3c, 0x00
data_ov03_020ff3ca: ; 0x020ff3ca
	.byte 0x32, 0x00
data_ov03_020ff3cc: ; 0x020ff3cc
	.byte 0x1e, 0x00
data_ov03_020ff3ce: ; 0x020ff3ce
	.byte 0x32, 0x00
data_ov03_020ff3d0: ; 0x020ff3d0
	.byte 0x0f, 0x00
data_ov03_020ff3d2: ; 0x020ff3d2
	.byte 0x19, 0x00
data_ov03_020ff3d4: ; 0x020ff3d4
	.byte 0x2d, 0x00
data_ov03_020ff3d6: ; 0x020ff3d6
	.byte 0x19, 0x00
data_ov03_020ff3d8: ; 0x020ff3d8
	.byte 0x1e, 0x00
data_ov03_020ff3da: ; 0x020ff3da
	.byte 0x00, 0x00
data_ov03_020ff3dc: ; 0x020ff3dc
	.byte 0xff, 0xff
data_ov03_020ff3de: ; 0x020ff3de
	.byte 0xff, 0xff
data_ov03_020ff3e0: ; 0x020ff3e0
	.byte 0x00, 0x00
data_ov03_020ff3e2: ; 0x020ff3e2
	.byte 0x00, 0x00
data_ov03_020ff3e4: ; 0x020ff3e4
	.byte 0x3c, 0x00
data_ov03_020ff3e6: ; 0x020ff3e6
	.byte 0x00, 0x00
data_ov03_020ff3e8: ; 0x020ff3e8
	.byte 0x00, 0x00
data_ov03_020ff3ea: ; 0x020ff3ea
	.byte 0x3c, 0x00
data_ov03_020ff3ec: ; 0x020ff3ec
	.byte 0x3c, 0x00
data_ov03_020ff3ee: ; 0x020ff3ee
	.byte 0x3c, 0x00
data_ov03_020ff3f0: ; 0x020ff3f0
	.byte 0x00, 0x00
data_ov03_020ff3f2: ; 0x020ff3f2
	.byte 0x00, 0x00
data_ov03_020ff3f4: ; 0x020ff3f4
	.byte 0xff, 0xff
data_ov03_020ff3f6: ; 0x020ff3f6
	.byte 0xff, 0xff
data_ov03_020ff3f8: ; 0x020ff3f8
	.byte 0x00, 0x00
data_ov03_020ff3fa: ; 0x020ff3fa
	.byte 0x00, 0x00
data_ov03_020ff3fc: ; 0x020ff3fc
	.byte 0x3c, 0x00
data_ov03_020ff3fe: ; 0x020ff3fe
	.byte 0x3c, 0x00
data_ov03_020ff400: ; 0x020ff400
	.byte 0x00, 0x00
data_ov03_020ff402: ; 0x020ff402
	.byte 0x3c, 0x00
data_ov03_020ff404: ; 0x020ff404
	.byte 0x3c, 0x00
data_ov03_020ff406: ; 0x020ff406
	.byte 0x00, 0x00
data_ov03_020ff408: ; 0x020ff408
	.byte 0x00, 0x00
data_ov03_020ff40a: ; 0x020ff40a
	.byte 0x00, 0x00
data_ov03_020ff40c: ; 0x020ff40c
	.byte 0xff, 0xff
data_ov03_020ff40e: ; 0x020ff40e
	.byte 0xff, 0xff
data_ov03_020ff410: ; 0x020ff410
	.byte 0x3c, 0x00
data_ov03_020ff412: ; 0x020ff412
	.byte 0x00, 0x00
data_ov03_020ff414: ; 0x020ff414
	.byte 0x00, 0x00
data_ov03_020ff416: ; 0x020ff416
	.byte 0x00, 0x00
data_ov03_020ff418: ; 0x020ff418
	.byte 0x3c, 0x00
data_ov03_020ff41a: ; 0x020ff41a
	.byte 0x3c, 0x00
data_ov03_020ff41c: ; 0x020ff41c
	.byte 0x00, 0x00
data_ov03_020ff41e: ; 0x020ff41e
	.byte 0x3c, 0x00
data_ov03_020ff420: ; 0x020ff420
	.byte 0x3c, 0x00
data_ov03_020ff422: ; 0x020ff422
	.byte 0x00, 0x00
data_ov03_020ff424: ; 0x020ff424
	.byte 0xff, 0xff
data_ov03_020ff426: ; 0x020ff426
	.byte 0xff, 0xff
data_ov03_020ff428: ; 0x020ff428
	.byte 0x3c, 0x00
data_ov03_020ff42a: ; 0x020ff42a
	.byte 0x00, 0x00
data_ov03_020ff42c: ; 0x020ff42c
	.byte 0x00, 0x00
data_ov03_020ff42e: ; 0x020ff42e
	.byte 0x3c, 0x00
data_ov03_020ff430: ; 0x020ff430
	.byte 0x3c, 0x00
data_ov03_020ff432: ; 0x020ff432
	.byte 0x3c, 0x00
data_ov03_020ff434: ; 0x020ff434
	.byte 0x00, 0x00
data_ov03_020ff436: ; 0x020ff436
	.byte 0x00, 0x00
data_ov03_020ff438: ; 0x020ff438
	.byte 0x3c, 0x00
data_ov03_020ff43a: ; 0x020ff43a
	.byte 0x00, 0x00
data_ov03_020ff43c: ; 0x020ff43c
	.byte 0xff, 0xff
data_ov03_020ff43e: ; 0x020ff43e
	.byte 0xff, 0xff
data_ov03_020ff440: ; 0x020ff440
	.byte 0x00, 0x00
data_ov03_020ff442: ; 0x020ff442
	.byte 0x00, 0x00
data_ov03_020ff444: ; 0x020ff444
	.byte 0x3c, 0x00
data_ov03_020ff446: ; 0x020ff446
	.byte 0x3c, 0x00
data_ov03_020ff448: ; 0x020ff448
	.byte 0x00, 0x00
data_ov03_020ff44a: ; 0x020ff44a
	.byte 0x3c, 0x00
data_ov03_020ff44c: ; 0x020ff44c
	.byte 0x3c, 0x00
data_ov03_020ff44e: ; 0x020ff44e
	.byte 0x00, 0x00
data_ov03_020ff450: ; 0x020ff450
	.byte 0xff, 0xff
data_ov03_020ff452: ; 0x020ff452
	.byte 0xff, 0xff
data_ov03_020ff454: ; 0x020ff454
	.byte 0x3c, 0x00
data_ov03_020ff456: ; 0x020ff456
	.byte 0x00, 0x00
data_ov03_020ff458: ; 0x020ff458
	.byte 0x00, 0x00
data_ov03_020ff45a: ; 0x020ff45a
	.byte 0x3c, 0x00
data_ov03_020ff45c: ; 0x020ff45c
	.byte 0x3c, 0x00
data_ov03_020ff45e: ; 0x020ff45e
	.byte 0x3c, 0x00
data_ov03_020ff460: ; 0x020ff460
	.byte 0x00, 0x00
data_ov03_020ff462: ; 0x020ff462
	.byte 0x00, 0x00
data_ov03_020ff464: ; 0x020ff464
	.byte 0xff, 0xff
data_ov03_020ff466: ; 0x020ff466
	.byte 0xff, 0xff
data_ov03_020ff468: ; 0x020ff468
	.byte 0x1e, 0x00
data_ov03_020ff46a: ; 0x020ff46a
	.byte 0x00, 0x00
data_ov03_020ff46c: ; 0x020ff46c
	.byte 0x00, 0x00
data_ov03_020ff46e: ; 0x020ff46e
	.byte 0x0f, 0x00
data_ov03_020ff470: ; 0x020ff470
	.byte 0x1e, 0x00
data_ov03_020ff472: ; 0x020ff472
	.byte 0x1e, 0x00
data_ov03_020ff474: ; 0x020ff474
	.byte 0x3c, 0x00
data_ov03_020ff476: ; 0x020ff476
	.byte 0x0f, 0x00
data_ov03_020ff478: ; 0x020ff478
	.byte 0x1e, 0x00
data_ov03_020ff47a: ; 0x020ff47a
	.byte 0x00, 0x00
data_ov03_020ff47c: ; 0x020ff47c
	.byte 0x1e, 0x00
data_ov03_020ff47e: ; 0x020ff47e
	.byte 0x3c, 0x00
data_ov03_020ff480: ; 0x020ff480
	.byte 0xff, 0xff
data_ov03_020ff482: ; 0x020ff482
	.byte 0xff, 0xff
data_ov03_020ff484: ; 0x020ff484
	.byte 0x1e, 0x00
data_ov03_020ff486: ; 0x020ff486
	.byte 0x3c, 0x00
data_ov03_020ff488: ; 0x020ff488
	.byte 0x3c, 0x00
data_ov03_020ff48a: ; 0x020ff48a
	.byte 0x00, 0x00
data_ov03_020ff48c: ; 0x020ff48c
	.byte 0x3c, 0x00
data_ov03_020ff48e: ; 0x020ff48e
	.byte 0x0f, 0x00
data_ov03_020ff490: ; 0x020ff490
	.byte 0x1e, 0x00
data_ov03_020ff492: ; 0x020ff492
	.byte 0x1e, 0x00
data_ov03_020ff494: ; 0x020ff494
	.byte 0x00, 0x00
data_ov03_020ff496: ; 0x020ff496
	.byte 0x0f, 0x00
data_ov03_020ff498: ; 0x020ff498
	.byte 0x1e, 0x00
data_ov03_020ff49a: ; 0x020ff49a
	.byte 0x00, 0x00
data_ov03_020ff49c: ; 0x020ff49c
	.byte 0xff, 0xff
data_ov03_020ff49e: ; 0x020ff49e
	.byte 0xff, 0xff
data_ov03_020ff4a0: ; 0x020ff4a0
	.byte 0x00, 0x00
data_ov03_020ff4a2: ; 0x020ff4a2
	.byte 0x00, 0x00
data_ov03_020ff4a4: ; 0x020ff4a4
	.byte 0x00, 0x00
data_ov03_020ff4a6: ; 0x020ff4a6
	.byte 0x3c, 0x00
data_ov03_020ff4a8: ; 0x020ff4a8
	.byte 0x3c, 0x00
data_ov03_020ff4aa: ; 0x020ff4aa
	.byte 0x00, 0x00
data_ov03_020ff4ac: ; 0x020ff4ac
	.byte 0x3c, 0x00
data_ov03_020ff4ae: ; 0x020ff4ae
	.byte 0x3c, 0x00
data_ov03_020ff4b0: ; 0x020ff4b0
	.byte 0xff, 0xff
data_ov03_020ff4b2: ; 0x020ff4b2
	.byte 0xff, 0xff
data_ov03_020ff4b4: ; 0x020ff4b4
	.byte 0x3c, 0x00
data_ov03_020ff4b6: ; 0x020ff4b6
	.byte 0x3c, 0x00
data_ov03_020ff4b8: ; 0x020ff4b8
	.byte 0x3c, 0x00
data_ov03_020ff4ba: ; 0x020ff4ba
	.byte 0x00, 0x00
data_ov03_020ff4bc: ; 0x020ff4bc
	.byte 0x00, 0x00
data_ov03_020ff4be: ; 0x020ff4be
	.byte 0x3c, 0x00
data_ov03_020ff4c0: ; 0x020ff4c0
	.byte 0x00, 0x00
data_ov03_020ff4c2: ; 0x020ff4c2
	.byte 0x00, 0x00
data_ov03_020ff4c4: ; 0x020ff4c4
	.byte 0xff, 0xff
data_ov03_020ff4c6: ; 0x020ff4c6
	.byte 0xff, 0xff
data_ov03_020ff4c8: ; 0x020ff4c8
	.byte 0x00, 0x00
data_ov03_020ff4ca: ; 0x020ff4ca
	.byte 0x3c, 0x00
data_ov03_020ff4cc: ; 0x020ff4cc
	.byte 0x1e, 0x00
data_ov03_020ff4ce: ; 0x020ff4ce
	.byte 0x3c, 0x00
data_ov03_020ff4d0: ; 0x020ff4d0
	.byte 0x00, 0x00
data_ov03_020ff4d2: ; 0x020ff4d2
	.byte 0x00, 0x00
data_ov03_020ff4d4: ; 0x020ff4d4
	.byte 0x3c, 0x00
data_ov03_020ff4d6: ; 0x020ff4d6
	.byte 0x00, 0x00
data_ov03_020ff4d8: ; 0x020ff4d8
	.byte 0x1e, 0x00
data_ov03_020ff4da: ; 0x020ff4da
	.byte 0x3c, 0x00
data_ov03_020ff4dc: ; 0x020ff4dc
	.byte 0x3c, 0x00
data_ov03_020ff4de: ; 0x020ff4de
	.byte 0x3c, 0x00
data_ov03_020ff4e0: ; 0x020ff4e0
	.byte 0xff, 0xff
data_ov03_020ff4e2: ; 0x020ff4e2
	.byte 0xff, 0xff
data_ov03_020ff4e4: ; 0x020ff4e4
	.byte 0x3c, 0x00
data_ov03_020ff4e6: ; 0x020ff4e6
	.byte 0x3c, 0x00
data_ov03_020ff4e8: ; 0x020ff4e8
	.byte 0x1e, 0x00
data_ov03_020ff4ea: ; 0x020ff4ea
	.byte 0x3c, 0x00
data_ov03_020ff4ec: ; 0x020ff4ec
	.byte 0x3c, 0x00
data_ov03_020ff4ee: ; 0x020ff4ee
	.byte 0x00, 0x00
data_ov03_020ff4f0: ; 0x020ff4f0
	.byte 0x00, 0x00
data_ov03_020ff4f2: ; 0x020ff4f2
	.byte 0x00, 0x00
data_ov03_020ff4f4: ; 0x020ff4f4
	.byte 0x1e, 0x00
data_ov03_020ff4f6: ; 0x020ff4f6
	.byte 0x3c, 0x00
data_ov03_020ff4f8: ; 0x020ff4f8
	.byte 0x00, 0x00
data_ov03_020ff4fa: ; 0x020ff4fa
	.byte 0x3c, 0x00
data_ov03_020ff4fc: ; 0x020ff4fc
	.byte 0xff, 0xff
data_ov03_020ff4fe: ; 0x020ff4fe
	.byte 0xff, 0xff
data_ov03_020ff500: ; 0x020ff500
	.byte 0x00, 0x00
data_ov03_020ff502: ; 0x020ff502
	.byte 0x3c, 0x00
data_ov03_020ff504: ; 0x020ff504
	.byte 0x14, 0x00
data_ov03_020ff506: ; 0x020ff506
	.byte 0x3c, 0x00
data_ov03_020ff508: ; 0x020ff508
	.byte 0x14, 0x00
data_ov03_020ff50a: ; 0x020ff50a
	.byte 0x00, 0x00
data_ov03_020ff50c: ; 0x020ff50c
	.byte 0x28, 0x00
data_ov03_020ff50e: ; 0x020ff50e
	.byte 0x00, 0x00
data_ov03_020ff510: ; 0x020ff510
	.byte 0x28, 0x00
data_ov03_020ff512: ; 0x020ff512
	.byte 0x3c, 0x00
data_ov03_020ff514: ; 0x020ff514
	.byte 0x3c, 0x00
data_ov03_020ff516: ; 0x020ff516
	.byte 0x3c, 0x00
data_ov03_020ff518: ; 0x020ff518
	.byte 0xff, 0xff
data_ov03_020ff51a: ; 0x020ff51a
	.byte 0xff, 0xff
data_ov03_020ff51c: ; 0x020ff51c
	.byte 0x3c, 0x00
data_ov03_020ff51e: ; 0x020ff51e
	.byte 0x3c, 0x00
data_ov03_020ff520: ; 0x020ff520
	.byte 0x28, 0x00
data_ov03_020ff522: ; 0x020ff522
	.byte 0x3c, 0x00
data_ov03_020ff524: ; 0x020ff524
	.byte 0x28, 0x00
data_ov03_020ff526: ; 0x020ff526
	.byte 0x00, 0x00
data_ov03_020ff528: ; 0x020ff528
	.byte 0x14, 0x00
data_ov03_020ff52a: ; 0x020ff52a
	.byte 0x00, 0x00
data_ov03_020ff52c: ; 0x020ff52c
	.byte 0x14, 0x00
data_ov03_020ff52e: ; 0x020ff52e
	.byte 0x3c, 0x00
data_ov03_020ff530: ; 0x020ff530
	.byte 0x00, 0x00
data_ov03_020ff532: ; 0x020ff532
	.byte 0x3c, 0x00
data_ov03_020ff534: ; 0x020ff534
	.byte 0xff, 0xff
data_ov03_020ff536: ; 0x020ff536
	.byte 0xff, 0xff
data_ov03_020ff538: ; 0x020ff538
	.byte 0x00, 0x00
data_ov03_020ff53a: ; 0x020ff53a
	.byte 0x00, 0x00
data_ov03_020ff53c: ; 0x020ff53c
	.byte 0x0f, 0x00
data_ov03_020ff53e: ; 0x020ff53e
	.byte 0x3c, 0x00
data_ov03_020ff540: ; 0x020ff540
	.byte 0x1e, 0x00
data_ov03_020ff542: ; 0x020ff542
	.byte 0x00, 0x00
data_ov03_020ff544: ; 0x020ff544
	.byte 0x2d, 0x00
data_ov03_020ff546: ; 0x020ff546
	.byte 0x3c, 0x00
data_ov03_020ff548: ; 0x020ff548
	.byte 0x3c, 0x00
data_ov03_020ff54a: ; 0x020ff54a
	.byte 0x00, 0x00
data_ov03_020ff54c: ; 0x020ff54c
	.byte 0x00, 0x00
data_ov03_020ff54e: ; 0x020ff54e
	.byte 0x00, 0x00
data_ov03_020ff550: ; 0x020ff550
	.byte 0xff, 0xff
data_ov03_020ff552: ; 0x020ff552
	.byte 0xff, 0xff
data_ov03_020ff554: ; 0x020ff554
	.byte 0x00, 0x00
data_ov03_020ff556: ; 0x020ff556
	.byte 0x00, 0x00
data_ov03_020ff558: ; 0x020ff558
	.byte 0x3c, 0x00
data_ov03_020ff55a: ; 0x020ff55a
	.byte 0x00, 0x00
data_ov03_020ff55c: ; 0x020ff55c
	.byte 0x2d, 0x00
data_ov03_020ff55e: ; 0x020ff55e
	.byte 0x3c, 0x00
data_ov03_020ff560: ; 0x020ff560
	.byte 0x1e, 0x00
data_ov03_020ff562: ; 0x020ff562
	.byte 0x00, 0x00
data_ov03_020ff564: ; 0x020ff564
	.byte 0x0f, 0x00
data_ov03_020ff566: ; 0x020ff566
	.byte 0x3c, 0x00
data_ov03_020ff568: ; 0x020ff568
	.byte 0x00, 0x00
data_ov03_020ff56a: ; 0x020ff56a
	.byte 0x00, 0x00
data_ov03_020ff56c: ; 0x020ff56c
	.byte 0xff, 0xff
data_ov03_020ff56e: ; 0x020ff56e
	.byte 0xff, 0xff
data_ov03_020ff570: ; 0x020ff570
	.byte 0x00, 0x00
data_ov03_020ff572: ; 0x020ff572
	.byte 0x00, 0x00
data_ov03_020ff574: ; 0x020ff574
	.byte 0x3c, 0x00
data_ov03_020ff576: ; 0x020ff576
	.byte 0x00, 0x00
data_ov03_020ff578: ; 0x020ff578
	.byte 0x3c, 0x00
data_ov03_020ff57a: ; 0x020ff57a
	.byte 0x3c, 0x00
data_ov03_020ff57c: ; 0x020ff57c
	.byte 0x00, 0x00
data_ov03_020ff57e: ; 0x020ff57e
	.byte 0x3c, 0x00
data_ov03_020ff580: ; 0x020ff580
	.byte 0x3c, 0x00
data_ov03_020ff582: ; 0x020ff582
	.byte 0x00, 0x00
data_ov03_020ff584: ; 0x020ff584
	.byte 0xff, 0xff
data_ov03_020ff586: ; 0x020ff586
	.byte 0xff, 0xff
data_ov03_020ff588: ; 0x020ff588
	.byte 0x3c, 0x00
data_ov03_020ff58a: ; 0x020ff58a
	.byte 0x00, 0x00
data_ov03_020ff58c: ; 0x020ff58c
	.byte 0x00, 0x00
data_ov03_020ff58e: ; 0x020ff58e
	.byte 0x3c, 0x00
data_ov03_020ff590: ; 0x020ff590
	.byte 0x3c, 0x00
data_ov03_020ff592: ; 0x020ff592
	.byte 0x3c, 0x00
data_ov03_020ff594: ; 0x020ff594
	.byte 0x3c, 0x00
data_ov03_020ff596: ; 0x020ff596
	.byte 0x00, 0x00
data_ov03_020ff598: ; 0x020ff598
	.byte 0x00, 0x00
data_ov03_020ff59a: ; 0x020ff59a
	.byte 0x00, 0x00
data_ov03_020ff59c: ; 0x020ff59c
	.byte 0xff, 0xff
data_ov03_020ff59e: ; 0x020ff59e
	.byte 0xff, 0xff
data_ov03_020ff5a0: ; 0x020ff5a0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_020ff5a4: ; 0x020ff5a4
	.byte 0x3c, 0x96, 0x18, 0x02
data_ov03_020ff5a8: ; 0x020ff5a8
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff5ac: ; 0x020ff5ac
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff5b0: ; 0x020ff5b0
	.byte 0x50, 0x4e, 0x54, 0x4d
data_ov03_020ff5b4: ; 0x020ff5b4
	.byte 0x18, 0x00, 0x00, 0x00
data_ov03_020ff5b8: ; 0x020ff5b8
	.byte 0x00
data_ov03_020ff5b9: ; 0x020ff5b9
	.byte 0x01
data_ov03_020ff5ba: ; 0x020ff5ba
	.byte 0x01
data_ov03_020ff5bb: ; 0x020ff5bb
	.byte 0x01
data_ov03_020ff5bc: ; 0x020ff5bc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_020ff5c0: ; 0x020ff5c0
	.byte 0x6d, 0xc4, 0x11, 0x02, 0xff, 0xff, 0xff, 0xff, 0x01, 0x00, 0x00, 0x00, 0x4e, 0x54, 0x4d, 0x53
	.byte 0x19, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x57, 0x19, 0x02
	.byte 0x1b, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x4c, 0x4c, 0x55, 0x4e, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8c, 0x48, 0x17, 0x02, 0x19, 0x00, 0x00, 0x00
	.byte 0xff, 0xff, 0xff, 0xff, 0x4c, 0x4c, 0x55, 0x4e, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x00, 0x00
data_ov03_020ff614: ; 0x020ff614
	.byte 0x0a, 0x00
data_ov03_020ff616: ; 0x020ff616
	.byte 0x00, 0x10
data_ov03_020ff618: ; 0x020ff618
	.byte 0x14, 0x00
data_ov03_020ff61a: ; 0x020ff61a
	.byte 0x0f, 0x00
data_ov03_020ff61c: ; 0x020ff61c
	.byte 0x00
data_ov03_020ff61d: ; 0x020ff61d
	.byte 0x08
data_ov03_020ff61e: ; 0x020ff61e
	.byte 0x00
data_ov03_020ff61f: ; 0x020ff61f
	.byte 0x00
data_ov03_020ff620: ; 0x020ff620
	.byte 0x30
data_ov03_020ff621: ; 0x020ff621
	.byte 0x00
data_ov03_020ff622: ; 0x020ff622
	.byte 0x00
data_ov03_020ff623: ; 0x020ff623
	.byte 0x00
data_ov03_020ff624: ; 0x020ff624
	.byte 0xd3
data_ov03_020ff625: ; 0x020ff625
	.byte 0x0f
data_ov03_020ff626: ; 0x020ff626
	.byte 0xee
data_ov03_020ff627: ; 0x020ff627
	.byte 0x00
data_ov03_020ff628: ; 0x020ff628
	.byte 0x0c
data_ov03_020ff629: ; 0x020ff629
	.byte 0x00
data_ov03_020ff62a: ; 0x020ff62a
	.byte 0x00
data_ov03_020ff62b: ; 0x020ff62b
	.byte 0x00
data_ov03_020ff62c: ; 0x020ff62c
	.byte 0x0b
data_ov03_020ff62d: ; 0x020ff62d
	.byte 0x00
data_ov03_020ff62e: ; 0x020ff62e
	.byte 0x00
data_ov03_020ff62f: ; 0x020ff62f
	.byte 0x00
data_ov03_020ff630: ; 0x020ff630
	.byte 0x08
data_ov03_020ff631: ; 0x020ff631
	.byte 0x00
data_ov03_020ff632: ; 0x020ff632
	.byte 0x00
data_ov03_020ff633: ; 0x020ff633
	.byte 0x00
data_ov03_020ff634: ; 0x020ff634
	.byte 0x03
data_ov03_020ff635: ; 0x020ff635
	.byte 0x0b
data_ov03_020ff636: ; 0x020ff636
	.byte 0x0a
data_ov03_020ff637: ; 0x020ff637
	.byte 0x02
data_ov03_020ff638: ; 0x020ff638
	.byte 0x06
data_ov03_020ff639: ; 0x020ff639
	.byte 0x09
data_ov03_020ff63a: ; 0x020ff63a
	.byte 0x01
data_ov03_020ff63b: ; 0x020ff63b
	.byte 0x05
data_ov03_020ff63c: ; 0x020ff63c
	.byte 0x08
data_ov03_020ff63d: ; 0x020ff63d
	.byte 0x00
data_ov03_020ff63e: ; 0x020ff63e
	.byte 0x04
data_ov03_020ff63f: ; 0x020ff63f
	.byte 0x07
data_ov03_020ff640: ; 0x020ff640
	.byte 0x20
data_ov03_020ff641: ; 0x020ff641
	.byte 0x10
data_ov03_020ff642: ; 0x020ff642
	.byte 0x00
data_ov03_020ff643: ; 0x020ff643
	.byte 0x00
data_ov03_020ff644: ; 0x020ff644
	.byte 0x3c
data_ov03_020ff645: ; 0x020ff645
	.byte 0x3c
data_ov03_020ff646: ; 0x020ff646
	.byte 0x78
data_ov03_020ff647: ; 0x020ff647
	.byte 0x3c
data_ov03_020ff648: ; 0x020ff648
	.byte 0x35, 0x01
data_ov03_020ff64a: ; 0x020ff64a
	.byte 0x07, 0x00
data_ov03_020ff64c: ; 0x020ff64c
	.byte 0xdf, 0x00
data_ov03_020ff64e: ; 0x020ff64e
	.byte 0x09, 0x00
data_ov03_020ff650: ; 0x020ff650
	.byte 0x00, 0x00
data_ov03_020ff652: ; 0x020ff652
	.byte 0x0a, 0x00
data_ov03_020ff654: ; 0x020ff654
	.byte 0x61, 0x00
data_ov03_020ff656: ; 0x020ff656
	.byte 0x08, 0x00
data_ov03_020ff658: ; 0x020ff658
	.byte 0xdd, 0x00
data_ov03_020ff65a: ; 0x020ff65a
	.byte 0x0b, 0x00
data_ov03_020ff65c: ; 0x020ff65c
	.byte 0x4d, 0x01
data_ov03_020ff65e: ; 0x020ff65e
	.byte 0x0c, 0x00
data_ov03_020ff660: ; 0x020ff660
	.byte 0x00, 0x00
data_ov03_020ff662: ; 0x020ff662
	.byte 0x0d, 0x00
data_ov03_020ff664: ; 0x020ff664
	.byte 0x06, 0x00
data_ov03_020ff666: ; 0x020ff666
	.byte 0x1a, 0x00
data_ov03_020ff668: ; 0x020ff668
	.byte 0xa1, 0x00
data_ov03_020ff66a: ; 0x020ff66a
	.byte 0x0f, 0x00
data_ov03_020ff66c: ; 0x020ff66c
	.byte 0x2d, 0x00
data_ov03_020ff66e: ; 0x020ff66e
	.byte 0x1b, 0x00
data_ov03_020ff670: ; 0x020ff670
	.byte 0x8e, 0x00
data_ov03_020ff672: ; 0x020ff672
	.byte 0x10, 0x00
data_ov03_020ff674: ; 0x020ff674
	.byte 0x8f, 0x00
data_ov03_020ff676: ; 0x020ff676
	.byte 0x10, 0x00
data_ov03_020ff678: ; 0x020ff678
	.byte 0x35, 0x00
data_ov03_020ff67a: ; 0x020ff67a
	.byte 0x1c, 0x00
data_ov03_020ff67c: ; 0x020ff67c
	.byte 0x30, 0x00
data_ov03_020ff67e: ; 0x020ff67e
	.byte 0x1d, 0x00
data_ov03_020ff680: ; 0x020ff680
	.byte 0x2d, 0x00
data_ov03_020ff682: ; 0x020ff682
	.byte 0x1f, 0x00
data_ov03_020ff684: ; 0x020ff684
	.byte 0x2e, 0x00
data_ov03_020ff686: ; 0x020ff686
	.byte 0x1f, 0x00
data_ov03_020ff688: ; 0x020ff688
	.byte 0x39, 0x00
data_ov03_020ff68a: ; 0x020ff68a
	.byte 0x1e, 0x00
data_ov03_020ff68c: ; 0x020ff68c
	.byte 0x2f, 0x00
data_ov03_020ff68e: ; 0x020ff68e
	.byte 0x1f, 0x00
data_ov03_020ff690: ; 0x020ff690
	.byte 0x30, 0x00
data_ov03_020ff692: ; 0x020ff692
	.byte 0x1f, 0x00
data_ov03_020ff694: ; 0x020ff694
	.byte 0x31, 0x00
data_ov03_020ff696: ; 0x020ff696
	.byte 0x1f, 0x00
data_ov03_020ff698: ; 0x020ff698
	.byte 0x32, 0x00
data_ov03_020ff69a: ; 0x020ff69a
	.byte 0x1f, 0x00
data_ov03_020ff69c: ; 0x020ff69c
	.byte 0x33, 0x00
data_ov03_020ff69e: ; 0x020ff69e
	.byte 0x1f, 0x00
data_ov03_020ff6a0: ; 0x020ff6a0
	.byte 0x34, 0x00
data_ov03_020ff6a2: ; 0x020ff6a2
	.byte 0x1f, 0x00
data_ov03_020ff6a4: ; 0x020ff6a4
	.byte 0x35, 0x00
data_ov03_020ff6a6: ; 0x020ff6a6
	.byte 0x1f, 0x00
data_ov03_020ff6a8: ; 0x020ff6a8
	.byte 0x36, 0x00
data_ov03_020ff6aa: ; 0x020ff6aa
	.byte 0x1f, 0x00
data_ov03_020ff6ac: ; 0x020ff6ac
	.byte 0x37, 0x00
data_ov03_020ff6ae: ; 0x020ff6ae
	.byte 0x1f, 0x00
data_ov03_020ff6b0: ; 0x020ff6b0
	.byte 0x38, 0x00
data_ov03_020ff6b2: ; 0x020ff6b2
	.byte 0x1f, 0x00
data_ov03_020ff6b4: ; 0x020ff6b4
	.byte 0x39, 0x00
data_ov03_020ff6b6: ; 0x020ff6b6
	.byte 0x1f, 0x00
data_ov03_020ff6b8: ; 0x020ff6b8
	.byte 0x3a, 0x00
data_ov03_020ff6ba: ; 0x020ff6ba
	.byte 0x1f, 0x00
data_ov03_020ff6bc: ; 0x020ff6bc
	.byte 0x3b, 0x00
data_ov03_020ff6be: ; 0x020ff6be
	.byte 0x1f, 0x00
data_ov03_020ff6c0: ; 0x020ff6c0
	.byte 0x45, 0x00
data_ov03_020ff6c2: ; 0x020ff6c2
	.byte 0x21, 0x00
data_ov03_020ff6c4: ; 0x020ff6c4
	.byte 0xe0, 0x00
data_ov03_020ff6c6: ; 0x020ff6c6
	.byte 0x09, 0x00
data_ov03_020ff6c8: ; 0x020ff6c8
	.byte 0x01, 0x00
data_ov03_020ff6ca: ; 0x020ff6ca
	.byte 0x0a, 0x00
data_ov03_020ff6cc: ; 0x020ff6cc
	.byte 0x62, 0x00
data_ov03_020ff6ce: ; 0x020ff6ce
	.byte 0x08, 0x00
data_ov03_020ff6d0: ; 0x020ff6d0
	.byte 0xde, 0x00
data_ov03_020ff6d2: ; 0x020ff6d2
	.byte 0x0b, 0x00
data_ov03_020ff6d4: ; 0x020ff6d4
	.byte 0x4e, 0x01
data_ov03_020ff6d6: ; 0x020ff6d6
	.byte 0x0c, 0x00
data_ov03_020ff6d8: ; 0x020ff6d8
	.byte 0x03, 0x00
data_ov03_020ff6da: ; 0x020ff6da
	.byte 0x15, 0x00
data_ov03_020ff6dc: ; 0x020ff6dc
	.byte 0x04, 0x00
data_ov03_020ff6de: ; 0x020ff6de
	.byte 0x15, 0x00
data_ov03_020ff6e0: ; 0x020ff6e0
	.byte 0x05, 0x00
data_ov03_020ff6e2: ; 0x020ff6e2
	.byte 0x15, 0x00
data_ov03_020ff6e4: ; 0x020ff6e4
	.byte 0x06, 0x00
data_ov03_020ff6e6: ; 0x020ff6e6
	.byte 0x15, 0x00
data_ov03_020ff6e8: ; 0x020ff6e8
	.byte 0x36, 0x01
data_ov03_020ff6ea: ; 0x020ff6ea
	.byte 0x07, 0x00
data_ov03_020ff6ec: ; 0x020ff6ec
	.byte 0x5d, 0x00
data_ov03_020ff6ee: ; 0x020ff6ee
	.byte 0x0e, 0x00
data_ov03_020ff6f0: ; 0x020ff6f0
	.byte 0x2e, 0x00
data_ov03_020ff6f2: ; 0x020ff6f2
	.byte 0x1b, 0x00
data_ov03_020ff6f4: ; 0x020ff6f4
	.byte 0x0b, 0x01
data_ov03_020ff6f6: ; 0x020ff6f6
	.byte 0x00, 0x00
data_ov03_020ff6f8: ; 0x020ff6f8
	.byte 0x0c, 0x01
data_ov03_020ff6fa: ; 0x020ff6fa
	.byte 0x00, 0x00
data_ov03_020ff6fc: ; 0x020ff6fc
	.byte 0x0d, 0x01
data_ov03_020ff6fe: ; 0x020ff6fe
	.byte 0x00, 0x00
data_ov03_020ff700: ; 0x020ff700
	.byte 0x0e, 0x01
data_ov03_020ff702: ; 0x020ff702
	.byte 0x00, 0x00
data_ov03_020ff704: ; 0x020ff704
	.byte 0x0f, 0x01
data_ov03_020ff706: ; 0x020ff706
	.byte 0x00, 0x00
data_ov03_020ff708: ; 0x020ff708
	.byte 0x10, 0x01
data_ov03_020ff70a: ; 0x020ff70a
	.byte 0x00, 0x00
data_ov03_020ff70c: ; 0x020ff70c
	.byte 0x11, 0x01
data_ov03_020ff70e: ; 0x020ff70e
	.byte 0x00, 0x00
data_ov03_020ff710: ; 0x020ff710
	.byte 0x20, 0x10
data_ov03_020ff712: ; 0x020ff712
	.byte 0x20, 0x00
data_ov03_020ff714: ; 0x020ff714
	.byte 0x0c, 0x0e, 0xff, 0x00
data_ov03_020ff718: ; 0x020ff718
	.byte 0x00, 0x11, 0xff, 0x00
data_ov03_020ff71c: ; 0x020ff71c
	.byte 0x19, 0x32, 0xff, 0x00
data_ov03_020ff720: ; 0x020ff720
	.byte 0x1d, 0x33, 0xff, 0x00
data_ov03_020ff724: ; 0x020ff724
	.byte 0x00, 0x18, 0xff, 0x00
data_ov03_020ff728: ; 0x020ff728
	.byte 0x00, 0x29, 0x2a, 0xff
data_ov03_020ff72c: ; 0x020ff72c
	.byte 0x00, 0x28, 0x33, 0xff
data_ov03_020ff730: ; 0x020ff730
	.byte 0x00, 0x15, 0x03, 0x05
data_ov03_020ff734: ; 0x020ff734
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff738: ; 0x020ff738
	.byte 0x00, 0x01, 0x03, 0x04
data_ov03_020ff73c: ; 0x020ff73c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff740: ; 0x020ff740
	.byte 0x00, 0x11, 0x03, 0x06
data_ov03_020ff744: ; 0x020ff744
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff748: ; 0x020ff748
	.byte 0x00, 0x1a, 0x03, 0x05
data_ov03_020ff74c: ; 0x020ff74c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff750: ; 0x020ff750
	.byte 0x00, 0x11, 0x03, 0x05
data_ov03_020ff754: ; 0x020ff754
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff758: ; 0x020ff758
	.byte 0x00, 0x1d, 0x33, 0x2a
data_ov03_020ff75c: ; 0x020ff75c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff760: ; 0x020ff760
	.byte 0x00, 0x11, 0x03, 0x07
data_ov03_020ff764: ; 0x020ff764
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff768: ; 0x020ff768
	.byte 0x00, 0x01, 0x03, 0x07
data_ov03_020ff76c: ; 0x020ff76c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff770: ; 0x020ff770
	.byte 0x00, 0x14, 0x03, 0x07
data_ov03_020ff774: ; 0x020ff774
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff778: ; 0x020ff778
	.byte 0x00, 0x02, 0x03, 0x05
data_ov03_020ff77c: ; 0x020ff77c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff780: ; 0x020ff780
	.byte 0x00, 0x14, 0x03, 0x04
data_ov03_020ff784: ; 0x020ff784
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff788: ; 0x020ff788
	.byte 0x00, 0x02, 0x03, 0x08
data_ov03_020ff78c: ; 0x020ff78c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff790: ; 0x020ff790
	.byte 0x01, 0x1c, 0x03, 0x04
data_ov03_020ff794: ; 0x020ff794
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff798: ; 0x020ff798
	.byte 0x00, 0x02, 0x03, 0x07
data_ov03_020ff79c: ; 0x020ff79c
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7a0: ; 0x020ff7a0
	.byte 0x0c, 0x32, 0x03, 0x0d
data_ov03_020ff7a4: ; 0x020ff7a4
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7a8: ; 0x020ff7a8
	.byte 0x02, 0x1a, 0x03, 0x07
data_ov03_020ff7ac: ; 0x020ff7ac
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7b0: ; 0x020ff7b0
	.byte 0x00, 0x1a, 0x03, 0x05
data_ov03_020ff7b4: ; 0x020ff7b4
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7b8: ; 0x020ff7b8
	.byte 0x00, 0x01, 0x03, 0x05
data_ov03_020ff7bc: ; 0x020ff7bc
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7c0: ; 0x020ff7c0
	.byte 0x00, 0x01, 0x03, 0x06
data_ov03_020ff7c4: ; 0x020ff7c4
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7c8: ; 0x020ff7c8
	.byte 0x00, 0x14, 0x03, 0x05
data_ov03_020ff7cc: ; 0x020ff7cc
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7d0: ; 0x020ff7d0
	.byte 0x00, 0x11, 0x03, 0x04
data_ov03_020ff7d4: ; 0x020ff7d4
	.byte 0xff, 0x00, 0x00, 0x00
data_ov03_020ff7d8: ; 0x020ff7d8
	.byte 0x00, 0x01, 0x03, 0x05
data_ov03_020ff7dc: ; 0x020ff7dc
	.byte 0x0b, 0xff, 0x00, 0x00
data_ov03_020ff7e0: ; 0x020ff7e0
	.byte 0x00, 0x01, 0x03, 0x04
data_ov03_020ff7e4: ; 0x020ff7e4
	.byte 0x0b, 0xff, 0x00, 0x00
data_ov03_020ff7e8: ; 0x020ff7e8
	.byte 0x00, 0x01, 0x16, 0x03
data_ov03_020ff7ec: ; 0x020ff7ec
	.byte 0x05, 0xff, 0x00, 0x00
data_ov03_020ff7f0: ; 0x020ff7f0
	.byte 0x00, 0x14, 0x10, 0x03
data_ov03_020ff7f4: ; 0x020ff7f4
	.byte 0x07, 0xff, 0x00, 0x00
data_ov03_020ff7f8: ; 0x020ff7f8
	.byte 0x00, 0x01, 0x0f, 0x03
data_ov03_020ff7fc: ; 0x020ff7fc
	.byte 0x04, 0xff, 0x00, 0x00
data_ov03_020ff800: ; 0x020ff800
	.byte 0x00, 0x01, 0x1b, 0x03
data_ov03_020ff804: ; 0x020ff804
	.byte 0x07, 0xff, 0x00, 0x00
data_ov03_020ff808: ; 0x020ff808
	.byte 0x00, 0x01, 0x03, 0x06
data_ov03_020ff80c: ; 0x020ff80c
	.byte 0x0b, 0xff, 0x00, 0x00
data_ov03_020ff810: ; 0x020ff810
	.byte 0x00, 0x02, 0x03, 0x07
data_ov03_020ff814: ; 0x020ff814
	.byte 0x0b, 0xff, 0x00, 0x00
data_ov03_020ff818: ; 0x020ff818
	.byte 0x00, 0x01, 0x17, 0x03
data_ov03_020ff81c: ; 0x020ff81c
	.byte 0x04, 0xff, 0x00, 0x00
data_ov03_020ff820: ; 0x020ff820
	.byte 0x00, 0x14, 0x10, 0x03
data_ov03_020ff824: ; 0x020ff824
	.byte 0x04, 0xff, 0x00, 0x00
data_ov03_020ff828: ; 0x020ff828
	.byte 0x00, 0x01, 0x09, 0x0a
data_ov03_020ff82c: ; 0x020ff82c
	.byte 0x33, 0xff, 0x00, 0x00
data_ov03_020ff830: ; 0x020ff830
	.byte 0x00, 0x02, 0x09, 0x0a
data_ov03_020ff834: ; 0x020ff834
	.byte 0x33, 0xff, 0x00, 0x00
data_ov03_020ff838: ; 0x020ff838
	.byte 0x0c, 0x32, 0x03, 0x07
data_ov03_020ff83c: ; 0x020ff83c
	.byte 0x0d, 0xff, 0x00, 0x00
data_ov03_020ff840: ; 0x020ff840
	.byte 0x0c, 0x32, 0x03, 0x04
data_ov03_020ff844: ; 0x020ff844
	.byte 0x0d, 0xff, 0x00, 0x00
data_ov03_020ff848: ; 0x020ff848
	.byte 0x00, 0x01, 0x1c, 0x03
data_ov03_020ff84c: ; 0x020ff84c
	.byte 0x04, 0xff, 0x00, 0x00
data_ov03_020ff850: ; 0x020ff850
	.byte 0x00, 0x14, 0x10, 0x03
data_ov03_020ff854: ; 0x020ff854
	.byte 0x05, 0xff, 0x00, 0x00
data_ov03_020ff858: ; 0x020ff858
	.byte 0x00, 0x14, 0x10, 0x09
data_ov03_020ff85c: ; 0x020ff85c
	.byte 0x0a, 0xff, 0x00, 0x00
data_ov03_020ff860: ; 0x020ff860
	.byte 0x00, 0x01, 0x0f, 0x03
data_ov03_020ff864: ; 0x020ff864
	.byte 0x04, 0x0b, 0xff, 0x00
data_ov03_020ff868: ; 0x020ff868
	.byte 0x0c, 0x32, 0x09, 0x0a
data_ov03_020ff86c: ; 0x020ff86c
	.byte 0x33, 0x0d, 0xff, 0x00
data_ov03_020ff870: ; 0x020ff870
	.byte 0xb8, 0xf7, 0x0f, 0x02
data_ov03_020ff874: ; 0x020ff874
	.byte 0x38, 0xf7, 0x0f, 0x02
data_ov03_020ff878: ; 0x020ff878
	.byte 0xf8, 0xf7, 0x0f, 0x02
data_ov03_020ff87c: ; 0x020ff87c
	.byte 0xc0, 0xf7, 0x0f, 0x02
data_ov03_020ff880: ; 0x020ff880
	.byte 0x98, 0xf7, 0x0f, 0x02
data_ov03_020ff884: ; 0x020ff884
	.byte 0x10, 0xf8, 0x0f, 0x02
data_ov03_020ff888: ; 0x020ff888
	.byte 0x88, 0xf7, 0x0f, 0x02
data_ov03_020ff88c: ; 0x020ff88c
	.byte 0x68, 0xf7, 0x0f, 0x02
data_ov03_020ff890: ; 0x020ff890
	.byte 0x78, 0xf7, 0x0f, 0x02
data_ov03_020ff894: ; 0x020ff894
	.byte 0x28, 0xf8, 0x0f, 0x02
data_ov03_020ff898: ; 0x020ff898
	.byte 0x30, 0xf8, 0x0f, 0x02
data_ov03_020ff89c: ; 0x020ff89c
	.byte 0xa0, 0xf7, 0x0f, 0x02
data_ov03_020ff8a0: ; 0x020ff8a0
	.byte 0x38, 0xf8, 0x0f, 0x02
data_ov03_020ff8a4: ; 0x020ff8a4
	.byte 0x40, 0xf8, 0x0f, 0x02
data_ov03_020ff8a8: ; 0x020ff8a8
	.byte 0x68, 0xf8, 0x0f, 0x02
data_ov03_020ff8ac: ; 0x020ff8ac
	.byte 0x14, 0xf7, 0x0f, 0x02
data_ov03_020ff8b0: ; 0x020ff8b0
	.byte 0x48, 0xf8, 0x0f, 0x02
data_ov03_020ff8b4: ; 0x020ff8b4
	.byte 0x24, 0xf7, 0x0f, 0x02
data_ov03_020ff8b8: ; 0x020ff8b8
	.byte 0x1c, 0xf7, 0x0f, 0x02
data_ov03_020ff8bc: ; 0x020ff8bc
	.byte 0x20, 0xf7, 0x0f, 0x02
data_ov03_020ff8c0: ; 0x020ff8c0
	.byte 0x58, 0xf7, 0x0f, 0x02
data_ov03_020ff8c4: ; 0x020ff8c4
	.byte 0x28, 0xf7, 0x0f, 0x02
data_ov03_020ff8c8: ; 0x020ff8c8
	.byte 0x2c, 0xf7, 0x0f, 0x02
data_ov03_020ff8cc: ; 0x020ff8cc
	.byte 0xb0, 0xf7, 0x0f, 0x02
data_ov03_020ff8d0: ; 0x020ff8d0
	.byte 0x48, 0xf7, 0x0f, 0x02
data_ov03_020ff8d4: ; 0x020ff8d4
	.byte 0xa8, 0xf7, 0x0f, 0x02
data_ov03_020ff8d8: ; 0x020ff8d8
	.byte 0x00, 0xf8, 0x0f, 0x02
data_ov03_020ff8dc: ; 0x020ff8dc
	.byte 0x90, 0xf7, 0x0f, 0x02
data_ov03_020ff8e0: ; 0x020ff8e0
	.byte 0x18, 0xf8, 0x0f, 0x02
data_ov03_020ff8e4: ; 0x020ff8e4
	.byte 0x18, 0xf7, 0x0f, 0x02
data_ov03_020ff8e8: ; 0x020ff8e8
	.byte 0x50, 0xf7, 0x0f, 0x02
data_ov03_020ff8ec: ; 0x020ff8ec
	.byte 0xd0, 0xf7, 0x0f, 0x02
data_ov03_020ff8f0: ; 0x020ff8f0
	.byte 0x40, 0xf7, 0x0f, 0x02
data_ov03_020ff8f4: ; 0x020ff8f4
	.byte 0x60, 0xf7, 0x0f, 0x02
data_ov03_020ff8f8: ; 0x020ff8f8
	.byte 0xd8, 0xf7, 0x0f, 0x02
data_ov03_020ff8fc: ; 0x020ff8fc
	.byte 0xe0, 0xf7, 0x0f, 0x02
data_ov03_020ff900: ; 0x020ff900
	.byte 0x60, 0xf8, 0x0f, 0x02
data_ov03_020ff904: ; 0x020ff904
	.byte 0x08, 0xf8, 0x0f, 0x02
data_ov03_020ff908: ; 0x020ff908
	.byte 0xc8, 0xf7, 0x0f, 0x02
data_ov03_020ff90c: ; 0x020ff90c
	.byte 0x80, 0xf7, 0x0f, 0x02
data_ov03_020ff910: ; 0x020ff910
	.byte 0x70, 0xf7, 0x0f, 0x02
data_ov03_020ff914: ; 0x020ff914
	.byte 0x30, 0xf7, 0x0f, 0x02
data_ov03_020ff918: ; 0x020ff918
	.byte 0xe8, 0xf7, 0x0f, 0x02
data_ov03_020ff91c: ; 0x020ff91c
	.byte 0x20, 0xf8, 0x0f, 0x02
data_ov03_020ff920: ; 0x020ff920
	.byte 0x50, 0xf8, 0x0f, 0x02
data_ov03_020ff924: ; 0x020ff924
	.byte 0xf0, 0xf7, 0x0f, 0x02
data_ov03_020ff928: ; 0x020ff928
	.byte 0x58, 0xf8, 0x0f, 0x02
data_ov03_020ff92c: ; 0x020ff92c
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff930: ; 0x020ff930
	.byte 0x13, 0x00, 0x00, 0x00
data_ov03_020ff934: ; 0x020ff934
	.byte 0x14, 0x00, 0x00, 0x00
data_ov03_020ff938: ; 0x020ff938
	.byte 0x15, 0x00, 0x00, 0x00
data_ov03_020ff93c: ; 0x020ff93c
	.byte 0x16, 0x00, 0x00, 0x00
data_ov03_020ff940: ; 0x020ff940
	.byte 0x17, 0x00, 0x00, 0x00
data_ov03_020ff944: ; 0x020ff944
	.byte 0x18, 0x00, 0x00, 0x00
data_ov03_020ff948: ; 0x020ff948
	.byte 0x19, 0x00, 0x00, 0x00
data_ov03_020ff94c: ; 0x020ff94c
	.byte 0x1a, 0x00, 0x00, 0x00
data_ov03_020ff950: ; 0x020ff950
	.byte 0x1b, 0x00, 0x00, 0x00
data_ov03_020ff954: ; 0x020ff954
	.byte 0x1c, 0x00, 0x00, 0x00
data_ov03_020ff958: ; 0x020ff958
	.byte 0x1d, 0x00, 0x00, 0x00
data_ov03_020ff95c: ; 0x020ff95c
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff960: ; 0x020ff960
	.byte 0x1e, 0x00, 0x00, 0x00
data_ov03_020ff964: ; 0x020ff964
	.byte 0x1f, 0x00, 0x00, 0x00
data_ov03_020ff968: ; 0x020ff968
	.byte 0x20, 0x00, 0x00, 0x00
data_ov03_020ff96c: ; 0x020ff96c
	.byte 0x21, 0x00, 0x00, 0x00
data_ov03_020ff970: ; 0x020ff970
	.byte 0x22, 0x00, 0x00, 0x00
data_ov03_020ff974: ; 0x020ff974
	.byte 0x23, 0x00, 0x00, 0x00
data_ov03_020ff978: ; 0x020ff978
	.byte 0x24, 0x00, 0x00, 0x00
data_ov03_020ff97c: ; 0x020ff97c
	.byte 0x25, 0x00, 0x00, 0x00
data_ov03_020ff980: ; 0x020ff980
	.byte 0x26, 0x00, 0x00, 0x00
data_ov03_020ff984: ; 0x020ff984
	.byte 0x27, 0x00, 0x00, 0x00
data_ov03_020ff988: ; 0x020ff988
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff98c: ; 0x020ff98c
	.byte 0x29, 0x00, 0x00, 0x00
data_ov03_020ff990: ; 0x020ff990
	.byte 0x2a, 0x00, 0x00, 0x00
data_ov03_020ff994: ; 0x020ff994
	.byte 0x2b, 0x00, 0x00, 0x00
data_ov03_020ff998: ; 0x020ff998
	.byte 0x2c, 0x00, 0x00, 0x00
data_ov03_020ff99c: ; 0x020ff99c
	.byte 0x2d, 0x00, 0x00, 0x00
data_ov03_020ff9a0: ; 0x020ff9a0
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff9a4: ; 0x020ff9a4
	.byte 0x2e, 0x00, 0x00, 0x00
data_ov03_020ff9a8: ; 0x020ff9a8
	.byte 0x2f, 0x00, 0x00, 0x00
data_ov03_020ff9ac: ; 0x020ff9ac
	.byte 0x30, 0x00, 0x00, 0x00
data_ov03_020ff9b0: ; 0x020ff9b0
	.byte 0xff, 0xff, 0xff, 0xff
data_ov03_020ff9b4: ; 0x020ff9b4
	.byte 0x31, 0x00, 0x00, 0x00
data_ov03_020ff9b8: ; 0x020ff9b8
	.byte 0x32, 0x00, 0x00, 0x00
data_ov03_020ff9bc: ; 0x020ff9bc
	.byte 0x33, 0x00, 0x00, 0x00
data_ov03_020ff9c0: ; 0x020ff9c0
	.byte 0x34, 0x00, 0x00, 0x00
data_ov03_020ff9c4: ; 0x020ff9c4
	.byte 0x5c, 0xf9, 0x0f, 0x02
data_ov03_020ff9c8: ; 0x020ff9c8
	.byte 0x88, 0xf9, 0x0f, 0x02
data_ov03_020ff9cc: ; 0x020ff9cc
	.byte 0xa0, 0xf9, 0x0f, 0x02
data_ov03_020ff9d0: ; 0x020ff9d0
	.byte 0xb0, 0xf9, 0x0f, 0x02
data_ov03_020ff9d4: ; 0x020ff9d4
	.byte 0x00, 0xe0
data_ov03_020ff9d6: ; 0x020ff9d6
	.byte 0x01, 0x00
data_ov03_020ff9d8: ; 0x020ff9d8
	.byte 0x00, 0xe0
data_ov03_020ff9da: ; 0x020ff9da
	.byte 0x01, 0x00
data_ov03_020ff9dc: ; 0x020ff9dc
	.byte 0x00, 0x80
data_ov03_020ff9de: ; 0x020ff9de
	.byte 0x02, 0x00
data_ov03_020ff9e0: ; 0x020ff9e0
	.byte 0x00, 0xc0
data_ov03_020ff9e2: ; 0x020ff9e2
	.byte 0x03, 0x00
data_ov03_020ff9e4: ; 0x020ff9e4
	.byte 0x00, 0x00
data_ov03_020ff9e6: ; 0x020ff9e6
	.byte 0x05, 0x00
data_ov03_020ff9e8: ; 0x020ff9e8
	.byte 0x00, 0x40, 0x06, 0x00
data_ov03_020ff9ec: ; 0x020ff9ec
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ff9f0: ; 0x020ff9f0
	.byte 0x00, 0x18, 0x00, 0x00
data_ov03_020ff9f4: ; 0x020ff9f4
	.byte 0x00, 0x18, 0x00, 0x00
data_ov03_020ff9f8: ; 0x020ff9f8
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ff9fc: ; 0x020ff9fc
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ffa00: ; 0x020ffa00
	.byte 0x00, 0x10, 0x00, 0x00
data_ov03_020ffa04: ; 0x020ffa04
	.byte 0x00, 0x20, 0x00, 0x00
data_ov03_020ffa08: ; 0x020ffa08
	.byte 0x00, 0x20, 0x00, 0x00
data_ov03_020ffa0c: ; 0x020ffa0c
	.byte 0x00, 0x20, 0x00, 0x00
data_ov03_020ffa10: ; 0x020ffa10
	.byte 0x00, 0x20, 0x00, 0x00
data_ov03_020ffa14: ; 0x020ffa14
	.byte 0x00, 0x18, 0x00, 0x00
data_ov03_020ffa18: ; 0x020ffa18
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ffa1c: ; 0x020ffa1c
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ffa20: ; 0x020ffa20
	.byte 0x66, 0x16, 0x00, 0x00
data_ov03_020ffa24: ; 0x020ffa24
	.byte 0xcd, 0x14, 0x00, 0x00
data_ov03_020ffa28: ; 0x020ffa28
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ffa2c: ; 0x020ffa2c
	.byte 0x33, 0x13, 0x00, 0x00
data_ov03_020ffa30: ; 0x020ffa30
	.byte 0x00, 0x00
data_ov03_020ffa32: ; 0x020ffa32
	.byte 0x00, 0x00
data_ov03_020ffa34: ; 0x020ffa34
	.byte 0x00, 0x00
data_ov03_020ffa36: ; 0x020ffa36
	.byte 0x00, 0x00
data_ov03_020ffa38: ; 0x020ffa38
	.byte 0x00, 0x00
data_ov03_020ffa3a: ; 0x020ffa3a
	.byte 0x00, 0x00
data_ov03_020ffa3c: ; 0x020ffa3c
	.byte 0x00, 0x00
data_ov03_020ffa3e: ; 0x020ffa3e
	.byte 0x02, 0x00
data_ov03_020ffa40: ; 0x020ffa40
	.byte 0x04, 0x00
data_ov03_020ffa42: ; 0x020ffa42
	.byte 0x05, 0x00
data_ov03_020ffa44: ; 0x020ffa44
	.byte 0x02, 0x00
data_ov03_020ffa46: ; 0x020ffa46
	.byte 0x04, 0x00
data_ov03_020ffa48: ; 0x020ffa48
	.byte 0x05, 0x00
data_ov03_020ffa4a: ; 0x020ffa4a
	.byte 0x00, 0x00
data_ov03_020ffa4c: ; 0x020ffa4c
	.byte 0x00, 0x00
data_ov03_020ffa4e: ; 0x020ffa4e
	.byte 0x00, 0x00
data_ov03_020ffa50: ; 0x020ffa50
	.byte 0x00, 0x00
data_ov03_020ffa52: ; 0x020ffa52
	.byte 0x00, 0x00
data_ov03_020ffa54: ; 0x020ffa54
	.byte 0x4c, 0x4c, 0x55, 0x4e
data_ov03_020ffa58: ; 0x020ffa58
	.ascii "TRAHYPURTRAHMBLFTBLFLALFMTLFMTLFMTLFMTSLMTSLMTSLOKOK0TARKANSLLUN"
data_ov03_020ffa98: ; 0x020ffa98
    .byte 0x1e, 0x0a, 0x2d, 0x00
data_ov03_020ffa9c: ; 0x020ffa9c
	.byte 0x05
data_ov03_020ffa9d: ; 0x020ffa9d
	.byte 0x05
data_ov03_020ffa9e: ; 0x020ffa9e
	.byte 0x05
data_ov03_020ffa9f: ; 0x020ffa9f
	.byte 0x00
data_ov03_020ffaa0: ; 0x020ffaa0
	.byte 0x00
data_ov03_020ffaa1: ; 0x020ffaa1
	.byte 0x00
data_ov03_020ffaa2: ; 0x020ffaa2
	.byte 0x00
data_ov03_020ffaa3: ; 0x020ffaa3
	.byte 0x00
data_ov03_020ffaa4: ; 0x020ffaa4
	.byte 0x00
data_ov03_020ffaa5: ; 0x020ffaa5
	.byte 0x00
data_ov03_020ffaa6: ; 0x020ffaa6
	.byte 0x00
data_ov03_020ffaa7: ; 0x020ffaa7
	.byte 0x00
data_ov03_020ffaa8: ; 0x020ffaa8
	.byte 0x00
data_ov03_020ffaa9: ; 0x020ffaa9
	.byte 0x64
data_ov03_020ffaaa: ; 0x020ffaaa
	.byte 0x00
data_ov03_020ffaab: ; 0x020ffaab
	.byte 0x00
data_ov03_020ffaac: ; 0x020ffaac
	.byte 0x00
data_ov03_020ffaad: ; 0x020ffaad
	.byte 0x00
data_ov03_020ffaae: ; 0x020ffaae
	.byte 0x00
data_ov03_020ffaaf: ; 0x020ffaaf
	.byte 0x00
data_ov03_020ffab0: ; 0x020ffab0
	.byte 0x00
data_ov03_020ffab1: ; 0x020ffab1
	.byte 0x00
data_ov03_020ffab2: ; 0x020ffab2
	.byte 0x00
data_ov03_020ffab3: ; 0x020ffab3
	.byte 0x00
data_ov03_020ffab4: ; 0x020ffab4
	.byte 0x00
data_ov03_020ffab5: ; 0x020ffab5
	.byte 0x00
data_ov03_020ffab6: ; 0x020ffab6
	.byte 0x00
data_ov03_020ffab7: ; 0x020ffab7
	.byte 0x00
data_ov03_020ffab8: ; 0x020ffab8
	.byte 0x00
data_ov03_020ffab9: ; 0x020ffab9
	.byte 0x00
data_ov03_020ffaba: ; 0x020ffaba
	.byte 0x00
data_ov03_020ffabb: ; 0x020ffabb
	.byte 0x64
data_ov03_020ffabc: ; 0x020ffabc
	.byte 0x00
data_ov03_020ffabd: ; 0x020ffabd
	.byte 0x00
data_ov03_020ffabe: ; 0x020ffabe
	.byte 0x00
data_ov03_020ffabf: ; 0x020ffabf
	.byte 0x00
data_ov03_020ffac0: ; 0x020ffac0
	.byte 0x00
data_ov03_020ffac1: ; 0x020ffac1
	.byte 0x00
data_ov03_020ffac2: ; 0x020ffac2
	.byte 0x00
data_ov03_020ffac3: ; 0x020ffac3
	.byte 0x00
data_ov03_020ffac4: ; 0x020ffac4
	.byte 0x00
data_ov03_020ffac5: ; 0x020ffac5
	.byte 0x00
data_ov03_020ffac6: ; 0x020ffac6
	.byte 0x00
data_ov03_020ffac7: ; 0x020ffac7
	.byte 0x00
data_ov03_020ffac8: ; 0x020ffac8
	.byte 0x00
data_ov03_020ffac9: ; 0x020ffac9
	.byte 0x00
data_ov03_020ffaca: ; 0x020ffaca
	.byte 0x00
data_ov03_020ffacb: ; 0x020ffacb
	.byte 0x00
data_ov03_020ffacc: ; 0x020ffacc
	.byte 0x00
data_ov03_020ffacd: ; 0x020ffacd
	.byte 0x00
data_ov03_020fface: ; 0x020fface
	.byte 0x64
data_ov03_020ffacf: ; 0x020ffacf
	.byte 0x00
data_ov03_020ffad0: ; 0x020ffad0
	.byte 0x00
data_ov03_020ffad1: ; 0x020ffad1
	.byte 0x00
data_ov03_020ffad2: ; 0x020ffad2
	.byte 0x00
data_ov03_020ffad3: ; 0x020ffad3
	.byte 0x00
data_ov03_020ffad4: ; 0x020ffad4
	.byte 0x00
data_ov03_020ffad5: ; 0x020ffad5
	.byte 0x00
data_ov03_020ffad6: ; 0x020ffad6
	.byte 0x00
data_ov03_020ffad7: ; 0x020ffad7
	.byte 0x00
data_ov03_020ffad8: ; 0x020ffad8
	.byte 0x00
data_ov03_020ffad9: ; 0x020ffad9
	.byte 0x00
data_ov03_020ffada: ; 0x020ffada
	.byte 0x00
data_ov03_020ffadb: ; 0x020ffadb
	.byte 0x00
data_ov03_020ffadc: ; 0x020ffadc
	.byte 0x00
data_ov03_020ffadd: ; 0x020ffadd
	.byte 0x00
data_ov03_020ffade: ; 0x020ffade
	.byte 0x00
data_ov03_020ffadf: ; 0x020ffadf
	.byte 0x00
data_ov03_020ffae0: ; 0x020ffae0
	.byte 0x1e
data_ov03_020ffae1: ; 0x020ffae1
	.byte 0x1e
data_ov03_020ffae2: ; 0x020ffae2
	.byte 0x28
data_ov03_020ffae3: ; 0x020ffae3
	.byte 0x00
data_ov03_020ffae4: ; 0x020ffae4
	.byte 0x00
data_ov03_020ffae5: ; 0x020ffae5
	.byte 0x00
data_ov03_020ffae6: ; 0x020ffae6
	.byte 0x00
data_ov03_020ffae7: ; 0x020ffae7
	.byte 0x00
data_ov03_020ffae8: ; 0x020ffae8
	.byte 0x00
data_ov03_020ffae9: ; 0x020ffae9
	.byte 0x00
data_ov03_020ffaea: ; 0x020ffaea
	.byte 0x00
data_ov03_020ffaeb: ; 0x020ffaeb
	.byte 0x00
data_ov03_020ffaec: ; 0x020ffaec
	.byte 0x00
data_ov03_020ffaed: ; 0x020ffaed
	.byte 0x00
data_ov03_020ffaee: ; 0x020ffaee
	.byte 0x00
data_ov03_020ffaef: ; 0x020ffaef
	.byte 0x00
data_ov03_020ffaf0: ; 0x020ffaf0
	.byte 0x00
data_ov03_020ffaf1: ; 0x020ffaf1
	.byte 0x64
data_ov03_020ffaf2: ; 0x020ffaf2
	.byte 0x00
data_ov03_020ffaf3: ; 0x020ffaf3
	.byte 0x00
data_ov03_020ffaf4: ; 0x020ffaf4
	.byte 0x00
data_ov03_020ffaf5: ; 0x020ffaf5
	.byte 0x00
data_ov03_020ffaf6: ; 0x020ffaf6
	.byte 0x00
data_ov03_020ffaf7: ; 0x020ffaf7
	.byte 0x00
data_ov03_020ffaf8: ; 0x020ffaf8
	.byte 0x00
data_ov03_020ffaf9: ; 0x020ffaf9
	.byte 0x00
data_ov03_020ffafa: ; 0x020ffafa
	.byte 0x00
data_ov03_020ffafb: ; 0x020ffafb
	.byte 0x00
data_ov03_020ffafc: ; 0x020ffafc
	.byte 0x00
data_ov03_020ffafd: ; 0x020ffafd
	.byte 0x00
data_ov03_020ffafe: ; 0x020ffafe
	.byte 0x00
data_ov03_020ffaff: ; 0x020ffaff
	.byte 0x00
data_ov03_020ffb00: ; 0x020ffb00
	.byte 0x00
data_ov03_020ffb01: ; 0x020ffb01
	.byte 0x00
data_ov03_020ffb02: ; 0x020ffb02
	.byte 0x00
data_ov03_020ffb03: ; 0x020ffb03
	.byte 0x64
data_ov03_020ffb04: ; 0x020ffb04
	.byte 0x00
data_ov03_020ffb05: ; 0x020ffb05
	.byte 0x00
data_ov03_020ffb06: ; 0x020ffb06
	.byte 0x00
data_ov03_020ffb07: ; 0x020ffb07
	.byte 0x00
data_ov03_020ffb08: ; 0x020ffb08
	.byte 0x00
data_ov03_020ffb09: ; 0x020ffb09
	.byte 0x00
data_ov03_020ffb0a: ; 0x020ffb0a
	.byte 0x00
data_ov03_020ffb0b: ; 0x020ffb0b
	.byte 0x00
data_ov03_020ffb0c: ; 0x020ffb0c
	.byte 0x00
data_ov03_020ffb0d: ; 0x020ffb0d
	.byte 0x00
data_ov03_020ffb0e: ; 0x020ffb0e
	.byte 0x00
data_ov03_020ffb0f: ; 0x020ffb0f
	.byte 0x00
data_ov03_020ffb10: ; 0x020ffb10
	.byte 0x00
data_ov03_020ffb11: ; 0x020ffb11
	.byte 0x00
data_ov03_020ffb12: ; 0x020ffb12
	.byte 0x00
data_ov03_020ffb13: ; 0x020ffb13
	.byte 0x00
data_ov03_020ffb14: ; 0x020ffb14
	.byte 0x00
data_ov03_020ffb15: ; 0x020ffb15
	.byte 0x64
data_ov03_020ffb16: ; 0x020ffb16
	.byte 0x00
data_ov03_020ffb17: ; 0x020ffb17
	.byte 0x00
data_ov03_020ffb18: ; 0x020ffb18
	.byte 0x00
data_ov03_020ffb19: ; 0x020ffb19
	.byte 0x00
data_ov03_020ffb1a: ; 0x020ffb1a
	.byte 0x00
data_ov03_020ffb1b: ; 0x020ffb1b
	.byte 0x00
data_ov03_020ffb1c: ; 0x020ffb1c
	.byte 0x00
data_ov03_020ffb1d: ; 0x020ffb1d
	.byte 0x00
data_ov03_020ffb1e: ; 0x020ffb1e
	.byte 0x00
data_ov03_020ffb1f: ; 0x020ffb1f
	.byte 0x00
data_ov03_020ffb20: ; 0x020ffb20
	.byte 0x3c
data_ov03_020ffb21: ; 0x020ffb21
	.byte 0x0a
data_ov03_020ffb22: ; 0x020ffb22
	.byte 0x1e
data_ov03_020ffb23: ; 0x020ffb23
	.byte 0x00
data_ov03_020ffb24: ; 0x020ffb24
	.byte 0x00
data_ov03_020ffb25: ; 0x020ffb25
	.byte 0x00
data_ov03_020ffb26: ; 0x020ffb26
	.byte 0x00
data_ov03_020ffb27: ; 0x020ffb27
	.byte 0x00
data_ov03_020ffb28: ; 0x020ffb28
	.byte 0x00
data_ov03_020ffb29: ; 0x020ffb29
	.byte 0x00
data_ov03_020ffb2a: ; 0x020ffb2a
	.byte 0x00
data_ov03_020ffb2b: ; 0x020ffb2b
	.byte 0x00
data_ov03_020ffb2c: ; 0x020ffb2c
	.byte 0x00
data_ov03_020ffb2d: ; 0x020ffb2d
	.byte 0x00
data_ov03_020ffb2e: ; 0x020ffb2e
	.byte 0x00
data_ov03_020ffb2f: ; 0x020ffb2f
	.byte 0x00
data_ov03_020ffb30: ; 0x020ffb30
	.byte 0x00
data_ov03_020ffb31: ; 0x020ffb31
	.byte 0x00
data_ov03_020ffb32: ; 0x020ffb32
	.byte 0x00
data_ov03_020ffb33: ; 0x020ffb33
	.byte 0x00
data_ov03_020ffb34: ; 0x020ffb34
	.byte 0x00
data_ov03_020ffb35: ; 0x020ffb35
	.byte 0x00
data_ov03_020ffb36: ; 0x020ffb36
	.byte 0x00
data_ov03_020ffb37: ; 0x020ffb37
	.byte 0x00
data_ov03_020ffb38: ; 0x020ffb38
	.byte 0x3c
data_ov03_020ffb39: ; 0x020ffb39
	.byte 0x1e
data_ov03_020ffb3a: ; 0x020ffb3a
	.byte 0x0a
data_ov03_020ffb3b: ; 0x020ffb3b
	.byte 0x00
data_ov03_020ffb3c: ; 0x020ffb3c
	.byte 0x00
data_ov03_020ffb3d: ; 0x020ffb3d
	.byte 0x00
data_ov03_020ffb3e: ; 0x020ffb3e
	.byte 0x00
data_ov03_020ffb3f: ; 0x020ffb3f
	.byte 0x00
data_ov03_020ffb40: ; 0x020ffb40
	.byte 0x00
data_ov03_020ffb41: ; 0x020ffb41
	.byte 0x00
data_ov03_020ffb42: ; 0x020ffb42
	.byte 0x00
data_ov03_020ffb43: ; 0x020ffb43
	.byte 0x00
data_ov03_020ffb44: ; 0x020ffb44
	.byte 0x00
data_ov03_020ffb45: ; 0x020ffb45
	.byte 0x00
data_ov03_020ffb46: ; 0x020ffb46
	.byte 0x00
data_ov03_020ffb47: ; 0x020ffb47
	.byte 0x00
data_ov03_020ffb48: ; 0x020ffb48
	.byte 0x00
data_ov03_020ffb49: ; 0x020ffb49
	.byte 0x00
data_ov03_020ffb4a: ; 0x020ffb4a
	.byte 0x00
data_ov03_020ffb4b: ; 0x020ffb4b
	.byte 0x00
data_ov03_020ffb4c: ; 0x020ffb4c
	.byte 0x3c
data_ov03_020ffb4d: ; 0x020ffb4d
	.byte 0x1e
data_ov03_020ffb4e: ; 0x020ffb4e
	.byte 0x0a
data_ov03_020ffb4f: ; 0x020ffb4f
	.byte 0x00
data_ov03_020ffb50: ; 0x020ffb50
	.byte 0x00
data_ov03_020ffb51: ; 0x020ffb51
	.byte 0x00
data_ov03_020ffb52: ; 0x020ffb52
	.byte 0x00
data_ov03_020ffb53: ; 0x020ffb53
	.byte 0x00
data_ov03_020ffb54: ; 0x020ffb54
	.byte 0x00
data_ov03_020ffb55: ; 0x020ffb55
	.byte 0x00
data_ov03_020ffb56: ; 0x020ffb56
	.byte 0x00
data_ov03_020ffb57: ; 0x020ffb57
	.byte 0x00
data_ov03_020ffb58: ; 0x020ffb58
	.byte 0x00
data_ov03_020ffb59: ; 0x020ffb59
	.byte 0x00
data_ov03_020ffb5a: ; 0x020ffb5a
	.byte 0x64
data_ov03_020ffb5b: ; 0x020ffb5b
	.byte 0x00
data_ov03_020ffb5c: ; 0x020ffb5c
	.byte 0x00
data_ov03_020ffb5d: ; 0x020ffb5d
	.byte 0x00
data_ov03_020ffb5e: ; 0x020ffb5e
	.byte 0x00
data_ov03_020ffb5f: ; 0x020ffb5f
	.byte 0x00
data_ov03_020ffb60: ; 0x020ffb60
	.byte 0x00
data_ov03_020ffb61: ; 0x020ffb61
	.byte 0x00
data_ov03_020ffb62: ; 0x020ffb62
	.byte 0x00
data_ov03_020ffb63: ; 0x020ffb63
	.byte 0x00
data_ov03_020ffb64: ; 0x020ffb64
	.byte 0x00
data_ov03_020ffb65: ; 0x020ffb65
	.byte 0x00
data_ov03_020ffb66: ; 0x020ffb66
	.byte 0x00
data_ov03_020ffb67: ; 0x020ffb67
	.byte 0x00
data_ov03_020ffb68: ; 0x020ffb68
	.byte 0x00
data_ov03_020ffb69: ; 0x020ffb69
	.byte 0x00
data_ov03_020ffb6a: ; 0x020ffb6a
	.byte 0x00
data_ov03_020ffb6b: ; 0x020ffb6b
	.byte 0x00
data_ov03_020ffb6c: ; 0x020ffb6c
	.byte 0x64
data_ov03_020ffb6d: ; 0x020ffb6d
	.byte 0x00
data_ov03_020ffb6e: ; 0x020ffb6e
	.byte 0x00
data_ov03_020ffb6f: ; 0x020ffb6f
	.byte 0x00
data_ov03_020ffb70: ; 0x020ffb70
	.byte 0x00
data_ov03_020ffb71: ; 0x020ffb71
	.byte 0x00
data_ov03_020ffb72: ; 0x020ffb72
	.byte 0x00
data_ov03_020ffb73: ; 0x020ffb73
	.byte 0x00
data_ov03_020ffb74: ; 0x020ffb74
	.byte 0x00
data_ov03_020ffb75: ; 0x020ffb75
	.byte 0x00
data_ov03_020ffb76: ; 0x020ffb76
	.byte 0x00
data_ov03_020ffb77: ; 0x020ffb77
	.byte 0x00
data_ov03_020ffb78: ; 0x020ffb78
	.byte 0x00
data_ov03_020ffb79: ; 0x020ffb79
	.byte 0x00
data_ov03_020ffb7a: ; 0x020ffb7a
	.byte 0x00
data_ov03_020ffb7b: ; 0x020ffb7b
	.byte 0x00
data_ov03_020ffb7c: ; 0x020ffb7c
	.byte 0x00
data_ov03_020ffb7d: ; 0x020ffb7d
	.byte 0x00
data_ov03_020ffb7e: ; 0x020ffb7e
	.byte 0x64
data_ov03_020ffb7f: ; 0x020ffb7f
	.byte 0x00
data_ov03_020ffb80: ; 0x020ffb80
	.byte 0x00
data_ov03_020ffb81: ; 0x020ffb81
	.byte 0x00
data_ov03_020ffb82: ; 0x020ffb82
	.byte 0x00
data_ov03_020ffb83: ; 0x020ffb83
	.byte 0x00
data_ov03_020ffb84: ; 0x020ffb84
	.byte 0x00
data_ov03_020ffb85: ; 0x020ffb85
	.byte 0x00
data_ov03_020ffb86: ; 0x020ffb86
	.byte 0x00
data_ov03_020ffb87: ; 0x020ffb87
	.byte 0x00
data_ov03_020ffb88: ; 0x020ffb88
	.byte 0x00
data_ov03_020ffb89: ; 0x020ffb89
	.byte 0x00
data_ov03_020ffb8a: ; 0x020ffb8a
	.byte 0x00
data_ov03_020ffb8b: ; 0x020ffb8b
	.byte 0x00
data_ov03_020ffb8c: ; 0x020ffb8c
	.byte 0x00
data_ov03_020ffb8d: ; 0x020ffb8d
	.byte 0x00
data_ov03_020ffb8e: ; 0x020ffb8e
	.byte 0x00
data_ov03_020ffb8f: ; 0x020ffb8f
	.byte 0x00
data_ov03_020ffb90: ; 0x020ffb90
	.byte 0x64
data_ov03_020ffb91: ; 0x020ffb91
	.byte 0x00
data_ov03_020ffb92: ; 0x020ffb92
	.byte 0x00
data_ov03_020ffb93: ; 0x020ffb93
	.byte 0x00
data_ov03_020ffb94: ; 0x020ffb94
	.byte 0x00
data_ov03_020ffb95: ; 0x020ffb95
	.byte 0x00
data_ov03_020ffb96: ; 0x020ffb96
	.byte 0x00
data_ov03_020ffb97: ; 0x020ffb97
	.byte 0x00
data_ov03_020ffb98: ; 0x020ffb98
	.byte 0x00
data_ov03_020ffb99: ; 0x020ffb99
	.byte 0x00
data_ov03_020ffb9a: ; 0x020ffb9a
	.byte 0x00
data_ov03_020ffb9b: ; 0x020ffb9b
	.byte 0x00
data_ov03_020ffb9c: ; 0x020ffb9c
	.byte 0x00
data_ov03_020ffb9d: ; 0x020ffb9d
	.byte 0x00
data_ov03_020ffb9e: ; 0x020ffb9e
	.byte 0x00
data_ov03_020ffb9f: ; 0x020ffb9f
	.byte 0x00
data_ov03_020ffba0: ; 0x020ffba0
	.byte 0x00
data_ov03_020ffba1: ; 0x020ffba1
	.byte 0x00
data_ov03_020ffba2: ; 0x020ffba2
	.byte 0x64
data_ov03_020ffba3: ; 0x020ffba3
	.byte 0x00
data_ov03_020ffba4: ; 0x020ffba4
	.byte 0x00
data_ov03_020ffba5: ; 0x020ffba5
	.byte 0x00
data_ov03_020ffba6: ; 0x020ffba6
	.byte 0x00
data_ov03_020ffba7: ; 0x020ffba7
	.byte 0x00
data_ov03_020ffba8: ; 0x020ffba8
	.byte 0x00
data_ov03_020ffba9: ; 0x020ffba9
	.byte 0x00
data_ov03_020ffbaa: ; 0x020ffbaa
	.byte 0x00
data_ov03_020ffbab: ; 0x020ffbab
	.byte 0x00
data_ov03_020ffbac: ; 0x020ffbac
	.byte 0x00
data_ov03_020ffbad: ; 0x020ffbad
	.byte 0x00
data_ov03_020ffbae: ; 0x020ffbae
	.byte 0x00
data_ov03_020ffbaf: ; 0x020ffbaf
	.byte 0x00
data_ov03_020ffbb0: ; 0x020ffbb0
	.byte 0x00
data_ov03_020ffbb1: ; 0x020ffbb1
	.byte 0x00
data_ov03_020ffbb2: ; 0x020ffbb2
	.byte 0x00
data_ov03_020ffbb3: ; 0x020ffbb3
	.byte 0x00
data_ov03_020ffbb4: ; 0x020ffbb4
	.byte 0x64
data_ov03_020ffbb5: ; 0x020ffbb5
	.byte 0x00
data_ov03_020ffbb6: ; 0x020ffbb6
	.byte 0x00
data_ov03_020ffbb7: ; 0x020ffbb7
	.byte 0x00
data_ov03_020ffbb8: ; 0x020ffbb8
	.byte 0x00
data_ov03_020ffbb9: ; 0x020ffbb9
	.byte 0x50
data_ov03_020ffbba: ; 0x020ffbba
	.byte 0x05
data_ov03_020ffbbb: ; 0x020ffbbb
	.byte 0x0f
data_ov03_020ffbbc: ; 0x020ffbbc
	.byte 0x00
data_ov03_020ffbbd: ; 0x020ffbbd
	.byte 0x00
data_ov03_020ffbbe: ; 0x020ffbbe
	.byte 0x00
data_ov03_020ffbbf: ; 0x020ffbbf
	.byte 0x00
data_ov03_020ffbc0: ; 0x020ffbc0
	.byte 0x00
data_ov03_020ffbc1: ; 0x020ffbc1
	.byte 0x00
data_ov03_020ffbc2: ; 0x020ffbc2
	.byte 0x00
data_ov03_020ffbc3: ; 0x020ffbc3
	.byte 0x00
data_ov03_020ffbc4: ; 0x020ffbc4
	.byte 0x00
data_ov03_020ffbc5: ; 0x020ffbc5
	.byte 0x00
data_ov03_020ffbc6: ; 0x020ffbc6
	.byte 0x00
data_ov03_020ffbc7: ; 0x020ffbc7
	.byte 0x00
data_ov03_020ffbc8: ; 0x020ffbc8
	.byte 0x00
data_ov03_020ffbc9: ; 0x020ffbc9
	.byte 0x00
data_ov03_020ffbca: ; 0x020ffbca
	.byte 0x00
data_ov03_020ffbcb: ; 0x020ffbcb
	.byte 0x00
data_ov03_020ffbcc: ; 0x020ffbcc
	.byte 0x00
data_ov03_020ffbcd: ; 0x020ffbcd
	.byte 0x00
data_ov03_020ffbce: ; 0x020ffbce
	.byte 0x00
data_ov03_020ffbcf: ; 0x020ffbcf
	.byte 0x00
data_ov03_020ffbd0: ; 0x020ffbd0
	.byte 0x00
data_ov03_020ffbd1: ; 0x020ffbd1
	.byte 0x00
data_ov03_020ffbd2: ; 0x020ffbd2
	.byte 0x00
data_ov03_020ffbd3: ; 0x020ffbd3
	.byte 0x00
data_ov03_020ffbd4: ; 0x020ffbd4
	.byte 0x00
data_ov03_020ffbd5: ; 0x020ffbd5
	.byte 0x00
data_ov03_020ffbd6: ; 0x020ffbd6
	.byte 0x00
data_ov03_020ffbd7: ; 0x020ffbd7
	.byte 0x64
data_ov03_020ffbd8: ; 0x020ffbd8
	.byte 0x00
data_ov03_020ffbd9: ; 0x020ffbd9
	.byte 0x00
data_ov03_020ffbda: ; 0x020ffbda
	.byte 0x00
data_ov03_020ffbdb: ; 0x020ffbdb
	.byte 0x00
data_ov03_020ffbdc: ; 0x020ffbdc
	.byte 0x00
data_ov03_020ffbdd: ; 0x020ffbdd
	.byte 0x00
data_ov03_020ffbde: ; 0x020ffbde
	.byte 0x00
data_ov03_020ffbdf: ; 0x020ffbdf
	.byte 0x00
data_ov03_020ffbe0: ; 0x020ffbe0
	.byte 0x00
data_ov03_020ffbe1: ; 0x020ffbe1
	.byte 0x00
data_ov03_020ffbe2: ; 0x020ffbe2
	.byte 0x00
data_ov03_020ffbe3: ; 0x020ffbe3
	.byte 0x00
data_ov03_020ffbe4: ; 0x020ffbe4
	.byte 0x00
data_ov03_020ffbe5: ; 0x020ffbe5
	.byte 0x00
data_ov03_020ffbe6: ; 0x020ffbe6
	.byte 0x00
data_ov03_020ffbe7: ; 0x020ffbe7
	.byte 0x00
data_ov03_020ffbe8: ; 0x020ffbe8
	.byte 0x00
data_ov03_020ffbe9: ; 0x020ffbe9
	.byte 0x0a
data_ov03_020ffbea: ; 0x020ffbea
	.byte 0x0a
data_ov03_020ffbeb: ; 0x020ffbeb
	.byte 0x00
data_ov03_020ffbec: ; 0x020ffbec
	.byte 0x00
data_ov03_020ffbed: ; 0x020ffbed
	.byte 0x00
data_ov03_020ffbee: ; 0x020ffbee
	.byte 0x00
data_ov03_020ffbef: ; 0x020ffbef
	.byte 0x00
data_ov03_020ffbf0: ; 0x020ffbf0
	.byte 0x00
data_ov03_020ffbf1: ; 0x020ffbf1
	.byte 0x00
data_ov03_020ffbf2: ; 0x020ffbf2
	.byte 0x00
data_ov03_020ffbf3: ; 0x020ffbf3
	.byte 0x00
data_ov03_020ffbf4: ; 0x020ffbf4
	.byte 0x00
data_ov03_020ffbf5: ; 0x020ffbf5
	.byte 0x00
data_ov03_020ffbf6: ; 0x020ffbf6
	.byte 0x00
data_ov03_020ffbf7: ; 0x020ffbf7
	.byte 0x00
data_ov03_020ffbf8: ; 0x020ffbf8
	.byte 0x00
data_ov03_020ffbf9: ; 0x020ffbf9
	.byte 0x00
data_ov03_020ffbfa: ; 0x020ffbfa
	.byte 0x32
data_ov03_020ffbfb: ; 0x020ffbfb
	.byte 0x32
data_ov03_020ffbfc: ; 0x020ffbfc
	.byte 0x00
data_ov03_020ffbfd: ; 0x020ffbfd
	.byte 0x00
data_ov03_020ffbfe: ; 0x020ffbfe
	.byte 0x00
data_ov03_020ffbff: ; 0x020ffbff
	.byte 0x00
data_ov03_020ffc00: ; 0x020ffc00
	.byte 0x00
data_ov03_020ffc01: ; 0x020ffc01
	.byte 0x00
data_ov03_020ffc02: ; 0x020ffc02
	.byte 0x00
data_ov03_020ffc03: ; 0x020ffc03
	.byte 0x00
data_ov03_020ffc04: ; 0x020ffc04
	.byte 0x00
data_ov03_020ffc05: ; 0x020ffc05
	.byte 0x00
data_ov03_020ffc06: ; 0x020ffc06
	.byte 0x00
data_ov03_020ffc07: ; 0x020ffc07
	.byte 0x00
data_ov03_020ffc08: ; 0x020ffc08
	.byte 0x00
data_ov03_020ffc09: ; 0x020ffc09
	.byte 0x00
data_ov03_020ffc0a: ; 0x020ffc0a
	.byte 0x00
data_ov03_020ffc0b: ; 0x020ffc0b
	.byte 0x00
data_ov03_020ffc0c: ; 0x020ffc0c
	.byte 0x00
data_ov03_020ffc0d: ; 0x020ffc0d
	.byte 0x64
data_ov03_020ffc0e: ; 0x020ffc0e
	.byte 0x00
data_ov03_020ffc0f: ; 0x020ffc0f
	.byte 0x00
data_ov03_020ffc10: ; 0x020ffc10
	.byte 0x57, 0x00, 0x00, 0x00
data_ov03_020ffc14: ; 0x020ffc14
	.byte 0x58, 0x00, 0x00, 0x00
data_ov03_020ffc18: ; 0x020ffc18
	.byte 0x59, 0x00, 0x00, 0x00
data_ov03_020ffc1c: ; 0x020ffc1c
	.byte 0x00, 0x00, 0x07, 0x00
data_ov03_020ffc20: ; 0x020ffc20
	.byte 0x5a, 0x00, 0x00, 0x00
data_ov03_020ffc24: ; 0x020ffc24
	.byte 0x5b, 0x00, 0x00, 0x00
data_ov03_020ffc28: ; 0x020ffc28
	.byte 0x00, 0x00, 0x06, 0x00
data_ov03_020ffc2c: ; 0x020ffc2c
	.byte 0x5c, 0x00, 0x00, 0x00
data_ov03_020ffc30: ; 0x020ffc30
	.byte 0x5f, 0x00, 0x08, 0x00
data_ov03_020ffc34: ; 0x020ffc34
	.byte 0x5d, 0x00, 0x00, 0x00
data_ov03_020ffc38: ; 0x020ffc38
	.byte 0x5e, 0x00, 0x00, 0x00
data_ov03_020ffc3c: ; 0x020ffc3c
	.byte 0x5f, 0x00, 0x00, 0x00
data_ov03_020ffc40: ; 0x020ffc40
	.byte 0xdc, 0x00, 0x09, 0x00
data_ov03_020ffc44: ; 0x020ffc44
	.byte 0x60, 0x00, 0x08, 0x00
data_ov03_020ffc48: ; 0x020ffc48
	.byte 0x71, 0x00, 0x0c, 0x00
data_ov03_020ffc4c: ; 0x020ffc4c
	.byte 0x60, 0x00, 0x00, 0x00
data_ov03_020ffc50: ; 0x020ffc50
	.byte 0x61, 0x00, 0x00, 0x00
data_ov03_020ffc54: ; 0x020ffc54
	.byte 0x62, 0x00, 0x00, 0x00
data_ov03_020ffc58: ; 0x020ffc58
	.byte 0x63, 0x00, 0x00, 0x00
data_ov03_020ffc5c: ; 0x020ffc5c
	.byte 0x01, 0x00, 0x06, 0x00
data_ov03_020ffc60: ; 0x020ffc60
	.byte 0x02, 0x00, 0x06, 0x00
data_ov03_020ffc64: ; 0x020ffc64
	.byte 0x03, 0x00, 0x06, 0x00
data_ov03_020ffc68: ; 0x020ffc68
	.byte 0x04, 0x00, 0x06, 0x00
data_ov03_020ffc6c: ; 0x020ffc6c
	.byte 0x64, 0x00, 0x00, 0x00
data_ov03_020ffc70: ; 0x020ffc70
	.byte 0x65, 0x00, 0x00, 0x00
data_ov03_020ffc74: ; 0x020ffc74
	.byte 0x66, 0x00, 0x00, 0x00
data_ov03_020ffc78: ; 0x020ffc78
	.byte 0x67, 0x00, 0x00, 0x00
data_ov03_020ffc7c: ; 0x020ffc7c
	.byte 0x68, 0x00, 0x00, 0x00
data_ov03_020ffc80: ; 0x020ffc80
	.byte 0x69, 0x00, 0x00, 0x00
data_ov03_020ffc84: ; 0x020ffc84
	.byte 0x6a, 0x00, 0x00, 0x00
data_ov03_020ffc88: ; 0x020ffc88
	.byte 0x6b, 0x00, 0x00, 0x00
data_ov03_020ffc8c: ; 0x020ffc8c
	.byte 0x00, 0x00, 0x15, 0x00
data_ov03_020ffc90: ; 0x020ffc90
	.byte 0xdb, 0x00, 0x0b, 0x00
data_ov03_020ffc94: ; 0x020ffc94
	.byte 0x6c, 0x00, 0x00, 0x00
data_ov03_020ffc98: ; 0x020ffc98
	.byte 0x6d, 0x00, 0x00, 0x00
data_ov03_020ffc9c: ; 0x020ffc9c
	.byte 0x6e, 0x00, 0x00, 0x00
data_ov03_020ffca0: ; 0x020ffca0
	.byte 0x64, 0x00, 0x0f, 0x00
data_ov03_020ffca4: ; 0x020ffca4
	.byte 0x00, 0x00, 0x1a, 0x00
data_ov03_020ffca8: ; 0x020ffca8
	.byte 0x1b, 0x00, 0x05, 0x00
data_ov03_020ffcac: ; 0x020ffcac
	.byte 0x6f, 0x00, 0x00, 0x00
data_ov03_020ffcb0: ; 0x020ffcb0
	.byte 0x70, 0x00, 0x00, 0x00
data_ov03_020ffcb4: ; 0x020ffcb4
	.byte 0x71, 0x00, 0x00, 0x00
data_ov03_020ffcb8: ; 0x020ffcb8
	.byte 0x72, 0x00, 0x00, 0x00
data_ov03_020ffcbc: ; 0x020ffcbc
	.byte 0x73, 0x00, 0x00, 0x00
data_ov03_020ffcc0: ; 0x020ffcc0
	.byte 0x01, 0x00, 0x15, 0x00
data_ov03_020ffcc4: ; 0x020ffcc4
	.byte 0x74, 0x00, 0x00, 0x00
data_ov03_020ffcc8: ; 0x020ffcc8
	.byte 0x75, 0x00, 0x00, 0x00
data_ov03_020ffccc: ; 0x020ffccc
	.byte 0x76, 0x00, 0x00, 0x00
data_ov03_020ffcd0: ; 0x020ffcd0
	.byte 0x77, 0x00, 0x00, 0x00
data_ov03_020ffcd4: ; 0x020ffcd4
	.byte 0x78, 0x00, 0x00, 0x00
data_ov03_020ffcd8: ; 0x020ffcd8
	.byte 0x79, 0x00, 0x00, 0x00
data_ov03_020ffcdc: ; 0x020ffcdc
	.byte 0x7a, 0x00, 0x00, 0x00
data_ov03_020ffce0: ; 0x020ffce0
	.byte 0x7b, 0x00, 0x00, 0x00
data_ov03_020ffce4: ; 0x020ffce4
	.byte 0x7c, 0x00, 0x00, 0x00
data_ov03_020ffce8: ; 0x020ffce8
	.byte 0x7d, 0x00, 0x00, 0x00
data_ov03_020ffcec: ; 0x020ffcec
	.byte 0x7e, 0x00, 0x00, 0x00
data_ov03_020ffcf0: ; 0x020ffcf0
	.byte 0x3e, 0x00, 0x0e, 0x00
data_ov03_020ffcf4: ; 0x020ffcf4
	.byte 0x7f, 0x00, 0x00, 0x00
data_ov03_020ffcf8: ; 0x020ffcf8
	.byte 0x80, 0x00, 0x00, 0x00
data_ov03_020ffcfc: ; 0x020ffcfc
	.byte 0x81, 0x00, 0x00, 0x00
data_ov03_020ffd00: ; 0x020ffd00
	.byte 0x00, 0x00, 0x1b, 0x00
data_ov03_020ffd04: ; 0x020ffd04
	.byte 0x01, 0x00, 0x1a, 0x00
data_ov03_020ffd08: ; 0x020ffd08
	.byte 0x82, 0x00, 0x00, 0x00
data_ov03_020ffd0c: ; 0x020ffd0c
	.byte 0x83, 0x00, 0x00, 0x00
data_ov03_020ffd10: ; 0x020ffd10
	.byte 0x84, 0x00, 0x00, 0x00
data_ov03_020ffd14: ; 0x020ffd14
	.byte 0x85, 0x00, 0x00, 0x00
data_ov03_020ffd18: ; 0x020ffd18
	.byte 0x86, 0x00, 0x00, 0x00
data_ov03_020ffd1c: ; 0x020ffd1c
	.byte 0x87, 0x00, 0x00, 0x00
data_ov03_020ffd20: ; 0x020ffd20
	.byte 0x2f, 0x00, 0x10, 0x00
data_ov03_020ffd24: ; 0x020ffd24
	.byte 0x88, 0x00, 0x00, 0x00
data_ov03_020ffd28: ; 0x020ffd28
	.byte 0x1c, 0x00, 0x05, 0x00
data_ov03_020ffd2c: ; 0x020ffd2c
	.byte 0x1d, 0x00, 0x05, 0x00
data_ov03_020ffd30: ; 0x020ffd30
	.byte 0x1e, 0x00, 0x05, 0x00
data_ov03_020ffd34: ; 0x020ffd34
	.byte 0x1f, 0x00, 0x05, 0x00
data_ov03_020ffd38: ; 0x020ffd38
	.byte 0x20, 0x00, 0x05, 0x00
data_ov03_020ffd3c: ; 0x020ffd3c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd40: ; 0x020ffd40
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd44: ; 0x020ffd44
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd48: ; 0x020ffd48
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd4c: ; 0x020ffd4c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd50: ; 0x020ffd50
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd54: ; 0x020ffd54
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd58: ; 0x020ffd58
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd5c: ; 0x020ffd5c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd60: ; 0x020ffd60
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd64: ; 0x020ffd64
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd68: ; 0x020ffd68
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd6c: ; 0x020ffd6c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd70: ; 0x020ffd70
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd74: ; 0x020ffd74
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd78: ; 0x020ffd78
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd7c: ; 0x020ffd7c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd80: ; 0x020ffd80
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd84: ; 0x020ffd84
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd88: ; 0x020ffd88
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd8c: ; 0x020ffd8c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd90: ; 0x020ffd90
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd94: ; 0x020ffd94
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd98: ; 0x020ffd98
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffd9c: ; 0x020ffd9c
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffda0: ; 0x020ffda0
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffda4: ; 0x020ffda4
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffda8: ; 0x020ffda8
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffdac: ; 0x020ffdac
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffdb0: ; 0x020ffdb0
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffdb4: ; 0x020ffdb4
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffdb8: ; 0x020ffdb8
	.byte 0x89, 0x00, 0x00, 0x00
data_ov03_020ffdbc: ; 0x020ffdbc
	.byte 0x30, 0x00, 0x10, 0x00
data_ov03_020ffdc0: ; 0x020ffdc0
	.byte 0x31, 0x00, 0x10, 0x00
data_ov03_020ffdc4: ; 0x020ffdc4
	.byte 0x32, 0x00, 0x10, 0x00
data_ov03_020ffdc8: ; 0x020ffdc8
	.byte 0x33, 0x00, 0x10, 0x00
data_ov03_020ffdcc: ; 0x020ffdcc
	.byte 0x34, 0x00, 0x10, 0x00
data_ov03_020ffdd0: ; 0x020ffdd0
	.byte 0x35, 0x00, 0x10, 0x00
data_ov03_020ffdd4: ; 0x020ffdd4
	.byte 0xa9, 0x00, 0x00, 0x00
data_ov03_020ffdd8: ; 0x020ffdd8
	.byte 0x72, 0x00, 0x0c, 0x00
data_ov03_020ffddc: ; 0x020ffddc
	.byte 0xdc, 0x00, 0x0b, 0x00
data_ov03_020ffde0: ; 0x020ffde0
	.byte 0x02, 0x00, 0x15, 0x00
data_ov03_020ffde4: ; 0x020ffde4
	.byte 0xaa, 0x00, 0x00, 0x00
data_ov03_020ffde8: ; 0x020ffde8
	.byte 0xab, 0x00, 0x00, 0x00
data_ov03_020ffdec: ; 0x020ffdec
	.byte 0xac, 0x00, 0x00, 0x00
data_ov03_020ffdf0: ; 0x020ffdf0
	.byte 0xad, 0x00, 0x00, 0x00
data_ov03_020ffdf4: ; 0x020ffdf4
	.byte 0x02, 0x00, 0x1a, 0x00
data_ov03_020ffdf8: ; 0x020ffdf8
	.byte 0x03, 0x00, 0x1a, 0x00
data_ov03_020ffdfc: ; 0x020ffdfc
	.byte 0x04, 0x00, 0x1a, 0x00
data_ov03_020ffe00: ; 0x020ffe00
	.byte 0x05, 0x00, 0x1a, 0x00
data_ov03_020ffe04: ; 0x020ffe04
	.byte 0xae, 0x00, 0x00, 0x00
data_ov03_020ffe08: ; 0x020ffe08
	.byte 0xaf, 0x00, 0x00, 0x00
data_ov03_020ffe0c: ; 0x020ffe0c
	.byte 0x00, 0x00, 0x1f, 0x00
data_ov03_020ffe10: ; 0x020ffe10
	.byte 0x65, 0x00, 0x0f, 0x00
data_ov03_020ffe14: ; 0x020ffe14
	.byte 0xb0, 0x00, 0x00, 0x00
data_ov03_020ffe18: ; 0x020ffe18
	.byte 0xb1, 0x00, 0x00, 0x00
data_ov03_020ffe1c: ; 0x020ffe1c
	.byte 0xb2, 0x00, 0x00, 0x00
data_ov03_020ffe20: ; 0x020ffe20
	.byte 0xb3, 0x00, 0x00, 0x00
data_ov03_020ffe24: ; 0x020ffe24
	.byte 0xb4, 0x00, 0x00, 0x00

	arm_func_start func_ov03_020ffe28
func_ov03_020ffe28: ; 0x020ffe28
	ldr r0, _020ffe64 ; =data_ov03_02100020
	mov r1, #0x14
	str r1, [r0, #0x20]
	mov ip, #8
	str ip, [r0, #0x24]
	mov r3, #0xd8
	str r3, [r0, #0x28]
	mov r2, #0xb0
	str r2, [r0, #0x2c]
	mov r1, #0x24
	str r1, [r0, #0x30]
	str ip, [r0, #0x34]
	str r3, [r0, #0x38]
	str r2, [r0, #0x3c]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020ffe28
_020ffe64: .word data_ov03_02100020

	arm_func_start func_ov03_020ffe68
func_ov03_020ffe68: ; 0x020ffe68
	ldr r1, _020ffe78 ; =0x00000aaa
	ldr r0, _020ffe7c ; =data_ov03_02100060
	str r1, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020ffe68
_020ffe78: .word 0x00000aaa
_020ffe7c: .word data_ov03_02100060

	arm_func_start func_ov03_020ffe80
func_ov03_020ffe80: ; 0x020ffe80
	ldr r0, _020ffeb8 ; =data_ov03_02100100
	mov ip, #0
	str ip, [r0, #0x20]
	mov r3, #0xa2
	str r3, [r0, #0x24]
	mov r2, #0x100
	str r2, [r0, #0x28]
	mov r1, #0xc0
	str r1, [r0, #0x2c]
	str ip, [r0, #0x30]
	str r3, [r0, #0x34]
	str r2, [r0, #0x38]
	str r1, [r0, #0x3c]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020ffe80
_020ffeb8: .word data_ov03_02100100

	arm_func_start func_ov03_020ffebc
func_ov03_020ffebc: ; 0x020ffebc
	stmdb sp!, {r3, lr}
	mov r0, #0x1000
	mov r1, #0x40000
	bl func_01ff98e0
	ldr r1, _020ffed8 ; =data_ov03_02100648
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020ffebc
_020ffed8: .word data_ov03_02100648

	arm_func_start func_ov03_020ffedc
func_ov03_020ffedc: ; 0x020ffedc
	ldr r0, _020fff00 ; =data_ov03_02100750
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	mov r1, #0x20
	str r1, [r0, #8]
	mov r1, #0xc0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020ffedc
_020fff00: .word data_ov03_02100750

	arm_func_start func_ov03_020fff04
func_ov03_020fff04: ; 0x020fff04
	ldr r0, _020fff28 ; =data_ov03_0210079c
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	mov r1, #0x20
	str r1, [r0, #8]
	mov r1, #0xc0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020fff04
_020fff28: .word data_ov03_0210079c

	arm_func_start func_ov03_020fff2c
func_ov03_020fff2c: ; 0x020fff2c
	ldr r0, _020fff50 ; =data_ov03_021007cc
	mov r1, #0
	str r1, [r0, #0x20]
	mov r1, #0x9b
	str r1, [r0, #0x24]
	mov r1, #0x25
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0
	arm_func_end func_ov03_020fff2c
_020fff50: .word data_ov03_021007cc

	arm_func_start func_ov03_020fff54
func_ov03_020fff54: ; 0x020fff54
	stmdb sp!, {r3, lr}
	ldr r0, _020fff80 ; =data_ov03_02100a98
	ldr r1, _020fff84 ; =0x4d544354
	ldr r2, _020fff88 ; =func_ov03_020fb41c
	mov r3, #0
	bl func_0203e784
	ldr r0, _020fff80 ; =data_ov03_02100a98
	ldr r1, _020fff8c ; =func_0203e7b4
	ldr r2, _020fff90 ; =data_ov03_02100a8c
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020fff54
_020fff80: .word data_ov03_02100a98
_020fff84: .word 0x4d544354
_020fff88: .word func_ov03_020fb41c
_020fff8c: .word func_0203e7b4
_020fff90: .word data_ov03_02100a8c

	arm_func_start func_ov03_020fff94
func_ov03_020fff94: ; 0x020fff94
	stmdb sp!, {r3, lr}
	ldr r0, _020fffbc ; =data_ov03_02100ab0
	ldr r2, _020fffc0 ; =func_ov03_020fbcc8
	mov r1, #0x87
	bl func_0203eba8
	ldr r0, _020fffbc ; =data_ov03_02100ab0
	ldr r1, _020fffc4 ; =func_0203ebc8
	ldr r2, _020fffc8 ; =data_ov03_02100ab8
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov03_020fff94
_020fffbc: .word data_ov03_02100ab0
_020fffc0: .word func_ov03_020fbcc8
_020fffc4: .word func_0203ebc8
_020fffc8: .word data_ov03_02100ab8
data_ov03_020fffcc: ; 0x020fffcc
	.byte 0x28, 0xfe, 0x0f, 0x02
data_ov03_020fffd0: ; 0x020fffd0
	.byte 0x68, 0xfe, 0x0f, 0x02
data_ov03_020fffd4: ; 0x020fffd4
	.byte 0x80, 0xfe, 0x0f, 0x02
data_ov03_020fffd8: ; 0x020fffd8
	.byte 0xbc, 0xfe, 0x0f, 0x02
data_ov03_020fffdc: ; 0x020fffdc
	.byte 0xdc, 0xfe, 0x0f, 0x02
data_ov03_020fffe0: ; 0x020fffe0
	.byte 0x04, 0xff, 0x0f, 0x02
data_ov03_020fffe4: ; 0x020fffe4
	.byte 0x2c, 0xff, 0x0f, 0x02
data_ov03_020fffe8: ; 0x020fffe8
	.byte 0x54, 0xff, 0x0f, 0x02
data_ov03_020fffec: ; 0x020fffec
	.byte 0x94, 0xff, 0x0f, 0x02
data_ov03_020ffff0: ; 0x020ffff0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_020ffff4: ; 0x020ffff4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_020ffff8: ; 0x020ffff8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_020ffffc: ; 0x020ffffc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100000: ; 0x02100000
	.byte 0x62, 0x72, 0x67, 0x00
data_ov03_02100004: ; 0x02100004
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov03_02100008: ; 0x02100008
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov03_0210000c: ; 0x0210000c
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov03_02100010: ; 0x02100010
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov03_02100014: ; 0x02100014
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov03_02100018: ; 0x02100018
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov03_0210001c: ; 0x0210001c
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov03_02100020: ; 0x02100020
	.byte 0x1c, 0x00, 0x10, 0x02
data_ov03_02100024: ; 0x02100024
	.byte 0x18, 0x00, 0x10, 0x02
data_ov03_02100028: ; 0x02100028
	.byte 0x14, 0x00, 0x10, 0x02
data_ov03_0210002c: ; 0x0210002c
	.byte 0x10, 0x00, 0x10, 0x02
data_ov03_02100030: ; 0x02100030
	.byte 0x0c, 0x00, 0x10, 0x02
data_ov03_02100034: ; 0x02100034
	.byte 0x08, 0x00, 0x10, 0x02
data_ov03_02100038: ; 0x02100038
	.byte 0x04, 0x00, 0x10, 0x02
data_ov03_0210003c: ; 0x0210003c
	.byte 0x00, 0x00, 0x10, 0x02
data_ov03_02100040: ; 0x02100040
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100044: ; 0x02100044
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100048: ; 0x02100048
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210004c: ; 0x0210004c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100050: ; 0x02100050
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100054: ; 0x02100054
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100058: ; 0x02100058
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210005c: ; 0x0210005c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100060: ; 0x02100060
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100064: ; 0x02100064
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov03_02100068: ; 0x02100068
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov03_0210006c: ; 0x0210006c
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov03_02100070: ; 0x02100070
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov03_02100074: ; 0x02100074
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov03_02100078: ; 0x02100078
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov03_0210007c: ; 0x0210007c
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov03_02100080: ; 0x02100080
	.byte 0x62, 0x72, 0x67, 0x00
data_ov03_02100084: ; 0x02100084
	.byte 0x7c, 0x00, 0x10, 0x02
data_ov03_02100088: ; 0x02100088
	.byte 0x68, 0x00, 0x10, 0x02
data_ov03_0210008c: ; 0x0210008c
	.byte 0x74, 0x00, 0x10, 0x02
data_ov03_02100090: ; 0x02100090
	.byte 0x70, 0x00, 0x10, 0x02
data_ov03_02100094: ; 0x02100094
	.byte 0x6c, 0x00, 0x10, 0x02
data_ov03_02100098: ; 0x02100098
	.byte 0x78, 0x00, 0x10, 0x02
data_ov03_0210009c: ; 0x0210009c
	.byte 0x64, 0x00, 0x10, 0x02
data_ov03_021000a0: ; 0x021000a0
	.byte 0x80, 0x00, 0x10, 0x02
data_ov03_021000a4: ; 0x021000a4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021000a8: ; 0x021000a8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021000ac: ; 0x021000ac
	.byte 0x08, 0x12, 0x0f, 0x02
data_ov03_021000b0: ; 0x021000b0
	.byte 0xe8, 0x1c, 0x0f, 0x02
data_ov03_021000b4: ; 0x021000b4
	.byte 0x58, 0x87, 0x03, 0x02
data_ov03_021000b8: ; 0x021000b8
	.byte 0x54, 0x78, 0x03, 0x02
data_ov03_021000bc: ; 0x021000bc
	.byte 0x18, 0x79, 0x03, 0x02
data_ov03_021000c0: ; 0x021000c0
	.byte 0xb4, 0x86, 0x03, 0x02
data_ov03_021000c4: ; 0x021000c4
	.byte 0xb8, 0x86, 0x03, 0x02
data_ov03_021000c8: ; 0x021000c8
	.byte 0xc4, 0x86, 0x03, 0x02
data_ov03_021000cc: ; 0x021000cc
	.byte 0xcc, 0x86, 0x03, 0x02
data_ov03_021000d0: ; 0x021000d0
	.byte 0x70, 0x87, 0x03, 0x02
data_ov03_021000d4: ; 0x021000d4
	.byte 0xa0, 0x0f, 0x0f, 0x02
data_ov03_021000d8: ; 0x021000d8
	.byte 0x50, 0x10, 0x0f, 0x02
data_ov03_021000dc: ; 0x021000dc
	.byte 0xa4, 0x87, 0x03, 0x02
data_ov03_021000e0: ; 0x021000e0
	.byte 0x62, 0x72, 0x67, 0x00
data_ov03_021000e4: ; 0x021000e4
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov03_021000e8: ; 0x021000e8
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov03_021000ec: ; 0x021000ec
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov03_021000f0: ; 0x021000f0
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov03_021000f4: ; 0x021000f4
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov03_021000f8: ; 0x021000f8
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov03_021000fc: ; 0x021000fc
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov03_02100100: ; 0x02100100
	.byte 0xfc, 0x00, 0x10, 0x02
data_ov03_02100104: ; 0x02100104
	.byte 0xf8, 0x00, 0x10, 0x02
data_ov03_02100108: ; 0x02100108
	.byte 0xf4, 0x00, 0x10, 0x02
data_ov03_0210010c: ; 0x0210010c
	.byte 0xf0, 0x00, 0x10, 0x02
data_ov03_02100110: ; 0x02100110
	.byte 0xec, 0x00, 0x10, 0x02
data_ov03_02100114: ; 0x02100114
	.byte 0xe8, 0x00, 0x10, 0x02
data_ov03_02100118: ; 0x02100118
	.byte 0xe4, 0x00, 0x10, 0x02
data_ov03_0210011c: ; 0x0210011c
	.byte 0xe0, 0x00, 0x10, 0x02
data_ov03_02100120: ; 0x02100120
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100124: ; 0x02100124
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100128: ; 0x02100128
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210012c: ; 0x0210012c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100130: ; 0x02100130
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100134: ; 0x02100134
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100138: ; 0x02100138
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210013c: ; 0x0210013c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100140: ; 0x02100140
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100144: ; 0x02100144
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100148: ; 0x02100148
	.byte 0xad, 0x1e, 0x0f, 0x02
data_ov03_0210014c: ; 0x0210014c
	.byte 0xd9, 0x1e, 0x0f, 0x02
data_ov03_02100150: ; 0x02100150
	.byte 0x24, 0x25, 0x0f, 0x02
data_ov03_02100154: ; 0x02100154
	.byte 0x08, 0x22, 0x0f, 0x02
data_ov03_02100158: ; 0x02100158
	.byte 0x94, 0xb9, 0x11, 0x02
data_ov03_0210015c: ; 0x0210015c
	.byte 0x74, 0x27, 0x0f, 0x02
data_ov03_02100160: ; 0x02100160
	.byte 0x64, 0xbc, 0x11, 0x02
data_ov03_02100164: ; 0x02100164
	.byte 0x84, 0xbc, 0x11, 0x02
data_ov03_02100168: ; 0x02100168
	.byte 0xd8, 0xbc, 0x11, 0x02
data_ov03_0210016c: ; 0x0210016c
	.byte 0x14, 0xbd, 0x11, 0x02
data_ov03_02100170: ; 0x02100170
	.byte 0x58, 0xbd, 0x11, 0x02
data_ov03_02100174: ; 0x02100174
	.byte 0x9c, 0x25, 0x0f, 0x02
data_ov03_02100178: ; 0x02100178
	.byte 0xa0, 0x25, 0x0f, 0x02
data_ov03_0210017c: ; 0x0210017c
	.byte 0xa4, 0x25, 0x0f, 0x02
data_ov03_02100180: ; 0x02100180
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100184: ; 0x02100184
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100188: ; 0x02100188
	.byte 0x18, 0x2a, 0x0f, 0x02
data_ov03_0210018c: ; 0x0210018c
	.byte 0x1c, 0x2c, 0x0f, 0x02
data_ov03_02100190: ; 0x02100190
	.byte 0x58, 0x87, 0x03, 0x02
data_ov03_02100194: ; 0x02100194
	.byte 0x54, 0x78, 0x03, 0x02
data_ov03_02100198: ; 0x02100198
	.byte 0x18, 0x79, 0x03, 0x02
data_ov03_0210019c: ; 0x0210019c
	.byte 0xb4, 0x86, 0x03, 0x02
data_ov03_021001a0: ; 0x021001a0
	.byte 0xb8, 0x86, 0x03, 0x02
data_ov03_021001a4: ; 0x021001a4
	.byte 0xc4, 0x86, 0x03, 0x02
data_ov03_021001a8: ; 0x021001a8
	.byte 0xcc, 0x86, 0x03, 0x02
data_ov03_021001ac: ; 0x021001ac
	.byte 0x70, 0x87, 0x03, 0x02
data_ov03_021001b0: ; 0x021001b0
	.byte 0x05, 0x29, 0x0f, 0x02
data_ov03_021001b4: ; 0x021001b4
	.byte 0x45, 0x29, 0x0f, 0x02
data_ov03_021001b8: ; 0x021001b8
	.byte 0xa4, 0x87, 0x03, 0x02
data_ov03_021001bc: ; 0x021001bc
	.byte 0x63, 0x00, 0x00, 0x00
data_ov03_021001c0: ; 0x021001c0
	.byte 0x71, 0x00, 0x00, 0x00
data_ov03_021001c4: ; 0x021001c4
	.byte 0x79, 0x00, 0x00, 0x00
data_ov03_021001c8: ; 0x021001c8
	.byte 0x64, 0x00, 0x00, 0x00
data_ov03_021001cc: ; 0x021001cc
	.byte 0x30, 0x00, 0x00, 0x00
data_ov03_021001d0: ; 0x021001d0
	.byte 0x6e, 0x00, 0x00, 0x00
data_ov03_021001d4: ; 0x021001d4
	.byte 0x6a, 0x00, 0x00, 0x00
data_ov03_021001d8: ; 0x021001d8
	.byte 0x78, 0x00, 0x00, 0x00
data_ov03_021001dc: ; 0x021001dc
	.byte 0x72, 0x00, 0x00, 0x00
data_ov03_021001e0: ; 0x021001e0
	.byte 0x66, 0x00, 0x00, 0x00
data_ov03_021001e4: ; 0x021001e4
	.byte 0x2a, 0x00, 0x00, 0x00
data_ov03_021001e8: ; 0x021001e8
	.byte 0x31, 0x00, 0x00, 0x00
data_ov03_021001ec: ; 0x021001ec
	.byte 0x39, 0x00, 0x00, 0x00
data_ov03_021001f0: ; 0x021001f0
	.byte 0x6b, 0x00, 0x00, 0x00
data_ov03_021001f4: ; 0x021001f4
	.byte 0x62, 0x00, 0x00, 0x00
data_ov03_021001f8: ; 0x021001f8
	.byte 0x69, 0x00, 0x00, 0x00
data_ov03_021001fc: ; 0x021001fc
	.byte 0x70, 0x00, 0x00, 0x00
data_ov03_02100200: ; 0x02100200
	.byte 0x77, 0x00, 0x00, 0x00
data_ov03_02100204: ; 0x02100204
	.byte 0x37, 0x00, 0x00, 0x00
data_ov03_02100208: ; 0x02100208
	.byte 0x74, 0x00, 0x00, 0x00
data_ov03_0210020c: ; 0x0210020c
	.byte 0x6d, 0x00, 0x00, 0x00
data_ov03_02100210: ; 0x02100210
	.byte 0x67, 0x00, 0x00, 0x00
data_ov03_02100214: ; 0x02100214
	.byte 0x3c, 0x00, 0x00, 0x00
data_ov03_02100218: ; 0x02100218
	.byte 0x35, 0x00, 0x00, 0x00
data_ov03_0210021c: ; 0x0210021c
	.byte 0x33, 0x00, 0x00, 0x00
data_ov03_02100220: ; 0x02100220
	.byte 0x32, 0x00, 0x00, 0x00
data_ov03_02100224: ; 0x02100224
	.byte 0x3d, 0x00, 0x00, 0x00
data_ov03_02100228: ; 0x02100228
	.byte 0x3e, 0x00, 0x00, 0x00
data_ov03_0210022c: ; 0x0210022c
	.byte 0x34, 0x00, 0x00, 0x00
data_ov03_02100230: ; 0x02100230
	.byte 0x2d, 0x00, 0x00, 0x00
data_ov03_02100234: ; 0x02100234
	.byte 0x38, 0x00, 0x00, 0x00
data_ov03_02100238: ; 0x02100238
	.byte 0x61, 0x00, 0x00, 0x00
data_ov03_0210023c: ; 0x0210023c
	.byte 0x65, 0x00, 0x00, 0x00
data_ov03_02100240: ; 0x02100240
	.byte 0x68, 0x00, 0x00, 0x00
data_ov03_02100244: ; 0x02100244
	.byte 0x6c, 0x00, 0x00, 0x00
data_ov03_02100248: ; 0x02100248
	.byte 0x6f, 0x00, 0x00, 0x00
data_ov03_0210024c: ; 0x0210024c
	.byte 0x73, 0x00, 0x00, 0x00
data_ov03_02100250: ; 0x02100250
	.byte 0x76, 0x00, 0x00, 0x00
data_ov03_02100254: ; 0x02100254
	.byte 0x7a, 0x00, 0x00, 0x00
data_ov03_02100258: ; 0x02100258
	.byte 0x36, 0x00, 0x00, 0x00
data_ov03_0210025c: ; 0x0210025c
	.byte 0x2b, 0x00, 0x00, 0x00
data_ov03_02100260: ; 0x02100260
	.byte 0x75, 0x00, 0x00, 0x00
data_ov03_02100264: ; 0x02100264
	.byte 0x82, 0xbe, 0x00, 0x00
data_ov03_02100268: ; 0x02100268
	.byte 0x82, 0xdd, 0x00, 0x00
data_ov03_0210026c: ; 0x0210026c
	.byte 0x82, 0xc0, 0x00, 0x00
data_ov03_02100270: ; 0x02100270
	.byte 0x82, 0xc3, 0x00, 0x00
data_ov03_02100274: ; 0x02100274
	.byte 0x82, 0xe0, 0x00, 0x00
data_ov03_02100278: ; 0x02100278
	.byte 0x82, 0xe2, 0x00, 0x00
data_ov03_0210027c: ; 0x0210027c
	.byte 0x82, 0xc5, 0x00, 0x00
data_ov03_02100280: ; 0x02100280
	.byte 0x82, 0xe4, 0x00, 0x00
data_ov03_02100284: ; 0x02100284
	.byte 0x82, 0xc7, 0x00, 0x00
data_ov03_02100288: ; 0x02100288
	.byte 0x82, 0xef, 0x00, 0x00
data_ov03_0210028c: ; 0x0210028c
	.byte 0x82, 0xe6, 0x00, 0x00
data_ov03_02100290: ; 0x02100290
	.byte 0x82, 0xee, 0x00, 0x00
data_ov03_02100294: ; 0x02100294
	.byte 0x82, 0xce, 0x00, 0x00
data_ov03_02100298: ; 0x02100298
	.byte 0x82, 0xe7, 0x00, 0x00
data_ov03_0210029c: ; 0x0210029c
	.byte 0x82, 0xdf, 0x00, 0x00
data_ov03_021002a0: ; 0x021002a0
	.byte 0x82, 0xde, 0x00, 0x00
data_ov03_021002a4: ; 0x021002a4
	.byte 0x82, 0xe8, 0x00, 0x00
data_ov03_021002a8: ; 0x021002a8
	.byte 0x82, 0xdc, 0x00, 0x00
data_ov03_021002ac: ; 0x021002ac
	.byte 0x82, 0xd9, 0x00, 0x00
data_ov03_021002b0: ; 0x021002b0
	.byte 0x82, 0xd6, 0x00, 0x00
data_ov03_021002b4: ; 0x021002b4
	.byte 0x82, 0xd1, 0x00, 0x00
data_ov03_021002b8: ; 0x021002b8
	.byte 0x82, 0xe9, 0x00, 0x00
data_ov03_021002bc: ; 0x021002bc
	.byte 0x82, 0xea, 0x00, 0x00
data_ov03_021002c0: ; 0x021002c0
	.byte 0x82, 0xd4, 0x00, 0x00
data_ov03_021002c4: ; 0x021002c4
	.byte 0x82, 0xeb, 0x00, 0x00
data_ov03_021002c8: ; 0x021002c8
	.byte 0x82, 0xed, 0x00, 0x00
data_ov03_021002cc: ; 0x021002cc
	.byte 0x82, 0xd7, 0x00, 0x00
data_ov03_021002d0: ; 0x021002d0
	.byte 0x82, 0xf0, 0x00, 0x00
data_ov03_021002d4: ; 0x021002d4
	.byte 0x82, 0xa6, 0x00, 0x00
data_ov03_021002d8: ; 0x021002d8
	.byte 0x82, 0xf1, 0x00, 0x00
data_ov03_021002dc: ; 0x021002dc
	.byte 0x82, 0xda, 0x00, 0x00
data_ov03_021002e0: ; 0x021002e0
	.byte 0x81, 0x99, 0x00, 0x00
data_ov03_021002e4: ; 0x021002e4
	.byte 0x81, 0x87, 0x00, 0x00
data_ov03_021002e8: ; 0x021002e8
	.byte 0x82, 0xcf, 0x00, 0x00
data_ov03_021002ec: ; 0x021002ec
	.byte 0x82, 0xb1, 0x00, 0x00
data_ov03_021002f0: ; 0x021002f0
	.byte 0x82, 0xaa, 0x00, 0x00
data_ov03_021002f4: ; 0x021002f4
	.byte 0x82, 0xb3, 0x00, 0x00
data_ov03_021002f8: ; 0x021002f8
	.byte 0x82, 0xb5, 0x00, 0x00
data_ov03_021002fc: ; 0x021002fc
	.byte 0x82, 0xac, 0x00, 0x00
data_ov03_02100300: ; 0x02100300
	.byte 0x82, 0xaf, 0x00, 0x00
data_ov03_02100304: ; 0x02100304
	.byte 0x82, 0xad, 0x00, 0x00
data_ov03_02100308: ; 0x02100308
	.byte 0x82, 0xab, 0x00, 0x00
data_ov03_0210030c: ; 0x0210030c
	.byte 0x82, 0xa9, 0x00, 0x00
data_ov03_02100310: ; 0x02100310
	.byte 0x82, 0xa8, 0x00, 0x00
data_ov03_02100314: ; 0x02100314
	.byte 0x82, 0xd2, 0x00, 0x00
data_ov03_02100318: ; 0x02100318
	.byte 0x82, 0xa4, 0x00, 0x00
data_ov03_0210031c: ; 0x0210031c
	.byte 0x82, 0xa2, 0x00, 0x00
data_ov03_02100320: ; 0x02100320
	.byte 0x82, 0xa0, 0x00, 0x00
data_ov03_02100324: ; 0x02100324
	.byte 0x82, 0xb7, 0x00, 0x00
data_ov03_02100328: ; 0x02100328
	.byte 0x82, 0xb9, 0x00, 0x00
data_ov03_0210032c: ; 0x0210032c
	.byte 0x82, 0xae, 0x00, 0x00
data_ov03_02100330: ; 0x02100330
	.byte 0x82, 0xbb, 0x00, 0x00
data_ov03_02100334: ; 0x02100334
	.byte 0x82, 0xbd, 0x00, 0x00
data_ov03_02100338: ; 0x02100338
	.byte 0x82, 0xb0, 0x00, 0x00
data_ov03_0210033c: ; 0x0210033c
	.byte 0x82, 0xd5, 0x00, 0x00
data_ov03_02100340: ; 0x02100340
	.byte 0x82, 0xbf, 0x00, 0x00
data_ov03_02100344: ; 0x02100344
	.byte 0x82, 0xc2, 0x00, 0x00
data_ov03_02100348: ; 0x02100348
	.byte 0x82, 0xb2, 0x00, 0x00
data_ov03_0210034c: ; 0x0210034c
	.byte 0x82, 0xc4, 0x00, 0x00
data_ov03_02100350: ; 0x02100350
	.byte 0x82, 0xc6, 0x00, 0x00
data_ov03_02100354: ; 0x02100354
	.byte 0x82, 0xb4, 0x00, 0x00
data_ov03_02100358: ; 0x02100358
	.byte 0x82, 0xd8, 0x00, 0x00
data_ov03_0210035c: ; 0x0210035c
	.byte 0x82, 0xc8, 0x00, 0x00
data_ov03_02100360: ; 0x02100360
	.byte 0x82, 0xc9, 0x00, 0x00
data_ov03_02100364: ; 0x02100364
	.byte 0x82, 0xb6, 0x00, 0x00
data_ov03_02100368: ; 0x02100368
	.byte 0x82, 0xca, 0x00, 0x00
data_ov03_0210036c: ; 0x0210036c
	.byte 0x82, 0xb8, 0x00, 0x00
data_ov03_02100370: ; 0x02100370
	.byte 0x82, 0xdb, 0x00, 0x00
data_ov03_02100374: ; 0x02100374
	.byte 0x82, 0xba, 0x00, 0x00
data_ov03_02100378: ; 0x02100378
	.byte 0x6f, 0x32, 0x00, 0x00
data_ov03_0210037c: ; 0x0210037c
	.byte 0x82, 0xcd, 0x00, 0x00
data_ov03_02100380: ; 0x02100380
	.byte 0x82, 0xcb, 0x00, 0x00
data_ov03_02100384: ; 0x02100384
	.byte 0x82, 0xd0, 0x00, 0x00
data_ov03_02100388: ; 0x02100388
	.byte 0x82, 0xd3, 0x00, 0x00
data_ov03_0210038c: ; 0x0210038c
	.byte 0x82, 0xbc, 0x00, 0x00
data_ov03_02100390: ; 0x02100390
	.byte 0x82, 0xcc, 0x00, 0x00
data_ov03_02100394: ; 0x02100394
	.byte 0x74, 0x72, 0x69, 0x00
data_ov03_02100398: ; 0x02100398
	.byte 0x68, 0x6f, 0x75, 0x72, 0x00, 0x00, 0x00, 0x00
data_ov03_021003a0: ; 0x021003a0
	.byte 0x68, 0x6f, 0x75, 0x72, 0x30, 0x00, 0x00, 0x00
data_ov03_021003a8: ; 0x021003a8
	.byte 0x68, 0x6f, 0x75, 0x72, 0x31, 0x00, 0x00, 0x00
data_ov03_021003b0: ; 0x021003b0
	.byte 0x68, 0x6f, 0x75, 0x72, 0x32, 0x00, 0x00, 0x00
data_ov03_021003b8: ; 0x021003b8
	.byte 0x68, 0x6f, 0x75, 0x72, 0x33, 0x00, 0x00, 0x00
data_ov03_021003c0: ; 0x021003c0
	.byte 0x73, 0x69, 0x6b, 0x61, 0x6b, 0x75, 0x00, 0x00
data_ov03_021003c8: ; 0x021003c8
	.byte 0x73, 0x69, 0x74, 0x61, 0x62, 0x6f, 0x6b, 0x6f
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021003d4: ; 0x021003d4
	.byte 0x63, 0x6f, 0x6d, 0x70, 0x61, 0x73, 0x73, 0x31, 0x00, 0x00, 0x00, 0x00
data_ov03_021003e0: ; 0x021003e0
	.byte 0x63, 0x6f, 0x6d, 0x70, 0x61, 0x73, 0x73, 0x32, 0x00, 0x00, 0x00, 0x00
data_ov03_021003ec: ; 0x021003ec
	.byte 0x63, 0x6f, 0x6d, 0x70
	.byte 0x61, 0x73, 0x73, 0x35, 0x00, 0x00, 0x00, 0x00
data_ov03_021003f8: ; 0x021003f8
	.byte 0x63, 0x6f, 0x6d, 0x70, 0x61, 0x73, 0x73, 0x33
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100404: ; 0x02100404
	.byte 0x63, 0x6f, 0x6d, 0x70, 0x61, 0x73, 0x73, 0x34, 0x00, 0x00, 0x00, 0x00
data_ov03_02100410: ; 0x02100410
	.byte 0x63, 0x6f, 0x6d, 0x70, 0x61, 0x73, 0x73, 0x36, 0x00, 0x00, 0x00, 0x00
data_ov03_0210041c: ; 0x0210041c
	.byte 0xe4, 0x01, 0x10, 0x02
data_ov03_02100420: ; 0x02100420
	.byte 0x5c, 0x02, 0x10, 0x02
data_ov03_02100424: ; 0x02100424
	.byte 0x30, 0x02, 0x10, 0x02
data_ov03_02100428: ; 0x02100428
	.byte 0xcc, 0x01, 0x10, 0x02
data_ov03_0210042c: ; 0x0210042c
	.byte 0xe8, 0x01, 0x10, 0x02
data_ov03_02100430: ; 0x02100430
	.byte 0x20, 0x02, 0x10, 0x02
data_ov03_02100434: ; 0x02100434
	.byte 0x1c, 0x02, 0x10, 0x02
data_ov03_02100438: ; 0x02100438
	.byte 0x2c, 0x02, 0x10, 0x02
data_ov03_0210043c: ; 0x0210043c
	.byte 0x18, 0x02, 0x10, 0x02
data_ov03_02100440: ; 0x02100440
	.byte 0x58, 0x02, 0x10, 0x02
data_ov03_02100444: ; 0x02100444
	.byte 0x04, 0x02, 0x10, 0x02
data_ov03_02100448: ; 0x02100448
	.byte 0x34, 0x02, 0x10, 0x02
data_ov03_0210044c: ; 0x0210044c
	.byte 0xec, 0x01, 0x10, 0x02
data_ov03_02100450: ; 0x02100450
	.byte 0x14, 0x02, 0x10, 0x02
data_ov03_02100454: ; 0x02100454
	.byte 0x24, 0x02, 0x10, 0x02
data_ov03_02100458: ; 0x02100458
	.byte 0x28, 0x02, 0x10, 0x02
data_ov03_0210045c: ; 0x0210045c
	.byte 0x38, 0x02, 0x10, 0x02
data_ov03_02100460: ; 0x02100460
	.byte 0xf4, 0x01, 0x10, 0x02
data_ov03_02100464: ; 0x02100464
	.byte 0xbc, 0x01, 0x10, 0x02
data_ov03_02100468: ; 0x02100468
	.byte 0xc8, 0x01, 0x10, 0x02
data_ov03_0210046c: ; 0x0210046c
	.byte 0x3c, 0x02, 0x10, 0x02
data_ov03_02100470: ; 0x02100470
	.byte 0xe0, 0x01, 0x10, 0x02
data_ov03_02100474: ; 0x02100474
	.byte 0x10, 0x02, 0x10, 0x02
data_ov03_02100478: ; 0x02100478
	.byte 0x40, 0x02, 0x10, 0x02
data_ov03_0210047c: ; 0x0210047c
	.byte 0xf8, 0x01, 0x10, 0x02
data_ov03_02100480: ; 0x02100480
	.byte 0xd4, 0x01, 0x10, 0x02
data_ov03_02100484: ; 0x02100484
	.byte 0xf0, 0x01, 0x10, 0x02
data_ov03_02100488: ; 0x02100488
	.byte 0x44, 0x02, 0x10, 0x02
data_ov03_0210048c: ; 0x0210048c
	.byte 0x0c, 0x02, 0x10, 0x02
data_ov03_02100490: ; 0x02100490
	.byte 0xd0, 0x01, 0x10, 0x02
data_ov03_02100494: ; 0x02100494
	.byte 0x48, 0x02, 0x10, 0x02
data_ov03_02100498: ; 0x02100498
	.byte 0xfc, 0x01, 0x10, 0x02
data_ov03_0210049c: ; 0x0210049c
	.byte 0xc0, 0x01, 0x10, 0x02
data_ov03_021004a0: ; 0x021004a0
	.byte 0xdc, 0x01, 0x10, 0x02
data_ov03_021004a4: ; 0x021004a4
	.byte 0x4c, 0x02, 0x10, 0x02
data_ov03_021004a8: ; 0x021004a8
	.byte 0x08, 0x02, 0x10, 0x02
data_ov03_021004ac: ; 0x021004ac
	.byte 0x60, 0x02, 0x10, 0x02
data_ov03_021004b0: ; 0x021004b0
	.byte 0x50, 0x02, 0x10, 0x02
data_ov03_021004b4: ; 0x021004b4
	.byte 0x00, 0x02, 0x10, 0x02
data_ov03_021004b8: ; 0x021004b8
	.byte 0xd8, 0x01, 0x10, 0x02
data_ov03_021004bc: ; 0x021004bc
	.byte 0xc4, 0x01, 0x10, 0x02
data_ov03_021004c0: ; 0x021004c0
	.byte 0x54, 0x02, 0x10, 0x02
data_ov03_021004c4: ; 0x021004c4
	.byte 0x20, 0x03, 0x10, 0x02
data_ov03_021004c8: ; 0x021004c8
	.byte 0x1c, 0x03, 0x10, 0x02
data_ov03_021004cc: ; 0x021004cc
	.byte 0x18, 0x03, 0x10, 0x02
data_ov03_021004d0: ; 0x021004d0
	.byte 0xd4, 0x02, 0x10, 0x02
data_ov03_021004d4: ; 0x021004d4
	.byte 0x10, 0x03, 0x10, 0x02
data_ov03_021004d8: ; 0x021004d8
	.byte 0x0c, 0x03, 0x10, 0x02
data_ov03_021004dc: ; 0x021004dc
	.byte 0x08, 0x03, 0x10, 0x02
data_ov03_021004e0: ; 0x021004e0
	.byte 0x04, 0x03, 0x10, 0x02
data_ov03_021004e4: ; 0x021004e4
	.byte 0x00, 0x03, 0x10, 0x02
data_ov03_021004e8: ; 0x021004e8
	.byte 0xec, 0x02, 0x10, 0x02
data_ov03_021004ec: ; 0x021004ec
	.byte 0xf4, 0x02, 0x10, 0x02
data_ov03_021004f0: ; 0x021004f0
	.byte 0xf8, 0x02, 0x10, 0x02
data_ov03_021004f4: ; 0x021004f4
	.byte 0x24, 0x03, 0x10, 0x02
data_ov03_021004f8: ; 0x021004f8
	.byte 0x28, 0x03, 0x10, 0x02
data_ov03_021004fc: ; 0x021004fc
	.byte 0x30, 0x03, 0x10, 0x02
data_ov03_02100500: ; 0x02100500
	.byte 0x34, 0x03, 0x10, 0x02
data_ov03_02100504: ; 0x02100504
	.byte 0x40, 0x03, 0x10, 0x02
data_ov03_02100508: ; 0x02100508
	.byte 0x44, 0x03, 0x10, 0x02
data_ov03_0210050c: ; 0x0210050c
	.byte 0x4c, 0x03, 0x10, 0x02
data_ov03_02100510: ; 0x02100510
	.byte 0x50, 0x03, 0x10, 0x02
data_ov03_02100514: ; 0x02100514
	.byte 0x5c, 0x03, 0x10, 0x02
data_ov03_02100518: ; 0x02100518
	.byte 0x60, 0x03, 0x10, 0x02
data_ov03_0210051c: ; 0x0210051c
	.byte 0x68, 0x03, 0x10, 0x02
data_ov03_02100520: ; 0x02100520
	.byte 0x80, 0x03, 0x10, 0x02
data_ov03_02100524: ; 0x02100524
	.byte 0x90, 0x03, 0x10, 0x02
data_ov03_02100528: ; 0x02100528
	.byte 0x7c, 0x03, 0x10, 0x02
data_ov03_0210052c: ; 0x0210052c
	.byte 0x84, 0x03, 0x10, 0x02
data_ov03_02100530: ; 0x02100530
	.byte 0x88, 0x03, 0x10, 0x02
data_ov03_02100534: ; 0x02100534
	.byte 0xb0, 0x02, 0x10, 0x02
data_ov03_02100538: ; 0x02100538
	.byte 0xac, 0x02, 0x10, 0x02
data_ov03_0210053c: ; 0x0210053c
	.byte 0xa8, 0x02, 0x10, 0x02
data_ov03_02100540: ; 0x02100540
	.byte 0x68, 0x02, 0x10, 0x02
data_ov03_02100544: ; 0x02100544
	.byte 0xa0, 0x02, 0x10, 0x02
data_ov03_02100548: ; 0x02100548
	.byte 0x9c, 0x02, 0x10, 0x02
data_ov03_0210054c: ; 0x0210054c
	.byte 0x74, 0x02, 0x10, 0x02
data_ov03_02100550: ; 0x02100550
	.byte 0x78, 0x02, 0x10, 0x02
data_ov03_02100554: ; 0x02100554
	.byte 0x90, 0x02, 0x10, 0x02
data_ov03_02100558: ; 0x02100558
	.byte 0x80, 0x02, 0x10, 0x02
data_ov03_0210055c: ; 0x0210055c
	.byte 0x88, 0x02, 0x10, 0x02
data_ov03_02100560: ; 0x02100560
	.byte 0x8c, 0x02, 0x10, 0x02
data_ov03_02100564: ; 0x02100564
	.byte 0x98, 0x02, 0x10, 0x02
data_ov03_02100568: ; 0x02100568
	.byte 0xa4, 0x02, 0x10, 0x02
data_ov03_0210056c: ; 0x0210056c
	.byte 0xb8, 0x02, 0x10, 0x02
data_ov03_02100570: ; 0x02100570
	.byte 0xbc, 0x02, 0x10, 0x02
data_ov03_02100574: ; 0x02100574
	.byte 0xc4, 0x02, 0x10, 0x02
data_ov03_02100578: ; 0x02100578
	.byte 0xc8, 0x02, 0x10, 0x02
data_ov03_0210057c: ; 0x0210057c
	.byte 0xd0, 0x02, 0x10, 0x02
data_ov03_02100580: ; 0x02100580
	.byte 0xd8, 0x02, 0x10, 0x02
data_ov03_02100584: ; 0x02100584
	.byte 0xe0, 0x02, 0x10, 0x02
data_ov03_02100588: ; 0x02100588
	.byte 0xe4, 0x02, 0x10, 0x02
data_ov03_0210058c: ; 0x0210058c
	.byte 0xf0, 0x02, 0x10, 0x02
data_ov03_02100590: ; 0x02100590
	.byte 0xfc, 0x02, 0x10, 0x02
data_ov03_02100594: ; 0x02100594
	.byte 0x2c, 0x03, 0x10, 0x02
data_ov03_02100598: ; 0x02100598
	.byte 0x38, 0x03, 0x10, 0x02
data_ov03_0210059c: ; 0x0210059c
	.byte 0x48, 0x03, 0x10, 0x02
data_ov03_021005a0: ; 0x021005a0
	.byte 0x54, 0x03, 0x10, 0x02
data_ov03_021005a4: ; 0x021005a4
	.byte 0x64, 0x03, 0x10, 0x02
data_ov03_021005a8: ; 0x021005a8
	.byte 0x6c, 0x03, 0x10, 0x02
data_ov03_021005ac: ; 0x021005ac
	.byte 0x74, 0x03, 0x10, 0x02
data_ov03_021005b0: ; 0x021005b0
	.byte 0x8c, 0x03, 0x10, 0x02
data_ov03_021005b4: ; 0x021005b4
	.byte 0x64, 0x02, 0x10, 0x02
data_ov03_021005b8: ; 0x021005b8
	.byte 0x6c, 0x02, 0x10, 0x02
data_ov03_021005bc: ; 0x021005bc
	.byte 0x70, 0x02, 0x10, 0x02
data_ov03_021005c0: ; 0x021005c0
	.byte 0x7c, 0x02, 0x10, 0x02
data_ov03_021005c4: ; 0x021005c4
	.byte 0x84, 0x02, 0x10, 0x02
data_ov03_021005c8: ; 0x021005c8
	.byte 0x94, 0x02, 0x10, 0x02
data_ov03_021005cc: ; 0x021005cc
	.byte 0xb4, 0x02, 0x10, 0x02
data_ov03_021005d0: ; 0x021005d0
	.byte 0xc0, 0x02, 0x10, 0x02
data_ov03_021005d4: ; 0x021005d4
	.byte 0xcc, 0x02, 0x10, 0x02
data_ov03_021005d8: ; 0x021005d8
	.byte 0xdc, 0x02, 0x10, 0x02
data_ov03_021005dc: ; 0x021005dc
	.byte 0xe8, 0x02, 0x10, 0x02
data_ov03_021005e0: ; 0x021005e0
	.byte 0x14, 0x03, 0x10, 0x02
data_ov03_021005e4: ; 0x021005e4
	.byte 0x3c, 0x03, 0x10, 0x02
data_ov03_021005e8: ; 0x021005e8
	.byte 0x58, 0x03, 0x10, 0x02
data_ov03_021005ec: ; 0x021005ec
	.byte 0x70, 0x03, 0x10, 0x02
data_ov03_021005f0: ; 0x021005f0
	.byte 0x78, 0x03, 0x10, 0x02
data_ov03_021005f4: ; 0x021005f4
	.byte 0xc8, 0x03, 0x10, 0x02
data_ov03_021005f8: ; 0x021005f8
	.byte 0xc0, 0x03, 0x10, 0x02
data_ov03_021005fc: ; 0x021005fc
	.byte 0x98, 0x03, 0x10, 0x02
data_ov03_02100600: ; 0x02100600
	.byte 0x94, 0x03, 0x10, 0x02
data_ov03_02100604: ; 0x02100604
	.byte 0xa0, 0x03, 0x10, 0x02
data_ov03_02100608: ; 0x02100608
	.byte 0xa8, 0x03, 0x10, 0x02
data_ov03_0210060c: ; 0x0210060c
	.byte 0xb0, 0x03, 0x10, 0x02
data_ov03_02100610: ; 0x02100610
	.byte 0xb8, 0x03, 0x10, 0x02
data_ov03_02100614: ; 0x02100614
	.byte 0xd4, 0x03, 0x10, 0x02
data_ov03_02100618: ; 0x02100618
	.byte 0xe0, 0x03, 0x10, 0x02
data_ov03_0210061c: ; 0x0210061c
	.byte 0xf8, 0x03, 0x10, 0x02
data_ov03_02100620: ; 0x02100620
	.byte 0x04, 0x04, 0x10, 0x02
data_ov03_02100624: ; 0x02100624
	.byte 0xec, 0x03, 0x10, 0x02
data_ov03_02100628: ; 0x02100628
	.byte 0x10, 0x04, 0x10, 0x02
data_ov03_0210062c: ; 0x0210062c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100630: ; 0x02100630
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100634: ; 0x02100634
	.byte 0xdc, 0x2c, 0x0f, 0x02
data_ov03_02100638: ; 0x02100638
	.byte 0xe0, 0x2c, 0x0f, 0x02
data_ov03_0210063c: ; 0x0210063c
	.byte 0x38, 0x2c, 0x0f, 0x02
data_ov03_02100640: ; 0x02100640
	.byte 0x3c, 0x2c, 0x0f, 0x02
data_ov03_02100644: ; 0x02100644
	.byte 0x94, 0x2c, 0x0f, 0x02
data_ov03_02100648: ; 0x02100648
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210064c: ; 0x0210064c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100650: ; 0x02100650
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100654: ; 0x02100654
	.byte 0x2c, 0x35, 0x0f, 0x02
data_ov03_02100658: ; 0x02100658
	.byte 0x30, 0x35, 0x0f, 0x02
data_ov03_0210065c: ; 0x0210065c
	.byte 0x5c, 0x2d, 0x0f, 0x02
data_ov03_02100660: ; 0x02100660
	.byte 0x68, 0x2d, 0x0f, 0x02
data_ov03_02100664: ; 0x02100664
	.byte 0xa8, 0x2f, 0x0f, 0x02
data_ov03_02100668: ; 0x02100668
	.byte 0x1c, 0x30, 0x0f, 0x02
data_ov03_0210066c: ; 0x0210066c
	.byte 0x14, 0x30, 0x0f, 0x02
data_ov03_02100670: ; 0x02100670
	.byte 0x44, 0x35, 0x0f, 0x02
data_ov03_02100674: ; 0x02100674
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100678: ; 0x02100678
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210067c: ; 0x0210067c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100680: ; 0x02100680
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100684: ; 0x02100684
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100688: ; 0x02100688
	.byte 0xa4, 0x2f, 0x0f, 0x02
data_ov03_0210068c: ; 0x0210068c
	.byte 0x18, 0x35, 0x0f, 0x02
data_ov03_02100690: ; 0x02100690
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100694: ; 0x02100694
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100698: ; 0x02100698
	.byte 0x31, 0x42, 0x0f, 0x02
data_ov03_0210069c: ; 0x0210069c
	.byte 0x45, 0x36, 0x11, 0x02
data_ov03_021006a0: ; 0x021006a0
	.byte 0x69, 0x42, 0x0f, 0x02
data_ov03_021006a4: ; 0x021006a4
	.byte 0x0d, 0x43, 0x0f, 0x02
data_ov03_021006a8: ; 0x021006a8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021006ac: ; 0x021006ac
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021006b0: ; 0x021006b0
	.byte 0xdd, 0x44, 0x0f, 0x02
data_ov03_021006b4: ; 0x021006b4
	.byte 0xe1, 0x44, 0x0f, 0x02
data_ov03_021006b8: ; 0x021006b8
	.byte 0xf1, 0x44, 0x0f, 0x02
data_ov03_021006bc: ; 0x021006bc
	.byte 0xf5, 0x44, 0x0f, 0x02
data_ov03_021006c0: ; 0x021006c0
	.byte 0xf9, 0x44, 0x0f, 0x02
data_ov03_021006c4: ; 0x021006c4
	.byte 0xfc, 0x44, 0x0f, 0x02
data_ov03_021006c8: ; 0x021006c8
	.byte 0x00, 0x45, 0x0f, 0x02
data_ov03_021006cc: ; 0x021006cc
	.byte 0x04, 0x45, 0x0f, 0x02
data_ov03_021006d0: ; 0x021006d0
	.byte 0x08, 0x45, 0x0f, 0x02
data_ov03_021006d4: ; 0x021006d4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021006d8: ; 0x021006d8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021006dc: ; 0x021006dc
	.byte 0x01, 0x51, 0x0f, 0x02
data_ov03_021006e0: ; 0x021006e0
	.byte 0x25, 0x51, 0x0f, 0x02
data_ov03_021006e4: ; 0x021006e4
	.byte 0x45, 0x51, 0x0f, 0x02
data_ov03_021006e8: ; 0x021006e8
	.byte 0x89, 0x51, 0x0f, 0x02
data_ov03_021006ec: ; 0x021006ec
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021006f0: ; 0x021006f0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021006f4: ; 0x021006f4
	.byte 0x35, 0x52, 0x0f, 0x02
data_ov03_021006f8: ; 0x021006f8
	.byte 0x51, 0x52, 0x0f, 0x02
data_ov03_021006fc: ; 0x021006fc
	.byte 0x89, 0x52, 0x0f, 0x02
data_ov03_02100700: ; 0x02100700
	.byte 0x95, 0x52, 0x0f, 0x02
data_ov03_02100704: ; 0x02100704
	.byte 0x62, 0x72, 0x67, 0x00
data_ov03_02100708: ; 0x02100708
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov03_0210070c: ; 0x0210070c
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov03_02100710: ; 0x02100710
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov03_02100714: ; 0x02100714
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov03_02100718: ; 0x02100718
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov03_0210071c: ; 0x0210071c
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov03_02100720: ; 0x02100720
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov03_02100724: ; 0x02100724
	.byte 0x20, 0x07, 0x10, 0x02
data_ov03_02100728: ; 0x02100728
	.byte 0x1c, 0x07, 0x10, 0x02
data_ov03_0210072c: ; 0x0210072c
	.byte 0x18, 0x07, 0x10, 0x02
data_ov03_02100730: ; 0x02100730
	.byte 0x14, 0x07, 0x10, 0x02
data_ov03_02100734: ; 0x02100734
	.byte 0x10, 0x07, 0x10, 0x02
data_ov03_02100738: ; 0x02100738
	.byte 0x0c, 0x07, 0x10, 0x02
data_ov03_0210073c: ; 0x0210073c
	.byte 0x08, 0x07, 0x10, 0x02
data_ov03_02100740: ; 0x02100740
	.byte 0x04, 0x07, 0x10, 0x02
data_ov03_02100744: ; 0x02100744
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100748: ; 0x02100748
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210074c: ; 0x0210074c
	.byte 0xec, 0x5e, 0x0f, 0x02
data_ov03_02100750: ; 0x02100750
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100754: ; 0x02100754
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100758: ; 0x02100758
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210075c: ; 0x0210075c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100760: ; 0x02100760
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100764: ; 0x02100764
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100768: ; 0x02100768
	.byte 0xa5, 0x75, 0x0f, 0x02
data_ov03_0210076c: ; 0x0210076c
	.byte 0x0d, 0x76, 0x0f, 0x02
data_ov03_02100770: ; 0x02100770
	.byte 0xf4, 0xb7, 0x11, 0x02
data_ov03_02100774: ; 0x02100774
	.byte 0x30, 0x7c, 0x0f, 0x02
data_ov03_02100778: ; 0x02100778
	.byte 0xd0, 0x7b, 0x0f, 0x02
data_ov03_0210077c: ; 0x0210077c
	.byte 0xf4, 0xba, 0x11, 0x02
data_ov03_02100780: ; 0x02100780
	.byte 0xe4, 0x7d, 0x0f, 0x02
data_ov03_02100784: ; 0x02100784
	.byte 0x84, 0xbc, 0x11, 0x02
data_ov03_02100788: ; 0x02100788
	.byte 0xd8, 0xbc, 0x11, 0x02
data_ov03_0210078c: ; 0x0210078c
	.byte 0x04, 0x7e, 0x0f, 0x02
data_ov03_02100790: ; 0x02100790
	.byte 0x58, 0xbd, 0x11, 0x02
data_ov03_02100794: ; 0x02100794
	.byte 0x30, 0x77, 0x0f, 0x02
data_ov03_02100798: ; 0x02100798
	.byte 0x78, 0x76, 0x0f, 0x02
data_ov03_0210079c: ; 0x0210079c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007a0: ; 0x021007a0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007a4: ; 0x021007a4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007a8: ; 0x021007a8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007ac: ; 0x021007ac
	.byte 0x62, 0x72, 0x67, 0x00
data_ov03_021007b0: ; 0x021007b0
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov03_021007b4: ; 0x021007b4
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov03_021007b8: ; 0x021007b8
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov03_021007bc: ; 0x021007bc
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov03_021007c0: ; 0x021007c0
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov03_021007c4: ; 0x021007c4
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov03_021007c8: ; 0x021007c8
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov03_021007cc: ; 0x021007cc
	.byte 0xc8, 0x07, 0x10, 0x02
data_ov03_021007d0: ; 0x021007d0
	.byte 0xc4, 0x07, 0x10, 0x02
data_ov03_021007d4: ; 0x021007d4
	.byte 0xc0, 0x07, 0x10, 0x02
data_ov03_021007d8: ; 0x021007d8
	.byte 0xbc, 0x07, 0x10, 0x02
data_ov03_021007dc: ; 0x021007dc
	.byte 0xb8, 0x07, 0x10, 0x02
data_ov03_021007e0: ; 0x021007e0
	.byte 0xb4, 0x07, 0x10, 0x02
data_ov03_021007e4: ; 0x021007e4
	.byte 0xb0, 0x07, 0x10, 0x02
data_ov03_021007e8: ; 0x021007e8
	.byte 0xac, 0x07, 0x10, 0x02
data_ov03_021007ec: ; 0x021007ec
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007f0: ; 0x021007f0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007f4: ; 0x021007f4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007f8: ; 0x021007f8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021007fc: ; 0x021007fc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100800: ; 0x02100800
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100804: ; 0x02100804
	.byte 0x3d, 0xab, 0x0f, 0x02
data_ov03_02100808: ; 0x02100808
	.byte 0x41, 0xab, 0x0f, 0x02
data_ov03_0210080c: ; 0x0210080c
	.byte 0x51, 0xab, 0x0f, 0x02
data_ov03_02100810: ; 0x02100810
	.byte 0x59, 0xab, 0x0f, 0x02
data_ov03_02100814: ; 0x02100814
	.byte 0x5d, 0xab, 0x0f, 0x02
data_ov03_02100818: ; 0x02100818
	.byte 0x61, 0xab, 0x0f, 0x02
data_ov03_0210081c: ; 0x0210081c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100820: ; 0x02100820
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100824: ; 0x02100824
	.byte 0x55, 0xb0, 0x0f, 0x02
data_ov03_02100828: ; 0x02100828
	.byte 0x45, 0x36, 0x11, 0x02
data_ov03_0210082c: ; 0x0210082c
	.byte 0x85, 0xb0, 0x0f, 0x02
data_ov03_02100830: ; 0x02100830
	.byte 0xa9, 0xb0, 0x0f, 0x02
data_ov03_02100834: ; 0x02100834
	.byte 0x62, 0x72, 0x67, 0x00
data_ov03_02100838: ; 0x02100838
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov03_0210083c: ; 0x0210083c
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov03_02100840: ; 0x02100840
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov03_02100844: ; 0x02100844
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov03_02100848: ; 0x02100848
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov03_0210084c: ; 0x0210084c
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov03_02100850: ; 0x02100850
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov03_02100854: ; 0x02100854
	.byte 0x50, 0x08, 0x10, 0x02
data_ov03_02100858: ; 0x02100858
	.byte 0x4c, 0x08, 0x10, 0x02
data_ov03_0210085c: ; 0x0210085c
	.byte 0x48, 0x08, 0x10, 0x02
data_ov03_02100860: ; 0x02100860
	.byte 0x44, 0x08, 0x10, 0x02
data_ov03_02100864: ; 0x02100864
	.byte 0x40, 0x08, 0x10, 0x02
data_ov03_02100868: ; 0x02100868
	.byte 0x3c, 0x08, 0x10, 0x02
data_ov03_0210086c: ; 0x0210086c
	.byte 0x38, 0x08, 0x10, 0x02
data_ov03_02100870: ; 0x02100870
	.byte 0x34, 0x08, 0x10, 0x02
data_ov03_02100874: ; 0x02100874
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_02100878: ; 0x02100878
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_0210087c: ; 0x0210087c
	.byte 0x9d, 0xb4, 0x0f, 0x02
data_ov03_02100880: ; 0x02100880
	.byte 0xc1, 0xb4, 0x0f, 0x02
data_ov03_02100884: ; 0x02100884
	.byte 0xe9, 0xb4, 0x0f, 0x02
data_ov03_02100888: ; 0x02100888
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov03_0210088c: ; 0x0210088c
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov03_02100890: ; 0x02100890
	.byte 0x14, 0xbb, 0x0f, 0x02
data_ov03_02100894: ; 0x02100894
	.byte 0x34, 0xbb, 0x0f, 0x02
data_ov03_02100898: ; 0x02100898
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov03_0210089c: ; 0x0210089c
	.byte 0xa8, 0xbc, 0x0f, 0x02
data_ov03_021008a0: ; 0x021008a0
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov03_021008a4: ; 0x021008a4
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov03_021008a8: ; 0x021008a8
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov03_021008ac: ; 0x021008ac
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov03_021008b0: ; 0x021008b0
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov03_021008b4: ; 0x021008b4
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov03_021008b8: ; 0x021008b8
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov03_021008bc: ; 0x021008bc
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov03_021008c0: ; 0x021008c0
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov03_021008c4: ; 0x021008c4
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov03_021008c8: ; 0x021008c8
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov03_021008cc: ; 0x021008cc
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov03_021008d0: ; 0x021008d0
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov03_021008d4: ; 0x021008d4
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov03_021008d8: ; 0x021008d8
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov03_021008dc: ; 0x021008dc
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov03_021008e0: ; 0x021008e0
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov03_021008e4: ; 0x021008e4
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov03_021008e8: ; 0x021008e8
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov03_021008ec: ; 0x021008ec
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov03_021008f0: ; 0x021008f0
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov03_021008f4: ; 0x021008f4
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov03_021008f8: ; 0x021008f8
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov03_021008fc: ; 0x021008fc
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov03_02100900: ; 0x02100900
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov03_02100904: ; 0x02100904
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov03_02100908: ; 0x02100908
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov03_0210090c: ; 0x0210090c
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov03_02100910: ; 0x02100910
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov03_02100914: ; 0x02100914
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov03_02100918: ; 0x02100918
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov03_0210091c: ; 0x0210091c
	.byte 0x6c, 0x1b, 0x0c, 0x02
data_ov03_02100920: ; 0x02100920
	.byte 0xb4, 0x1b, 0x0c, 0x02
data_ov03_02100924: ; 0x02100924
	.byte 0xf8, 0x1b, 0x0c, 0x02
data_ov03_02100928: ; 0x02100928
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov03_0210092c: ; 0x0210092c
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov03_02100930: ; 0x02100930
	.byte 0x2f, 0x4d, 0x65, 0x6e, 0x75, 0x2f, 0x54, 0x65, 0x78, 0x32, 0x44, 0x2f, 0x6d, 0x69, 0x6e, 0x69
	.byte 0x67, 0x61, 0x6d, 0x65, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov03_0210094c: ; 0x0210094c
	.byte 0x4d, 0x54, 0x58, 0x00
data_ov03_02100950: ; 0x02100950
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x43, 0x6f, 0x75, 0x6e
	.byte 0x74, 0x31, 0x00, 0x00
data_ov03_02100964: ; 0x02100964
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65
	.byte 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x32, 0x00, 0x00
data_ov03_02100978: ; 0x02100978
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69
	.byte 0x67, 0x61, 0x6d, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x33, 0x00, 0x00
data_ov03_0210098c: ; 0x0210098c
	.byte 0x2f, 0x4d, 0x65, 0x6e
	.byte 0x75, 0x2f, 0x54, 0x65, 0x78, 0x32, 0x44, 0x2f, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65
	.byte 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov03_021009a8: ; 0x021009a8
	.byte 0x4d, 0x54, 0x58, 0x00
data_ov03_021009ac: ; 0x021009ac
	.byte 0x4d, 0x54, 0x58, 0x3a
	.byte 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x46, 0x69, 0x6e, 0x69, 0x73, 0x68, 0x00, 0x00
data_ov03_021009c0: ; 0x021009c0
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x53, 0x74, 0x61, 0x72
	.byte 0x74, 0x00, 0x00, 0x00
data_ov03_021009d4: ; 0x021009d4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021009d8: ; 0x021009d8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov03_021009dc: ; 0x021009dc
	.byte 0x4c, 0xbd, 0x0f, 0x02
data_ov03_021009e0: ; 0x021009e0
	.byte 0x60, 0xbd, 0x0f, 0x02
data_ov03_021009e4: ; 0x021009e4
	.byte 0xb8, 0x52, 0x12, 0x02
data_ov03_021009e8: ; 0x021009e8
	.byte 0x7c, 0xbd, 0x0f, 0x02
data_ov03_021009ec: ; 0x021009ec
	.byte 0x94, 0xb6, 0x08, 0x02
data_ov03_021009f0: ; 0x021009f0
	.byte 0x98, 0xb6, 0x08, 0x02
data_ov03_021009f4: ; 0x021009f4
	.byte 0xb8, 0xb6, 0x08, 0x02
data_ov03_021009f8: ; 0x021009f8
	.byte 0x38, 0xbf, 0x0f, 0x02
data_ov03_021009fc: ; 0x021009fc
	.byte 0xbc, 0xb6, 0x08, 0x02
data_ov03_02100a00: ; 0x02100a00
	.byte 0xc4, 0xb6, 0x08, 0x02
data_ov03_02100a04: ; 0x02100a04
	.byte 0xc8, 0xb6, 0x08, 0x02
data_ov03_02100a08: ; 0x02100a08
	.byte 0xd0, 0xb6, 0x08, 0x02
data_ov03_02100a0c: ; 0x02100a0c
	.byte 0xb4, 0x58, 0x12, 0x02
data_ov03_02100a10: ; 0x02100a10
	.byte 0xc8, 0x58, 0x12, 0x02
data_ov03_02100a14: ; 0x02100a14
	.byte 0xe8, 0xb6, 0x08, 0x02
data_ov03_02100a18: ; 0x02100a18
	.byte 0xf0, 0xb6, 0x08, 0x02
data_ov03_02100a1c: ; 0x02100a1c
	.byte 0xf8, 0xb6, 0x08, 0x02
data_ov03_02100a20: ; 0x02100a20
	.byte 0x00, 0xb7, 0x08, 0x02
data_ov03_02100a24: ; 0x02100a24
	.byte 0x04, 0xb7, 0x08, 0x02
data_ov03_02100a28: ; 0x02100a28
	.byte 0x0c, 0xb7, 0x08, 0x02
data_ov03_02100a2c: ; 0x02100a2c
	.byte 0x10, 0xb7, 0x08, 0x02
data_ov03_02100a30: ; 0x02100a30
	.byte 0x00, 0xca, 0x08, 0x02
data_ov03_02100a34: ; 0x02100a34
	.byte 0x1c, 0xb7, 0x08, 0x02
data_ov03_02100a38: ; 0x02100a38
	.byte 0x44, 0xb8, 0x08, 0x02
data_ov03_02100a3c: ; 0x02100a3c
	.byte 0x70, 0xb8, 0x08, 0x02
data_ov03_02100a40: ; 0x02100a40
	.byte 0x9c, 0xb8, 0x08, 0x02
data_ov03_02100a44: ; 0x02100a44
	.byte 0x30, 0xba, 0x08, 0x02
data_ov03_02100a48: ; 0x02100a48
	.byte 0x38, 0xba, 0x08, 0x02
data_ov03_02100a4c: ; 0x02100a4c
	.byte 0x40, 0xba, 0x08, 0x02
data_ov03_02100a50: ; 0x02100a50
	.byte 0x48, 0xba, 0x08, 0x02
data_ov03_02100a54: ; 0x02100a54
	.byte 0x50, 0xba, 0x08, 0x02
data_ov03_02100a58: ; 0x02100a58
	.byte 0x24, 0x5c, 0x12, 0x02
data_ov03_02100a5c: ; 0x02100a5c
	.byte 0x5c, 0x59, 0x12, 0x02
data_ov03_02100a60: ; 0x02100a60
	.byte 0x8c, 0xc3, 0x08, 0x02
data_ov03_02100a64: ; 0x02100a64
	.byte 0x9c, 0xc3, 0x08, 0x02
data_ov03_02100a68: ; 0x02100a68
	.byte 0x18, 0xbe, 0x0f, 0x02
data_ov03_02100a6c: ; 0x02100a6c
	.byte 0xd0, 0xbe, 0x0f, 0x02
data_ov03_02100a70: ; 0x02100a70
	.byte 0xe8, 0xbe, 0x0f, 0x02
data_ov03_02100a74: ; 0x02100a74
	.byte 0x54, 0x5d, 0x12, 0x02
data_ov03_02100a78: ; 0x02100a78
	.byte 0x00, 0xbe, 0x0f, 0x02
data_ov03_02100a7c: ; 0x02100a7c
	.byte 0x00, 0x00, 0x00, 0x00
	; 0x02100a80

	.bss
data_ov03_02100a80:
	.space 0x4
data_ov03_02100a84:
	.space 0x4
data_ov03_02100a88:
	.space 0x4
data_ov03_02100a8c:
	.space 0x4
data_ov03_02100a90:
	.space 0x4
data_ov03_02100a94:
	.space 0x4
data_ov03_02100a98:
	.space 0x4
data_ov03_02100a9c:
	.space 0x4
data_ov03_02100aa0:
	.space 0x4
data_ov03_02100aa4:
	.space 0x4
data_ov03_02100aa8:
	.space 0x4
data_ov03_02100aac:
	.space 0x4
data_ov03_02100ab0:
	.space 0x4
data_ov03_02100ab4:
	.space 0x4
data_ov03_02100ab8:
	.space 0x4
data_ov03_02100abc:
	.space 0x4
data_ov03_02100ac0:
	.space 0x4
data_ov03_02100ac4:
	.space 0x4
data_ov03_02100ac8:
	.space 0x4
data_ov03_02100acc:
	.space 0x4
data_ov03_02100ad0:
	.space 0x4
data_ov03_02100ad4:
	.space 0x4
data_ov03_02100ad8:
	.space 0x4
data_ov03_02100adc:
	.space 0x4
