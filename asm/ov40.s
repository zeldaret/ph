    .include "macros/function.inc"
    .include "global.inc"

	.text

	arm_func_start func_ov40_0217bd80
func_ov40_0217bd80: ; 0x0217bd80
	stmdb sp!, {r3, lr}
	ldr r1, _0217bdac ; =data_027e0fe0
	ldr r0, _0217bdb0 ; =0x000007f4
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_0217bdb4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_0217bd80
_0217bdac: .word data_027e0fe0
_0217bdb0: .word 0x000007f4

	arm_func_start func_ov40_0217bdb4
func_ov40_0217bdb4: ; 0x0217bdb4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r1, _0217bf20 ; =data_ov40_02188688
	add r0, r4, #0x15c
	str r1, [r4]
	mov r1, #0
	str r1, [r4, #0x158]
	blx func_ov00_020a9588
	mov r1, #1
	strb r1, [r4, #0x1c4]
	add r0, r4, #0xd8
	add r0, r0, #0x400
	strb r1, [r4, #0x1c5]
	mov r2, #0
	strb r2, [r4, #0x1c6]
	strb r2, [r4, #0x1c7]
	add r1, r0, #0x24
	strb r2, [r4, #0x1c8]
	blx func_ov00_020c0c08
	add r0, r4, #0x158
	add r0, r0, #0x400
	ldr r3, _0217bf24 ; =data_ov40_02188750
	add r1, r0, #0x24
	mov r2, #0
	str r3, [r4, #0x4d8]
	blx func_ov00_020c0c08
	add r0, r4, #0x1d8
	add r0, r0, #0x400
	ldr r2, _0217bf24 ; =data_ov40_02188750
	add r1, r0, #0x24
	str r2, [r4, #0x558]
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _0217bf24 ; =data_ov40_02188750
	add r0, r4, #0x258
	str r1, [r4, #0x5d8]
	add r0, r0, #0x400
	add r1, r0, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _0217bf24 ; =data_ov40_02188750
	add r0, r4, #0x2d8
	str r1, [r4, #0x658]
	add r0, r0, #0x400
	add r1, r0, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r0, _0217bf24 ; =data_ov40_02188750
	mov r1, #2
	str r0, [r4, #0x6d8]
	str r1, [r4, #0x758]
	sub r0, r1, #3
	str r0, [r4, #0x75c]
	str r0, [r4, #0x760]
	str r0, [r4, #0x764]
	mov ip, #1
	str ip, [r4, #0x768]
	mov r3, #0
	str r3, [r4, #0x76c]
	str r1, [r4, #0x770]
	str r0, [r4, #0x774]
	str r0, [r4, #0x778]
	str r0, [r4, #0x77c]
	str ip, [r4, #0x780]
	str r3, [r4, #0x784]
	str r3, [r4, #0x788]
	str r3, [r4, #0x78c]
	mov r0, #0x800
	str r0, [r4, #0x790]
	ldr r2, _0217bf28 ; =data_ov00_020e2f04
	strb r3, [r4, #0x798]
	str r2, [r4, #0x79c]
	add r0, r4, #0x39c
	strb ip, [r0, #0x404]
	strb r3, [r0, #0x405]
	str r3, [r0, #0x408]
	str r3, [r0, #0x40c]
	ldr r1, _0217bf2c ; =data_ov00_020e2dd8
	str r3, [r0, #0x410]
	str r1, [r4, #0x79c]
	str r2, [r4, #0x7c8]
	add r0, r4, #0x3c8
	strb ip, [r0, #0x404]
	strb r3, [r0, #0x405]
	str r3, [r0, #0x408]
	str r3, [r0, #0x40c]
	str r3, [r0, #0x410]
	mov r0, r4
	str r1, [r4, #0x7c8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217bdb4
_0217bf20: .word data_ov40_02188688
_0217bf24: .word data_ov40_02188750
_0217bf28: .word data_ov00_020e2f04
_0217bf2c: .word data_ov00_020e2dd8

	arm_func_start func_ov40_0217bf30
func_ov40_0217bf30: ; 0x0217bf30
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r1, _0217c09c ; =data_ov40_02188688
	add r0, r4, #0x15c
	str r1, [r4]
	mov r1, #0
	str r1, [r4, #0x158]
	blx func_ov00_020a9588
	mov r1, #1
	strb r1, [r4, #0x1c4]
	add r0, r4, #0xd8
	add r0, r0, #0x400
	strb r1, [r4, #0x1c5]
	mov r2, #0
	strb r2, [r4, #0x1c6]
	strb r2, [r4, #0x1c7]
	add r1, r0, #0x24
	strb r2, [r4, #0x1c8]
	blx func_ov00_020c0c08
	add r0, r4, #0x158
	add r0, r0, #0x400
	ldr r3, _0217c0a0 ; =data_ov40_02188750
	add r1, r0, #0x24
	mov r2, #0
	str r3, [r4, #0x4d8]
	blx func_ov00_020c0c08
	add r0, r4, #0x1d8
	add r0, r0, #0x400
	ldr r2, _0217c0a0 ; =data_ov40_02188750
	add r1, r0, #0x24
	str r2, [r4, #0x558]
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _0217c0a0 ; =data_ov40_02188750
	add r0, r4, #0x258
	str r1, [r4, #0x5d8]
	add r0, r0, #0x400
	add r1, r0, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _0217c0a0 ; =data_ov40_02188750
	add r0, r4, #0x2d8
	str r1, [r4, #0x658]
	add r0, r0, #0x400
	add r1, r0, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r0, _0217c0a0 ; =data_ov40_02188750
	mov r1, #2
	str r0, [r4, #0x6d8]
	str r1, [r4, #0x758]
	sub r0, r1, #3
	str r0, [r4, #0x75c]
	str r0, [r4, #0x760]
	str r0, [r4, #0x764]
	mov ip, #1
	str ip, [r4, #0x768]
	mov r3, #0
	str r3, [r4, #0x76c]
	str r1, [r4, #0x770]
	str r0, [r4, #0x774]
	str r0, [r4, #0x778]
	str r0, [r4, #0x77c]
	str ip, [r4, #0x780]
	str r3, [r4, #0x784]
	str r3, [r4, #0x788]
	str r3, [r4, #0x78c]
	mov r0, #0x800
	str r0, [r4, #0x790]
	ldr r2, _0217c0a4 ; =data_ov00_020e2f04
	strb r3, [r4, #0x798]
	str r2, [r4, #0x79c]
	add r0, r4, #0x39c
	strb ip, [r0, #0x404]
	strb r3, [r0, #0x405]
	str r3, [r0, #0x408]
	str r3, [r0, #0x40c]
	ldr r1, _0217c0a8 ; =data_ov00_020e2dd8
	str r3, [r0, #0x410]
	str r1, [r4, #0x79c]
	str r2, [r4, #0x7c8]
	add r0, r4, #0x3c8
	strb ip, [r0, #0x404]
	strb r3, [r0, #0x405]
	str r3, [r0, #0x408]
	str r3, [r0, #0x40c]
	str r3, [r0, #0x410]
	mov r0, r4
	str r1, [r4, #0x7c8]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217bf30
_0217c09c: .word data_ov40_02188688
_0217c0a0: .word data_ov40_02188750
_0217c0a4: .word data_ov00_020e2f04
_0217c0a8: .word data_ov00_020e2dd8

	arm_func_start func_ov40_0217c0ac
func_ov40_0217c0ac: ; 0x0217c0ac
	stmdb sp!, {r4, lr}
	ldr r1, _0217c150 ; =data_ov40_02188688
	mov r4, r0
	ldr r0, _0217c154 ; =data_027e0f6c
	str r1, [r4]
	add r1, r4, #0x39c
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093af0
	ldr r0, _0217c154 ; =data_027e0f6c
	add r1, r4, #0x3c8
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093af0
	add r0, r4, #0x3c8
	add r0, r0, #0x400
	bl func_ov00_02094824
	add r0, r4, #0x39c
	add r0, r0, #0x400
	bl func_ov00_02094824
	add r0, r4, #0x2d8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x258
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x1d8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x158
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0xd8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x15c
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217c0ac
_0217c150: .word data_ov40_02188688
_0217c154: .word data_027e0f6c

	arm_func_start func_ov40_0217c158
func_ov40_0217c158: ; 0x0217c158
	stmdb sp!, {r4, lr}
	ldr r1, _0217c204 ; =data_ov40_02188688
	mov r4, r0
	ldr r0, _0217c208 ; =data_027e0f6c
	str r1, [r4]
	add r1, r4, #0x39c
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093af0
	ldr r0, _0217c208 ; =data_027e0f6c
	add r1, r4, #0x3c8
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093af0
	add r0, r4, #0x3c8
	add r0, r0, #0x400
	bl func_ov00_02094824
	add r0, r4, #0x39c
	add r0, r0, #0x400
	bl func_ov00_02094824
	add r0, r4, #0x2d8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x258
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x1d8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x158
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0xd8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x15c
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217c158
_0217c204: .word data_ov40_02188688
_0217c208: .word data_027e0f6c

	arm_func_start func_ov40_0217c20c
func_ov40_0217c20c: ; 0x0217c20c
	stmdb sp!, {r4, lr}
	ldr r1, _0217c2b0 ; =data_ov40_02188688
	mov r4, r0
	ldr r0, _0217c2b4 ; =data_027e0f6c
	str r1, [r4]
	add r1, r4, #0x39c
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093af0
	ldr r0, _0217c2b4 ; =data_027e0f6c
	add r1, r4, #0x3c8
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093af0
	add r0, r4, #0x3c8
	add r0, r0, #0x400
	bl func_ov00_02094824
	add r0, r4, #0x39c
	add r0, r0, #0x400
	bl func_ov00_02094824
	add r0, r4, #0x2d8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x258
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x1d8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x158
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0xd8
	add r0, r0, #0x400
	blx func_ov00_020a9b6c
	add r0, r4, #0x15c
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217c20c
_0217c2b0: .word data_ov40_02188688
_0217c2b4: .word data_027e0f6c

	arm_func_start func_ov40_0217c2b8
func_ov40_0217c2b8: ; 0x0217c2b8
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrh r0, [r6, #0x20]
	str r0, [r6, #0x1b8]
	str r0, [r6, #0x1bc]
	ldr r0, [r6, #0x1b8]
	cmp r0, #0xe4
	bne _0217c2f8
	ldr r0, _0217c470 ; =data_027e0fb4
	mov r1, #1
	ldr r0, [r0]
	bl func_ov00_020ada78
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r6, #0x1c4]
_0217c2f8:
	ldr r1, [r6, #0x1b8]
	mov r0, r6
	bl func_ov40_0217c484
	str r0, [r6, #0x790]
	ldr r0, _0217c474 ; =data_027e0fec
	ldr r1, [r6, #0x1b8]
	ldr r4, [r0]
	mov r0, #0x38
	mla r0, r1, r0, r4
	bl func_ov00_020c4588
	mov r5, r0
	add r0, r6, #0x15c
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r6, #0x1b8]
	mov r0, #0x38
	mla r0, r1, r0, r4
	ldr r0, [r0, #8]
	str r0, [r6, #0x794]
	ldr r0, [r6, #0x1b8]
	bl func_ov00_020c42d8
	cmp r0, #0
	beq _0217c398
	ldr r0, [r0, #8]
	tst r0, #0x200
	bne _0217c398
	tst r0, #0x100
	beq _0217c398
	ldr r1, _0217c478 ; =data_027e0f78
	mov r0, r5
	ldr r1, [r1]
	ldrh r1, [r1, #0x1c]
	bl func_020196fc
	ldr r1, _0217c478 ; =data_027e0f78
	mov r0, r5
	ldr r1, [r1]
	ldrh r1, [r1, #0x1e]
	bl func_020196bc
_0217c398:
	add r0, r6, #0x15c
	str r0, [r6, #0x158]
	mov r0, #0
	str r0, [r6, #0x7c]
	mov r2, #0x1800
	str r2, [r6, #0x80]
	str r0, [r6, #0x84]
	ldr r1, _0217c47c ; =data_ov40_02187ffc
	add r0, r5, #0x40
	str r2, [r6, #0x88]
	bl func_0201e388
	str r0, [r6, #0x1c0]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r6, #0x1c0]
	str r6, [r6, #0x18c]
	mov r0, #3
	str r0, [sp]
	ldr r1, _0217c480 ; =func_ov40_0217d754
	add r0, r6, #0x160
	mov r2, #0
	mov r3, #6
	bl func_02018c90
	ldr r1, [r6, #0x1b8]
	mov r0, r6
	bl func_ov40_0217c644
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x1c7]
	ldr r1, [r6, #0x1b8]
	mov r0, r6
	bl func_ov40_0217c65c
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x1c6]
	bne _0217c440
	ldr r1, [r6, #0x1b8]
	mov r0, r6
	bl func_ov40_0217c6f4
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x1c8]
_0217c440:
	ldr r1, [r6, #0x1b8]
	mov r0, r6
	bl func_ov40_0217c758
	cmp r0, #0
	beq _0217c464
	mov r1, #1
	mov r0, r6
	strb r1, [r6, #0x798]
	bl func_ov40_0217c7fc
_0217c464:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_0217c2b8
_0217c470: .word data_027e0fb4
_0217c474: .word data_027e0fec
_0217c478: .word data_027e0f78
_0217c47c: .word data_ov40_02187ffc
_0217c480: .word func_ov40_0217d754

	arm_func_start func_ov40_0217c484
func_ov40_0217c484: ; 0x0217c484
	cmp r1, #0xa6
	bgt _0217c4d4
	bge _0217c600
	cmp r1, #0x4e
	bgt _0217c4c8
	bge _0217c628
	sub r0, r1, #0x31
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0217c630
_0217c4ac: ; jump table
	b _0217c620 ; case 0
	b _0217c600 ; case 1
	b _0217c630 ; case 2
	b _0217c630 ; case 3
	b _0217c610 ; case 4
	b _0217c630 ; case 5
	b _0217c618 ; case 6
_0217c4c8:
	cmp r1, #0x91
	beq _0217c600
	b _0217c630
_0217c4d4:
	cmp r1, #0xe0
	bgt _0217c4ec
	bge _0217c600
	cmp r1, #0xde
	beq _0217c628
	b _0217c630
_0217c4ec:
	cmp r1, #0xe1
	bgt _0217c4fc
	beq _0217c600
	b _0217c630
_0217c4fc:
	sub r0, r1, #0xe2
	cmp r0, #0x3c
	addls pc, pc, r0, lsl #2
	b _0217c630
_0217c50c: ; jump table
	b _0217c600 ; case 0
	b _0217c600 ; case 1
	b _0217c600 ; case 2
	b _0217c600 ; case 3
	b _0217c630 ; case 4
	b _0217c630 ; case 5
	b _0217c630 ; case 6
	b _0217c630 ; case 7
	b _0217c630 ; case 8
	b _0217c630 ; case 9
	b _0217c600 ; case 10
	b _0217c630 ; case 11
	b _0217c600 ; case 12
	b _0217c618 ; case 13
	b _0217c618 ; case 14
	b _0217c618 ; case 15
	b _0217c618 ; case 16
	b _0217c630 ; case 17
	b _0217c600 ; case 18
	b _0217c630 ; case 19
	b _0217c600 ; case 20
	b _0217c600 ; case 21
	b _0217c630 ; case 22
	b _0217c630 ; case 23
	b _0217c630 ; case 24
	b _0217c630 ; case 25
	b _0217c600 ; case 26
	b _0217c600 ; case 27
	b _0217c600 ; case 28
	b _0217c600 ; case 29
	b _0217c600 ; case 30
	b _0217c600 ; case 31
	b _0217c600 ; case 32
	b _0217c600 ; case 33
	b _0217c630 ; case 34
	b _0217c600 ; case 35
	b _0217c600 ; case 36
	b _0217c608 ; case 37
	b _0217c600 ; case 38
	b _0217c600 ; case 39
	b _0217c600 ; case 40
	b _0217c608 ; case 41
	b _0217c600 ; case 42
	b _0217c600 ; case 43
	b _0217c630 ; case 44
	b _0217c600 ; case 45
	b _0217c630 ; case 46
	b _0217c630 ; case 47
	b _0217c630 ; case 48
	b _0217c600 ; case 49
	b _0217c600 ; case 50
	b _0217c600 ; case 51
	b _0217c630 ; case 52
	b _0217c630 ; case 53
	b _0217c600 ; case 54
	b _0217c600 ; case 55
	b _0217c630 ; case 56
	b _0217c600 ; case 57
	b _0217c600 ; case 58
	b _0217c600 ; case 59
	b _0217c600 ; case 60
_0217c600:
	mov r0, #0
	bx lr
_0217c608:
	mov r0, #0x800
	bx lr
_0217c610:
	ldr r0, _0217c638 ; =0x00000733
	bx lr
_0217c618:
	ldr r0, _0217c63c ; =0x000004cd
	bx lr
_0217c620:
	ldr r0, _0217c640 ; =0x00000666
	bx lr
_0217c628:
	mov r0, #0x400
	bx lr
_0217c630:
	mov r0, #0x800
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0217c484
_0217c638: .word 0x00000733
_0217c63c: .word 0x000004cd
_0217c640: .word 0x00000666

	arm_func_start func_ov40_0217c644
func_ov40_0217c644: ; 0x0217c644
	cmp r1, #0x108
	bne _0217c654
	mov r0, #1
	bx lr
_0217c654:
	mov r0, #0
	bx lr
	arm_func_end func_ov40_0217c644

	arm_func_start func_ov40_0217c65c
func_ov40_0217c65c: ; 0x0217c65c
	ldr r2, _0217c6f0 ; =0x00000106
	cmp r1, r2
	bgt _0217c69c
	sub r0, r2, #1
	cmp r1, r0
	blt _0217c680
	cmpne r1, r2
	beq _0217c6e0
	b _0217c6e8
_0217c680:
	cmp r1, #0xde
	bgt _0217c690
	beq _0217c6e0
	b _0217c6e8
_0217c690:
	cmp r1, #0xf6
	beq _0217c6e0
	b _0217c6e8
_0217c69c:
	add r0, r2, #0x14
	cmp r1, r0
	bgt _0217c6b0
	beq _0217c6e0
	b _0217c6e8
_0217c6b0:
	add r0, r2, #0x15
	sub r0, r1, r0
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0217c6e8
_0217c6c4: ; jump table
	b _0217c6e0 ; case 0
	b _0217c6e0 ; case 1
	b _0217c6e0 ; case 2
	b _0217c6e0 ; case 3
	b _0217c6e8 ; case 4
	b _0217c6e8 ; case 5
	b _0217c6e0 ; case 6
_0217c6e0:
	mov r0, #1
	bx lr
_0217c6e8:
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0217c65c
_0217c6f0: .word 0x00000106

	arm_func_start func_ov40_0217c6f4
func_ov40_0217c6f4: ; 0x0217c6f4
	cmp r1, #0xef
	bgt _0217c720
	bge _0217c748
	cmp r1, #0x37
	bgt _0217c750
	cmp r1, #0x31
	blt _0217c750
	cmpne r1, #0x35
	cmpne r1, #0x37
	beq _0217c748
	b _0217c750
_0217c720:
	cmp r1, #0xf0
	bgt _0217c730
	beq _0217c748
	b _0217c750
_0217c730:
	cmp r1, #0xf2
	bgt _0217c750
	cmp r1, #0xf1
	blt _0217c750
	cmpne r1, #0xf2
	bne _0217c750
_0217c748:
	mov r0, #1
	bx lr
_0217c750:
	mov r0, #0
	bx lr
	arm_func_end func_ov40_0217c6f4

	arm_func_start func_ov40_0217c758
func_ov40_0217c758: ; 0x0217c758
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r0, _0217c7f8 ; =data_027e0d38
	cmp r1, #0xed
	ldr r4, [r0]
	ldrsh lr, [r4, #0x1c]
	ldrb ip, [r4, #0x1e]
	ldrb r3, [r4, #0x1f]
	ldrb r2, [r4, #0x20]
	ldrb r0, [r4, #0x21]
	ldr r7, [r4, #0xc]
	ldr r6, [r4, #0x10]
	ldr r5, [r4, #0x14]
	ldr r4, [r4, #0x18]
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	strh lr, [sp, #0x10]
	strb ip, [sp, #0x12]
	strb r3, [sp, #0x13]
	strb r2, [sp, #0x14]
	strb r0, [sp, #0x15]
	beq _0217c7c4
	cmp r1, #0x104
	beq _0217c7d8
	b _0217c7ec
_0217c7c4:
	cmp r4, #0x17
	moveq r0, #0
	add sp, sp, #0x18
	movne r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217c7d8:
	cmp r4, #0x15
	movne r0, #0
	add sp, sp, #0x18
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217c7ec:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_0217c758
_0217c7f8: .word data_027e0d38

	arm_func_start func_ov40_0217c7fc
func_ov40_0217c7fc: ; 0x0217c7fc
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r4, r0
	ldr r0, [r4, #0x4cc]
	str r0, [sp, #0x74]
	ldr r0, [r4, #0x4d0]
	str r0, [sp, #0x78]
	ldr r0, [r4, #0x4d4]
	str r0, [sp, #0x7c]
	ldr r0, [r4, #0x4cc]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x4d0]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0x4d4]
	str r0, [sp, #0x70]
	ldr r0, [r4, #0x1b8]
	cmp r0, #0xed
	beq _0217c850
	cmp r0, #0x104
	beq _0217c8a0
	b _0217c8e4
_0217c850:
	add r0, sp, #0x74
	mov r6, #0xa000
	mov r5, #0x800
	mov r3, #0x5000
	add r1, sp, #0x2c
	mov r2, r0
	str r6, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r3, [sp, #0x34]
	bl func_01ff9bf8
	add r0, sp, #0x68
	mov r5, #0
	mov r3, #0x5000
	add r1, sp, #0x20
	mov r2, r0
	str r6, [sp, #0x20]
	str r5, [sp, #0x24]
	str r3, [sp, #0x28]
	bl func_01ff9bc4
	b _0217c8e4
_0217c8a0:
	add r0, sp, #0x74
	mov r5, #0xa000
	mov r3, #0x800
	add r1, sp, #0x14
	mov r2, r0
	str r5, [sp, #0x14]
	str r3, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl func_01ff9bf8
	add r0, sp, #0x68
	mov r3, #0
	add r1, sp, #8
	mov r2, r0
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	bl func_01ff9bc4
_0217c8e4:
	add r0, sp, #0x74
	add r6, sp, #0x50
	ldmia r0!, {r0, r1, r2}
	stmia r6!, {r0, r1, r2}
	add r0, sp, #0x68
	add r5, sp, #0x5c
	ldmia r0!, {r0, r1, r2}
	stmia r5!, {r0, r1, r2}
	mov r3, #0
	add r0, r4, #0x39c
	str r3, [sp]
	add r0, r0, #0x400
	ldr r5, [r0]
	bic r1, r3, #0x1f
	orr r3, r1, #6
	ldr r2, [r4, #8]
	ldr r5, [r5, #0x14]
	mov r1, r6
	str r3, [sp, #4]
	blx r5
	mov r2, #1
	add r1, r4, #0x39c
	ldr r0, _0217ca50 ; =data_027e0f6c
	strb r2, [r4, #0x7a1]
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093a5c
	ldr r0, [r4, #0x1b8]
	cmp r0, #0xed
	addne sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0217ca54 ; =data_027e0d38
	ldr lr, [r0]
	ldrsh r5, [lr, #0x1c]
	ldr ip, [lr, #0x18]
	ldrb r3, [lr, #0x1e]
	ldrb r2, [lr, #0x1f]
	ldrb r1, [lr, #0x20]
	ldrb r0, [lr, #0x21]
	ldr r7, [lr, #0xc]
	ldr r6, [lr, #0x10]
	ldr lr, [lr, #0x14]
	str r7, [sp, #0x38]
	str r6, [sp, #0x3c]
	str lr, [sp, #0x40]
	str ip, [sp, #0x44]
	strh r5, [sp, #0x48]
	strb r3, [sp, #0x4a]
	strb r2, [sp, #0x4b]
	strb r1, [sp, #0x4c]
	strb r0, [sp, #0x4d]
	cmp ip, #0x15
	addne sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x6c]
	add lr, r0, #0x9800
	add r5, r1, #0x3000
	ldr r0, [sp, #0x70]
	ldr r3, [sp, #0x74]
	add ip, r0, #0xa000
	ldr r2, [sp, #0x78]
	ldr r1, [sp, #0x68]
	add r0, r4, #0x3c8
	str r3, [sp, #0x50]
	str r1, [sp, #0x5c]
	str r5, [sp, #0x6c]
	str lr, [sp, #0x7c]
	str ip, [sp, #0x70]
	str r2, [sp, #0x54]
	str lr, [sp, #0x58]
	str r5, [sp, #0x60]
	str ip, [sp, #0x64]
	mov r1, #0
	str r1, [sp]
	add r0, r0, #0x400
	ldr ip, [r0]
	ldr r2, [r4, #8]
	ldr r3, [sp, #4]
	ldr ip, [ip, #0x14]
	add r1, sp, #0x50
	blx ip
	mov r2, #1
	add r1, r4, #0x3c8
	ldr r0, _0217ca50 ; =data_027e0f6c
	strb r2, [r4, #0x7cd]
	ldr r0, [r0]
	add r1, r1, #0x400
	bl func_ov00_02093a5c
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_0217c7fc
_0217ca50: .word data_027e0f6c
_0217ca54: .word data_027e0d38

	arm_func_start func_ov40_0217ca58
func_ov40_0217ca58: ; 0x0217ca58
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x60
	mov r4, r0
	ldr r0, [r4, #0x4cc]
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x4d0]
	str r0, [sp, #0x58]
	ldr r0, [r4, #0x4d4]
	str r0, [sp, #0x5c]
	ldr r0, [r4, #0x4cc]
	str r0, [sp, #0x48]
	ldr r0, [r4, #0x4d0]
	str r0, [sp, #0x4c]
	ldr r0, [r4, #0x4d4]
	str r0, [sp, #0x50]
	ldr r0, [r4, #0x1b8]
	cmp r0, #0xed
	beq _0217caac
	cmp r0, #0x104
	beq _0217cb00
	b _0217cb44
_0217caac:
	add r0, sp, #0x54
	mov ip, #0xa000
	mov r5, #0x800
	mov r3, #0x5000
	add r1, sp, #0x24
	mov r2, r0
	str ip, [sp, #0x24]
	str r5, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl func_01ff9bf8
	add r0, sp, #0x48
	mov ip, #0xa000
	mov r5, #0
	mov r3, #0x5000
	add r1, sp, #0x18
	mov r2, r0
	str ip, [sp, #0x18]
	str r5, [sp, #0x1c]
	str r3, [sp, #0x20]
	bl func_01ff9bc4
	b _0217cb44
_0217cb00:
	add r0, sp, #0x54
	mov r5, #0xa000
	mov r3, #0x800
	add r1, sp, #0xc
	mov r2, r0
	str r5, [sp, #0xc]
	str r3, [sp, #0x10]
	str r5, [sp, #0x14]
	bl func_01ff9bf8
	add r0, sp, #0x48
	mov r3, #0
	add r1, sp, #0
	mov r2, r0
	str r5, [sp]
	str r3, [sp, #4]
	str r5, [sp, #8]
	bl func_01ff9bc4
_0217cb44:
	add r0, sp, #0x54
	add r5, sp, #0x30
	ldmia r0!, {r0, r1, r2}
	stmia r5!, {r0, r1, r2}
	add r0, sp, #0x48
	add r3, sp, #0x3c
	ldmia r0!, {r0, r1, r2}
	stmia r3!, {r0, r1, r2}
	add r0, r4, #0x39c
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x20]
	blx r2
	ldr r0, [r4, #0x1b8]
	cmp r0, #0xed
	addne sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x4c]
	add lr, r0, #0x9800
	add r5, r1, #0x3000
	ldr r0, [sp, #0x50]
	ldr r3, [sp, #0x54]
	add ip, r0, #0xa000
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x58]
	add r0, r4, #0x3c8
	str r1, [sp, #0x3c]
	str r5, [sp, #0x4c]
	str lr, [sp, #0x5c]
	str ip, [sp, #0x50]
	str r3, [sp, #0x30]
	str lr, [sp, #0x38]
	str r5, [sp, #0x40]
	str ip, [sp, #0x44]
	add r0, r0, #0x400
	str r2, [sp, #0x34]
	ldr r2, [r0]
	add r1, sp, #0x30
	ldr r2, [r2, #0x20]
	blx r2
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217ca58

	arm_func_start func_ov40_0217cbf4
func_ov40_0217cbf4: ; 0x0217cbf4
	ldr ip, _0217cbfc ; =func_ov40_0217cd24
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217cbf4
_0217cbfc: .word func_ov40_0217cd24

	arm_func_start func_ov40_0217cc00
func_ov40_0217cc00: ; 0x0217cc00
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r2, [r4]
	mov r5, r0
	cmp r2, #2
	ldmia sp!, {r4, r5, r6, pc}
	bl func_ov40_0217ccb0
	movs r6, r0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x4e0]
	cmp r0, #0
	bne _0217cc44
	ldr r0, [r5, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r0, [r5, #0x4e0]
_0217cc44:
	add r0, r5, #0xd8
	mov r1, r6
	add r0, r0, #0x400
	bl func_ov00_020c0c44
	ldr r0, [r5, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	ldr r0, [r5, #0x158]
	add r1, r5, #0xd8
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x24]
	blx r2
	ldr r0, [r4]
	str r0, [r5, #0x758]
	ldr r0, [r4, #4]
	str r0, [r5, #0x75c]
	ldr r0, [r4, #8]
	str r0, [r5, #0x760]
	ldr r0, [r4, #0xc]
	str r0, [r5, #0x764]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x768]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x76c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217cc00

	arm_func_start func_ov40_0217ccb0
func_ov40_0217ccb0: ; 0x0217ccb0
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r0, #0
	cmp r1, #2
	ldmia sp!, {r4, pc}
	cmp r1, #0
	beq _0217ccdc
	cmp r1, #1
	beq _0217cd00
	ldmia sp!, {r4, pc}
_0217ccdc:
	ldr r0, _0217cd1c ; =data_027e0fec
	ldr r2, [r4, #4]
	ldr r1, [r0]
	mov r0, #0x38
	mla r0, r2, r0, r1
	bl func_ov00_020c45b0
	ldr r1, [r4, #0xc]
	bl func_0201e50c
	ldmia sp!, {r4, pc}
_0217cd00:
	ldr r0, _0217cd20 ; =data_027e0f74
	ldr r1, [r4, #8]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r4, #0xc]
	bl func_0201e50c
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217ccb0
_0217cd1c: .word data_027e0fec
_0217cd20: .word data_027e0f74

	arm_func_start func_ov40_0217cd24
func_ov40_0217cd24: ; 0x0217cd24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r1, [r6, #0x758]
	mov r4, #0
	ldr r0, [r5]
	mov lr, r4
	cmp r0, r1
	ldreq r3, [r5, #4]
	ldreq r2, [r6, #0x75c]
	mov ip, r4
	cmpeq r3, r2
	moveq lr, #1
	cmp lr, #0
	beq _0217cd70
	ldr r3, [r5, #8]
	ldr r2, [r6, #0x760]
	cmp r3, r2
	moveq ip, #1
_0217cd70:
	cmp ip, #0
	beq _0217cd88
	ldr r3, [r5, #0xc]
	ldr r2, [r6, #0x764]
	cmp r3, r2
	moveq r4, #1
_0217cd88:
	cmp r4, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x770]
	cmp r0, r2
	ldreq r2, [r5, #4]
	ldreq r0, [r6, #0x774]
	cmpeq r2, r0
	ldreq r2, [r5, #8]
	ldreq r0, [r6, #0x778]
	cmpeq r2, r0
	ldreq r2, [r5, #0xc]
	ldreq r0, [r6, #0x77c]
	cmpeq r2, r0
	ldmia sp!, {r4, r5, r6, pc}
	cmp r1, #2
	ldrne r0, [r5, #0x14]
	cmpne r0, #0
	mov r0, r6
	bne _0217cde0
	mov r1, r5
	bl func_ov40_0217cc00
	ldmia sp!, {r4, r5, r6, pc}
_0217cde0:
	mov r1, r5
	bl func_ov40_0217ccb0
	movs r4, r0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x770]
	cmp r0, #2
	beq _0217ce40
	ldr r0, [r6, #0x788]
	cmp r0, #0x800
	ble _0217ce18
	mov r0, r6
	add r1, r6, #0x770
	bl func_ov40_0217cc00
	b _0217ce40
_0217ce18:
	ldr r0, [r6, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	ldr r0, [r6, #0x158]
	add r1, r6, #0xd8
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x24]
	blx r2
_0217ce40:
	ldr r1, [r5, #0x14]
	mov r0, #0x1000
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	str r0, [r6, #0x78c]
	ldr r0, [r5]
	str r0, [r6, #0x770]
	ldr r0, [r5, #4]
	str r0, [r6, #0x774]
	ldr r0, [r5, #8]
	str r0, [r6, #0x778]
	ldr r0, [r5, #0xc]
	str r0, [r6, #0x77c]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x780]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x784]
	ldr r0, [r6, #0x560]
	cmp r0, #0
	bne _0217cea4
	ldr r0, [r6, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r0, [r6, #0x560]
_0217cea4:
	add r0, r6, #0x158
	mov r1, r4
	add r0, r0, #0x400
	bl func_ov00_020c0c44
	ldr r0, [r6, #0x158]
	add r1, r6, #0x158
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x24]
	blx r2
	add r0, r6, #0xd8
	mov r1, #0
	str r1, [r6, #0x788]
	add r0, r0, #0x400
	bl func_ov00_020c0d4c
	ldr r2, [r6, #0x788]
	add r1, r6, #0x158
	rsb r2, r2, #0x1000
	str r2, [r0, #4]
	add r0, r1, #0x400
	bl func_ov00_020c0d4c
	ldr r1, [r6, #0x788]
	str r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217cd24

	arm_func_start func_ov40_0217cf04
func_ov40_0217cf04: ; 0x0217cf04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x770]
	cmp r1, #2
	ldmia sp!, {r3, r4, r5, pc}
	mov r1, #0x1000
	str r1, [r5, #0x788]
	add r1, r5, #0x770
	ldr r4, [r5, #0x56c]
	bl func_ov40_0217cc00
	add r0, r5, #0xd8
	add r0, r0, #0x400
	str r4, [r5, #0x4ec]
	bl func_ov00_020c0e04
	mov r0, #0
	str r0, [r5, #0x78c]
	mov r0, #2
	str r0, [r5, #0x770]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217cf04

	arm_func_start func_ov40_0217cf50
func_ov40_0217cf50: ; 0x0217cf50
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0x788]
	ldr r1, [r4, #0x78c]
	add r5, r2, r1
	str r5, [r4, #0x788]
	cmp r5, #0x1000
	ble _0217cf78
	bl func_ov40_0217cf04
	ldmia sp!, {r3, r4, r5, pc}
_0217cf78:
	add r0, r4, #0xd8
	add r0, r0, #0x400
	bl func_ov00_020c0d4c
	rsb r2, r5, #0x1000
	add r1, r4, #0x158
	str r2, [r0, #4]
	add r0, r1, #0x400
	bl func_ov00_020c0d4c
	ldr r2, [r4, #0x788]
	add r1, r4, #0x158
	str r2, [r0, #4]
	add r0, r1, #0x400
	bl func_ov00_020c0e04
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217cf50

	arm_func_start func_ov40_0217cfb0
func_ov40_0217cfb0: ; 0x0217cfb0
	ldr r0, [r0, #0x770]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end func_ov40_0217cfb0

	arm_func_start func_ov40_0217cfc4
func_ov40_0217cfc4: ; 0x0217cfc4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r5, r0
	cmp r1, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	mov r6, #0
	beq _0217cff4
	cmp r1, #1
	beq _0217d024
	b _0217d040
_0217cff4:
	ldr r1, [r4, #4]
	mov r0, #0x38
	mul r2, r1, r0
	ldr r0, _0217d0a8 ; =data_027e0fec
	ldr r1, [r4, #8]
	ldr r0, [r0]
	ldr r0, [r0, r2]
	blx func_02017018
	ldr r1, [r4, #0xc]
	bl func_0201e50c
	mov r6, r0
	b _0217d040
_0217d024:
	ldr r0, _0217d0ac ; =data_027e0f74
	ldr r1, [r4, #8]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r4, #0xc]
	bl func_0201e50c
	mov r6, r0
_0217d040:
	cmp r6, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x5e0]
	mov r7, #0
	cmp r0, #0
	ldr r0, [r5, #0x158]
	moveq r7, #1
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r0, [r5, #0x5e0]
	add r0, r5, #0x1d8
	ldr r2, [r5, #0x794]
	ldr r3, [r4, #0x10]
	mov r1, r6
	add r0, r0, #0x400
	bl func_ov00_020c0cc8
	cmp r7, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x158]
	add r1, r5, #0x1d8
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x24]
	blx r2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_0217cfc4
_0217d0a8: .word data_027e0fec
_0217d0ac: .word data_027e0f74

	arm_func_start func_ov40_0217d0b0
func_ov40_0217d0b0: ; 0x0217d0b0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #2
	ldmia sp!, {r4, r5, r6, pc}
	cmp r1, #0
	mov r4, #0
	beq _0217d0e0
	cmp r1, #1
	beq _0217d110
	b _0217d12c
_0217d0e0:
	ldr r1, [r5, #4]
	mov r0, #0x38
	mul r2, r1, r0
	ldr r0, _0217d1a0 ; =data_027e0fec
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r0, [r0, r2]
	blx func_02017018
	ldr r1, [r5, #0xc]
	bl func_0201e50c
	mov r4, r0
	b _0217d12c
_0217d110:
	ldr r0, _0217d1a4 ; =data_027e0f74
	ldr r1, [r5, #8]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r5, #0xc]
	bl func_0201e50c
	mov r4, r0
_0217d12c:
	cmp r4, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x660]
	cmp r0, #0
	bne _0217d158
	ldr r0, [r6, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r0, [r6, #0x660]
	b _0217d174
_0217d158:
	add r0, r6, #0x258
	ldr r5, [r6, #0x158]
	add r0, r0, #0x400
	bl func_ov00_020c0d4c
	mov r1, r0
	add r0, r5, #4
	bl func_02018c3c
_0217d174:
	add r0, r6, #0x258
	mov r1, r4
	add r0, r0, #0x400
	bl func_ov00_020c0c70
	ldr r0, [r6, #0x158]
	add r1, r6, #0x258
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x24]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_0217d0b0
_0217d1a0: .word data_027e0fec
_0217d1a4: .word data_027e0f74

	arm_func_start func_ov40_0217d1a8
func_ov40_0217d1a8: ; 0x0217d1a8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #2
	ldmia sp!, {r4, r5, r6, pc}
	cmp r1, #0
	mov r4, #0
	beq _0217d1d8
	cmp r1, #1
	beq _0217d208
	b _0217d224
_0217d1d8:
	ldr r1, [r5, #4]
	mov r0, #0x38
	mul r2, r1, r0
	ldr r0, _0217d298 ; =data_027e0fec
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r0, [r0, r2]
	blx func_02017018
	ldr r1, [r5, #0xc]
	bl func_0201e50c
	mov r4, r0
	b _0217d224
_0217d208:
	ldr r0, _0217d29c ; =data_027e0f74
	ldr r1, [r5, #8]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r5, #0xc]
	bl func_0201e50c
	mov r4, r0
_0217d224:
	cmp r4, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x6e0]
	cmp r0, #0
	bne _0217d250
	ldr r0, [r6, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r0, [r6, #0x6e0]
	b _0217d26c
_0217d250:
	add r0, r6, #0x2d8
	ldr r5, [r6, #0x158]
	add r0, r0, #0x400
	bl func_ov00_020c0d4c
	mov r1, r0
	add r0, r5, #4
	bl func_02018c3c
_0217d26c:
	add r0, r6, #0x2d8
	mov r1, r4
	add r0, r0, #0x400
	bl func_ov00_020c0c9c
	ldr r0, [r6, #0x158]
	add r1, r6, #0x2d8
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x24]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_0217d1a8
_0217d298: .word data_027e0fec
_0217d29c: .word data_027e0f74

	arm_func_start func_ov40_0217d2a0
func_ov40_0217d2a0: ; 0x0217d2a0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c1b6c
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldrb r2, [r4, #0xf]
	mov r0, r5
	add r1, r4, #0x1c
	strb r2, [r5, #0x1c5]
	bl func_ov40_0217cbf4
	mov r0, r5
	add r1, r4, #0x34
	bl func_ov40_0217cfc4
	mov r0, r5
	add r1, r4, #0x4c
	bl func_ov40_0217d0b0
	mov r0, r5
	add r1, r4, #0x64
	bl func_ov40_0217d1a8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217d2a0

	arm_func_start func_ov40_0217d2fc
func_ov40_0217d2fc: ; 0x0217d2fc
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl func_ov00_020c1bb4
	ldrb r2, [r4, #0xf]
	mov r0, r5
	add r1, r4, #0x1c
	strb r2, [r5, #0x1c5]
	bl func_ov40_0217cbf4
	mov r0, r5
	add r1, r4, #0x34
	bl func_ov40_0217cfc4
	mov r0, r5
	add r1, r4, #0x4c
	bl func_ov40_0217d0b0
	mov r0, r5
	add r1, r4, #0x64
	bl func_ov40_0217d1a8
	ldrb r0, [r5, #0x798]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl func_ov40_0217ca58
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217d2fc

	arm_func_start func_ov40_0217d35c
func_ov40_0217d35c: ; 0x0217d35c
	ldr ip, _0217d364 ; =func_ov00_020c1bf8
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217d35c
_0217d364: .word func_ov00_020c1bf8

	arm_func_start func_ov40_0217d368
func_ov40_0217d368: ; 0x0217d368
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c313c
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #0x4e0]
	cmp r0, #0
	beq _0217d3ac
	add r0, r4, #0xd8
	add r0, r0, #0x400
	bl func_ov00_020c0e04
	mov r0, r4
	bl func_ov40_0217cfb0
	cmp r0, #0
	bne _0217d3ac
	mov r0, r4
	bl func_ov40_0217cf50
_0217d3ac:
	ldr r0, [r4, #0x5e0]
	cmp r0, #0
	beq _0217d3c4
	add r0, r4, #0x1d8
	add r0, r0, #0x400
	bl func_ov00_020c0e04
_0217d3c4:
	ldr r0, [r4, #0x660]
	cmp r0, #0
	beq _0217d3dc
	add r0, r4, #0x258
	add r0, r0, #0x400
	bl func_ov00_020c0e04
_0217d3dc:
	ldr r0, [r4, #0x6e0]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	add r0, r4, #0x2d8
	add r0, r0, #0x400
	bl func_ov00_020c0e04
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217d368

	arm_func_start func_ov40_0217d3f8
func_ov40_0217d3f8: ; 0x0217d3f8
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217d3f8

	arm_func_start func_ov40_0217d40c
func_ov40_0217d40c: ; 0x0217d40c
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0x1c4]
	cmp r0, #0
	addeq sp, sp, #8
	ldmia sp!, {r4, pc}
	ldrb r0, [r4, #0x1c7]
	cmp r0, #0
	beq _0217d44c
	ldr r0, _0217d4c8 ; =data_027e0de4
	ldr r2, _0217d4cc ; =func_ov40_0217d700
	mov r3, r4
	mov r1, #7
	bl func_ov00_0207bb1c
	b _0217d498
_0217d44c:
	ldrb r0, [r4, #0x1c6]
	cmp r0, #0
	beq _0217d470
	ldr r0, _0217d4d0 ; =data_ov00_020e9c88
	ldr r3, _0217d4d4 ; =func_ov40_0217d6f4
	add r2, r4, #0x48
	str r4, [sp]
	bl func_ov00_0207b89c
	b _0217d498
_0217d470:
	ldrb r0, [r4, #0x1c8]
	cmp r0, #0
	beq _0217d484
	ldr r0, [r4, #0x158]
	bl func_ov00_020b41ec
_0217d484:
	ldr r0, [r4, #0x158]
	add r1, r4, #0x48
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
_0217d498:
	ldr r0, [r4, #0x1b8]
	add r1, r4, #0xcc
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	ldrb r3, [r4, #0x1c5]
	ldr r2, [r4, #0x790]
	ldr r0, _0217d4d8 ; =data_ov00_020e9370
	add r1, r1, #0x400
	bl func_ov40_02187edc
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217d40c
_0217d4c8: .word data_027e0de4
_0217d4cc: .word func_ov40_0217d700
_0217d4d0: .word data_ov00_020e9c88
_0217d4d4: .word func_ov40_0217d6f4
_0217d4d8: .word data_ov00_020e9370

	arm_func_start func_ov40_0217d4dc
func_ov40_0217d4dc: ; 0x0217d4dc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldr r2, [r4, #0x1b8]
	ldr r1, _0217d6ec ; =0x00000106
	cmp r2, r1
	bgt _0217d528
	sub r0, r1, #1
	cmp r2, r0
	blt _0217d50c
	cmpne r2, r1
	beq _0217d5ec
	b _0217d6ac
_0217d50c:
	cmp r2, #0xde
	bgt _0217d51c
	beq _0217d564
	b _0217d6ac
_0217d51c:
	cmp r2, #0xf6
	beq _0217d5bc
	b _0217d6ac
_0217d528:
	add r0, r1, #0x15
	cmp r2, r0
	bgt _0217d53c
	beq _0217d5ec
	b _0217d6ac
_0217d53c:
	add r0, r1, #0x18
	cmp r2, r0
	bgt _0217d6ac
	add r0, r1, #0x17
	cmp r2, r0
	blt _0217d6ac
	addne r0, r1, #0x18
	cmpne r2, r0
	beq _0217d648
	b _0217d6ac
_0217d564:
	ldr r0, _0217d6f0 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r6, r0
	ldr r0, _0217d6f0 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r5, r0
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, r6
	bl func_020197bc
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r2, r5
	mov r1, #0
	bl func_02019534
	b _0217d6d4
_0217d5bc:
	ldr r0, _0217d6f0 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r5, r0
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r2, r5
	mov r1, #0
	bl func_02019534
	b _0217d6d4
_0217d5ec:
	ldr r0, _0217d6f0 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r5, r0
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r2, r5
	mov r1, #0
	bl func_02019534
	ldr r0, _0217d6f0 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r5, r0
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r2, r5
	mov r1, #1
	bl func_02019534
	b _0217d6d4
_0217d648:
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldrb r8, [r0, #0x18]
	mov sb, #0
	cmp r8, #0
	bls _0217d6d4
	ldr r7, _0217d6f0 ; =data_ov00_020e9360
	mov r6, #2
_0217d670:
	mov r0, r7
	mov r1, r6
	bl func_ov00_02079e68
	mov r5, r0
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, sb
	mov r2, r5
	bl func_02019534
	add sb, sb, #1
	cmp sb, r8
	blo _0217d670
	b _0217d6d4
_0217d6ac:
	ldr r0, _0217d6f0 ; =data_ov00_020e9360
	mov r1, #2
	bl func_ov00_02079e68
	mov r5, r0
	ldr r0, [r4, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, r5
	bl func_020197bc
_0217d6d4:
	ldr r0, [r4, #0x158]
	add r1, r4, #0x48
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov40_0217d4dc
_0217d6ec: .word 0x00000106
_0217d6f0: .word data_ov00_020e9360

	arm_func_start func_ov40_0217d6f4
func_ov40_0217d6f4: ; 0x0217d6f4
	ldr ip, _0217d6fc ; =func_ov40_0217d4dc
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217d6f4
_0217d6fc: .word func_ov40_0217d4dc

	arm_func_start func_ov40_0217d700
func_ov40_0217d700: ; 0x0217d700
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x15c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r4, r0
	ldr r0, _0217d750 ; =data_ov00_020e9360
	mov r1, #0xa
	bl func_ov00_02079e68
	mov r1, r0
	mov r0, r4
	bl func_020197bc
	add r0, r5, #0x15c
	ldr r2, [r0]
	add r1, r5, #0x48
	ldr r2, [r2, #0x18]
	blx r2
	bl func_01ffa8d4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217d700
_0217d750: .word data_ov00_020e9360

	arm_func_start func_ov40_0217d754
func_ov40_0217d754: ; 0x0217d754
	mov r1, r0
	ldr r0, [r1, #4]
	ldr ip, _0217d768 ; =func_ov40_0217d76c
	ldr r0, [r0, #0x2c]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217d754
_0217d768: .word func_ov40_0217d76c

	arm_func_start func_ov40_0217d76c
func_ov40_0217d76c: ; 0x0217d76c
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xc0
	mov r4, r1
	ldr r1, [r4, #8]
	mov r5, r0
	tst r1, #0x10
	ldrneb r1, [r4, #0xae]
	ldr r0, [r5, #0x1c0]
	mvneq r1, #0
	cmp r0, r1
	bne _0217d7d0
	add r0, sp, #0x90
	mov r1, #0
	bl func_0201b1bc
	bl func_02018450
	mov r1, r0
	add r0, sp, #0x90
	add r2, sp, #0x60
	bl func_01ff8e84
	ldr r0, [sp, #0x84]
	str r0, [r5, #0x4cc]
	ldr r0, [sp, #0x88]
	str r0, [r5, #0x4d0]
	ldr r0, [sp, #0x8c]
	str r0, [r5, #0x4d4]
_0217d7d0:
	ldr r0, [r4, #8]
	tst r0, #0x10
	ldrneb r4, [r4, #0xae]
	mvneq r4, #0
	cmp r4, #0x10
	addhs sp, sp, #0xc0
	ldmia sp!, {r3, r4, r5, pc}
	add r0, sp, #0x30
	mov r1, #0
	bl func_0201b1bc
	bl func_02018450
	mov r1, r0
	add r0, sp, #0x30
	add r2, sp, #0
	bl func_01ff8e84
	mov r0, #0x30
	mla r0, r4, r0, r5
	add r5, sp, #0
	add r4, r0, #0x1cc
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	add sp, sp, #0xc0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217d76c

	arm_func_start func_ov40_0217d83c
func_ov40_0217d83c: ; 0x0217d83c
	stmdb sp!, {r4, lr}
	ldr r0, [r0, #0x158]
	mov r4, r1
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, r4
	add r0, r0, #0x40
	bl func_0201e388
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217d83c

	arm_func_start func_ov40_0217d864
func_ov40_0217d864: ; 0x0217d864
	stmdb sp!, {r3, lr}
	mov r3, #0x30
	mla r0, r1, r3, r0
	mov lr, r2
	add ip, r0, #0x1cc
	ldmia ip!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia ip!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia ip!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217d864

	arm_func_start func_ov40_0217d898
func_ov40_0217d898: ; 0x0217d898
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x158]
	mov r5, r1
	ldr r1, [r0]
	mov r4, r2
	ldr r1, [r1, #8]
	blx r1
	mov r1, r5
	add r0, r0, #0x40
	bl func_0201e388
	mov r1, r0
	mov r0, r6
	ldr r3, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r4
	ldr r3, [r3, #0xb8]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217d898

	arm_func_start func_ov40_0217d8e8
func_ov40_0217d8e8: ; 0x0217d8e8
	stmdb sp!, {r4, lr}
	ldr r1, _0217d9cc ; =data_027e0ce0
	mov r4, r0
	ldr r1, [r1, #4]
	mov r0, #1
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	str r0, [r4]
	add r0, r4, #4
	bl func_ov40_0217dff0
	mov r1, #0
	mov r2, r1
	add r0, r4, #0x10
	bl func_ov40_0217f4c4
	mov r1, #0
	str r1, [r4, #0x4c]
	str r1, [r4, #0x50]
	str r1, [r4, #0x54]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r1, [r4, #0x60]
	str r1, [r4, #0x64]
	ldr r0, _0217d9cc ; =data_027e0ce0
	strh r1, [r4, #0x68]
	ldr r1, [r0, #4]
	mov r0, #0x10
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	beq _0217d968
	bl func_ov40_02182e94
_0217d968:
	str r0, [r4, #0x9c]
	mov r1, #0
	add r0, r4, #0x6c
	strb r1, [r4, #0xa0]
	bl func_01ff892c
	mov r0, #0x1000
	mov r1, #0x1e000
	bl func_01ff98e0
	str r0, [r4, #0x50]
	mov r0, #0x1000
	mov r1, #0x1e000
	bl func_01ff98f0
	str r0, [r4, #0x54]
	str r1, [r4, #0x58]
	mov r0, #0
	str r0, [r4, #0x48]
	str r4, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	cmp r0, #0x20
	bhs _0217d9c4
	add r0, r4, #4
	mov r1, #0x20
	bl func_ov40_0217e08c
_0217d9c4:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217d8e8
_0217d9cc: .word data_027e0ce0

	arm_func_start func_ov40_0217d9d0
func_ov40_0217d9d0: ; 0x0217d9d0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl func_ov40_0217de38
	mov r0, r5
	bl func_ov40_0217df3c
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r4, [r5, #0x9c]
	cmp r4, #0
	beq _0217da14
	beq _0217da0c
	mov r0, r4
	bl func_ov40_02182ee4
	mov r0, r4
	bl func_0202ea0c
_0217da0c:
	mov r0, #0
	str r0, [r5, #0x9c]
_0217da14:
	ldr r0, [r5]
	cmp r0, #0
	beq _0217da30
	beq _0217da28
	bl func_0202ea0c
_0217da28:
	mov r0, #0
	str r0, [r5]
_0217da30:
	add r0, r5, #0x10
	bl func_ov40_0217f504
	add r0, r5, #4
	bl func_ov40_0217e018
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217d9d0

	arm_func_start func_ov40_0217da48
func_ov40_0217da48: ; 0x0217da48
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r1, #0
	strb r1, [r5, #0xa0]
	str r1, [r5, #0x48]
	add r0, r5, #0x10
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r4, [r5, #4]
	ldr r0, [r5, #8]
	add r0, r4, r0, lsl #2
	cmp r4, r0
	ldmia sp!, {r4, r5, r6, pc}
	mov r6, #0
_0217da84:
	ldr r0, [r4], #4
	mov r1, r6
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r0, r1, r0, lsl #2
	cmp r4, r0
	bne _0217da84
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217da48

	arm_func_start func_ov40_0217dab0
func_ov40_0217dab0: ; 0x0217dab0
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r3, r1, lsl #2
	cmp r3, r1
	beq _0217daf8
_0217dac4:
	ldr r1, [r3]
	cmp r1, #0
	beq _0217dae0
	ldrb r1, [r1, #0x25]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
_0217dae0:
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	add r3, r3, #4
	add r1, r2, r1, lsl #2
	cmp r3, r1
	bne _0217dac4
_0217daf8:
	ldrb r0, [r0, #0x35]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end func_ov40_0217dab0

	arm_func_start func_ov40_0217db0c
func_ov40_0217db0c: ; 0x0217db0c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #8]
	mov r5, r1
	add r0, r4, r0, lsl #2
	cmp r4, r0
	beq _0217db60
_0217db2c:
	ldr r0, [r4]
	cmp r0, #0
	beq _0217db48
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x10]
	blx r2
_0217db48:
	ldr r1, [r6, #4]
	ldr r0, [r6, #8]
	add r4, r4, #4
	add r0, r1, r0, lsl #2
	cmp r4, r0
	bne _0217db2c
_0217db60:
	add r0, r6, #0x10
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x10]
	blx r2
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217db0c

	arm_func_start func_ov40_0217db7c
func_ov40_0217db7c: ; 0x0217db7c
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #8]
	mov r5, r1
	add r0, r4, r0, lsl #2
	cmp r4, r0
	beq _0217dbd0
_0217db9c:
	ldr r0, [r4]
	cmp r0, #0
	beq _0217dbb8
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x14]
	blx r2
_0217dbb8:
	ldr r1, [r6, #4]
	ldr r0, [r6, #8]
	add r4, r4, #4
	add r0, r1, r0, lsl #2
	cmp r4, r0
	bne _0217db9c
_0217dbd0:
	add r0, r6, #0x10
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x14]
	blx r2
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217db7c

	arm_func_start func_ov40_0217dbec
func_ov40_0217dbec: ; 0x0217dbec
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r2, [sl, #0x3c]
	add r0, sl, #0x10
	str r2, [sl, #0x4c]
	mov sb, r1
	bl func_ov40_0217ec84
	ldr r7, [sl, #4]
	ldr r1, [sl, #8]
	mov r8, r0
	add r0, r7, r1, lsl #2
	cmp r7, r0
	mov r4, #0xf
	mov r5, #0
	beq _0217dc70
	mov fp, #1
_0217dc2c:
	ldr r6, [r7]
	mov r1, sb
	mov r0, r6
	bl func_ov40_0217ec84
	cmp r0, #0
	ldr r2, [r6, #0x14]
	cmpeq r8, #0
	movne r8, fp
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	add r7, r7, #4
	add r0, r1, r0, lsl #2
	moveq r8, #0
	cmp r7, r0
	and r4, r4, r2
	orr r5, r5, r2
	bne _0217dc2c
_0217dc70:
	orr r1, r4, r5, lsl #16
	mov r0, r8
	str r1, [sl, #0x48]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov40_0217dbec

	arm_func_start func_ov40_0217dc80
func_ov40_0217dc80: ; 0x0217dc80
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r1, [sp, #0xc]
	mov r3, #0
	str r0, [r1, #0xc]
	strb r3, [sp, #1]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bhs _0217dccc
	add r3, r2, #1
	str r3, [r0, #8]
	ldr r1, [r0, #4]
	ldr r2, [sp, #0xc]
	sub r0, r3, #1
	str r2, [r1, r0, lsl #2]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_0217dccc:
	strb r3, [sp]
	sub r2, sp, #4
	and r1, r3, #0xff
	strb r1, [r2]
	ldr r2, [r2]
	add r1, sp, #0xc
	add r0, r0, #4
	bl func_ov40_0217e05c
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov40_0217dc80

	arm_func_start func_ov40_0217dcf8
func_ov40_0217dcf8: ; 0x0217dcf8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r4, r1
	ldmib r4, {r1, r2}
	mov r5, r0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldmib r5, {r1, r2}
	add r2, r1, r2, lsl #2
	add r0, sp, #0x20
	add r3, sp, #0x10
	str r2, [sp, #0xc]
	str r2, [sp, #4]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	bl func_ov40_0217dd7c
	mov r2, #0
	ldr r1, [sp, #0x20]
	strb r2, [sp]
	sub r0, sp, #4
	strb r2, [r0]
	ldr r3, [r0]
	ldr r2, [sp, #4]
	add r0, r5, #4
	str r1, [sp, #8]
	bl func_ov40_0217e190
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r5]
	mov r1, r4
	bl func_ov40_0217eaf8
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	arm_func_end func_ov40_0217dcf8

	arm_func_start func_ov40_0217dd7c
func_ov40_0217dd7c: ; 0x0217dd7c
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r7, [sp, #0x28]
	ldr r6, [sp, #0x24]
	mov r5, r0
	mov r4, r3
	str r7, [sp]
	str r6, [sp, #4]
	b _0217ddac
_0217dda4:
	add r6, r6, #4
	str r6, [sp, #4]
_0217ddac:
	cmp r6, r7
	beq _0217ddd0
	ldr r0, [r6]
	mov r1, r4
	cmp r0, #0
	addne r0, r0, #4
	bl func_ov00_0209ffa0
	cmp r0, #0
	beq _0217dda4
_0217ddd0:
	ldr r7, [sp, #4]
	ldr r6, [sp, #0x28]
	mov r0, r7
	cmp r0, r6
	addne r8, r7, #4
	str r7, [sp, #0x24]
	cmpne r8, r6
	beq _0217de20
_0217ddf0:
	ldr r0, [r8]
	mov r1, r4
	cmp r0, #0
	addne r0, r0, #4
	bl func_ov00_0209ffa0
	cmp r0, #0
	ldreq r0, [r8]
	add r8, r8, #4
	streq r0, [r7], #4
	streq r7, [sp, #0x24]
	cmp r8, r6
	bne _0217ddf0
_0217de20:
	ldr r0, [sp, #0x24]
	str r0, [r5]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov40_0217dd7c

	arm_func_start func_ov40_0217de38
func_ov40_0217de38: ; 0x0217de38
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0217de74
_0217de50:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	sub r0, r0, #1
	ldr r1, [r1, r0, lsl #2]
	mov r0, r4
	bl func_ov40_0217dcf8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0217de50
_0217de74:
	ldr r1, [r4, #8]
	mov r0, #0
	strb r0, [sp]
	ldr r0, [r4, #8]
	sub r0, r0, r1
	str r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217de38

	arm_func_start func_ov40_0217de94
func_ov40_0217de94: ; 0x0217de94
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	str r1, [sp]
	str r2, [sp, #4]
	ldmib r4, {r1, r2}
	add r2, r1, r2, lsl #2
	add r0, sp, #0x10
	add r3, sp, #0
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	bl func_ov40_0217dee8
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [sp, #0x10]
	add r0, r1, r0, lsl #2
	cmp r2, r0
	moveq r0, #0
	ldrne r0, [r2]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217de94

	arm_func_start func_ov40_0217dee8
func_ov40_0217dee8: ; 0x0217dee8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r3
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x1c]
	b _0217df08
_0217df04:
	add r4, r4, #4
_0217df08:
	cmp r4, r5
	beq _0217df2c
	ldr r0, [r4]
	mov r1, r6
	cmp r0, #0
	addne r0, r0, #4
	bl func_ov00_0209ffa0
	cmp r0, #0
	beq _0217df04
_0217df2c:
	str r4, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov40_0217dee8

	arm_func_start func_ov40_0217df3c
func_ov40_0217df3c: ; 0x0217df3c
	ldr ip, _0217df48 ; =func_ov40_02183058
	ldr r0, [r0, #0x9c]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217df3c
_0217df48: .word func_ov40_02183058

	arm_func_start func_ov40_0217df4c
func_ov40_0217df4c: ; 0x0217df4c
	ldr ip, _0217df58 ; =func_ov40_021830b4
	ldr r0, [r0, #0x9c]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217df4c
_0217df58: .word func_ov40_021830b4

	arm_func_start func_ov40_0217df5c
func_ov40_0217df5c: ; 0x0217df5c
	stmdb sp!, {r3, lr}
	bl func_ov40_0217df4c
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217df5c

	arm_func_start func_ov40_0217df74
func_ov40_0217df74: ; 0x0217df74
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, [r1]
	mov r4, r0
	str r3, [r4, #0x5c]
	ldr r0, [r1, #4]
	ldr r3, _0217dfec ; =data_02050f54
	str r0, [r4, #0x60]
	ldr r1, [r1, #8]
	add r0, r4, #0x6c
	str r1, [r4, #0x64]
	strh r2, [r4, #0x68]
	ldrh r1, [r4, #0x68]
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	mov ip, r2, lsl #0x1
	mov r2, r1, lsl #0x1
	ldrsh r1, [r3, ip]
	ldrsh r2, [r3, r2]
	blx func_01ff8aa0
	ldr r1, [r4, #0x64]
	add r0, r4, #0x6c
	str r1, [sp]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x60]
	mov r1, r0
	bl func_01ff8988
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217df74
_0217dfec: .word data_02050f54

	arm_func_start func_ov40_0217dff0
func_ov40_0217dff0: ; 0x0217dff0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217e004
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217dff0

	arm_func_start func_ov40_0217e004
func_ov40_0217e004: ; 0x0217e004
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217e1f4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217e004

	arm_func_start func_ov40_0217e018
func_ov40_0217e018: ; 0x0217e018
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217e050
	ldr r1, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r0, [r4, #4]
	sub r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4]
	bl func_0202ea0c
_0217e050:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217e018

	arm_func_start func_ov40_0217e05c
func_ov40_0217e05c: ; 0x0217e05c
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r2, #0
	mov r5, r0
	mov r1, #1
	strb r2, [sp]
	bl func_ov40_0217e3c8
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl func_ov40_0217e26c
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217e05c

	arm_func_start func_ov40_0217e08c
func_ov40_0217e08c: ; 0x0217e08c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldrb r3, [r5, #8]
	mov r4, r1
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0]
	add r0, sp, #0xc
	strb r3, [sp, #3]
	bl func_ov40_0217e264
	mov r1, #0
	strb r1, [sp, #2]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r2, [r0]
	add r0, sp, #4
	mov r1, r4
	bl func_ov40_0217e494
	ldr r4, [r5]
	ldr r0, [r5, #4]
	mov r3, #0
	add r0, r4, r0, lsl #2
	sub r1, r0, r4
	mov r0, r1, asr #0x1
	add r6, r1, r0, lsr #30
	mov r0, r6, asr #0x2
	mov r7, r0, lsl #0x2
	ldr r2, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, r4
	add r0, r2, r0, lsl #2
	mov r2, r7
	strb r3, [sp, #1]
	bl func_02043594
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl func_02043600
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, r1, r6, asr #2
	str r1, [sp, #8]
	strb r0, [sp]
	str r0, [r5, #4]
	add r3, sp, #0xc
	ldr r2, [r5, #8]
	ldr r1, [r3]
	add r0, sp, #4
	str r1, [r5, #8]
	str r2, [r3]
	ldr r2, [r5]
	ldr r1, [sp, #4]
	str r1, [r5]
	str r2, [sp, #4]
	ldr r2, [r5, #4]
	ldr r1, [sp, #8]
	str r1, [r5, #4]
	str r2, [sp, #8]
	bl func_ov40_0217e218
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov40_0217e08c

	arm_func_start func_ov40_0217e190
func_ov40_0217e190: ; 0x0217e190
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	cmp r5, r4
	beq _0217e1ec
	ldr r2, [r6]
	ldr r1, [r6, #4]
	mov r0, r5
	add r1, r2, r1, lsl #2
	sub r2, r1, r4
	mov r1, r2, asr #0x1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #0x2
	mov r1, r4
	mov r2, r2, lsl #0x2
	bl func_020435b4
	sub r1, r4, r5
	mov r0, r1, asr #0x1
	ldr r2, [r6, #4]
	add r0, r1, r0, lsr #30
	sub r0, r2, r0, asr #2
	str r0, [r6, #4]
_0217e1ec:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov40_0217e190

	arm_func_start func_ov40_0217e1f4
func_ov40_0217e1f4: ; 0x0217e1f4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	add r0, r4, #8
	str r1, [r4, #4]
	bl func_ov40_0217e25c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217e1f4

	arm_func_start func_ov40_0217e218
func_ov40_0217e218: ; 0x0217e218
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217e250
	ldr r1, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r0, [r4, #4]
	sub r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4]
	bl func_0202ea0c
_0217e250:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217e218

	arm_func_start func_ov40_0217e25c
func_ov40_0217e25c: ; 0x0217e25c
	str r1, [r0]
	bx lr
	arm_func_end func_ov40_0217e25c

	arm_func_start func_ov40_0217e264
func_ov40_0217e264: ; 0x0217e264
	str r1, [r0]
	bx lr
	arm_func_end func_ov40_0217e264

	arm_func_start func_ov40_0217e26c
func_ov40_0217e26c: ; 0x0217e26c
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r5, r1
	add r0, sp, #8
	add r1, r6, #8
	mov r4, r2
	bl func_ov40_0217e574
	mov r0, #0
	str r0, [sp, #0x18]
	ldmib r6, {r0, r1}
	add r2, r0, r5
	mov r0, r6
	sub r1, r2, r1
	bl func_ov40_0217e3c8
	mov r3, #0
	mov r1, r0
	strb r3, [sp, #4]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r2, [r2]
	add r0, sp, #8
	strb r3, [sp]
	bl func_ov40_0217e534
	ldr r1, [r6, #4]
	ldr r0, [sp, #8]
	str r1, [sp, #0x18]
	add r1, r0, r1, lsl #2
	ldr r0, [sp, #0xc]
	cmp r5, #0
	add r1, r1, r0, lsl #2
	mov r0, #0
	strb r0, [sp, #3]
	mov r2, r5
	beq _0217e308
_0217e2f8:
	ldr r0, [r4]
	subs r2, r2, #1
	str r0, [r1], #4
	bne _0217e2f8
_0217e308:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	add r0, r0, r5
	str r0, [sp, #0xc]
	ldr r4, [r6]
	ldr r0, [r6, #4]
	mov ip, #0
	add r0, r4, r0, lsl #2
	sub r2, r0, r4
	mov r0, r2, asr #0x1
	add r5, r2, r0, lsr #30
	sub r3, r1, r5, asr #2
	mov r2, r5, asr #0x2
	ldr r0, [sp, #8]
	mov r7, r2, lsl #0x2
	mov r1, r4
	mov r2, r7
	add r0, r0, r3, lsl #2
	strb ip, [sp, #2]
	str r3, [sp, #0x18]
	bl func_02043594
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl func_02043600
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r1, r5, asr #2
	str r1, [sp, #0xc]
	strb r0, [sp, #1]
	str r0, [r6, #4]
	add r3, sp, #0x10
	ldr r2, [r6, #8]
	ldr r1, [r3]
	add r0, sp, #8
	str r1, [r6, #8]
	str r2, [r3]
	ldr r2, [r6]
	ldr r1, [sp, #8]
	str r1, [r6]
	str r2, [sp, #8]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
	str r2, [sp, #0xc]
	bl func_ov40_0217e4d4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end func_ov40_0217e26c

	arm_func_start func_ov40_0217e3c8
func_ov40_0217e3c8: ; 0x0217e3c8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #8]
	mvn r0, #0xc0000000
	ldr r1, [sp, #0x14]
	sub r0, r0, r4
	cmp r1, r0
	bls _0217e3f0
	bl func_0204dd9c
_0217e3f0:
	ldr r0, _0217e48c ; =0x15555555
	cmp r4, r0
	bhs _0217e43c
	add r1, r4, #1
	ldr r0, _0217e490 ; =0xcccccccd
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #0x2
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x14
	addls r0, sp, #4
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0217e43c:
	cmp r4, r0, lsl #1
	bhs _0217e478
	ldr r0, [sp, #0x14]
	add r1, r4, #1
	mov r2, r1, lsr #0x1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x14
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0217e478:
	mvn r0, #0xc0000000
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0217e3c8
_0217e48c: .word 0x15555555
_0217e490: .word 0xcccccccd

	arm_func_start func_ov40_0217e494
func_ov40_0217e494: ; 0x0217e494
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mvn r1, #0xc0000000
	mov r5, r0
	cmp r4, r1
	bls _0217e4b0
	bl func_0204dd9c
_0217e4b0:
	ldr r1, _0217e4d0 ; =data_027e0ce0
	mov r0, r4, lsl #0x2
	ldr r1, [r1, #4]
	mov r2, #4
	bl func_0202e9dc
	str r0, [r5]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217e494
_0217e4d0: .word data_027e0ce0

	arm_func_start func_ov40_0217e4d4
func_ov40_0217e4d4: ; 0x0217e4d4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	bl func_ov40_0217e4f0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217e4d4

	arm_func_start func_ov40_0217e4f0
func_ov40_0217e4f0: ; 0x0217e4f0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0217e528
	ldr r1, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r0, [r4, #4]
	sub r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4]
	bl func_0202ea0c
_0217e528:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217e4f0

	arm_func_start func_ov40_0217e534
func_ov40_0217e534: ; 0x0217e534
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mvn r1, #0xc0000000
	mov r5, r0
	cmp r4, r1
	bls _0217e550
	bl func_0204dd9c
_0217e550:
	ldr r1, _0217e570 ; =data_027e0ce0
	mov r0, r4, lsl #0x2
	ldr r1, [r1, #4]
	mov r2, #4
	bl func_0202e9dc
	str r0, [r5]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217e534
_0217e570: .word data_027e0ce0

	arm_func_start func_ov40_0217e574
func_ov40_0217e574: ; 0x0217e574
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, r1
	mov r1, #0
	str r1, [r4]
	add r0, r4, #8
	str r1, [r4, #4]
	bl func_ov40_0217e59c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217e574

	arm_func_start func_ov40_0217e59c
func_ov40_0217e59c: ; 0x0217e59c
	stmia r0!, {r1, r2}
	bx lr
	arm_func_end func_ov40_0217e59c

	arm_func_start func_ov40_0217e5a4
func_ov40_0217e5a4: ; 0x0217e5a4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov sl, r0
	mov r8, r2
	ldr r1, _0217e6f0 ; =data_ov40_02188010
	mov r0, sb
	mov r2, #4
	bl func_0204366c
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r1, [sb, #4]
	ldr r0, _0217e6f4 ; =0x0000feff
	cmp r1, r0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r1, [sb, #6]
	cmp r1, #1
	movlo r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r1, #3
	movhi r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0xc]
	add r7, sb, #0x20
	cmp r1, #0
	mov r6, #0
	bls _0217e6e8
	ldr r5, _0217e6f8 ; =0x4a435442
	ldr fp, _0217e6fc ; =0x4a465642
	sub r4, r0, #0xff00
_0217e620:
	ldr r0, [r7, #4]
	cmp r0, r5
	bhi _0217e63c
	bhs _0217e678
	cmp r0, #0
	beq _0217e6d0
	b _0217e6b4
_0217e63c:
	cmp r0, fp
	bhi _0217e64c
	beq _0217e658
	b _0217e6b4
_0217e64c:
	cmp r0, r4
	beq _0217e698
	b _0217e6b4
_0217e658:
	mov r0, sl
	mov r1, r7
	mov r2, r8
	bl func_ov40_0217e700
	cmp r0, #0
	bne _0217e6d0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0217e678:
	mov r0, sl
	mov r1, r7
	mov r2, r8
	bl func_ov40_0217e740
	cmp r0, #0
	bne _0217e6d0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0217e698:
	mov r0, sl
	mov r1, r7
	bl func_ov40_0217e748
	cmp r0, #0
	bne _0217e6d0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0217e6b4:
	mov r0, sl
	mov r1, r7
	mov r2, r8
	bl func_ov40_0217e77c
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0217e6d0:
	ldr r1, [r7]
	ldr r0, [sb, #0xc]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, r1
	blo _0217e620
_0217e6e8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_0217e5a4
_0217e6f0: .word data_ov40_02188010
_0217e6f4: .word 0x0000feff
_0217e6f8: .word 0x4a435442
_0217e6fc: .word 0x4a465642

	arm_func_start func_ov40_0217e700
func_ov40_0217e700: ; 0x0217e700
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, [r0]
	str r1, [sp]
	ldr r3, [r0, #0x9c]
	add r0, sp, #4
	add r1, r1, #8
	str r3, [sp, #4]
	bl func_ov40_02182a98
	cmp r0, #0
	mov r0, #0
	streq r0, [sp, #4]
	strne r0, [sp, #4]
	movne r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217e700

	arm_func_start func_ov40_0217e740
func_ov40_0217e740: ; 0x0217e740
	mov r0, #1
	bx lr
	arm_func_end func_ov40_0217e740

	arm_func_start func_ov40_0217e748
func_ov40_0217e748: ; 0x0217e748
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	ldrh r3, [r1, #0xa]
	ldr r2, [r0, #0x10]!
	add ip, r1, #0xc
	add r3, r3, #3
	bic r3, r3, #3
	str r1, [sp]
	ldr r2, [r2, #8]
	add r1, ip, r3
	blx r2
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217e748

	arm_func_start func_ov40_0217e77c
func_ov40_0217e77c: ; 0x0217e77c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r3, r1
	cmp r2, #0
	bne _0217e7e8
	ldrh r2, [r3, #0xa]
	ldr r0, [r4]
	add r1, r3, #0xc
	str r3, [sp]
	bl func_ov40_0217de94
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmia sp!, {r3, r4, pc}
	ldr r3, [sp]
	ldr r2, [r0]
	ldrh r1, [r3, #0xa]
	add r3, r3, #0xc
	ldr r2, [r2, #8]
	add r1, r1, #3
	bic r1, r1, #3
	add r1, r3, r1
	blx r2
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, pc}
_0217e7e8:
	ldr r0, [r4]
	ldr r0, [r0]
	bl func_ov40_0217e8c8
	movs r1, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmia sp!, {r3, r4, pc}
	ldr r0, [r4]
	bl func_ov40_0217dc80
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217e77c

	arm_func_start func_ov40_0217e818
func_ov40_0217e818: ; 0x0217e818
	mov r2, #0
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	ldr r2, [r0]
	ldr ip, [r2]
	mov r2, ip, lsr #0x18
	ands r3, r2, #0xff
	strb r3, [r1]
	bic r2, ip, #0xff000000
	str r2, [r1, #4]
	bxeq lr
	ldr r0, [r0]
	cmp r3, #0x7f
	add r0, r0, #4
	strls r0, [r1, #0xc]
	strhi r0, [r1, #8]
	addhi r0, r0, r2
	strhi r0, [r1, #0xc]
	bx lr
	arm_func_end func_ov40_0217e818

	arm_func_start func_ov40_0217e864
func_ov40_0217e864: ; 0x0217e864
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, r4
	mov r3, #0
	bl func_ov00_020a0064
	ldr r1, [sp]
	str r1, [r4, #4]
	ldr r1, [sp]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r4, #8]
	addeq sp, sp, #4
	streq r0, [r4, #0xc]
	ldmia sp!, {r3, r4, pc}
	str r0, [r4, #8]
	ldr r1, [sp]
	add r1, r1, #3
	bic r1, r1, #3
	add r0, r0, r1
	str r0, [r4, #0xc]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0217e864

	arm_func_start func_ov40_0217e8c8
func_ov40_0217e8c8: ; 0x0217e8c8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	str r1, [sp]
	ldr r2, [r1, #4]
	ldr r0, _0217eadc ; =0x4a4d5347
	mov r4, #0
	cmp r2, r0
	bgt _0217e910
	bge _0217e9f4
	ldr r0, _0217eae0 ; =0x4a414354
	cmp r2, r0
	bgt _0217e900
	beq _0217e934
	b _0217eac8
_0217e900:
	ldr r0, _0217eae4 ; =0x4a434d52
	cmp r2, r0
	beq _0217e9a8
	b _0217eac8
_0217e910:
	ldr r0, _0217eae8 ; =0x4a505443
	cmp r2, r0
	bgt _0217e924
	beq _0217ea24
	b _0217eac8
_0217e924:
	ldr r0, _0217eaec ; =0x4a534e44
	cmp r2, r0
	beq _0217ea54
	b _0217eac8
_0217e934:
	ldr r2, _0217eaf0 ; =data_ov40_0218875c
	add r0, r1, #0xc
	ldr r1, [r2, #0xc]
	bl func_0204716c
	cmp r0, #0
	mov r2, #4
	bne _0217e97c
	ldr r1, _0217eaf4 ; =data_027e0f80
	mov r0, #0xe8
	ldr r1, [r1]
	ldr r1, [r1]
	bl func_0202e9dc
	movs r4, r0
	beq _0217eac8
	add r1, sp, #0
	bl func_ov40_02180628
	mov r4, r0
	b _0217eac8
_0217e97c:
	ldr r1, _0217eaf4 ; =data_027e0f80
	mov r0, #0xe4
	ldr r1, [r1]
	ldr r1, [r1]
	bl func_0202e9dc
	movs r4, r0
	beq _0217eac8
	add r1, sp, #0
	bl func_ov40_0217f914
	mov r4, r0
	b _0217eac8
_0217e9a8:
	ldr r2, _0217eaf0 ; =data_ov40_0218875c
	add r0, r1, #0xc
	ldr r1, [r2, #4]
	bl func_0204716c
	ldr r1, _0217eaf4 ; =data_027e0f80
	cmp r0, #0
	ldr r1, [r1]
	mov r0, #0xcc
	ldr r1, [r1]
	mov r2, #4
	moveq r4, #1
	bl func_0202e9dc
	cmp r0, #0
	beq _0217e9ec
	add r1, sp, #0
	mov r2, r4
	bl func_ov40_02180b38
_0217e9ec:
	mov r4, r0
	b _0217eac8
_0217e9f4:
	ldr r1, _0217eaf4 ; =data_027e0f80
	mov r0, #0x48
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	movs r4, r0
	beq _0217eac8
	add r1, sp, #0
	bl func_ov40_02182318
	mov r4, r0
	b _0217eac8
_0217ea24:
	ldr r1, _0217eaf4 ; =data_027e0f80
	mov r0, #0xa8
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	movs r4, r0
	beq _0217eac8
	add r1, sp, #0
	bl func_ov40_021810c8
	mov r4, r0
	b _0217eac8
_0217ea54:
	ldr r2, _0217eaf0 ; =data_ov40_0218875c
	add r0, r1, #0xc
	ldr r1, [r2, #0x10]
	mov r2, #3
	bl func_02047280
	cmp r0, #0
	mov r2, #4
	bne _0217eaa0
	ldr r1, _0217eaf4 ; =data_027e0f80
	mov r0, #0x4c
	ldr r1, [r1]
	ldr r1, [r1]
	bl func_0202e9dc
	movs r4, r0
	beq _0217eac8
	add r1, sp, #0
	bl func_ov40_021818f8
	mov r4, r0
	b _0217eac8
_0217eaa0:
	ldr r1, _0217eaf4 ; =data_027e0f80
	mov r0, #0x80
	ldr r1, [r1]
	ldr r1, [r1]
	bl func_0202e9dc
	movs r4, r0
	beq _0217eac8
	add r1, sp, #0
	bl func_ov40_02181c68
	mov r4, r0
_0217eac8:
	cmp r4, #0
	moveq r0, #0
	movne r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217e8c8
_0217eadc: .word 0x4a4d5347
_0217eae0: .word 0x4a414354
_0217eae4: .word 0x4a434d52
_0217eae8: .word 0x4a505443
_0217eaec: .word 0x4a534e44
_0217eaf0: .word data_ov40_0218875c
_0217eaf4: .word data_027e0f80

	arm_func_start func_ov40_0217eaf8
func_ov40_0217eaf8: ; 0x0217eaf8
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldmia sp!, {r3, pc}
	mov r0, r1
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217eaf8

	arm_func_start func_ov40_0217eb18
func_ov40_0217eb18: ; 0x0217eb18
	str r2, [r0, #4]
	ldr r2, _0217eb70 ; =data_ov40_021889fc
	str r3, [r0, #8]
	str r2, [r0]
	mov r3, #0
	str r3, [r0, #0xc]
	str r1, [r0, #0x10]
	str r3, [r0, #0x14]
	ldr r2, [sp, #4]
	strh r3, [r0, #0x18]
	ldr r1, [sp]
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	strb r3, [r0, #0x24]
	mov r1, #1
	strb r1, [r0, #0x25]
	strb r3, [r0, #0x26]
	str r3, [r0, #0x28]
	str r3, [r0, #0x2c]
	str r3, [r0, #0x30]
	str r3, [r0, #0x34]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0217eb18
_0217eb70: .word data_ov40_021889fc

	arm_func_start func_ov40_0217eb74
func_ov40_0217eb74: ; 0x0217eb74
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r1]
	ldr ip, _0217ebfc ; =data_ov40_021889fc
	ldrh r5, [r4, #0xa]
	add lr, r4, #0xc
	mov r4, #0
	str lr, [r0, #4]
	str r5, [r0, #8]
	str ip, [r0]
	str r4, [r0, #0xc]
	ldr lr, [r1]
	mov ip, #1
	ldr lr, [lr, #4]
	str lr, [r0, #0x10]
	str r4, [r0, #0x14]
	ldr lr, [r1]
	ldrh lr, [lr, #8]
	strh lr, [r0, #0x18]
	str r3, [r0, #0x1c]
	str r2, [r0, #0x20]
	strb r4, [r0, #0x24]
	strb ip, [r0, #0x25]
	strb r4, [r0, #0x26]
	str r4, [r0, #0x28]
	str r4, [r0, #0x2c]
	str r4, [r0, #0x30]
	ldr r2, [r1]
	ldrh r1, [r2, #0xa]
	add r2, r2, #0xc
	add r1, r1, #3
	bic r1, r1, #3
	add r1, r2, r1
	str r1, [r0, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217eb74
_0217ebfc: .word data_ov40_021889fc

	arm_func_start func_ov40_0217ec00
func_ov40_0217ec00: ; 0x0217ec00
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end func_ov40_0217ec00

	arm_func_start func_ov40_0217ec10
func_ov40_0217ec10: ; 0x0217ec10
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x20]
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217ec10

	arm_func_start func_ov40_0217ec30
func_ov40_0217ec30: ; 0x0217ec30
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end func_ov40_0217ec30

	arm_func_start func_ov40_0217ec40
func_ov40_0217ec40: ; 0x0217ec40
	ldr r3, [r0, #4]
	ldrb r0, [r3, #1]
	ldrb r1, [r3]
	ldrb r2, [r3, #2]
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsl #24
	ldrb r1, [r3, #3]
	orr r0, r0, r2, lsl #8
	orr r0, r1, r0
	bx lr
	arm_func_end func_ov40_0217ec40

	arm_func_start func_ov40_0217ec68
func_ov40_0217ec68: ; 0x0217ec68
	mov r2, #0
	strb r2, [r0, #0x24]
	str r2, [r0, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	str r2, [r0, #0x28]
	bx lr
	arm_func_end func_ov40_0217ec68

	arm_func_start func_ov40_0217ec84
func_ov40_0217ec84: ; 0x0217ec84
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	mov r8, r1
	mov r7, #0
_0217ec94:
	ldrh r0, [sb, #0x18]
	tst r0, #0x8000
	beq _0217ed00
	ldr r0, [sb, #0x14]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0217ecf8
_0217ecb0: ; jump table
	b _0217ecf8 ; case 0
	b _0217ecf8 ; case 1
	b _0217ecd4 ; case 2
	b _0217ecf8 ; case 3
	b _0217ecd4 ; case 4
	b _0217ecf8 ; case 5
	b _0217ecf8 ; case 6
	b _0217ecf8 ; case 7
	b _0217ecf8 ; case 8
_0217ecd4:
	mov r0, #8
	str r0, [sb, #0x14]
	ldrb r0, [sb, #0x24]
	cmp r0, #0
	beq _0217ecf8
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
_0217ecf8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0217ed00:
	ldr r0, [sb, #0x14]
	cmp r0, #8
	bne _0217ed24
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r0, #2
	str r0, [sb, #0x14]
_0217ed24:
	ldr r0, [sb, #0xc]
	cmp r0, #0
	beq _0217ed3c
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	bgt _0217ed48
_0217ed3c:
	ldr r0, [sb, #0x2c]
	cmp r0, #0
	ble _0217ed78
_0217ed48:
	ldrb r0, [sb, #0x24]
	cmp r0, #0
	beq _0217ed70
	mov r1, #4
	mov r0, sb
	str r1, [sb, #0x14]
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #0x30]
	blx r2
_0217ed70:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0217ed78:
	mov r6, #1
	mov r5, #2
	mov sl, r6
	mov r4, #0
_0217ed88:
	ldr r0, [sb, #0x34]
	str r0, [sb, #0x30]
	cmp r0, #0
	bne _0217ede8
	ldrb r0, [sb, #0x24]
	cmp r0, #0
	beq _0217ede0
	cmp r7, #0
	bne _0217edc0
	mov r0, sb
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x30]
	blx r2
_0217edc0:
	mov r0, #0
	strb r0, [sb, #0x24]
	mov r1, #1
	mov r0, sb
	str r1, [sb, #0x14]
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
_0217ede0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0217ede8:
	ldrb r0, [sb, #0x24]
	cmp r0, #0
	bne _0217ee08
	mov r0, sb
	strb r6, [sb, #0x24]
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
_0217ee08:
	str r5, [sb, #0x14]
	ldr r1, [sb, #0x28]
	cmp r1, #0
	bne _0217ee2c
	mov r0, sb
	bl func_ov40_0217ef24
	ldr r1, [sb, #0x28]
	cmp r1, #0
	beq _0217ec94
_0217ee2c:
	mov r7, sl
	cmp r8, r1
	blo _0217ee54
	mov r0, sb
	str r4, [sb, #0x28]
	ldr r2, [r0]
	sub r8, r8, r1
	ldr r2, [r2, #0x30]
	blx r2
	b _0217ed88
_0217ee54:
	ldr r1, [sb, #0x28]
	mov r0, sb
	sub r1, r1, r8
	str r1, [sb, #0x28]
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #0x30]
	blx r2
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end func_ov40_0217ec84

	arm_func_start func_ov40_0217ee7c
func_ov40_0217ee7c: ; 0x0217ee7c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov40_0217f420
	mov r0, r5
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x38]
	blx r2
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0217ee7c

	arm_func_start func_ov40_0217eeb4
func_ov40_0217eeb4: ; 0x0217eeb4
	bx lr
	arm_func_end func_ov40_0217eeb4

	arm_func_start func_ov40_0217eeb8
func_ov40_0217eeb8: ; 0x0217eeb8
	cmp r1, #1
	beq _0217eed4
	cmp r1, #2
	beq _0217eee4
	cmp r1, #3
	beq _0217eef4
	bx lr
_0217eed4:
	ldrh r1, [r0, #0x18]
	orr r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
_0217eee4:
	ldrh r1, [r0, #0x18]
	and r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
_0217eef4:
	ldrh r1, [r0, #0x18]
	eor r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
	arm_func_end func_ov40_0217eeb8

	arm_func_start func_ov40_0217ef04
func_ov40_0217ef04: ; 0x0217ef04
	bx lr
	arm_func_end func_ov40_0217ef04

	arm_func_start func_ov40_0217ef08
func_ov40_0217ef08: ; 0x0217ef08
	bx lr
	arm_func_end func_ov40_0217ef08

	arm_func_start func_ov40_0217ef0c
func_ov40_0217ef0c: ; 0x0217ef0c
	bx lr
	arm_func_end func_ov40_0217ef0c

	arm_func_start func_ov40_0217ef10
func_ov40_0217ef10: ; 0x0217ef10
	ldr ip, _0217ef18 ; =func_ov40_0217ee7c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0217ef10
_0217ef18: .word func_ov40_0217ee7c

	arm_func_start func_ov40_0217ef1c
func_ov40_0217ef1c: ; 0x0217ef1c
	bx lr
	arm_func_end func_ov40_0217ef1c

	arm_func_start func_ov40_0217ef20
func_ov40_0217ef20: ; 0x0217ef20
	bx lr
	arm_func_end func_ov40_0217ef20

	arm_func_start func_ov40_0217ef24
func_ov40_0217ef24: ; 0x0217ef24
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r2, [r5, #0x30]
	add r0, sp, #4
	add r1, sp, #0x18
	str r2, [sp, #4]
	bl func_ov40_0217e818
	ldrb r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r4, [sp, #0x24]
	cmp r0, #4
	str r4, [r5, #0x34]
	bgt _0217ef80
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0217f064
_0217ef6c: ; jump table
	b _0217f064 ; case 0
	b _0217ef90 ; case 1
	b _0217efb0 ; case 2
	b _0217efbc ; case 3
	b _0217efd8 ; case 4
_0217ef80:
	cmp r0, #0x80
	beq _0217eff4
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217ef90:
	mov r1, r3, lsr #0x10
	mov r2, r3, lsl #0x10
	mov r0, r5
	and r1, r1, #0xff
	mov r2, r2, lsr #0x10
	bl func_ov40_0217eeb8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217efb0:
	add sp, sp, #0x28
	str r3, [r5, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217efbc:
	ldr r0, [r5, #0x30]
	tst r3, #0x800000
	orrne r3, r3, #0xff000000
	add r0, r0, r3
	add sp, sp, #0x28
	str r0, [r5, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217efd8:
	ldr r0, [r5, #0x2c]
	tst r3, #0x800000
	orrne r3, r3, #0xff000000
	add r0, r0, r3
	add sp, sp, #0x28
	str r0, [r5, #0x2c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0217eff4:
	mov r0, #0
	str r0, [sp]
	cmp r2, r4
	addhs sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, sp, #0
	add r6, sp, #8
_0217f010:
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	bl func_ov40_0217e864
	ldr r1, [sp, #8]
	cmp r1, #0xff
	bhi _0217f040
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mov r0, r5
	bl func_ov40_0217f06c
	b _0217f058
_0217f040:
	mov r0, r5
	ldr ip, [r0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr ip, [ip, #0x2c]
	blx ip
_0217f058:
	ldr r2, [sp, #0x14]
	cmp r2, r4
	blo _0217f010
_0217f064:
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov40_0217ef24

	arm_func_start func_ov40_0217f06c
func_ov40_0217f06c: ; 0x0217f06c
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r2
	cmp r1, #0x80
	bhi _0217f0b8
	bhs _0217f120
	cmp r1, #3
	addhi sp, sp, #8
	ldmia sp!, {r4, pc}
	cmp r1, #1
	addlo sp, sp, #8
	ldmia sp!, {r4, pc}
	beq _0217f0d8
	cmp r1, #2
	beq _0217f0f8
	cmp r1, #3
	beq _0217f108
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0217f0b8:
	cmp r1, #0x81
	bhi _0217f0cc
	beq _0217f144
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0217f0cc:
	add sp, sp, #8
	cmp r1, #0x82
	ldmia sp!, {r4, pc}
_0217f0d8:
	ldr r2, [r4]
	mov r1, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	and r1, r1, #0xff
	mov r2, r2, lsr #0x10
	bl func_ov40_0217eeb8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0217f0f8:
	ldr r1, [r4]
	add sp, sp, #8
	str r1, [r0, #0x28]
	ldmia sp!, {r4, pc}
_0217f108:
	ldr r2, [r0, #0x30]
	ldr r1, [r4]
	add sp, sp, #8
	add r1, r2, r1
	str r1, [r0, #0x34]
	ldmia sp!, {r4, pc}
_0217f120:
	str r3, [sp]
	ldr ip, [r0]
	mov r1, #0
	ldr ip, [ip, #0x34]
	mov r2, r1
	mov r3, r4
	blx ip
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0217f144:
	ldrh r2, [r4, #2]
	add r1, r4, #4
	str r4, [sp, #4]
	add ip, r2, #3
	bic ip, ip, #3
	add lr, r1, ip
	sub ip, lr, r4
	sub r3, r3, ip
	str r3, [sp]
	ldr ip, [r0]
	mov r3, lr
	ldr ip, [ip, #0x34]
	blx ip
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217f06c

	arm_func_start func_ov40_0217f180
func_ov40_0217f180: ; 0x0217f180
	stmdb sp!, {r3, lr}
	cmp r2, #0x10
	ldr ip, [sp, #8]
	bgt _0217f1c0
	cmp r2, #0x10
	bge _0217f1fc
	cmp r2, #3
	ldmia sp!, {r3, pc}
	cmp r2, #1
	ldmia sp!, {r3, pc}
	beq _0217f1cc
	cmp r2, #2
	beq _0217f1dc
	cmp r2, #3
	beq _0217f1ec
	ldmia sp!, {r3, pc}
_0217f1c0:
	cmp r2, #0x12
	beq _0217f20c
	ldmia sp!, {r3, pc}
_0217f1cc:
	mov r2, r3
	mov r3, ip
	bl func_ov40_0217f388
	ldmia sp!, {r3, pc}
_0217f1dc:
	mov r2, r3
	mov r3, ip
	bl func_ov40_0217f39c
	ldmia sp!, {r3, pc}
_0217f1ec:
	mov r2, r3
	mov r3, ip
	bl func_ov40_0217f3c4
	ldmia sp!, {r3, pc}
_0217f1fc:
	mov r2, r3
	mov r3, ip
	bl func_ov40_0217f3ec
	ldmia sp!, {r3, pc}
_0217f20c:
	mov r2, r3
	mov r3, ip
	bl func_ov40_0217f3f0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217f180

	arm_func_start func_ov40_0217f21c
func_ov40_0217f21c: ; 0x0217f21c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	cmp r3, #0x10
	ldr r4, [sp, #0x20]
	bgt _0217f268
	cmp r3, #0x10
	bge _0217f318
	cmp r3, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r3, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	beq _0217f274
	cmp r3, #2
	beq _0217f2a8
	cmp r3, #3
	beq _0217f2e0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0217f268:
	cmp r3, #0x12
	beq _0217f350
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0217f274:
	mov sb, #0
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, sb
_0217f284:
	ldr r1, [r6, sb, lsl #2]
	mov r0, r7
	mov r2, r4
	mov r3, r8
	bl func_ov40_0217f388
	add sb, sb, #1
	cmp sb, r5
	blo _0217f284
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0217f2a8:
	mov sb, #0
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, #4
_0217f2b8:
	ldr r1, [r6, sb, lsl #2]
	mov r0, r7
	mov r2, r4
	mov r3, r8
	bl func_ov40_0217f39c
	add sb, sb, #1
	cmp sb, r5
	add r4, r4, #4
	blo _0217f2b8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0217f2e0:
	mov sb, #0
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, #4
_0217f2f0:
	ldr r1, [r6, sb, lsl #2]
	mov r0, r7
	mov r2, r4
	mov r3, r8
	bl func_ov40_0217f3c4
	add sb, sb, #1
	cmp sb, r5
	add r4, r4, #4
	blo _0217f2f0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0217f318:
	mov sb, #0
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, #4
_0217f328:
	ldr r1, [r6, sb, lsl #2]
	mov r0, r7
	mov r2, r4
	mov r3, r8
	bl func_ov40_0217f3ec
	add sb, sb, #1
	cmp sb, r5
	add r4, r4, #4
	blo _0217f328
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0217f350:
	mov sb, #0
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, #4
_0217f360:
	ldr r1, [r6, sb, lsl #2]
	mov r0, r7
	mov r2, r4
	mov r3, r8
	bl func_ov40_0217f3f0
	add sb, sb, #1
	cmp sb, r5
	add r4, r4, #4
	blo _0217f360
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end func_ov40_0217f21c

	arm_func_start func_ov40_0217f388
func_ov40_0217f388: ; 0x0217f388
	ldr r0, [r0, #0x20]
	mov r2, #0
	add r0, r0, r1, lsl #4
	str r2, [r0, #8]
	bx lr
	arm_func_end func_ov40_0217f388

	arm_func_start func_ov40_0217f39c
func_ov40_0217f39c: ; 0x0217f39c
	ldr r3, [r0, #0x20]
	ldr r2, [r2]
	ldr r0, _0217f3c0 ; =func_ov00_020a00f8
	add r1, r3, r1, lsl #4
	str r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #4]
	str r2, [r1, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0217f39c
_0217f3c0: .word func_ov00_020a00f8

	arm_func_start func_ov40_0217f3c4
func_ov40_0217f3c4: ; 0x0217f3c4
	ldr r3, [r0, #0x20]
	ldr r2, [r2]
	ldr r0, _0217f3e8 ; =func_ov00_020a010c
	add r1, r3, r1, lsl #4
	str r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #4]
	str r2, [r1, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0217f3c4
_0217f3e8: .word func_ov00_020a010c

	arm_func_start func_ov40_0217f3ec
func_ov40_0217f3ec: ; 0x0217f3ec
	bx lr
	arm_func_end func_ov40_0217f3ec

	arm_func_start func_ov40_0217f3f0
func_ov40_0217f3f0: ; 0x0217f3f0
	stmdb sp!, {r4, lr}
	ldr r3, [r0, #0x20]
	ldr r0, [r0, #0xc]
	add r4, r3, r1, lsl #4
	ldr r1, [r2]
	bl func_ov40_0217df5c
	ldr r2, _0217f41c ; =func_ov00_020a0134
	mov r1, #0
	stmib r4, {r1, r2}
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f3f0
_0217f41c: .word func_ov00_020a0134

	arm_func_start func_ov40_0217f420
func_ov40_0217f420: ; 0x0217f420
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x1c]
	ldr r8, [r2, #0x50]
	mov r4, r1
	mov r7, #0
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, r7
_0217f448:
	ldr r6, [r5, #0x20]
	mov r1, r4
	add r0, r6, sb
	bl func_ov00_020a00c0
	mov r1, r8
	add r0, r6, sb
	bl func_ov00_020a00e0
	ldr r0, [r5, #0x1c]
	add r7, r7, #1
	cmp r7, r0
	add sb, sb, #0x10
	blo _0217f448
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end func_ov40_0217f420

	arm_func_start func_ov40_0217f47c
func_ov40_0217f47c: ; 0x0217f47c
	mov r1, #1
	strb r1, [r0, #0x26]
	bx lr
	arm_func_end func_ov40_0217f47c

	arm_func_start func_ov40_0217f488
func_ov40_0217f488: ; 0x0217f488
	stmdb sp!, {r3, lr}
	mov r2, #0
	strb r2, [r0, #0x26]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0217f488

	arm_func_start func_ov40_0217f4ac
func_ov40_0217f4ac: ; 0x0217f4ac
	mvn r0, #0
	bx lr
	arm_func_end func_ov40_0217f4ac

	arm_func_start func_ov40_0217f4b4
func_ov40_0217f4b4: ; 0x0217f4b4
	mov r0, #0
	bx lr
	arm_func_end func_ov40_0217f4b4

	arm_func_start func_ov40_0217f4bc
func_ov40_0217f4bc: ; 0x0217f4bc
	mov r0, #0
	bx lr
	arm_func_end func_ov40_0217f4bc

	arm_func_start func_ov40_0217f4c4
func_ov40_0217f4c4: ; 0x0217f4c4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov ip, #0
	mov r3, r2
	str ip, [sp]
	mov r2, r1
	sub r1, ip, #1
	mov r4, r0
	str ip, [sp, #4]
	bl func_ov40_0217eb18
	ldr r1, _0217f500 ; =data_ov40_021889b8
	mov r0, r4
	str r1, [r4]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f4c4
_0217f500: .word data_ov40_021889b8

	arm_func_start func_ov40_0217f504
func_ov40_0217f504: ; 0x0217f504
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217f504

	arm_func_start func_ov40_0217f518
func_ov40_0217f518: ; 0x0217f518
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0217f518

	arm_func_start func_ov40_0217f534
func_ov40_0217f534: ; 0x0217f534
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, [r1]
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _0217f84c
_0217f54c: ; jump table
	b _0217f580 ; case 0
	b _0217f5a4 ; case 1
	b _0217f5c4 ; case 2
	b _0217f600 ; case 3
	b _0217f674 ; case 4
	b _0217f6b0 ; case 5
	b _0217f7cc ; case 6
	b _0217f7ec ; case 7
	b _0217f6f0 ; case 8
	b _0217f75c ; case 9
	b _0217f80c ; case 10
	b _0217f82c ; case 11
	b _0217f840 ; case 12
_0217f580:
	ldr r1, [r3]
	ldr r0, _0217f854 ; =data_027e0f74
	mov r1, r1, lsl #0x8
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, #1
	bl func_ov00_0209779c
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f5a4:
	ldr r1, [r3]
	ldr r0, _0217f858 ; =data_027e0fb4
	mov r1, r1, lsl #0x8
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	blx func_ov00_020adcdc
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f5c4:
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #8
	ldmia sp!, {r3, pc}
	ldr r0, [r3]
	ldr r1, _0217f85c ; =data_027e0d38
	mov r0, r0, lsl #0x8
	ldr r2, [r1]
	mov r0, r0, lsr #0x10
	mov r1, r0, lsl #0x11
	ldr r0, [r2, #0x28]
	mov r1, r1, lsr #0x10
	bl func_ov40_02183de4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f600:
	ldrb r1, [r0, #0x26]
	cmp r1, #0
	addne sp, sp, #8
	ldmia sp!, {r3, pc}
	ldr r2, [r3]
	ldr r1, [r0, #0xc]
	mov r0, r2, lsl #0x8
	ldrb r1, [r1, #0xa0]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x11
	cmp r1, #0
	mov r1, r0, lsr #0x10
	beq _0217f658
	mov r3, #0
	str r3, [sp]
	ldr r0, _0217f854 ; =data_027e0f74
	str r3, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x64
	bl func_ov00_02098074
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f658:
	ldr r0, _0217f85c ; =data_027e0d38
	mov r2, #0
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bl func_ov40_02183e08
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f674:
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #8
	ldmia sp!, {r3, pc}
	ldr r0, [r3]
	ldr r1, _0217f85c ; =data_027e0d38
	mov r0, r0, lsl #0x8
	ldr r2, [r1]
	mov r0, r0, lsr #0x10
	mov r1, r0, lsl #0x11
	ldr r0, [r2, #0x28]
	mov r1, r1, lsr #0x10
	bl func_ov40_02183de4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f6b0:
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #8
	ldmia sp!, {r3, pc}
	ldr r0, [r3]
	ldr r1, _0217f85c ; =data_027e0d38
	mov r0, r0, lsl #0x8
	ldr r2, [r1]
	mov r0, r0, lsr #0x10
	mov r1, r0, lsl #0x11
	ldr r0, [r2, #0x28]
	mov r1, r1, lsr #0x10
	mov r2, #1
	bl func_ov40_02183e08
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f6f0:
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #8
	ldmia sp!, {r3, pc}
	ldmia r3!, {r0, r1}
	mov r2, r1, asr #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov ip, #0
	str ip, [sp]
	mov r2, r2, lsl #0x10
	mov lr, r0, lsr #0x10
	mov r3, r1, lsr #0x10
	mov r0, r2, lsr #0x10
	mov r2, r3, lsl #0x11
	mov r3, r0, lsl #0x11
	mov r1, lr, lsl #0x11
	ldr r0, _0217f854 ; =data_027e0f74
	str ip, [sp, #4]
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl func_ov00_02098074
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f75c:
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #8
	ldmia sp!, {r3, pc}
	ldmia r3!, {r0, r1}
	mov r2, r1, asr #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov ip, #0
	str ip, [sp]
	mov ip, #1
	mov r2, r2, lsl #0x10
	mov lr, r0, lsr #0x10
	mov r3, r1, lsr #0x10
	mov r0, r2, lsr #0x10
	mov r2, r3, lsl #0x11
	mov r3, r0, lsl #0x11
	mov r1, lr, lsl #0x11
	ldr r0, _0217f854 ; =data_027e0f74
	str ip, [sp, #4]
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl func_ov00_02098074
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f7cc:
	ldr r0, _0217f854 ; =data_027e0f74
	mov r1, #0
	ldr r0, [r0]
	mov r3, r1
	mov r2, #1
	bl func_ov00_02097ff4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f7ec:
	ldr r0, _0217f854 ; =data_027e0f74
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	mov r3, #0
	bl func_ov00_02097ff4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f80c:
	ldr r0, _0217f854 ; =data_027e0f74
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	mov r3, r1
	bl func_ov00_02097ff4
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f82c:
	ldr r0, _0217f860 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov40_0218734c
	add sp, sp, #8
	ldmia sp!, {r3, pc}
_0217f840:
	ldr r0, _0217f860 ; =data_027e103c
	ldr r0, [r0]
	bl func_ov40_0218736c
_0217f84c:
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f534
_0217f854: .word data_027e0f74
_0217f858: .word data_027e0fb4
_0217f85c: .word data_027e0d38
_0217f860: .word data_027e103c

	arm_func_start func_ov40_0217f864
func_ov40_0217f864: ; 0x0217f864
	bx lr
	arm_func_end func_ov40_0217f864

	arm_func_start func_ov40_0217f868
func_ov40_0217f868: ; 0x0217f868
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end func_ov40_0217f868

	arm_func_start func_ov40_0217f87c
func_ov40_0217f87c: ; 0x0217f87c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, r4, #0x38
	mov r3, #8
	bl func_ov40_0217eb74
	ldr r0, _0217f908 ; =data_ov40_02188970
	ldr ip, _0217f90c ; =func_ov40_0217f864
	str r0, [r4]
	ldr r3, _0217f910 ; =func_ov40_0217f868
	add r0, r4, #0x38
	mov r1, #8
	mov r2, #0x10
	str ip, [sp]
	bl func_0204f614
	mvn r2, #0
	str r2, [r4, #0xb8]
	str r2, [r4, #0xbc]
	str r2, [r4, #0xc0]
	str r2, [r4, #0xc4]
	mov r1, #1
	str r1, [r4, #0xc8]
	mov r0, #0
	str r0, [r4, #0xcc]
	str r0, [r4, #0xd0]
	strb r1, [r4, #0xd4]
	strb r1, [r4, #0xd5]
	strb r0, [r4, #0xd6]
	strb r0, [r4, #0xd7]
	str r2, [r4, #0xd8]
	str r2, [r4, #0xdc]
	mov r0, r4
	str r2, [r4, #0xe0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f87c
_0217f908: .word data_ov40_02188970
_0217f90c: .word func_ov40_0217f864
_0217f910: .word func_ov40_0217f868

	arm_func_start func_ov40_0217f914
func_ov40_0217f914: ; 0x0217f914
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, r4, #0x38
	mov r3, #8
	bl func_ov40_0217eb74
	ldr r0, _0217f9a0 ; =data_ov40_02188970
	ldr ip, _0217f9a4 ; =func_ov40_0217f864
	str r0, [r4]
	ldr r3, _0217f9a8 ; =func_ov40_0217f868
	add r0, r4, #0x38
	mov r1, #8
	mov r2, #0x10
	str ip, [sp]
	bl func_0204f614
	mvn r2, #0
	str r2, [r4, #0xb8]
	str r2, [r4, #0xbc]
	str r2, [r4, #0xc0]
	str r2, [r4, #0xc4]
	mov r1, #1
	str r1, [r4, #0xc8]
	mov r0, #0
	str r0, [r4, #0xcc]
	str r0, [r4, #0xd0]
	strb r1, [r4, #0xd4]
	strb r1, [r4, #0xd5]
	strb r0, [r4, #0xd6]
	strb r0, [r4, #0xd7]
	str r2, [r4, #0xd8]
	str r2, [r4, #0xdc]
	mov r0, r4
	str r2, [r4, #0xe0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f914
_0217f9a0: .word data_ov40_02188970
_0217f9a4: .word func_ov40_0217f864
_0217f9a8: .word func_ov40_0217f868

	arm_func_start func_ov40_0217f9ac
func_ov40_0217f9ac: ; 0x0217f9ac
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _0217f9d8 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #8
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f9ac
_0217f9d8: .word func_ov40_0217f864

	arm_func_start func_ov40_0217f9dc
func_ov40_0217f9dc: ; 0x0217f9dc
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _0217fa10 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #8
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217f9dc
_0217fa10: .word func_ov40_0217f864

	arm_func_start func_ov40_0217fa14
func_ov40_0217fa14: ; 0x0217fa14
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _0217fa40 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #8
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fa14
_0217fa40: .word func_ov40_0217f864

	arm_func_start func_ov40_0217fa44
func_ov40_0217fa44: ; 0x0217fa44
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	mov r5, r0
	bl func_ov40_0217ec40
	ldr r1, _0217fbb0 ; =0x444d4348
	mov r4, r0
	cmp r4, r1
	mov r1, #1
	bne _0217fb0c
	strb r1, [r5, #0xd6]
	strb r1, [r5, #0xd7]
	ldr r0, _0217fbb4 ; =data_027e0e60
	add r1, sp, #0x70
	ldr r0, [r0]
	bl func_ov00_0208344c
	add r0, sp, #0x44
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #0x44
	str r1, [sp, #0x60]
	str r1, [sp, #0x64]
	bl func_ov00_020c3348
	mov r0, r5
	bl func_ov40_0217fc04
	str r0, [r5, #0xd8]
	strh r0, [sp, #0x44]
	ldr r0, [r5, #0xd8]
	cmp r0, #0xf6
	bgt _0217fac8
	bge _0217fae4
	cmp r0, #0x37
	ldreq r4, _0217fbb8 ; =0x444d5452
	b _0217fae8
_0217fac8:
	cmp r0, #0xfe
	bgt _0217fad8
	ldreq r4, _0217fbbc ; =0x444d4b53
	b _0217fae8
_0217fad8:
	cmp r0, #0x120
	ldreq r4, _0217fbc0 ; =0x444d5350
	b _0217fae8
_0217fae4:
	ldr r4, _0217fbc4 ; =0x444d4847
_0217fae8:
	add r1, r5, #0xdc
	str r1, [sp]
	ldr r0, _0217fbc8 ; =data_027e0fe8
	add r2, sp, #0x70
	ldr r0, [r0]
	add r3, sp, #0x44
	mov r1, r4
	bl func_ov00_020c4048
	b _0217fb98
_0217fb0c:
	mov r0, #0
	strb r0, [r5, #0xd6]
	ldr r0, _0217fbcc ; =data_027e0fe4
	strb r1, [r5, #0xd7]
	ldr r1, [r0]
	add r0, sp, #4
	mov r2, r4
	bl func_ov00_020c3894
	ldr r1, [sp, #4]
	mvn r0, #0
	str r1, [r5, #0xdc]
	ldr r1, [sp, #8]
	str r1, [r5, #0xe0]
	ldr r1, [r5, #0xdc]
	cmp r1, r0
	bne _0217fb98
	ldr r0, _0217fbb4 ; =data_027e0e60
	add r1, sp, #0x38
	ldr r0, [r0]
	bl func_ov00_0208344c
	add r0, sp, #0xc
	bl func_ov00_020c1500
	mvn r1, #0
	add r0, sp, #0xc
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl func_ov00_020c3348
	add r0, r5, #0xdc
	str r0, [sp]
	ldr r0, _0217fbc8 ; =data_027e0fe8
	mov r1, r4
	ldr r0, [r0]
	add r2, sp, #0x38
	add r3, sp, #0xc
	bl func_ov00_020c4048
_0217fb98:
	ldr r0, _0217fbcc ; =data_027e0fe4
	add r1, r5, #0xdc
	ldr r0, [r0]
	bl func_ov00_020c3674
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fa44
_0217fbb0: .word 0x444d4348
_0217fbb4: .word data_027e0e60
_0217fbb8: .word 0x444d5452
_0217fbbc: .word 0x444d4b53
_0217fbc0: .word 0x444d5350
_0217fbc4: .word 0x444d4847
_0217fbc8: .word data_027e0fe8
_0217fbcc: .word data_027e0fe4

	arm_func_start func_ov40_0217fbd0
func_ov40_0217fbd0: ; 0x0217fbd0
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0xd6]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldr r2, _0217fc00 ; =data_027e0fe4
	add r1, r0, #0xdc
	ldr r0, [r2]
	bl func_ov00_020c3674
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0, #0x118]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fbd0
_0217fc00: .word data_027e0fe4

	arm_func_start func_ov40_0217fc04
func_ov40_0217fc04: ; 0x0217fc04
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0xd6]
	cmp r1, #0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #8]
	cmp r1, #9
	bne _0217fc98
	ldr r1, [r0, #4]
	ldr r5, _0217fd10 ; =0x00000126
	ldrb r0, [r1, #5]
	mov r4, #0
	add r6, sp, #4
	strb r0, [sp, #4]
	ldrb r0, [r1, #6]
	strb r0, [sp, #5]
	ldrb r0, [r1, #7]
	strb r0, [sp, #6]
	ldrb r0, [r1, #8]
	strb r0, [sp, #7]
_0217fc5c:
	mov r0, r4
	bl func_ov00_020c42d8
	cmp r0, #0
	beq _0217fc88
	ldr r1, [r0]
	mov r0, r6
	bl func_0204716c
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_0217fc88:
	add r4, r4, #1
	cmp r4, r5
	blt _0217fc5c
	b _0217fd04
_0217fc98:
	cmp r1, #0xa
	bne _0217fd04
	ldr r1, [r0, #4]
	mov r6, #0
	ldrb r0, [r1, #5]
	ldr r4, _0217fd10 ; =0x00000126
	add r5, sp, #0
	strb r0, [sp]
	ldrb r0, [r1, #6]
	strb r0, [sp, #1]
	ldrb r0, [r1, #7]
	strb r0, [sp, #2]
	strb r6, [sp, #3]
_0217fccc:
	mov r0, r6
	bl func_ov00_020c42d8
	cmp r0, #0
	beq _0217fcf8
	ldr r1, [r0]
	mov r0, r5
	bl func_0204716c
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r6
	ldmia sp!, {r4, r5, r6, pc}
_0217fcf8:
	add r6, r6, #1
	cmp r6, r4
	blt _0217fccc
_0217fd04:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fc04
_0217fd10: .word 0x00000126

	arm_func_start func_ov40_0217fd14
func_ov40_0217fd14: ; 0x0217fd14
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	ldr r1, _0217fe00 ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0xdc
	bl func_ov00_020c3674
	mov lr, #0
	mov ip, #1
	mov r3, #2
	sub r2, r3, #3
	mov r5, r0
	add r1, sp, #0
	mov r0, r4
	strh lr, [sp, #0xc]
	strb ip, [sp, #0xe]
	strb ip, [sp, #0xf]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	str lr, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	str ip, [sp, #0x2c]
	str lr, [sp, #0x30]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r2, [sp, #0x3c]
	str r2, [sp, #0x40]
	str ip, [sp, #0x44]
	str lr, [sp, #0x48]
	str r3, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	str ip, [sp, #0x5c]
	str lr, [sp, #0x60]
	str r3, [sp, #0x64]
	str r2, [sp, #0x68]
	str r2, [sp, #0x6c]
	str r2, [sp, #0x70]
	str ip, [sp, #0x74]
	str lr, [sp, #0x78]
	bl func_ov40_021804f8
	mov r0, r5
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0xa4]
	blx r2
	mvn r0, #0
	str r0, [r4, #0xb8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xc4]
	mov r0, #0
	str r0, [r4, #0xd0]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fd14
_0217fe00: .word data_027e0fe4

	arm_func_start func_ov40_0217fe04
func_ov40_0217fe04: ; 0x0217fe04
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217ec68
	ldrb r0, [r4, #0xd7]
	cmp r0, #0
	beq _0217fe38
	ldr r0, _0217fe70 ; =data_027e0fe4
	add r1, r4, #0xdc
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0, #0x118]
_0217fe38:
	mvn r0, #0
	str r0, [r4, #0xdc]
	str r0, [r4, #0xe0]
	str r0, [r4, #0xb8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xc4]
	mov r0, #0
	str r0, [r4, #0xcc]
	str r0, [r4, #0xd0]
	mov r0, #1
	strb r0, [r4, #0xd4]
	strb r0, [r4, #0xd5]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fe04
_0217fe70: .word data_027e0fe4

	arm_func_start func_ov40_0217fe74
func_ov40_0217fe74: ; 0x0217fe74
	stmdb sp!, {r4, lr}
	ldrb r2, [r0, #0xd6]
	mov r4, r1
	cmp r2, #0
	mvneq r0, #0
	ldmia sp!, {r4, pc}
	ldr r2, _0217febc ; =data_027e0fe4
	add r1, r0, #0xdc
	ldr r0, [r2]
	bl func_ov00_020c3674
	cmp r0, #0
	mvneq r0, #0
	ldmia sp!, {r4, pc}
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0xb4]
	blx r2
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fe74
_0217febc: .word data_027e0fe4

	arm_func_start func_ov40_0217fec0
func_ov40_0217fec0: ; 0x0217fec0
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r3, [r0, #0xd6]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	movlt r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r2, _0217ff1c ; =data_027e0fe4
	add r1, r0, #0xdc
	ldr r0, [r2]
	bl func_ov00_020c3674
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #0xb8]
	mov r2, r4
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217fec0
_0217ff1c: .word data_027e0fe4

	arm_func_start func_ov40_0217ff20
func_ov40_0217ff20: ; 0x0217ff20
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r3, [r0, #0xd6]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r2, _0217ff70 ; =data_027e0fe4
	add r1, r0, #0xdc
	ldr r0, [r2]
	bl func_ov00_020c3674
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #0xbc]
	mov r2, r4
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217ff20
_0217ff70: .word data_027e0fe4

	arm_func_start func_ov40_0217ff74
func_ov40_0217ff74: ; 0x0217ff74
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	mov r4, r0
	bl func_ov40_0217fa44
	ldr r0, _0218005c ; =data_027e0fe4
	add r1, r4, #0xdc
	ldr r0, [r0]
	bl func_ov00_020c3674
	mov lr, #0
	mov ip, #1
	mov r3, #2
	sub r2, r3, #3
	mov r5, r0
	add r1, sp, #0
	mov r0, r4
	strh lr, [sp, #0xc]
	strb ip, [sp, #0xe]
	strb ip, [sp, #0xf]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	str lr, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	str ip, [sp, #0x2c]
	str lr, [sp, #0x30]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r2, [sp, #0x3c]
	str r2, [sp, #0x40]
	str ip, [sp, #0x44]
	str lr, [sp, #0x48]
	str r3, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	str ip, [sp, #0x5c]
	str lr, [sp, #0x60]
	str r3, [sp, #0x64]
	str r2, [sp, #0x68]
	str r2, [sp, #0x6c]
	str r2, [sp, #0x70]
	str ip, [sp, #0x74]
	str lr, [sp, #0x78]
	bl func_ov40_021804f8
	mov r0, r5
	ldr r2, [r0]
	add r1, sp, #0
	ldr r2, [r2, #0xa0]
	blx r2
	mvn r0, #0
	str r0, [r4, #0xb8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xc4]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0217ff74
_0218005c: .word data_027e0fe4

	arm_func_start func_ov40_02180060
func_ov40_02180060: ; 0x02180060
	stmdb sp!, {r4, lr}
	ldr r1, _02180098 ; =data_027e0fe4
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0xdc
	bl func_ov00_020c3674
	cmp r0, #0
	beq _0218008c
	ldr r1, [r0]
	ldr r1, [r1, #0xa8]
	blx r1
_0218008c:
	mov r0, r4
	bl func_ov40_0217fbd0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180060
_02180098: .word data_027e0fe4

	arm_func_start func_ov40_0218009c
func_ov40_0218009c: ; 0x0218009c
	bx lr
	arm_func_end func_ov40_0218009c

	arm_func_start func_ov40_021800a0
func_ov40_021800a0: ; 0x021800a0
	ldr r1, [r1]
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	bx lr
_021800b0: ; jump table
	b _021800e4 ; case 0
	b _021800f4 ; case 1
	b _02180104 ; case 2
	b _02180110 ; case 3
	b _0218011c ; case 4
	b _02180128 ; case 5
	b _02180134 ; case 6
	b _02180148 ; case 7
	b _02180148 ; case 8
	b _02180168 ; case 9
	b _02180168 ; case 10
	b _02180170 ; case 11
	b _02180148 ; case 12
_021800e4:
	ldr r1, [r3]
	mov r1, r1, asr #0x8
	str r1, [r0, #0xc0]
	bx lr
_021800f4:
	ldr r1, [r3]
	mov r1, r1, asr #0x8
	str r1, [r0, #0xc4]
	bx lr
_02180104:
	mov r1, #1
	strb r1, [r0, #0xd4]
	bx lr
_02180110:
	mov r1, #0
	strb r1, [r0, #0xd4]
	bx lr
_0218011c:
	mov r1, #1
	strb r1, [r0, #0xd5]
	bx lr
_02180128:
	mov r1, #0
	strb r1, [r0, #0xd5]
	bx lr
_02180134:
	ldr r1, [r3]
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	str r1, [r0, #0xcc]
	bx lr
_02180148:
	ldr r2, [r3]
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x8
	mov r3, r1, asr #0x10
	mov r1, r2, asr #0x10
	orr r1, r1, r3, lsl #16
	str r1, [r0, #0xcc]
	bx lr
_02180168:
	str r1, [r0, #0xcc]
	bx lr
_02180170:
	str r1, [r0, #0xd0]
	bx lr
	arm_func_end func_ov40_021800a0

	arm_func_start func_ov40_02180178
func_ov40_02180178: ; 0x02180178
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov ip, r1, lsr #0x5
	mov r4, r2
	cmp ip, #0x43
	and lr, r1, #0x1f
	bgt _02180210
	cmp ip, #0x43
	bge _02180284
	cmp ip, #0x31
	bgt _021801ec
	bge _021802c8
	cmp ip, #0x10
	bgt _021801dc
	subs r1, ip, #9
	addpl pc, pc, r1, lsl #2
	b _02180400
_021801bc: ; jump table
	b _02180320 ; case 0
	b _0218033c ; case 1
	b _02180358 ; case 2
	b _021803c8 ; case 3
	b _02180374 ; case 4
	b _02180390 ; case 5
	b _021803ac ; case 6
	b _021803e8 ; case 7
_021801dc:
	cmp ip, #0x30
	beq _021802b4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021801ec:
	cmp ip, #0x39
	bgt _02180200
	beq _02180264
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180200:
	cmp ip, #0x3a
	beq _02180274
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180210:
	cmp ip, #0x4d
	bgt _02180240
	bge _02180304
	cmp ip, #0x4b
	bgt _02180230
	beq _021802e8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180230:
	cmp ip, #0x4c
	beq _02180294
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180240:
	cmp ip, #0x4e
	bgt _02180254
	beq _021802a4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180254:
	cmp ip, #0x51
	beq _021802d8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180264:
	mov r1, lr
	bl func_ov40_0218041c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180274:
	mov r1, lr
	bl func_ov40_02180420
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180284:
	mov r1, lr
	bl func_ov40_02180430
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180294:
	mov r1, lr
	bl func_ov40_02180434
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021802a4:
	mov r1, lr
	bl func_ov40_02180444
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021802b4:
	mov r1, lr
	mov r2, r4
	bl func_ov40_02180410
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021802c8:
	mov r1, lr
	bl func_ov40_02180414
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021802d8:
	mov r1, lr
	bl func_ov40_02180418
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021802e8:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #0
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180304:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #1
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180320:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #2
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0218033c:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #3
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180358:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #4
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180374:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #5
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180390:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #6
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021803ac:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #7
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021803c8:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, _02180408 ; =data_ov40_02188014
	mov r3, lr
	mov r2, #3
	bl func_ov40_0217f21c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021803e8:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, _0218040c ; =data_ov40_02188020
	mov r3, lr
	mov r2, #3
	bl func_ov40_0217f21c
_02180400:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180178
_02180408: .word data_ov40_02188014
_0218040c: .word data_ov40_02188020

	arm_func_start func_ov40_02180410
func_ov40_02180410: ; 0x02180410
	bx lr
	arm_func_end func_ov40_02180410

	arm_func_start func_ov40_02180414
func_ov40_02180414: ; 0x02180414
	bx lr
	arm_func_end func_ov40_02180414

	arm_func_start func_ov40_02180418
func_ov40_02180418: ; 0x02180418
	bx lr
	arm_func_end func_ov40_02180418

	arm_func_start func_ov40_0218041c
func_ov40_0218041c: ; 0x0218041c
	bx lr
	arm_func_end func_ov40_0218041c

	arm_func_start func_ov40_02180420
func_ov40_02180420: ; 0x02180420
	cmp r1, #0x19
	ldreq r1, [r2]
	streq r1, [r0, #0xb8]
	bx lr
	arm_func_end func_ov40_02180420

	arm_func_start func_ov40_02180430
func_ov40_02180430: ; 0x02180430
	bx lr
	arm_func_end func_ov40_02180430

	arm_func_start func_ov40_02180434
func_ov40_02180434: ; 0x02180434
	cmp r1, #0x19
	ldreq r1, [r2]
	streq r1, [r0, #0xbc]
	bx lr
	arm_func_end func_ov40_02180434

	arm_func_start func_ov40_02180444
func_ov40_02180444: ; 0x02180444
	cmp r1, #2
	bxne lr
	ldr r2, [r2]
	cmp r2, #1
	ldrne r1, _02180478 ; =0x00000101
	cmpne r2, r1
	bne _0218046c
	mov r1, #0
	str r1, [r0, #0xc8]
	bx lr
_0218046c:
	mov r1, #1
	str r1, [r0, #0xc8]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02180444
_02180478: .word 0x00000101

	arm_func_start func_ov40_0218047c
func_ov40_0218047c: ; 0x0218047c
	mvn r3, #0
	cmp r1, r3
	moveq r0, #2
	streq r0, [r2]
	bxeq lr
	mov r3, r1, asr #0xf
	ands r3, r3, #1
	beq _021804b0
	cmp r3, #1
	bne _021804c4
	mov r0, #1
	str r0, [r2]
	b _021804d0
_021804b0:
	mov r3, #0
	str r3, [r2]
	ldr r0, [r0, #0xd8]
	str r0, [r2, #4]
	b _021804d0
_021804c4:
	mov r0, #2
	str r0, [r2]
	bx lr
_021804d0:
	ldr r0, _021804f4 ; =0x000003ff
	mov r3, r1, asr #0xa
	and r0, r1, r0
	and r3, r3, #0x1f
	mov r0, r0, lsl #0x10
	str r3, [r2, #8]
	mov r0, r0, lsr #0x10
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_0218047c
_021804f4: .word 0x000003ff

	arm_func_start func_ov40_021804f8
func_ov40_021804f8: ; 0x021804f8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r3, [r5, #0x78]
	mov r4, r1
	ldr r2, [r5, #0x68]
	ldr r0, [r5, #0x58]
	mov r1, #0xb6
	stmia r4!, {r0, r2, r3}
	ldr r2, [r5, #0x98]
	ldr r0, _02180624 ; =0x0b60b60b
	add lr, sp, #0
	umull r6, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r0, r6, #0
	adc r0, r3, #0x800
	mov r0, r0, asr #0xc
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	mov ip, lr
	add r6, r0, #0x6c
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	mov r1, ip
	mov r0, r4
	mov r2, r4
	bl func_01ff9158
	ldrb r1, [r5, #0xd4]
	mov r0, r5
	add r2, r4, #0x1c
	strb r1, [r4, #0xe]
	ldrb r1, [r5, #0xd5]
	strb r1, [r4, #0xf]
	ldr r1, [r5, #0xcc]
	str r1, [r4, #0x14]
	ldr r1, [r5, #0xd0]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x48]
	str r1, [r4, #0x10]
	ldr r3, [r0]
	ldr r1, [r5, #0xb8]
	ldr r3, [r3, #0x3c]
	blx r3
	mov r0, r5
	ldr r3, [r0]
	ldr r1, [r5, #0xbc]
	ldr r3, [r3, #0x3c]
	add r2, r4, #0x34
	blx r3
	mov r0, r5
	ldr r3, [r0]
	ldr r1, [r5, #0xc0]
	ldr r3, [r3, #0x3c]
	add r2, r4, #0x4c
	blx r3
	mov r0, r5
	ldr r3, [r0]
	ldr r1, [r5, #0xc4]
	ldr r3, [r3, #0x3c]
	add r2, r4, #0x64
	blx r3
	ldr r0, [r5, #0xc8]
	str r0, [r4, #0x44]
	ldr r0, [r5, #0x38]
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	str r0, [r4, #0x30]
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_021804f8
_02180624: .word 0x0b60b60b

	arm_func_start func_ov40_02180628
func_ov40_02180628: ; 0x02180628
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217f87c
	ldr r0, _0218064c ; =data_ov40_02188928
	mov r1, #1
	str r0, [r4]
	mov r0, r4
	strb r1, [r4, #0xe4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180628
_0218064c: .word data_ov40_02188928

	arm_func_start func_ov40_02180650
func_ov40_02180650: ; 0x02180650
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217fa14
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02180650

	arm_func_start func_ov40_02180664
func_ov40_02180664: ; 0x02180664
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217fa14
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02180664

	arm_func_start func_ov40_02180680
func_ov40_02180680: ; 0x02180680
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x74
	mov r3, #2
	sub r2, r3, #3
	mov ip, #1
	mov lr, #0
	add r1, sp, #0
	mov r4, r0
	strh lr, [sp, #0xc]
	strb ip, [sp, #0xe]
	strb ip, [sp, #0xf]
	strb ip, [sp, #0x10]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x20]
	str ip, [sp, #0x24]
	str lr, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x38]
	str ip, [sp, #0x3c]
	str lr, [sp, #0x40]
	str r3, [sp, #0x44]
	str r2, [sp, #0x48]
	str r2, [sp, #0x4c]
	str r2, [sp, #0x50]
	str ip, [sp, #0x54]
	str lr, [sp, #0x58]
	str r3, [sp, #0x5c]
	str r2, [sp, #0x60]
	str r2, [sp, #0x64]
	str r2, [sp, #0x68]
	str ip, [sp, #0x6c]
	str lr, [sp, #0x70]
	bl func_ov40_02180a18
	ldr r0, _02180748 ; =data_027e0f90
	add r1, sp, #0
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x48]
	blx r2
	mvn r0, #0
	str r0, [r4, #0xb8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xc4]
	add sp, sp, #0x74
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180680
_02180748: .word data_027e0f90

	arm_func_start func_ov40_0218074c
func_ov40_0218074c: ; 0x0218074c
	stmdb sp!, {r3, lr}
	ldr r0, _0218078c ; =data_027e0fc4
	ldr r0, [r0]
	ldr r2, [r0, #8]
	cmp r2, #0
	mvneq r0, #0
	ldmia sp!, {r3, pc}
	ldrh r0, [r2, #0xe]
	add r0, r2, r0
	ldr r0, [r0, #0xc]
	adds r0, r2, r0
	mvneq r0, #0
	ldmia sp!, {r3, pc}
	add r0, r0, #0x40
	bl func_0201e388
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_0218074c
_0218078c: .word data_027e0fc4

	arm_func_start func_ov40_02180790
func_ov40_02180790: ; 0x02180790
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0
	movlt r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _021807e4 ; =data_027e0fcc
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	movs ip, r0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	ldmia ip!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia ip!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia ip!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180790
_021807e4: .word data_027e0fcc

	arm_func_start func_ov40_021807e8
func_ov40_021807e8: ; 0x021807e8
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [r0]
	mov r5, r0
	ldr r3, [r3, #0x18]
	mov r4, r2
	blx r3
	mov r1, r0
	mov r0, r5
	ldr r3, [r0]
	mov r2, r4
	ldr r3, [r3, #0x1c]
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021807e8

	arm_func_start func_ov40_0218081c
func_ov40_0218081c: ; 0x0218081c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x74
	mov r3, #2
	sub r2, r3, #3
	mov ip, #1
	mov lr, #0
	add r1, sp, #0
	mov r4, r0
	strh lr, [sp, #0xc]
	strb ip, [sp, #0xe]
	strb ip, [sp, #0xf]
	strb ip, [sp, #0x10]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x20]
	str ip, [sp, #0x24]
	str lr, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x38]
	str ip, [sp, #0x3c]
	str lr, [sp, #0x40]
	str r3, [sp, #0x44]
	str r2, [sp, #0x48]
	str r2, [sp, #0x4c]
	str r2, [sp, #0x50]
	str ip, [sp, #0x54]
	str lr, [sp, #0x58]
	str r3, [sp, #0x5c]
	str r2, [sp, #0x60]
	str r2, [sp, #0x64]
	str r2, [sp, #0x68]
	str ip, [sp, #0x6c]
	str lr, [sp, #0x70]
	bl func_ov40_02180a18
	ldr r0, _021808e4 ; =data_027e0f90
	add r1, sp, #0
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	mvn r0, #0
	str r0, [r4, #0xb8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xc4]
	add sp, sp, #0x74
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0218081c
_021808e4: .word data_027e0f90

	arm_func_start func_ov40_021808e8
func_ov40_021808e8: ; 0x021808e8
	stmdb sp!, {r3, lr}
	ldr r0, _02180904 ; =data_027e0f90
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021808e8
_02180904: .word data_027e0f90

	arm_func_start func_ov40_02180908
func_ov40_02180908: ; 0x02180908
	ldr r1, [r1]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	bx lr
_02180918: ; jump table
	b _02180938 ; case 0
	b _02180948 ; case 1
	b _02180958 ; case 2
	b _02180964 ; case 3
	b _02180970 ; case 4
	b _0218097c ; case 5
	b _02180988 ; case 6
	b _02180994 ; case 7
_02180938:
	ldr r1, [r3]
	mov r1, r1, asr #0x8
	str r1, [r0, #0xc0]
	bx lr
_02180948:
	ldr r1, [r3]
	mov r1, r1, asr #0x8
	str r1, [r0, #0xc4]
	bx lr
_02180958:
	mov r1, #1
	strb r1, [r0, #0xd4]
	bx lr
_02180964:
	mov r1, #0
	strb r1, [r0, #0xd4]
	bx lr
_02180970:
	mov r1, #1
	strb r1, [r0, #0xe4]
	bx lr
_0218097c:
	mov r1, #0
	strb r1, [r0, #0xe4]
	bx lr
_02180988:
	mov r1, #1
	strb r1, [r0, #0xd5]
	bx lr
_02180994:
	mov r1, #0
	strb r1, [r0, #0xd5]
	bx lr
	arm_func_end func_ov40_02180908

	arm_func_start func_ov40_021809a0
func_ov40_021809a0: ; 0x021809a0
	mvn r0, #0
	cmp r1, r0
	moveq r0, #2
	streq r0, [r2]
	bxeq lr
	mov r0, r1, asr #0xf
	ands r0, r0, #1
	beq _021809f8
	cmp r0, #1
	bne _02180a0c
	mov ip, #1
	mov r3, r1, asr #0xa
	rsb r0, ip, #0x400
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	and r3, r3, #0x1f
	str ip, [r2]
	mov r1, #0
	stmib r2, {r1, r3}
	mov r0, r0, lsr #0x10
	str r0, [r2, #0xc]
	bx lr
_021809f8:
	mov r0, #0
	stmia r2!, {r0, r1}
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	bx lr
_02180a0c:
	mov r0, #2
	str r0, [r2]
	bx lr
	arm_func_end func_ov40_021809a0

	arm_func_start func_ov40_02180a18
func_ov40_02180a18: ; 0x02180a18
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r3, [r5, #0x78]
	mov r4, r1
	ldr r2, [r5, #0x68]
	ldr r0, [r5, #0x58]
	mov r1, #0xb6
	stmia r4!, {r0, r2, r3}
	ldr r2, [r5, #0x98]
	ldr r0, _02180b34 ; =0x0b60b60b
	add lr, sp, #0
	umull r6, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r0, r6, #0
	adc r0, r3, #0x800
	mov r0, r0, asr #0xc
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	mov ip, lr
	add r6, r0, #0x6c
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	mov r1, ip
	mov r0, r4
	mov r2, r4
	bl func_01ff9158
	ldrb r1, [r5, #0xd4]
	mov r0, r5
	add r2, r4, #0x14
	strb r1, [r4, #0xe]
	ldrb r1, [r5, #0xe4]
	strb r1, [r4, #0xf]
	ldrb r1, [r5, #0xd5]
	strb r1, [r4, #0x10]
	ldr r3, [r0]
	ldr r1, [r5, #0xb8]
	ldr r3, [r3, #0x3c]
	blx r3
	mov r0, r5
	ldr r3, [r0]
	ldr r1, [r5, #0xbc]
	ldr r3, [r3, #0x3c]
	add r2, r4, #0x2c
	blx r3
	mov r0, r5
	ldr r3, [r0]
	ldr r1, [r5, #0xc0]
	ldr r3, [r3, #0x3c]
	add r2, r4, #0x44
	blx r3
	mov r0, r5
	ldr r3, [r0]
	ldr r1, [r5, #0xc4]
	ldr r3, [r3, #0x3c]
	add r2, r4, #0x5c
	blx r3
	ldr r0, [r5, #0xc8]
	str r0, [r4, #0x3c]
	ldr r0, [r5, #0x38]
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	str r0, [r4, #0x28]
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02180a18
_02180b34: .word 0x0b60b60b

	arm_func_start func_ov40_02180b38
func_ov40_02180b38: ; 0x02180b38
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r2, r5, #0x38
	mov r3, #9
	bl func_ov40_0217eb74
	ldr r0, _02180b80 ; =data_ov40_021888e4
	ldr ip, _02180b84 ; =func_ov40_0217f864
	str r0, [r5]
	ldr r3, _02180b88 ; =func_ov40_0217f868
	add r0, r5, #0x38
	mov r1, #9
	mov r2, #0x10
	str ip, [sp]
	bl func_0204f614
	mov r0, r5
	strb r4, [r5, #0xc8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02180b38
_02180b80: .word data_ov40_021888e4
_02180b84: .word func_ov40_0217f864
_02180b88: .word func_ov40_0217f868

	arm_func_start func_ov40_02180b8c
func_ov40_02180b8c: ; 0x02180b8c
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _02180bb8 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #9
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180b8c
_02180bb8: .word func_ov40_0217f864

	arm_func_start func_ov40_02180bbc
func_ov40_02180bbc: ; 0x02180bbc
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _02180bf0 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #9
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180bbc
_02180bf0: .word func_ov40_0217f864

	arm_func_start func_ov40_02180bf4
func_ov40_02180bf4: ; 0x02180bf4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	add r1, sp, #0
	mov r4, r0
	bl func_ov40_02180ff8
	ldr r0, _02180c2c ; =data_027e0f64
	ldrb r2, [r4, #0xc8]
	ldr r0, [r0]
	add r1, sp, #0
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #4]
	bl func_ov00_02089b50
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180bf4
_02180c2c: .word data_027e0f64

	arm_func_start func_ov40_02180c30
func_ov40_02180c30: ; 0x02180c30
	mov r0, #0
	bx lr
	arm_func_end func_ov40_02180c30

	arm_func_start func_ov40_02180c38
func_ov40_02180c38: ; 0x02180c38
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r2
	ldr r4, _02180cb0 ; =data_027e01b8
	mov r6, r0
	mov lr, r5
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr ip, _02180cb4 ; =data_027e0f64
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r3, [ip]
	ldrb r2, [r6, #0xc8]
	mov r0, r5
	mov r1, r5
	add r2, r3, r2, lsl #2
	ldr ip, [r2, #4]
	ldr r2, [ip, #0x260]
	ldr r3, [ip, #0x264]
	ldr ip, [ip, #0x268]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str ip, [sp, #0xc]
	str ip, [sp]
	bl func_01ff8988
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02180c38
_02180cb0: .word data_027e01b8
_02180cb4: .word data_027e0f64

	arm_func_start func_ov40_02180cb8
func_ov40_02180cb8: ; 0x02180cb8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r2
	ldr r4, _02180d30 ; =data_027e01b8
	mov r6, r0
	mov lr, r5
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr ip, _02180d34 ; =data_027e0f64
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r3, [ip]
	ldrb r2, [r6, #0xc8]
	mov r0, r5
	mov r1, r5
	add r2, r3, r2, lsl #2
	ldr ip, [r2, #4]
	ldr r2, [ip, #0x260]
	ldr r3, [ip, #0x264]
	ldr ip, [ip, #0x268]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str ip, [sp, #0xc]
	str ip, [sp]
	bl func_01ff8988
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02180cb8
_02180d30: .word data_027e01b8
_02180d34: .word data_027e0f64

	arm_func_start func_ov40_02180d38
func_ov40_02180d38: ; 0x02180d38
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov ip, r1, lsr #0x5
	mov r4, r2
	cmp ip, #0x32
	and lr, r1, #0x1f
	bgt _02180dd4
	cmp ip, #0x32
	bge _02180e68
	cmp ip, #0x30
	bgt _02180dc4
	bge _02180e14
	sub r1, ip, #0x15
	cmp r1, #0x12
	addls pc, pc, r1, lsl #2
	b _02180f84
_02180d78: ; jump table
	b _02180e88 ; case 0
	b _02180ea4 ; case 1
	b _02180ec0 ; case 2
	b _02180f4c ; case 3
	b _02180edc ; case 4
	b _02180ef8 ; case 5
	b _02180f14 ; case 6
	b _02180f6c ; case 7
	b _02180f84 ; case 8
	b _02180f84 ; case 9
	b _02180f84 ; case 10
	b _02180f84 ; case 11
	b _02180f84 ; case 12
	b _02180f84 ; case 13
	b _02180f84 ; case 14
	b _02180f84 ; case 15
	b _02180f84 ; case 16
	b _02180f84 ; case 17
	b _02180f30 ; case 18
_02180dc4:
	cmp ip, #0x31
	beq _02180e24
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180dd4:
	cmp ip, #0x52
	bgt _02180df0
	bge _02180e48
	cmp ip, #0x51
	beq _02180e38
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180df0:
	cmp ip, #0x53
	bgt _02180e04
	beq _02180e58
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e04:
	cmp ip, #0x54
	beq _02180e78
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e14:
	mov r1, lr
	bl func_ov40_021810b0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e24:
	mov r1, lr
	mov r2, r4
	bl func_ov40_021810b4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e38:
	mov r1, lr
	bl func_ov40_021810bc
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e48:
	mov r1, lr
	bl func_ov40_021810c0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e58:
	mov r1, lr
	bl func_ov40_021810c0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e68:
	mov r1, lr
	bl func_ov40_021810b8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e78:
	mov r1, lr
	bl func_ov40_021810c4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180e88:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #0
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180ea4:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #1
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180ec0:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #2
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180edc:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #3
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180ef8:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #4
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180f14:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #5
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180f30:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #6
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180f4c:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, _02180f8c ; =data_ov40_0218802c
	mov r3, lr
	mov r2, #3
	bl func_ov40_0217f21c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02180f6c:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, _02180f90 ; =data_ov40_02188038
	mov r3, lr
	mov r2, #3
	bl func_ov40_0217f21c
_02180f84:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180d38
_02180f8c: .word data_ov40_0218802c
_02180f90: .word data_ov40_02188038

	arm_func_start func_ov40_02180f94
func_ov40_02180f94: ; 0x02180f94
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	add r1, sp, #0
	mov r4, r0
	bl func_ov40_02180ff8
	ldr r0, _02180fcc ; =data_027e0f64
	ldrb r2, [r4, #0xc8]
	ldr r0, [r0]
	add r1, sp, #0
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #4]
	bl func_ov00_02089b08
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02180f94
_02180fcc: .word data_027e0f64

	arm_func_start func_ov40_02180fd0
func_ov40_02180fd0: ; 0x02180fd0
	ldr r1, _02180fec ; =data_027e0f64
	ldrb r0, [r0, #0xc8]
	ldr r1, [r1]
	ldr ip, _02180ff0 ; =func_ov00_02089b88
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02180fd0
_02180fec: .word data_027e0f64
_02180ff0: .word func_ov00_02089b88

	arm_func_start func_ov40_02180ff4
func_ov40_02180ff4: ; 0x02180ff4
	bx lr
	arm_func_end func_ov40_02180ff4

	arm_func_start func_ov40_02180ff8
func_ov40_02180ff8: ; 0x02180ff8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr r5, [r0, #0x58]
	ldr r3, [r0, #0x48]
	ldr r2, [r0, #0x38]
	mov r4, r1
	stmia r4!, {r2, r3, r5}
	ldr r3, [r0, #0x88]
	ldr r2, [r0, #0x78]
	ldr r1, [r0, #0x68]
	add lr, sp, #0
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	str r3, [r4, #0x14]
	ldr r2, [r0, #0x98]
	ldr r1, _021810ac ; =0x0b60b60b
	mov r3, r2, asr #0x1
	mov r2, #0xb6
	umull ip, r5, r3, r1
	mla r5, r3, r2, r5
	mov r2, r3, asr #0x1f
	mla r5, r2, r1, r5
	adds r1, ip, #0
	adc r1, r5, #0x800
	mov r1, r1, asr #0xc
	strh r1, [r4, #0x18]
	ldr r0, [r0, #0xc]
	mov ip, lr
	add r5, r0, #0x6c
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	mov r1, ip
	mov r0, r4
	mov r2, r4
	bl func_01ff9158
	add r0, r4, #0xc
	mov r2, r0
	add r1, sp, #0
	bl func_01ff9158
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02180ff8
_021810ac: .word 0x0b60b60b

	arm_func_start func_ov40_021810b0
func_ov40_021810b0: ; 0x021810b0
	bx lr
	arm_func_end func_ov40_021810b0

	arm_func_start func_ov40_021810b4
func_ov40_021810b4: ; 0x021810b4
	bx lr
	arm_func_end func_ov40_021810b4

	arm_func_start func_ov40_021810b8
func_ov40_021810b8: ; 0x021810b8
	bx lr
	arm_func_end func_ov40_021810b8

	arm_func_start func_ov40_021810bc
func_ov40_021810bc: ; 0x021810bc
	bx lr
	arm_func_end func_ov40_021810bc

	arm_func_start func_ov40_021810c0
func_ov40_021810c0: ; 0x021810c0
	bx lr
	arm_func_end func_ov40_021810c0

	arm_func_start func_ov40_021810c4
func_ov40_021810c4: ; 0x021810c4
	bx lr
	arm_func_end func_ov40_021810c4

	arm_func_start func_ov40_021810c8
func_ov40_021810c8: ; 0x021810c8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, r4, #0x38
	mov r3, #5
	bl func_ov40_0217eb74
	ldr r0, _02181150 ; =data_ov40_021888a0
	ldr ip, _02181154 ; =func_ov40_0217f864
	str r0, [r4]
	ldr r3, _02181158 ; =func_ov40_0217f868
	add r0, r4, #0x38
	mov r1, #5
	mov r2, #0x10
	str ip, [sp]
	bl func_0204f614
	mvn r3, #0
	str r3, [r4, #0x88]
	str r3, [r4, #0x8c]
	str r3, [r4, #0x90]
	mov r2, #0x1f000
	str r2, [r4, #0x94]
	mov r1, #0
	str r1, [r4, #0x98]
	strb r1, [r4, #0x9c]
	strb r1, [r4, #0x9d]
	str r1, [r4, #0xa0]
	ldr r0, _0218115c ; =func_ov00_020a00f8
	str r3, [r4, #0xa4]
	str r0, [r4, #0x70]
	str r1, [r4, #0x6c]
	mov r0, r4
	str r2, [r4, #0x74]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021810c8
_02181150: .word data_ov40_021888a0
_02181154: .word func_ov40_0217f864
_02181158: .word func_ov40_0217f868
_0218115c: .word func_ov00_020a00f8

	arm_func_start func_ov40_02181160
func_ov40_02181160: ; 0x02181160
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _021811a4 ; =data_ov40_021888a0
	add r0, r4, #0x98
	str r1, [r4]
	bl func_ov00_020b7e6c
	add r0, r4, #0x98
	bl func_ov00_020b7d74
	ldr r3, _021811a8 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #5
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181160
_021811a4: .word data_ov40_021888a0
_021811a8: .word func_ov40_0217f864

	arm_func_start func_ov40_021811ac
func_ov40_021811ac: ; 0x021811ac
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, _021811f8 ; =data_ov40_021888a0
	add r0, r4, #0x98
	str r1, [r4]
	bl func_ov00_020b7e6c
	add r0, r4, #0x98
	bl func_ov00_020b7d74
	ldr r3, _021811fc ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #5
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021811ac
_021811f8: .word data_ov40_021888a0
_021811fc: .word func_ov40_0217f864

	arm_func_start func_ov40_02181200
func_ov40_02181200: ; 0x02181200
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x88]
	cmp r1, #0
	addlt sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	ldr r1, [r4, #0x98]
	cmp r1, #0
	bne _02181244
	ldr r1, [r4, #0x8c]
	cmp r1, #0
	addlt sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	bl func_ov40_02181750
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_02181244:
	ldr r0, [r4, #0x8c]
	cmp r0, #0
	blt _021812b8
	mov r1, r0, lsl #0xc
	cmp r1, #0x1000
	movle r0, #0x1f000
	ble _02181274
	ldr r0, [r4, #0x94]
	rsb r0, r0, #0x1f000
	bl func_01ff98e0
	ldr r1, [r4, #0x94]
	add r0, r1, r0
_02181274:
	str r0, [r4, #0x94]
	ldr r0, [r4, #0x94]
	ldr r2, [r4, #0x98]
	add r0, r0, #0x800
	mov r0, r0, lsl #0x4
	cmp r2, #0
	mov r0, r0, lsr #0x10
	beq _021812ac
	ldr r1, [r2, #0x84]
	and r0, r0, #0xff
	bic r1, r1, #0xff00
	mov r0, r0, lsl #0x18
	orr r0, r1, r0, lsr #16
	str r0, [r2, #0x84]
_021812ac:
	ldr r0, [r4, #0x8c]
	sub r0, r0, #1
	str r0, [r4, #0x8c]
_021812b8:
	add r1, sp, #0
	mov r0, r4
	bl func_ov40_0218183c
	ldr r0, [r4, #0x98]
	cmp r0, #0
	beq _02181318
	ldr r1, [r0, #0x20]
	ldr r2, [sp]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
_02181318:
	ldr r0, [r4, #0x90]
	cmp r0, #0
	bne _02181338
	ldrb r1, [r4, #0x9c]
	mov r0, r4
	bl func_ov40_021817e8
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_02181338:
	addle sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	mov r1, r0, lsl #0xc
	cmp r1, #0x1000
	movle r0, #0
	ble _02181364
	ldr r0, [r4, #0x94]
	rsb r0, r0, #0
	bl func_01ff98e0
	ldr r1, [r4, #0x94]
	add r0, r1, r0
_02181364:
	str r0, [r4, #0x94]
	ldr r0, [r4, #0x94]
	ldr r2, [r4, #0x98]
	add r0, r0, #0x800
	mov r0, r0, lsl #0x4
	cmp r2, #0
	mov r0, r0, lsr #0x10
	beq _0218139c
	ldr r1, [r2, #0x84]
	and r0, r0, #0xff
	bic r1, r1, #0xff00
	mov r0, r0, lsl #0x18
	orr r0, r1, r0, lsr #16
	str r0, [r2, #0x84]
_0218139c:
	ldr r0, [r4, #0x90]
	sub r0, r0, #1
	str r0, [r4, #0x90]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_02181200

	arm_func_start func_ov40_021813b0
func_ov40_021813b0: ; 0x021813b0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov ip, r1, lsr #0x5
	mov r4, r2
	cmp ip, #0x30
	and lr, r1, #0x1f
	bgt _02181424
	cmp ip, #0x30
	bge _021814d8
	cmp ip, #0x20
	bgt _02181400
	bge _0218155c
	sub r1, ip, #9
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02181590
_021813f0: ; jump table
	b _02181508 ; case 0
	b _02181524 ; case 1
	b _02181540 ; case 2
	b _02181578 ; case 3
_02181400:
	cmp ip, #0x2e
	bgt _02181414
	beq _021814a0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181414:
	cmp ip, #0x2f
	beq _021814c4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181424:
	cmp ip, #0x44
	bgt _0218145c
	bge _02181480
	cmp ip, #0x32
	addgt sp, sp, #8
	ldmia sp!, {r4, pc}
	cmp ip, #0x31
	addlt sp, sp, #8
	ldmia sp!, {r4, pc}
	beq _021814e8
	cmp ip, #0x32
	beq _021814f8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0218145c:
	cmp ip, #0x4f
	bgt _02181470
	beq _02181490
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181470:
	cmp ip, #0x50
	beq _021814b4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181480:
	mov r1, lr
	bl func_ov40_021815ac
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181490:
	mov r1, lr
	bl func_ov40_021815c8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021814a0:
	mov r1, lr
	mov r2, r4
	bl func_ov40_021815ec
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021814b4:
	mov r1, lr
	bl func_ov40_02181628
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021814c4:
	mov r1, lr
	mov r2, r4
	bl func_ov40_0218163c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021814d8:
	mov r1, lr
	bl func_ov40_02181660
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021814e8:
	mov r1, lr
	bl func_ov40_021816c4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021814f8:
	mov r1, lr
	bl func_ov40_0218172c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181508:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #0
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181524:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #1
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181540:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #2
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0218155c:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #3
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181578:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, _02181598 ; =data_ov40_02188044
	mov r3, lr
	mov r2, #3
	bl func_ov40_0217f21c
_02181590:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021813b0
_02181598: .word data_ov40_02188044

	arm_func_start func_ov40_0218159c
func_ov40_0218159c: ; 0x0218159c
	ldr ip, _021815a8 ; =func_ov40_021817e8
	ldrb r1, [r0, #0x9c]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0218159c
_021815a8: .word func_ov40_021817e8

	arm_func_start func_ov40_021815ac
func_ov40_021815ac: ; 0x021815ac
	cmp r1, #0x19
	bxne lr
	ldr r1, [r2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x88]
	bx lr
	arm_func_end func_ov40_021815ac

	arm_func_start func_ov40_021815c8
func_ov40_021815c8: ; 0x021815c8
	cmp r1, #1
	bxne lr
	mov r1, #0
	str r1, [r0, #0x8c]
	sub r1, r1, #1
	str r1, [r0, #0x90]
	mov r1, #0x1f000
	str r1, [r0, #0x94]
	bx lr
	arm_func_end func_ov40_021815c8

	arm_func_start func_ov40_021815ec
func_ov40_021815ec: ; 0x021815ec
	cmp r1, #2
	bxne lr
	ldr r2, [r2]
	mvn r1, #0
	add r2, r2, #0x800
	mov r2, r2, asr #0xc
	str r2, [r0, #0x8c]
	str r1, [r0, #0x90]
	ldr r1, [r0, #0x8c]
	cmp r1, #0
	moveq r1, #0x1f000
	streq r1, [r0, #0x94]
	movne r1, #0
	strne r1, [r0, #0x94]
	bx lr
	arm_func_end func_ov40_021815ec

	arm_func_start func_ov40_02181628
func_ov40_02181628: ; 0x02181628
	cmp r1, #1
	moveq r1, #0
	streq r1, [r0, #0x90]
	streqb r1, [r0, #0x9c]
	bx lr
	arm_func_end func_ov40_02181628

	arm_func_start func_ov40_0218163c
func_ov40_0218163c: ; 0x0218163c
	cmp r1, #2
	bxne lr
	ldr r2, [r2]
	mov r1, #1
	add r2, r2, #0x800
	mov r2, r2, asr #0xc
	str r2, [r0, #0x90]
	strb r1, [r0, #0x9c]
	bx lr
	arm_func_end func_ov40_0218163c

	arm_func_start func_ov40_02181660
func_ov40_02181660: ; 0x02181660
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0x18
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	mov r1, r2
	mov r2, r3
	bl func_ov40_0217de94
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0xa0]
	ldmia sp!, {r4, pc}
	ldr r2, [r0, #0x10]
	ldr r1, _021816bc ; =0x4a414354
	cmp r2, r1
	ldrne r1, _021816c0 ; =0x4a434d52
	cmpne r2, r1
	movne r0, #0
	strne r0, [r4, #0xa0]
	streq r0, [r4, #0xa0]
	moveq r0, #0
	streq r0, [r4, #0xa4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181660
_021816bc: .word 0x4a414354
_021816c0: .word 0x4a434d52

	arm_func_start func_ov40_021816c4
func_ov40_021816c4: ; 0x021816c4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	cmp r1, #0x18
	mov r5, r0
	mov r4, r2
	addne sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xa0]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x10
	bl func_020078f4
	add r0, sp, #0
	mov r1, r4
	bl func_02047024
	ldr r0, [r5, #0xa0]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	str r0, [r5, #0xa4]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021816c4

	arm_func_start func_ov40_0218172c
func_ov40_0218172c: ; 0x0218172c
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #1
	moveq r1, #1
	streqb r1, [r0, #0x9d]
	movne r1, #0
	strneb r1, [r0, #0x9d]
	bx lr
	arm_func_end func_ov40_0218172c

	arm_func_start func_ov40_02181750
func_ov40_02181750: ; 0x02181750
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r2, [r4, #0x88]
	mov r5, r1
	cmp r2, #0
	addlt sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	add r1, sp, #4
	bl func_ov40_0218183c
	mov r0, #0
	str r0, [sp]
	ldr r0, _021817e4 ; =data_027e0e58
	ldr r2, [r4, #0x88]
	ldr r0, [r0]
	add r3, sp, #4
	add r1, r4, #0x98
	bl func_ov00_0207c1f8
	cmp r5, #0
	bne _021817b4
	mvn r0, #0
	str r0, [r4, #0x8c]
	mov r0, #0x1f000
	str r0, [r4, #0x94]
	b _021817d4
_021817b4:
	str r5, [r4, #0x8c]
	mov r0, #0
	str r0, [r4, #0x94]
	ldr r1, [r4, #0x98]
	cmp r1, #0
	ldrne r0, [r1, #0x84]
	bicne r0, r0, #0xff00
	strne r0, [r1, #0x84]
_021817d4:
	mvn r0, #0
	str r0, [r4, #0x90]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02181750
_021817e4: .word data_027e0e58

	arm_func_start func_ov40_021817e8
func_ov40_021817e8: ; 0x021817e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _0218180c
	ldr r0, _02181838 ; =data_027e0e58
	add r1, r4, #0x98
	ldr r0, [r0]
	bl func_ov00_0207c444
	b _02181814
_0218180c:
	add r0, r4, #0x98
	bl func_ov00_020b7e6c
_02181814:
	mvn r1, #0
	str r1, [r4, #0x88]
	str r1, [r4, #0x8c]
	str r1, [r4, #0x90]
	mov r0, #0
	strb r0, [r4, #0x9d]
	str r0, [r4, #0xa0]
	str r1, [r4, #0xa4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021817e8
_02181838: .word data_027e0e58

	arm_func_start func_ov40_0218183c
func_ov40_0218183c: ; 0x0218183c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x6c
	mov ip, r0
	ldr r3, [ip, #0x58]
	ldr r2, [ip, #0x48]
	ldr r0, [ip, #0x38]
	mov r4, r1
	str r0, [sp, #0x60]
	str r2, [sp, #0x64]
	str r3, [sp, #0x68]
	ldrb r0, [ip, #0x9d]
	cmp r0, #0
	beq _021818bc
	ldr r0, [ip, #0xa0]
	cmp r0, #0
	beq _021818e0
	ldr r3, [r0]
	ldr r1, [ip, #0xa4]
	ldr r3, [r3, #0x1c]
	add r2, sp, #0
	blx r3
	cmp r0, #0
	beq _021818e0
	add lr, sp, #0
	add ip, sp, #0x30
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	b _021818e0
_021818bc:
	ldr r0, [ip, #0xc]
	add ip, sp, #0x30
	add lr, r0, #0x6c
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
_021818e0:
	add r0, sp, #0x60
	add r1, sp, #0x30
	mov r2, r4
	bl func_01ff9158
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_0218183c

	arm_func_start func_ov40_021818f8
func_ov40_021818f8: ; 0x021818f8
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r3, r2
	mov r4, r0
	bl func_ov40_0217eb74
	ldr r1, _0218193c ; =data_ov40_0218885c
	mov r0, #0
	str r1, [r4]
	strb r0, [r4, #0x38]
	strb r0, [r4, #0x39]
	sub r1, r0, #1
	str r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	mov r0, r4
	str r1, [r4, #0x48]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021818f8
_0218193c: .word data_ov40_0218885c

	arm_func_start func_ov40_02181940
func_ov40_02181940: ; 0x02181940
	stmdb sp!, {r4, lr}
	ldr r1, _02181974 ; =data_ov40_0218885c
	mov r4, r0
	str r1, [r4]
	ldrb r1, [r4, #0x39]
	cmp r1, #0
	bne _02181964
	mov r1, #0
	bl func_ov40_02181c24
_02181964:
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181940
_02181974: .word data_ov40_0218885c

	arm_func_start func_ov40_02181978
func_ov40_02181978: ; 0x02181978
	stmdb sp!, {r4, lr}
	ldr r1, _021819b4 ; =data_ov40_0218885c
	mov r4, r0
	str r1, [r4]
	ldrb r1, [r4, #0x39]
	cmp r1, #0
	bne _0218199c
	mov r1, #0
	bl func_ov40_02181c24
_0218199c:
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181978
_021819b4: .word data_ov40_0218885c

	arm_func_start func_ov40_021819b8
func_ov40_021819b8: ; 0x021819b8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	ldrge r1, [r4, #0x48]
	cmpge r1, #0
	ldmia sp!, {r4, pc}
	bl func_ov40_02181be0
	mvn r0, #0
	str r0, [r4, #0x48]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021819b8

	arm_func_start func_ov40_021819e4
func_ov40_021819e4: ; 0x021819e4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl func_ov40_0217f47c
	cmp r4, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #8
	bl func_ov40_02181c24
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021819e4

	arm_func_start func_ov40_02181a0c
func_ov40_02181a0c: ; 0x02181a0c
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldrb r1, [r0, #0x39]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	mov r1, #0
	bl func_ov40_02181c24
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02181a0c

	arm_func_start func_ov40_02181a34
func_ov40_02181a34: ; 0x02181a34
	stmdb sp!, {r3, lr}
	mov ip, r1, lsr #0x5
	cmp ip, #0x3c
	and r1, r1, #0x1f
	bgt _02181a70
	cmp ip, #0x3c
	bge _02181aa8
	cmp ip, #0x2f
	ldmia sp!, {r3, pc}
	cmp ip, #0x2e
	ldmia sp!, {r3, pc}
	beq _02181ab8
	cmp ip, #0x2f
	beq _02181ac8
	ldmia sp!, {r3, pc}
_02181a70:
	cmp ip, #0x4f
	bgt _02181a80
	beq _02181ab0
	ldmia sp!, {r3, pc}
_02181a80:
	cmp ip, #0x56
	ldmia sp!, {r3, pc}
	cmp ip, #0x50
	ldmia sp!, {r3, pc}
	beq _02181ac0
	cmp ip, #0x55
	beq _02181ad8
	cmp ip, #0x56
	beq _02181ad0
	ldmia sp!, {r3, pc}
_02181aa8:
	bl func_ov40_02181af8
	ldmia sp!, {r3, pc}
_02181ab0:
	bl func_ov40_02181b34
	ldmia sp!, {r3, pc}
_02181ab8:
	bl func_ov40_02181b44
	ldmia sp!, {r3, pc}
_02181ac0:
	bl func_ov40_02181b60
	ldmia sp!, {r3, pc}
_02181ac8:
	bl func_ov40_02181b78
	ldmia sp!, {r3, pc}
_02181ad0:
	bl func_ov40_02181b98
	ldmia sp!, {r3, pc}
_02181ad8:
	bl func_ov40_02181bbc
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02181a34

	arm_func_start func_ov40_02181ae0
func_ov40_02181ae0: ; 0x02181ae0
	ldr r1, [r1]
	cmp r1, #0
	ldreq r1, [r3]
	mov r1, r1, asr #0x8
	streq r1, [r0, #0x44]
	bx lr
	arm_func_end func_ov40_02181ae0

	arm_func_start func_ov40_02181af8
func_ov40_02181af8: ; 0x02181af8
	cmp r1, #0x19
	bxne lr
	ldr r2, [r2]
	mov r1, r2, asr #0x1f
	and r1, r1, #1
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	str r1, [r0, #0x40]
	mov r1, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x3c]
	mov r1, #0
	str r1, [r0, #0x48]
	bx lr
	arm_func_end func_ov40_02181af8

	arm_func_start func_ov40_02181b34
func_ov40_02181b34: ; 0x02181b34
	cmp r1, #1
	moveq r1, #0
	streq r1, [r0, #0x48]
	bx lr
	arm_func_end func_ov40_02181b34

	arm_func_start func_ov40_02181b44
func_ov40_02181b44: ; 0x02181b44
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	add r1, r1, #0x800
	mov r1, r1, asr #0xc
	str r1, [r0, #0x48]
	bx lr
	arm_func_end func_ov40_02181b44

	arm_func_start func_ov40_02181b60
func_ov40_02181b60: ; 0x02181b60
	stmdb sp!, {r3, lr}
	cmp r1, #1
	ldmia sp!, {r3, pc}
	mov r1, #0
	bl func_ov40_02181c24
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02181b60

	arm_func_start func_ov40_02181b78
func_ov40_02181b78: ; 0x02181b78
	stmdb sp!, {r3, lr}
	cmp r1, #2
	ldmia sp!, {r3, pc}
	ldr r1, [r2]
	add r1, r1, #0x800
	mov r1, r1, asr #0xc
	bl func_ov40_02181c24
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02181b78

	arm_func_start func_ov40_02181b98
func_ov40_02181b98: ; 0x02181b98
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x38]
	movne r1, #1
	strneb r1, [r0, #0x38]
	bx lr
	arm_func_end func_ov40_02181b98

	arm_func_start func_ov40_02181bbc
func_ov40_02181bbc: ; 0x02181bbc
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x39]
	movne r1, #1
	strneb r1, [r0, #0x39]
	bx lr
	arm_func_end func_ov40_02181bbc

	arm_func_start func_ov40_02181be0
func_ov40_02181be0: ; 0x02181be0
	stmdb sp!, {r3, lr}
	mov r2, r1
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldr r3, [r0, #0x40]
	cmp r3, #1
	bne _02181c10
	ldr r3, [r0, #0x44]
	ldr r0, _02181c20 ; =data_ov00_020eec68
	bl func_ov00_020d7430
	ldmia sp!, {r3, pc}
_02181c10:
	ldr r0, _02181c20 ; =data_ov00_020eec68
	mov r3, #0x7f
	bl func_ov00_020d70a4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02181be0
_02181c20: .word data_ov00_020eec68

	arm_func_start func_ov40_02181c24
func_ov40_02181c24: ; 0x02181c24
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _02181c44
	ldr r0, _02181c64 ; =data_ov00_020eec68
	bl func_ov00_020d7470
	b _02181c4c
_02181c44:
	ldr r0, _02181c64 ; =data_ov00_020eec68
	bl func_ov00_020d716c
_02181c4c:
	mvn r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x44]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181c24
_02181c64: .word data_ov00_020eec68

	arm_func_start func_ov40_02181c68
func_ov40_02181c68: ; 0x02181c68
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, r4, #0x38
	mov r3, #3
	bl func_ov40_0217eb74
	ldr r0, _02181cdc ; =data_ov40_02188818
	ldr ip, _02181ce0 ; =func_ov40_0217f864
	str r0, [r4]
	ldr r3, _02181ce4 ; =func_ov40_0217f868
	add r0, r4, #0x38
	mov r1, #3
	mov r2, #0x10
	str ip, [sp]
	bl func_0204f614
	mov r0, #0
	strb r0, [r4, #0x68]
	strb r0, [r4, #0x69]
	strb r0, [r4, #0x6a]
	strb r0, [r4, #0x6b]
	sub r1, r0, #1
	str r1, [r4, #0x6c]
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x78]
	mov r0, r4
	str r1, [r4, #0x7c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181c68
_02181cdc: .word data_ov40_02188818
_02181ce0: .word func_ov40_0217f864
_02181ce4: .word func_ov40_0217f868

	arm_func_start func_ov40_02181ce8
func_ov40_02181ce8: ; 0x02181ce8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _02181d14 ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #3
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181ce8
_02181d14: .word func_ov40_0217f864

	arm_func_start func_ov40_02181d18
func_ov40_02181d18: ; 0x02181d18
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _02181d4c ; =func_ov40_0217f864
	add r0, r4, #0x38
	mov r1, #3
	mov r2, #0x10
	bl func_0204f754
	mov r0, r4
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181d18
_02181d4c: .word func_ov40_0217f864

	arm_func_start func_ov40_02181d50
func_ov40_02181d50: ; 0x02181d50
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x69]
	cmp r1, #0
	beq _02181d6c
	bl func_ov40_02182270
	ldmia sp!, {r4, pc}
_02181d6c:
	ldrb r1, [r4, #0x6b]
	cmp r1, #0
	ldmia sp!, {r4, pc}
	ldr r1, [r4, #0x74]
	sub r1, r1, #1
	str r1, [r4, #0x74]
	cmp r1, #0
	ldmia sp!, {r4, pc}
	bl func_ov40_021821f0
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x74]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02181d50

	arm_func_start func_ov40_02181d9c
func_ov40_02181d9c: ; 0x02181d9c
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov ip, r1, lsr #0x5
	mov r4, r2
	cmp ip, #0x31
	and lr, r1, #0x1f
	bgt _02181dfc
	cmp ip, #0x31
	bge _02181ea4
	cmp ip, #0x2e
	bgt _02181dec
	bge _02181e80
	sub r1, ip, #0x15
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02181f60
_02181ddc: ; jump table
	b _02181ef4 ; case 0
	b _02181f10 ; case 1
	b _02181f2c ; case 2
	b _02181f48 ; case 3
_02181dec:
	cmp ip, #0x30
	beq _02181e90
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181dfc:
	cmp ip, #0x4f
	bgt _02181e3c
	bge _02181e70
	cmp ip, #0x3c
	addgt sp, sp, #8
	ldmia sp!, {r4, pc}
	cmp ip, #0x32
	addlt sp, sp, #8
	ldmia sp!, {r4, pc}
	beq _02181eb4
	cmp ip, #0x38
	beq _02181ed4
	cmp ip, #0x3c
	beq _02181e60
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181e3c:
	cmp ip, #0x56
	bgt _02181e50
	beq _02181ee4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181e50:
	cmp ip, #0x57
	beq _02181ec4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181e60:
	mov r1, lr
	bl func_ov40_02181f6c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181e70:
	mov r1, lr
	bl func_ov40_02181f7c
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181e80:
	mov r1, lr
	bl func_ov40_02181fa4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181e90:
	mov r1, lr
	mov r2, r4
	bl func_ov40_02181fcc
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181ea4:
	mov r1, lr
	bl func_ov40_02182030
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181eb4:
	mov r1, lr
	bl func_ov40_02182098
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181ec4:
	mov r1, lr
	bl func_ov40_021820c8
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181ed4:
	mov r1, lr
	bl func_ov40_02182110
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181ee4:
	mov r1, lr
	bl func_ov40_021820ec
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181ef4:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #0
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181f10:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #1
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181f2c:
	str r3, [sp]
	mov r2, lr
	mov r3, r4
	mov r1, #2
	bl func_ov40_0217f180
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02181f48:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, _02181f68 ; =data_ov40_02188050
	mov r3, lr
	mov r2, #3
	bl func_ov40_0217f21c
_02181f60:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181d9c
_02181f68: .word data_ov40_02188050

	arm_func_start func_ov40_02181f6c
func_ov40_02181f6c: ; 0x02181f6c
	cmp r1, #0x19
	ldreq r1, [r2]
	streq r1, [r0, #0x6c]
	bx lr
	arm_func_end func_ov40_02181f6c

	arm_func_start func_ov40_02181f7c
func_ov40_02181f7c: ; 0x02181f7c
	stmdb sp!, {r3, lr}
	cmp r1, #1
	ldmia sp!, {r3, pc}
	ldrb r1, [r0, #0x69]
	cmp r1, #0
	beq _02181f9c
	bl func_ov40_02182270
	ldmia sp!, {r3, pc}
_02181f9c:
	bl func_ov40_021821f0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02181f7c

	arm_func_start func_ov40_02181fa4
func_ov40_02181fa4: ; 0x02181fa4
	stmdb sp!, {r3, lr}
	cmp r1, #2
	ldmia sp!, {r3, pc}
	ldrb r1, [r0, #0x69]
	cmp r1, #0
	beq _02181fc4
	bl func_ov40_02182270
	ldmia sp!, {r3, pc}
_02181fc4:
	bl func_ov40_021821f0
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02181fa4

	arm_func_start func_ov40_02181fcc
func_ov40_02181fcc: ; 0x02181fcc
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0x18
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	mov r1, r2
	mov r2, r3
	bl func_ov40_0217de94
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x78]
	ldmia sp!, {r4, pc}
	ldr r2, [r0, #0x10]
	ldr r1, _02182028 ; =0x4a414354
	cmp r2, r1
	ldrne r1, _0218202c ; =0x4a434d52
	cmpne r2, r1
	movne r0, #0
	strne r0, [r4, #0x78]
	streq r0, [r4, #0x78]
	moveq r0, #0
	streq r0, [r4, #0x7c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02181fcc
_02182028: .word 0x4a414354
_0218202c: .word 0x4a434d52

	arm_func_start func_ov40_02182030
func_ov40_02182030: ; 0x02182030
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	cmp r1, #0x18
	mov r5, r0
	mov r4, r2
	addne sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x78]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x10
	bl func_020078f4
	add r0, sp, #0
	mov r1, r4
	bl func_02047024
	ldr r0, [r5, #0x78]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	str r0, [r5, #0x7c]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02182030

	arm_func_start func_ov40_02182098
func_ov40_02182098: ; 0x02182098
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #1
	movne r1, #0
	strneb r1, [r0, #0x68]
	strneb r1, [r0, #0x6a]
	bxne lr
	mov r1, #1
	strb r1, [r0, #0x68]
	strb r1, [r0, #0x6a]
	bx lr
	arm_func_end func_ov40_02182098

	arm_func_start func_ov40_021820c8
func_ov40_021820c8: ; 0x021820c8
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x69]
	movne r1, #1
	strneb r1, [r0, #0x69]
	bx lr
	arm_func_end func_ov40_021820c8

	arm_func_start func_ov40_021820ec
func_ov40_021820ec: ; 0x021820ec
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x6b]
	movne r1, #1
	strneb r1, [r0, #0x6b]
	bx lr
	arm_func_end func_ov40_021820ec

	arm_func_start func_ov40_02182110
func_ov40_02182110: ; 0x02182110
	cmp r1, #2
	bxne lr
	ldr r1, [r2]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x6a]
	movne r1, #1
	strneb r1, [r0, #0x6a]
	bx lr
	arm_func_end func_ov40_02182110

	arm_func_start func_ov40_02182134
func_ov40_02182134: ; 0x02182134
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x6c
	mov ip, r0
	ldr r3, [ip, #0x58]
	ldr r2, [ip, #0x48]
	ldr r0, [ip, #0x38]
	mov r4, r1
	str r0, [sp, #0x60]
	str r2, [sp, #0x64]
	str r3, [sp, #0x68]
	ldrb r0, [ip, #0x68]
	cmp r0, #0
	beq _021821b4
	ldr r0, [ip, #0x78]
	cmp r0, #0
	beq _021821d8
	ldr r3, [r0]
	ldr r1, [ip, #0x7c]
	ldr r3, [r3, #0x1c]
	add r2, sp, #0
	blx r3
	cmp r0, #0
	beq _021821d8
	add lr, sp, #0
	add ip, sp, #0x30
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	b _021821d8
_021821b4:
	ldr r0, [ip, #0xc]
	add ip, sp, #0x30
	add lr, r0, #0x6c
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
_021821d8:
	add r0, sp, #0x60
	add r1, sp, #0x30
	mov r2, r4
	bl func_01ff9158
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_02182134

	arm_func_start func_ov40_021821f0
func_ov40_021821f0: ; 0x021821f0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	addlt sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrb r1, [r4, #0x6a]
	cmp r1, #0
	beq _02182254
	add r1, sp, #0
	bl func_ov40_02182134
	ldr r1, [r4, #0x6c]
	ldr r0, _02182268 ; =data_027e0ffc
	mov r1, r1, lsl #0x10
	add r2, sp, #0
	mov r1, r1, lsr #0x10
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_02182254:
	ldr r1, [r4, #0x6c]
	ldr r0, _0218226c ; =data_ov00_020eec9c
	bl func_ov00_020d7880
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021821f0
_02182268: .word data_027e0ffc
_0218226c: .word data_ov00_020eec9c

	arm_func_start func_ov40_02182270
func_ov40_02182270: ; 0x02182270
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	addlt sp, sp, #0x10
	ldmia sp!, {r4, pc}
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x6a]
	cmp r1, #0
	beq _021822d8
	add r1, sp, #4
	bl func_ov40_02182134
	ldr r3, [r4, #0x6c]
	mov ip, #0
	mov r1, r3, lsl #0x10
	ldr r0, _021822ec ; =data_027e0ffc
	add r2, sp, #4
	mov r1, r1, lsr #0x10
	str ip, [sp]
	bl func_ov00_020cec60
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021822d8:
	ldr r1, [r4, #0x6c]
	ldr r0, _021822f0 ; =data_ov00_020eec9c
	bl func_ov00_020d7c8c
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02182270
_021822ec: .word data_027e0ffc
_021822f0: .word data_ov00_020eec9c

	arm_func_start func_ov40_021822f4
func_ov40_021822f4: ; 0x021822f4
	ldr r1, [r1]
	cmp r1, #0
	bxne lr
	ldr r1, [r3]
	mov r1, r1, lsl #0x8
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x70]
	str r1, [r0, #0x74]
	bx lr
	arm_func_end func_ov40_021822f4

	arm_func_start func_ov40_02182318
func_ov40_02182318: ; 0x02182318
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r3, r2
	mov r4, r0
	bl func_ov40_0217eb74
	ldr r0, _02182354 ; =data_ov40_021887d4
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	strb r1, [r4, #0x44]
	mov r0, r4
	strb r1, [r4, #0x45]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02182318
_02182354: .word data_ov40_021887d4

	arm_func_start func_ov40_02182358
func_ov40_02182358: ; 0x02182358
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217ec30
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02182358

	arm_func_start func_ov40_0218236c
func_ov40_0218236c: ; 0x0218236c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217ec30
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0218236c

	arm_func_start func_ov40_02182388
func_ov40_02182388: ; 0x02182388
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldr r1, [r4, #0x40]
	cmp r1, #0
	addeq sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021823c4
	cmp r0, #1
	beq _0218241c
	cmp r0, #2
	beq _02182434
	b _02182454
_021823c4:
	ldrb r0, [r4, #0x45]
	cmp r0, #0
	beq _02182404
	add r0, sp, #0xc
	bl func_02037628
	mov r1, #1
	mov r0, #7
	str r0, [sp, #0x18]
	strb r1, [sp, #0x20]
	strb r1, [sp, #0x21]
	ldr r1, [r4, #0x40]
	ldr r0, _0218246c ; =data_027e0c68
	add r2, sp, #0xc
	mov r3, #0
	bl func_02036f68
	b _02182410
_02182404:
	ldr r2, [r4, #0x3c]
	ldr r0, _0218246c ; =data_027e0c68
	bl func_02036edc
_02182410:
	mov r0, #1
	strb r0, [r4, #0x44]
	b _02182454
_0218241c:
	ldr r0, _0218246c ; =data_027e0c68
	mov r2, #0
	bl func_020370d0
	mov r0, #1
	strb r0, [r4, #0x44]
	b _02182454
_02182434:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, [r4, #0x40]
	ldr r0, _0218246c ; =data_027e0c68
	add r2, sp, #0
	bl func_02036da8
_02182454:
	mov r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x3c]
	strb r0, [r4, #0x45]
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02182388
_0218246c: .word data_027e0c68

	arm_func_start func_ov40_02182470
func_ov40_02182470: ; 0x02182470
	ldrb r1, [r0, #0x44]
	cmp r1, #0
	bxeq lr
	ldr r1, _021824a8 ; =data_027e0c68
	ldr r1, [r1, #0x40]
	cmp r1, #0
	bxne lr
	ldr r3, [r0, #0xc]
	mov r1, #0
	ldr r2, [r3, #0x3c]
	sub r2, r2, #1
	str r2, [r3, #0x3c]
	strb r1, [r0, #0x44]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02182470
_021824a8: .word data_027e0c68

	arm_func_start func_ov40_021824ac
func_ov40_021824ac: ; 0x021824ac
	ldr ip, _021824b8 ; =func_02036d6c
	ldr r0, _021824bc ; =data_027e0c68
	bx ip
	.align 2, 0
	arm_func_end func_ov40_021824ac
_021824b8: .word func_02036d6c
_021824bc: .word data_027e0c68

	arm_func_start func_ov40_021824c0
func_ov40_021824c0: ; 0x021824c0
	stmdb sp!, {r3, lr}
	mov ip, r1, lsr #0x5
	cmp ip, #0x42
	and r1, r1, #0x1f
	ldmia sp!, {r3, pc}
	bl func_ov40_02182568
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_021824c0

	arm_func_start func_ov40_021824dc
func_ov40_021824dc: ; 0x021824dc
	cmp r2, #0
	bxeq lr
	ldr r1, [r1]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	bx lr
_021824f4: ; jump table
	b _02182510 ; case 0
	b _0218251c ; case 1
	b _02182528 ; case 2
	b _02182534 ; case 3
	b _02182540 ; case 4
	b _0218254c ; case 5
	b _02182558 ; case 6
_02182510:
	mov r1, #0
	str r1, [r0, #0x38]
	bx lr
_0218251c:
	mov r1, #1
	str r1, [r0, #0x38]
	bx lr
_02182528:
	mov r1, #2
	str r1, [r0, #0x38]
	bx lr
_02182534:
	mov r1, #0
	str r1, [r0, #0x3c]
	bx lr
_02182540:
	mov r1, #1
	str r1, [r0, #0x3c]
	bx lr
_0218254c:
	mov r1, #2
	str r1, [r0, #0x3c]
	bx lr
_02182558:
	mov r1, #1
	str r1, [r0, #0x3c]
	strb r1, [r0, #0x45]
	bx lr
	arm_func_end func_ov40_021824dc

	arm_func_start func_ov40_02182568
func_ov40_02182568: ; 0x02182568
	cmp r1, #0x19
	ldreq r1, [r2]
	streq r1, [r0, #0x40]
	bx lr
	arm_func_end func_ov40_02182568

	arm_func_start func_ov40_02182578
func_ov40_02182578: ; 0x02182578
	stmdb sp!, {r4, lr}
	ldr r2, _021825d8 ; =data_ov00_020e53b8
	mov r4, r0
	str r2, [r4]
	ldr r2, _021825dc ; =data_ov40_02188a80
	str r1, [r4, #4]
	ldr r0, _021825e0 ; =data_027e0ce0
	str r2, [r4]
	ldr r1, [r0, #4]
	mov r0, #0xa4
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	beq _021825b4
	bl func_ov40_0217d8e8
_021825b4:
	str r0, [r4, #8]
	mov r1, #0
	str r1, [r4, #0xc]
	sub r0, r1, #2
	str r0, [r4, #0x10]
	strb r1, [r4, #0x14]
	mov r0, r4
	strb r1, [r4, #0x15]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02182578
_021825d8: .word data_ov00_020e53b8
_021825dc: .word data_ov40_02188a80
_021825e0: .word data_027e0ce0

	arm_func_start func_ov40_021825e4
func_ov40_021825e4: ; 0x021825e4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02182634 ; =data_ov40_02188a80
	mov r5, r0
	str r1, [r5]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02182624
	beq _0218261c
	mov r0, r4
	bl func_ov40_0217d9d0
	mov r0, r4
	bl func_0202ea0c
_0218261c:
	mov r0, #0
	str r0, [r5, #8]
_02182624:
	mov r0, r5
	bl func_ov00_020a60e0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_021825e4
_02182634: .word data_ov40_02188a80

	arm_func_start func_ov40_02182638
func_ov40_02182638: ; 0x02182638
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02182690 ; =data_ov40_02188a80
	mov r5, r0
	str r1, [r5]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02182678
	beq _02182670
	mov r0, r4
	bl func_ov40_0217d9d0
	mov r0, r4
	bl func_0202ea0c
_02182670:
	mov r0, #0
	str r0, [r5, #8]
_02182678:
	mov r0, r5
	bl func_ov00_020a60e0
	mov r0, r5
	bl func_0202ea0c
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02182638
_02182690: .word data_ov40_02188a80

	arm_func_start func_ov40_02182694
func_ov40_02182694: ; 0x02182694
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r5, r1
	ldr r4, [r5]
	mov r6, r0
	cmp r4, #0x21
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	mov r1, r4
	ldr r7, [r0, #0x80]
	mov r0, r7
	bl func_ov40_02183294
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	bl func_ov40_021834cc
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	bl func_ov40_021831ec
	mov r1, r0
	mov r0, r6
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	str r4, [r6, #0x10]
	mov r0, #0
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	ldrh r2, [r5, #0x1c]
	ldr r0, [r6, #8]
	add r1, r5, #0x20
	bl func_ov40_0217df74
	ldrb r0, [r5, #0xf]
	mov r4, #0
	cmp r0, #0
	beq _02182798
	mov r3, #0x47
	sub r2, r3, #0x49
	mov r1, #0xff
	ldr r0, _021827ac ; =data_027e0e60
	str r2, [sp, #0xc]
	str r3, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	strh r4, [sp, #0x10]
	strb r4, [sp, #0x13]
	strb r4, [sp, #0x14]
	strb r4, [sp, #0x15]
	strb r1, [sp, #0x12]
	ldrb r1, [r5, #0xf]
	ldr r0, [r0]
	add r2, sp, #0
	bl func_ov00_020838e8
	cmp r0, #0
	beq _02182798
	ldr r0, [sp, #4]
	cmp r0, #1
	moveq r4, #1
_02182798:
	ldr r1, [r6, #8]
	mov r0, #1
	strb r4, [r1, #0xa0]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_02182694
_021827ac: .word data_027e0e60

	arm_func_start func_ov40_021827b0
func_ov40_021827b0: ; 0x021827b0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	bl func_ov00_02097cf8
	ldr r2, _02182814 ; =0x00000187
	mov r1, r0
	cmp r1, r2
	beq _021827e8
	ldr r0, _02182818 ; =data_027e0f74
	mov r2, #1
	ldr r0, [r0]
	bl func_ov00_0209779c
_021827e8:
	ldr r0, [r4, #0x10]
	cmp r0, #0x10
	bne _02182804
	ldr r0, _0218281c ; =data_027e0fb4
	mov r1, #0x25
	ldr r0, [r0]
	blx func_ov00_020ada98
_02182804:
	mvn r0, #1
	str r0, [r4, #0x10]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021827b0
_02182814: .word 0x00000187
_02182818: .word data_027e0f74
_0218281c: .word data_027e0fb4

	arm_func_start func_ov40_02182820
func_ov40_02182820: ; 0x02182820
	stmdb sp!, {r3, lr}
	mov r2, r0
	str r1, [r2, #0xc]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	ldr r1, [r2, #8]
	add r0, sp, #0
	str r1, [sp]
	ldr r1, [r2, #0xc]
	mov r2, #1
	bl func_ov40_0217e5a4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02182820

	arm_func_start func_ov40_02182850
func_ov40_02182850: ; 0x02182850
	stmdb sp!, {r3, lr}
	mov r2, r0
	str r1, [r2, #0xc]
	ldr r1, [r2, #8]
	add r0, sp, #0
	str r1, [sp]
	ldr r1, [r2, #0xc]
	mov r2, #0
	bl func_ov40_0217e5a4
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02182850

	arm_func_start func_ov40_02182878
func_ov40_02182878: ; 0x02182878
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #8]
	mov r0, r4
	bl func_ov40_0217de38
	mov r0, r4
	bl func_ov40_0217df3c
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02182878

	arm_func_start func_ov40_021828a0
func_ov40_021828a0: ; 0x021828a0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x14]
	cmp r1, #0
	beq _021828dc
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _021828dc
	ldr r1, [r4, #0x18]
	sub r1, r1, #1
	str r1, [r4, #0x18]
	cmp r1, #0
	bgt _021828dc
	ldrb r1, [r4, #0x15]
	bl func_ov40_02182a64
_021828dc:
	ldr r0, [r4, #4]
	mov r1, #1
	bl func_ov05_02112268
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl func_ov00_020985c4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021828a0

	arm_func_start func_ov40_021828fc
func_ov40_021828fc: ; 0x021828fc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	bl func_ov40_0217dbec
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	ldr r0, [r1, #0x10]
	add r0, r0, r4
	str r0, [r1, #0x10]
	ldmib r5, {r0, r1}
	ldr r1, [r1, #0x4c]
	str r1, [r0, #0x18]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	bgt _02182958
	ldr r1, [r5, #4]
	ldr r0, [r1, #0xc]
	add r0, r0, r4
	str r0, [r1, #0xc]
_02182958:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021828fc

	arm_func_start func_ov40_02182960
func_ov40_02182960: ; 0x02182960
	ldr ip, _0218296c ; =func_ov40_0217da48
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02182960
_0218296c: .word func_ov40_0217da48

	arm_func_start func_ov40_02182970
func_ov40_02182970: ; 0x02182970
	ldr ip, _0218297c ; =func_ov40_0217dab0
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02182970
_0218297c: .word func_ov40_0217dab0

	arm_func_start func_ov40_02182980
func_ov40_02182980: ; 0x02182980
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov r0, #1
	mov r4, r1
	strb r0, [r5, #0x14]
	strb r4, [r5, #0x15]
	mov r0, #8
	str r0, [r5, #0x18]
	ldr r0, [r5, #8]
	bl func_ov40_0217db0c
	cmp r4, #0
	bne _02182a50
	mov r3, #0x47
	mov r4, #0
	sub r2, r3, #0x49
	ldr r0, _02182a5c ; =data_027e0f74
	mov r1, #0xff
	str r2, [sp, #0x14]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	strh r4, [sp, #0x18]
	strb r4, [sp, #0x1b]
	strb r4, [sp, #0x1c]
	strb r4, [sp, #0x1d]
	strb r1, [sp, #0x1a]
	ldr r0, [r0]
	ldr r1, [r5, #0x10]
	add r2, sp, #8
	bl func_ov00_02097db4
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	cmp r0, #0xfb
	ldr r0, [r5, #8]
	moveq r4, #1
	ldrb r0, [r0, #0xa0]
	cmp r0, #0
	beq _02182a3c
	mov r3, #0
	str r3, [sp]
	ldr r0, _02182a5c ; =data_027e0f74
	str r3, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x64
	bl func_ov00_02098074
	b _02182a50
_02182a3c:
	ldr r0, _02182a60 ; =data_027e0d38
	mov r2, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bl func_ov40_02183e08
_02182a50:
	mov r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02182980
_02182a5c: .word data_027e0f74
_02182a60: .word data_027e0d38

	arm_func_start func_ov40_02182a64
func_ov40_02182a64: ; 0x02182a64
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	bl func_ov40_0217db7c
	cmp r4, #0
	bne _02182a88
	ldr r0, [r5, #4]
	bl func_ov00_020985c4
_02182a88:
	mov r0, #0
	strb r0, [r5, #0x14]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02182a64

	arm_func_start func_ov40_02182a98
func_ov40_02182a98: ; 0x02182a98
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	mov r4, r2
	ldr r1, _02182b44 ; =data_ov00_020dc040
	mov r0, r5
	mov r2, #4
	bl func_0204366c
	cmp r0, #0
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r5, #4]
	ldr r0, _02182b48 ; =0x0000feff
	cmp r1, r0
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r5, #6]
	cmp r0, #2
	movlo r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #0x100
	movhi r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0xc]
	add r7, r5, #0x10
	cmp r0, #0
	mov r8, #0
	bls _02182b3c
_02182b08:
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl func_ov40_02182b4c
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r7]
	ldr r0, [r5, #0xc]
	add r8, r8, #1
	cmp r8, r0
	add r7, r7, r1
	blo _02182b08
_02182b3c:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov40_02182a98
_02182b44: .word data_ov00_020dc040
_02182b48: .word 0x0000feff

	arm_func_start func_ov40_02182b4c
func_ov40_02182b4c: ; 0x02182b4c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r2, #0
	str r1, [sp]
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	ldr r0, [r0]
	bl func_ov40_02182be4
	movs r4, r0
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r2, [r5]
	add r1, sp, #0
	bl func_ov00_020a63dc
	ldr r0, [r5]
	mov r1, r4
	bl func_ov40_02182f1c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02182b4c

	arm_func_start func_ov40_02182b9c
func_ov40_02182b9c: ; 0x02182b9c
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r0]
	add r2, r4, #4
	mov r3, #0
	bl func_ov00_020a0064
	ldr r1, [r4]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r4, #8]
	streq r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	add r1, r1, #3
	bic r1, r1, #3
	str r0, [r4, #8]
	add r0, r0, r1
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02182b9c

	arm_func_start func_ov40_02182be4
func_ov40_02182be4: ; 0x02182be4
	stmdb sp!, {r3, lr}
	ldrh r0, [r1, #4]
	str r1, [sp]
	cmp r0, #2
	beq _02182cd4
	cmp r0, #5
	beq _02182d34
	cmp r0, #6
	bne _02182de8
	ldr r1, _02182df0 ; =data_027e0f80
	mov r0, #0x58
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	ldr r1, [sp]
	mov r2, #0
	ldrh r3, [r1, #6]
	add ip, r0, #0x10
	cmp r3, #0
	addne r2, r1, #8
	ldr r1, _02182df4 ; =data_ov40_02188ab0
	stmia r0!, {r1, r2, r3}
	ldr r2, _02182df8 ; =data_ov00_020e5440
	str ip, [r0, #0xc]
	ldr r1, _02182dfc ; =data_ov40_02188ae8
	str r2, [r0]
	str r1, [r0, #0x10]
	mov r3, #0
	str r3, [ip, #4]
	str r3, [ip, #8]
	ldr r2, [ip, #4]
	ldr r1, _02182e00 ; =data_ov00_020e4d0c
	str r2, [ip, #0xc]
	strb r3, [ip, #0x10]
	strb r3, [ip, #0x11]
	ldr r2, [ip, #4]
	str r2, [ip, #0x14]
	ldr r2, [ip, #4]
	str r2, [ip, #0x18]
	str r3, [ip, #0x1c]
	str r3, [ip, #0x20]
	str r1, [r0, #0x10]
	str r3, [ip, #0x24]
	str r3, [ip, #0x28]
	str r3, [ip, #0x2c]
	str r3, [ip, #0x30]
	ldr r1, [ip, #0x2c]
	str r1, [ip, #0x34]
	ldr r1, [ip, #0x30]
	str r1, [ip, #0x38]
	ldr r1, [ip, #0x34]
	str r1, [ip, #0x3c]
	ldr r1, [ip, #0x30]
	str r1, [ip, #0x40]
	ldr r1, [ip, #0x34]
	str r1, [ip, #0x44]
	ldmia sp!, {r3, pc}
_02182cd4:
	ldr r1, _02182df0 ; =data_027e0f80
	mov r0, #0x18
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	ldr r1, [sp]
	mov r2, #0
	ldrh r3, [r1, #6]
	cmp r3, #0
	addne r2, r1, #8
	ldr r1, _02182df4 ; =data_ov40_02188ab0
	stmia r0!, {r1, r2, r3}
	add r3, r0, #0x10
	ldr r2, _02182e04 ; =data_ov00_020e542c
	str r3, [r0, #0xc]
	ldr r1, _02182e08 ; =data_ov40_02188ac4
	str r2, [r0]
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r3, #4]
	ldmia sp!, {r3, pc}
_02182d34:
	ldr r1, _02182df0 ; =data_027e0f80
	mov r0, #0x50
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	ldr r1, [sp]
	mov r2, #0
	ldrh r3, [r1, #6]
	add ip, r0, #0x10
	cmp r3, #0
	addne r2, r1, #8
	ldr r1, _02182df4 ; =data_ov40_02188ab0
	stmia r0!, {r1, r2, r3}
	ldr r2, _02182e0c ; =data_ov00_020e5418
	str ip, [r0, #0xc]
	ldr r1, _02182dfc ; =data_ov40_02188ae8
	str r2, [r0]
	str r1, [r0, #0x10]
	mov r3, #0
	str r3, [ip, #4]
	str r3, [ip, #8]
	ldr r2, [ip, #4]
	ldr r1, _02182e10 ; =data_ov00_020e4d30
	str r2, [ip, #0xc]
	strb r3, [ip, #0x10]
	strb r3, [ip, #0x11]
	ldr r2, [ip, #4]
	str r2, [ip, #0x14]
	ldr r2, [ip, #4]
	str r2, [ip, #0x18]
	str r3, [ip, #0x1c]
	str r3, [ip, #0x20]
	str r3, [ip, #0x24]
	str r1, [r0, #0x10]
	str r3, [ip, #0x28]
	str r3, [ip, #0x2c]
	str r3, [ip, #0x30]
	str r3, [ip, #0x34]
	ldr r1, [ip, #0x30]
	str r1, [ip, #0x38]
	str r3, [ip, #0x3c]
	ldmia sp!, {r3, pc}
_02182de8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02182be4
_02182df0: .word data_027e0f80
_02182df4: .word data_ov40_02188ab0
_02182df8: .word data_ov00_020e5440
_02182dfc: .word data_ov40_02188ae8
_02182e00: .word data_ov00_020e4d0c
_02182e04: .word data_ov00_020e542c
_02182e08: .word data_ov40_02188ac4
_02182e0c: .word data_ov00_020e5418
_02182e10: .word data_ov00_020e4d30

	arm_func_start func_ov40_02182e14
func_ov40_02182e14: ; 0x02182e14
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_0209ed2c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02182e14

	arm_func_start func_ov40_02182e28
func_ov40_02182e28: ; 0x02182e28
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldmia sp!, {r3, pc}
	mov r0, r1
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02182e28

	arm_func_start func_ov40_02182e48
func_ov40_02182e48: ; 0x02182e48
	mov r0, #2
	bx lr
	arm_func_end func_ov40_02182e48

	arm_func_start func_ov40_02182e50
func_ov40_02182e50: ; 0x02182e50
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	arm_func_end func_ov40_02182e50

	arm_func_start func_ov40_02182e5c
func_ov40_02182e5c: ; 0x02182e5c
	bx lr
	arm_func_end func_ov40_02182e5c

	arm_func_start func_ov40_02182e60
func_ov40_02182e60: ; 0x02182e60
	ldr r0, [r0, #4]
	bx lr
	arm_func_end func_ov40_02182e60

	arm_func_start func_ov40_02182e68
func_ov40_02182e68: ; 0x02182e68
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end func_ov40_02182e68

	arm_func_start func_ov40_02182e78
func_ov40_02182e78: ; 0x02182e78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_0209ed2c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02182e78

	arm_func_start func_ov40_02182e94
func_ov40_02182e94: ; 0x02182e94
	stmdb sp!, {r4, lr}
	ldr r1, _02182ee0 ; =data_027e0ce0
	mov r4, r0
	ldr r1, [r1, #4]
	mov r0, #1
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	str r0, [r4]
	add r0, r4, #4
	bl func_ov40_021830cc
	ldr r0, [r4, #0xc]
	cmp r0, #0x40
	bhs _02182ed8
	add r0, r4, #4
	mov r1, #0x40
	bl func_ov40_0217e08c
_02182ed8:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02182e94
_02182ee0: .word data_027e0ce0

	arm_func_start func_ov40_02182ee4
func_ov40_02182ee4: ; 0x02182ee4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_02183058
	ldr r0, [r4]
	cmp r0, #0
	beq _02182f0c
	beq _02182f04
	bl func_0202ea0c
_02182f04:
	mov r0, #0
	str r0, [r4]
_02182f0c:
	add r0, r4, #4
	bl func_ov40_0217e018
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02182ee4

	arm_func_start func_ov40_02182f1c
func_ov40_02182f1c: ; 0x02182f1c
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	mov r3, #0
	strb r3, [sp, #1]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bhs _02182f60
	add r3, r2, #1
	str r3, [r0, #8]
	ldr r1, [r0, #4]
	ldr r2, [sp, #0xc]
	sub r0, r3, #1
	str r2, [r1, r0, lsl #2]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02182f60:
	strb r3, [sp]
	sub r2, sp, #4
	and r1, r3, #0xff
	strb r1, [r2]
	ldr r2, [r2]
	add r1, sp, #0xc
	add r0, r0, #4
	bl func_ov40_0217e05c
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov40_02182f1c

	arm_func_start func_ov40_02182f8c
func_ov40_02182f8c: ; 0x02182f8c
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r2, [r5, #4]
	ldr r0, [r5, #8]
	mov r4, r1
	add r1, r2, r0, lsl #2
	str r1, [sp, #0x1c]
	str r1, [sp, #0xc]
	str r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	b _02182fc8
_02182fc0:
	add r2, r2, #4
	str r2, [sp, #8]
_02182fc8:
	cmp r2, r1
	ldrne r0, [r2]
	cmpne r0, r4
	bne _02182fc0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r1, r0
	cmp r0, r2
	addne r3, r1, #4
	cmpne r3, r2
	beq _0218300c
_02182ff4:
	ldr r0, [r3]
	add r3, r3, #4
	cmp r0, r4
	strne r0, [r1], #4
	cmp r3, r2
	bne _02182ff4
_0218300c:
	ldr r2, [r5, #4]
	ldr r0, [r5, #8]
	mov r3, #0
	add r2, r2, r0, lsl #2
	strb r3, [sp]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r3, [r0]
	add r0, r5, #4
	str r1, [sp, #0x24]
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_ov40_0217e190
	ldr r0, [r5]
	mov r1, r4
	bl func_ov40_02182e28
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02182f8c

	arm_func_start func_ov40_02183058
func_ov40_02183058: ; 0x02183058
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02183094
_02183070:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	sub r0, r0, #1
	ldr r1, [r1, r0, lsl #2]
	mov r0, r4
	bl func_ov40_02182f8c
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02183070
_02183094:
	ldr r1, [r4, #8]
	mov r0, #0
	strb r0, [sp]
	ldr r0, [r4, #8]
	sub r0, r0, r1
	str r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_02183058

	arm_func_start func_ov40_021830b4
func_ov40_021830b4: ; 0x021830b4
	ldr r2, [r0, #8]
	cmp r1, r2
	movhs r0, #0
	ldrlo r0, [r0, #4]
	ldrlo r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end func_ov40_021830b4

	arm_func_start func_ov40_021830cc
func_ov40_021830cc: ; 0x021830cc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217e004
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021830cc

	arm_func_start func_ov40_021830e0
func_ov40_021830e0: ; 0x021830e0
	mvn r1, #0
	str r1, [r0]
	mov r2, #0
	ldr r1, _02183110 ; =data_02057878
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r1, _02183114 ; =data_02057840
	str r2, [r0, #0x14]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	arm_func_end func_ov40_021830e0
_02183110: .word data_02057878
_02183114: .word data_02057840

	arm_func_start func_ov40_02183118
func_ov40_02183118: ; 0x02183118
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_021831c0
	add r0, r4, #8
	blx func_0203010c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02183118

	arm_func_start func_ov40_02183134
func_ov40_02183134: ; 0x02183134
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	mov r6, r2
	cmp r0, #0
	bne _0218317c
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021831bc ; =data_027e0ce0
	ldmia r6!, {r2, r3}
	ldr r1, [r0, #4]
	mov r0, #0xe1
	blx func_0202d598
	str r0, [r5, #4]
_0218317c:
	ldr r6, [r6, #8]
	cmp r6, #0
	beq _021831b0
	add r0, r5, #8
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	str r6, [r5, #0xc]
	add r0, r5, #8
	ldr r2, [r0]
	mov r1, #0x10
	ldr r2, [r2, #8]
	blx r2
_021831b0:
	str r4, [r5]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02183134
_021831bc: .word data_027e0ce0

	arm_func_start func_ov40_021831c0
func_ov40_021831c0: ; 0x021831c0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mvn r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	blx func_0202d5dc
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021831c0

	arm_func_start func_ov40_021831ec
func_ov40_021831ec: ; 0x021831ec
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0, #0x10]
	bx lr
	arm_func_end func_ov40_021831ec

	arm_func_start func_ov40_02183200
func_ov40_02183200: ; 0x02183200
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, pc}
	blx func_02017018
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02183200

	arm_func_start func_ov40_0218321c
func_ov40_0218321c: ; 0x0218321c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_021835d4
	ldr r0, [r4, #8]
	cmp r0, #0x21
	bhs _02183240
	mov r0, r4
	mov r1, #0x21
	bl func_ov40_0217e08c
_02183240:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0218321c

	arm_func_start func_ov40_02183248
func_ov40_02183248: ; 0x02183248
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_02183264
	mov r0, r4
	bl func_ov40_0217e018
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02183248

	arm_func_start func_ov40_02183264
func_ov40_02183264: ; 0x02183264
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl func_ov40_021833c4
	ldr r1, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r0, [r4, #4]
	sub r0, r0, r1
	str r0, [r4, #4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_02183264

	arm_func_start func_ov40_02183294
func_ov40_02183294: ; 0x02183294
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov r4, r1
	bl func_ov40_021835ac
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	cmp r0, #0x21
	addhs sp, sp, #0x20
	movhs r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r4, [sp, #0x10]
	add r2, r1, r0, lsl #2
	str r4, [sp, #4]
	str r2, [sp, #0x14]
	str r2, [sp, #8]
	str r1, [sp, #0x18]
	str r1, [sp, #0xc]
	b _021832fc
_021832f4:
	add r1, r1, #4
	str r1, [sp, #0xc]
_021832fc:
	cmp r1, r2
	ldrne r0, [r1]
	ldrne r0, [r0]
	cmpne r4, r0
	bne _021832f4
	ldr r0, [sp, #0xc]
	cmp r0, r2
	addne sp, sp, #0x20
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	ldr r1, _021833bc ; =data_027e0ce0
	mov r0, #0x18
	ldr r1, [r1, #4]
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	beq _02183344
	bl func_ov40_021830e0
_02183344:
	ldr r2, _021833c0 ; =data_ov40_0218805c
	mov r1, #0xc
	mla r2, r4, r1, r2
	mov r1, r4
	str r0, [sp, #0x1c]
	bl func_ov40_02183134
	mov r2, #0
	strb r2, [sp, #1]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs _02183390
	add r0, r1, #1
	str r0, [r5, #4]
	ldr r2, [sp, #0x1c]
	ldr r1, [r5]
	sub r0, r0, #1
	str r2, [r1, r0, lsl #2]
	b _021833b0
_02183390:
	strb r2, [sp]
	sub r1, sp, #4
	and r0, r2, #0xff
	strb r0, [r1]
	ldr r2, [r1]
	add r1, sp, #0x1c
	mov r0, r5
	bl func_ov40_0217e05c
_021833b0:
	mov r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02183294
_021833bc: .word data_027e0ce0
_021833c0: .word data_ov40_0218805c

	arm_func_start func_ov40_021833c4
func_ov40_021833c4: ; 0x021833c4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r2, [r4]
	ldr r0, [r4, #4]
	mov r7, r2
	add r1, r2, r0, lsl #2
	cmp r2, r1
	beq _02183428
	mov r5, #0
_021833ec:
	ldr r6, [r7]
	cmp r6, #0
	beq _02183410
	beq _0218340c
	mov r0, r6
	bl func_ov40_02183118
	mov r0, r6
	bl func_0202ea0c
_0218340c:
	str r5, [r7]
_02183410:
	ldr r2, [r4]
	ldr r0, [r4, #4]
	add r7, r7, #4
	add r1, r2, r0, lsl #2
	cmp r7, r1
	bne _021833ec
_02183428:
	str r1, [sp, #0x1c]
	str r1, [sp, #0xc]
	str r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	b _02183448
_02183440:
	add r2, r2, #4
	str r2, [sp, #8]
_02183448:
	cmp r2, r1
	ldrne r0, [r2]
	cmpne r0, #0
	bne _02183440
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r1, r0
	cmp r0, r2
	addne r3, r1, #4
	cmpne r3, r2
	beq _0218348c
_02183474:
	ldr r0, [r3]
	add r3, r3, #4
	cmp r0, #0
	strne r0, [r1], #4
	cmp r3, r2
	bne _02183474
_0218348c:
	ldr r2, [r4]
	ldr r0, [r4, #4]
	mov r3, #0
	add r2, r2, r0, lsl #2
	strb r3, [sp]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r3, [r0]
	mov r0, r4
	str r1, [sp, #0x24]
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_ov40_0217e190
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov40_021833c4

	arm_func_start func_ov40_021834cc
func_ov40_021834cc: ; 0x021834cc
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r5, r0
	mov r4, r1
	bl func_ov40_021835ac
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r4, [sp, #0x24]
	add r2, r1, r0, lsl #2
	str r4, [sp, #0xc]
	str r2, [sp, #0x28]
	str r2, [sp, #0x10]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x14]
	b _02183520
_02183518:
	add r1, r1, #4
	str r1, [sp, #0x14]
_02183520:
	cmp r1, r2
	ldrne r0, [r1]
	ldrne r0, [r0]
	cmpne r4, r0
	bne _02183518
	ldr r0, [sp, #0x14]
	cmp r0, r2
	bne _021835a0
	mov r0, r5
	mov r1, r4
	bl func_ov40_02183294
	ldr r2, [r5]
	ldr r0, [r5, #4]
	str r4, [sp, #0x18]
	add r1, r2, r0, lsl #2
	str r4, [sp]
	str r1, [sp, #0x1c]
	str r1, [sp, #4]
	str r2, [sp, #0x20]
	str r2, [sp, #8]
	b _0218357c
_02183574:
	add r2, r2, #4
	str r2, [sp, #8]
_0218357c:
	cmp r2, r1
	ldrne r0, [r2]
	ldrne r0, [r0]
	cmpne r4, r0
	bne _02183574
	ldr r0, [sp, #8]
	add sp, sp, #0x30
	ldr r0, [r0]
	ldmia sp!, {r3, r4, r5, pc}
_021835a0:
	ldr r0, [r0]
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021834cc

	arm_func_start func_ov40_021835ac
func_ov40_021835ac: ; 0x021835ac
	mvn r0, #1
	cmp r1, r0
	addne r0, r0, #1
	cmpne r1, r0
	cmpne r1, #0x21
	bne _021835cc
	mov r0, #0
	bx lr
_021835cc:
	mov r0, #1
	bx lr
	arm_func_end func_ov40_021835ac

	arm_func_start func_ov40_021835d4
func_ov40_021835d4: ; 0x021835d4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217e004
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021835d4

	arm_func_start func_ov40_021835e8
func_ov40_021835e8: ; 0x021835e8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov40_02183650
	mov r1, #0
	str r1, [r0, #4]
	mov r0, r5
	mov r1, #6
	bl func_ov00_020bb544
	ldr r0, _0218364c ; =data_027e0fcc
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _0218364c ; =data_027e0fcc
	mov r1, r4
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x54]
	blx r2
	bl func_ov40_02183650
	mov r1, r4
	bl func_ov00_020b309c
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_021835e8
_0218364c: .word data_027e0fcc

	arm_func_start func_ov40_02183650
func_ov40_02183650: ; 0x02183650
	ldr ip, _0218365c ; =func_01fffcd8
	mov r0, #6
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02183650
_0218365c: .word func_01fffcd8

	arm_func_start func_ov40_02183660
func_ov40_02183660: ; 0x02183660
	stmdb sp!, {r4, lr}
	ldr r0, _0218368c ; =data_027e0fcc
	mov r4, r1
	ldr r0, [r0]
	ldr r2, [r0]
	ldr r2, [r2, #0x54]
	blx r2
	bl func_ov40_02183650
	mov r1, r4
	bl func_ov00_020b309c
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02183660
_0218368c: .word data_027e0fcc

	arm_func_start func_ov40_02183690
func_ov40_02183690: ; 0x02183690
	stmdb sp!, {r4, lr}
	ldr r1, _021836bc ; =data_027e0fcc
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	mov r0, r4
	mov r1, #0
	bl func_ov00_020bb544
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02183690
_021836bc: .word data_027e0fcc

	arm_func_start func_ov40_021836c0
func_ov40_021836c0: ; 0x021836c0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0218373c ; =data_027e0ce0
	mov r5, r0
	ldr r1, [r1, #4]
	mov r0, #0x54
	mov r2, #4
	bl func_0202e9dc
	movs r4, r0
	beq _021836f8
	add r1, r4, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r0, _02183740 ; =data_ov40_02189128
	str r0, [r4]
_021836f8:
	ldr r0, _0218373c ; =data_027e0ce0
	str r4, [r5, #0x4a8]
	ldr r1, [r0, #4]
	mov r0, #0x54
	mov r2, #4
	bl func_0202e9dc
	movs r4, r0
	beq _0218372c
	add r1, r4, #0x24
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r0, _02183740 ; =data_ov40_02189128
	str r0, [r4]
_0218372c:
	mov r0, r5
	str r4, [r5, #0x4ac]
	bl func_ov40_02183758
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_021836c0
_0218373c: .word data_027e0ce0
_02183740: .word data_ov40_02189128

	arm_func_start func_ov40_02183744
func_ov40_02183744: ; 0x02183744
	ldr r2, _02183754 ; =data_ov40_02189ae0
	mov r0, #0x30
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02183744
_02183754: .word data_ov40_02189ae0

	arm_func_start func_ov40_02183758
func_ov40_02183758: ; 0x02183758
	ldr r2, _0218377c ; =data_ov40_02189ae0
	mov r3, #0
_02183760:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x1a0]
	add r3, r3, #1
	str r2, [r1, #0xa0]
	cmp r3, #2
	blt _02183760
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02183758
_0218377c: .word data_ov40_02189ae0

	arm_func_start func_ov40_02183780
func_ov40_02183780: ; 0x02183780
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020b4938
	mov r0, #1
	str r0, [r4, #0x120]
	mov r1, #0
	str r1, [r4, #0x498]
	str r1, [r4, #0x144]
	ldr r0, [r4, #0x490]
	mov r2, #0x1f
	add r0, r4, r0, lsl #2
	ldr r4, [r0, #0x1a0]
	mov r0, r4
	bl func_ov00_020aa0f0
	mov r0, r4
	mov r1, #1
	mov r2, #0x1f
	bl func_ov00_020aa0f0
	mov r0, r4
	mov r1, #2
	mov r2, #0x1f
	bl func_ov00_020aa0f0
	mov r0, r4
	mov r1, #3
	mov r2, #0x1f
	bl func_ov00_020aa0f0
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02183780

	arm_func_start func_ov40_021837ec
func_ov40_021837ec: ; 0x021837ec
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #0x14]
	mov r6, r0
	cmp r1, #2
	beq _021838c8
	cmp r1, #1
	bne _02183890
	ldr r0, _02183a04 ; =data_027e0f74
	ldr r1, [r5, #0x1c]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r5, #0x20]
	bl func_0201e50c
	ldr r1, [r6, #0x138]
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02183884
	ldr r0, [r6, #0x13c]
	bl func_ov00_020c0d1c
	ldr r2, [r6, #0x138]
	ldr r1, [r6, #0x13c]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r2, #0x1c]
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x20]
	str r0, [r1, #0x20]
_02183884:
	ldr r0, [r6, #0x138]
	mov r1, r4
	bl func_ov00_020c0c44
_02183890:
	ldr r1, [r5, #0x28]
	cmp r1, #1
	bhi _021838ac
	add r0, r6, #0x100
	mov r1, #0x1000
	strh r1, [r0, #0x50]
	b _021838bc
_021838ac:
	mov r0, #0x1000
	bl func_01ff9b4c
	add r1, r6, #0x100
	strh r0, [r1, #0x50]
_021838bc:
	add r0, r6, #0x100
	mov r1, #0
	strh r1, [r0, #0x30]
_021838c8:
	ldr r0, [r5, #0x2c]
	cmp r0, #2
	beq _02183934
	cmp r0, #1
	bne _02183934
	ldr r0, _02183a04 ; =data_027e0f74
	ldr r1, [r5, #0x34]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r5, #0x38]
	bl func_0201e50c
	ldr r1, [r6, #0x490]
	mov r4, r0
	add r0, r6, r1, lsl #2
	ldr r0, [r0, #0x1a0]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, r4
	ldr r2, [r6, #0x140]
	str r0, [r2, #8]
	ldr r0, [r6, #0x140]
	ldr r2, [r6, #0x494]
	ldr r3, [r5, #0x3c]
	bl func_ov00_020c0cc8
	mov r0, #0x16
	str r0, [r6, #0x498]
_02183934:
	ldr r0, [r5, #0x44]
	cmp r0, #2
	beq _02183990
	cmp r0, #1
	bne _02183990
	ldr r0, _02183a04 ; =data_027e0f74
	ldr r1, [r5, #0x4c]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r5, #0x50]
	bl func_0201e50c
	ldr r1, [r6, #0x490]
	mov r4, r0
	add r0, r6, r1, lsl #2
	ldr r0, [r0, #0x1a0]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r2, [r6, #0x4a8]
	mov r1, r4
	str r0, [r2, #8]
	ldr r0, [r6, #0x4a8]
	bl func_ov00_020c0c70
_02183990:
	ldr r0, [r5, #0x5c]
	cmp r0, #2
	beq _021839ec
	cmp r0, #1
	bne _021839ec
	ldr r0, _02183a04 ; =data_027e0f74
	ldr r1, [r5, #0x64]
	ldr r0, [r0]
	bl func_ov00_02097fd0
	ldr r1, [r5, #0x68]
	bl func_0201e50c
	ldr r1, [r6, #0x490]
	mov r4, r0
	add r0, r6, r1, lsl #2
	ldr r0, [r0, #0x1a0]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r2, [r6, #0x4ac]
	mov r1, r4
	str r0, [r2, #8]
	ldr r0, [r6, #0x4ac]
	bl func_ov00_020c0c9c
_021839ec:
	ldrb r4, [r5, #0xf]
	bl func_ov40_02183a08
	strb r4, [r0, #0xd]
	ldrb r0, [r5, #0x10]
	strb r0, [r6, #0x4a4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_021837ec
_02183a04: .word data_027e0f74

	arm_func_start func_ov40_02183a08
func_ov40_02183a08: ; 0x02183a08
	ldr ip, _02183a14 ; =func_01fffcec
	mov r0, #1
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02183a08
_02183a14: .word func_01fffcec

	arm_func_start func_ov40_02183a18
func_ov40_02183a18: ; 0x02183a18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020b46dc
	ldr r0, [r4, #0x498]
	cmp r0, #0
	beq _02183a38
	ldr r0, [r4, #0x140]
	bl func_ov00_020c0e04
_02183a38:
	ldr r0, [r4, #0x4a8]
	ldr r1, [r0, #4]
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02183a50
	bl func_ov00_020c0e04
_02183a50:
	ldr r0, [r4, #0x4ac]
	ldr r1, [r0, #4]
	ldr r1, [r1, #8]
	cmp r1, #0
	ldmia sp!, {r4, pc}
	bl func_ov00_020c0e04
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02183a18

	arm_func_start func_ov40_02183a6c
func_ov40_02183a6c: ; 0x02183a6c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x100
	ldr r4, [r7, #0x490]
	ldrsh r3, [r0, #0x30]
	ldrsh r2, [r0, #0x50]
	add r4, r7, r4, lsl #2
	ldr r4, [r4, #0x1a0]
	add r2, r3, r2
	strh r2, [r0, #0x30]
	ldrsh r2, [r0, #0x30]
	add r0, r7, #0x100
	mov r5, r1
	cmp r2, #0x1000
	movge r2, #0x1000
	strh r2, [r0, #0x30]
	ldrsh r6, [r0, #0x30]
	cmp r6, #0
	ble _02183adc
	ldr r0, [r7, #0x138]
	bl func_ov00_020c0d4c
	str r6, [r0, #4]
	ldr r0, [r7, #0x13c]
	bl func_ov00_020c0d4c
	add r1, r7, #0x100
	ldrsh r1, [r1, #0x30]
	rsb r1, r1, #0x1000
	str r1, [r0, #4]
_02183adc:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	ldr r1, [r7, #0x138]
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02183b08
	mov r0, r4
	bl func_ov00_020a9dc0
_02183b08:
	add r0, r7, #0x100
	ldrsh r1, [r0, #0x30]
	cmp r1, #0x1000
	blt _02183b24
	ldrsh r0, [r0, #0x32]
	cmp r0, #0
	ble _02183b40
_02183b24:
	ldr r1, [r7, #0x13c]
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02183b40
	mov r0, r4
	bl func_ov00_020a9dc0
_02183b40:
	ldr r0, [r7, #0x498]
	cmp r0, #0x16
	bne _02183b60
	mov r0, r4
	ldr r2, [r0]
	ldr r1, [r7, #0x140]
	ldr r2, [r2, #0x24]
	blx r2
_02183b60:
	ldr r1, [r7, #0x4a8]
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02183b84
	mov r0, r4
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
_02183b84:
	ldr r1, [r7, #0x4ac]
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02183ba8
	mov r0, r4
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
_02183ba8:
	ldr r0, _02183d04 ; =data_027e0fb4
	mov r1, #0x25
	ldr r0, [r0]
	bl func_ov00_020ada78
	ldr r1, _02183d04 ; =data_027e0fb4
	mov r6, r0
	ldr r0, [r1]
	mov r1, #0
	bl func_ov00_020ada78
	cmp r0, #0
	beq _02183bdc
	cmp r6, #0
	beq _02183bfc
_02183bdc:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl func_ov00_020aa0f0
	mov r0, r4
	mov r1, #1
	mov r2, #0
	bl func_ov00_020aa0f0
_02183bfc:
	cmp r6, #0
	bne _02183c24
	mov r0, r4
	mov r1, #2
	mov r2, #0
	bl func_ov00_020aa0f0
	mov r0, r4
	mov r1, #3
	mov r2, #0
	bl func_ov00_020aa0f0
_02183c24:
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #1
	mov r5, r1, lsl #0x1
	ldr r3, _02183d08 ; =data_02050f54
	mov r2, r0, lsl #0x1
	mov r0, r4
	mov r1, #0
	ldrsh r5, [r3, r5]
	ldrsh r6, [r3, r2]
	bl func_ov00_020a9bec
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	mov r0, r4
	mov r1, #1
	bl func_ov00_020a9bec
	ldr r1, [r4, #0x5c]
	mov r0, r4
	bl func_ov00_020a9624
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r0, #0x4c]
	ldr r1, [r0, #0x54]
	smull r3, r4, r2, r6
	adds ip, r3, #0x800
	smull r3, r2, r1, r5
	adc r4, r4, #0
	adds r3, r3, #0x800
	mov ip, ip, lsr #0xc
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr ip, ip, r4, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, ip, r2
	str r1, [r7, #0x34]
	ldr r1, [r0, #0x50]
	str r1, [r7, #0x38]
	ldr r1, [r0, #0x54]
	ldr r0, [r0, #0x4c]
	smull r2, r3, r1, r6
	adds r4, r2, #0x800
	smull r2, r1, r0, r5
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r4, r4, lsr #0xc
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r4, r4, r3, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r4, r1
	str r0, [r7, #0x3c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_02183a6c
_02183d04: .word data_027e0fb4
_02183d08: .word data_02050f54

	arm_func_start func_ov40_02183d0c
func_ov40_02183d0c: ; 0x02183d0c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	cmp r3, #0
	beq _02183d38
	ldrb r0, [r5, #0x27]
	cmp r0, #0
	ldreqb r0, [r5, #0x28]
	cmpeq r0, #1
	bne _02183d80
_02183d38:
	ldrb r0, [r5, #0x20]
	cmp r0, #0
	moveq r6, #1
	movne r6, #0
	mov r0, r5
	blx func_ov00_0207bfc4
	cmp r6, #0
	bne _02183d64
	ldr r0, [r7, #4]
	cmp r0, #0xfb
	bne _02183d6c
_02183d64:
	mov r0, #0
	strb r0, [r5, #0x20]
_02183d6c:
	mov r0, #1
	strb r0, [r5, #0x27]
	mov r0, #0
	strb r0, [r5, #0x28]
	strh r0, [r5, #0x2c]
_02183d80:
	strh r4, [r5, #0x2a]
	mov r1, #0
	str r1, [r5]
	ldrb r0, [r5, #0x20]
	cmp r0, #0
	subne r1, r1, #0x10
	moveq r1, #0x10
	mov r0, r5
	str r1, [r5, #8]
	blx func_ov00_0207c074
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov40_02183d0c

	arm_func_start func_ov40_02183dac
func_ov40_02183dac: ; 0x02183dac
	ldr r1, _02183ddc ; =0x020d88ae
	mov r2, #0
	ldrh r1, [r1]
	ldr ip, _02183de0 ; =func_ov00_0207c074
	strh r1, [r0, #0x2a]
	str r2, [r0]
	ldrb r1, [r0, #0x20]
	cmp r1, #0
	subne r1, r2, #0x10
	moveq r1, #0x10
	str r1, [r0, #8]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02183dac
_02183ddc: .word 0x020d88ae
_02183de0: .word func_ov00_0207c074

	arm_func_start func_ov40_02183de4
func_ov40_02183de4: ; 0x02183de4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r3, [r4, #0x34]
	ldr r0, [r4, #0xac]
	ldr r2, [r4]
	bl func_ov40_02183d0c
	mov r0, #1
	strb r0, [r4, #0x34]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02183de4

	arm_func_start func_ov40_02183e08
func_ov40_02183e08: ; 0x02183e08
	ldr ip, _02183e20 ; =func_ov05_02100dc0
	mov r3, #1
	strb r3, [r0, #0x34]
	ldr r0, [r0, #0xac]
	mov r3, #0
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02183e08
_02183e20: .word func_ov05_02100dc0

	arm_func_start func_ov40_02183e24
func_ov40_02183e24: ; 0x02183e24
	stmdb sp!, {r3, lr}
	ldr r1, _02183e50 ; =data_027e0fe0
	mov r0, #0x910
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_02183e54
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02183e24
_02183e50: .word data_027e0fe0

	arm_func_start func_ov40_02183e54
func_ov40_02183e54: ; 0x02183e54
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl func_ov40_0217bf30
	ldr r0, _02183f28 ; =data_ov40_021891d4
	mov r3, #0
	str r0, [sl]
	str r3, [sl, #0x7f4]
	sub r0, r3, #1
	str r0, [sl, #0x7f8]
	str r0, [sl, #0x7fc]
	str r3, [sl, #0x800]
	str r3, [sl, #0x804]
	add r0, sl, #0x800
	strh r3, [r0, #0x28]
	mov r2, #1
	strh r2, [r0, #0x2a]
	add r1, sl, #0x44
	strb r2, [sl, #0x82c]
	strb r2, [sl, #0x82d]
	add r0, r1, #0x800
	mov r1, #0x800
	mov r2, #0x200
	str r3, [sl, #0x830]
	blx func_0202f194
	mov sb, #0
	ldr r4, _02183f2c ; =data_027e0ce0
	mov r8, sb
	mov r7, #4
	mov r6, #1
	mov r5, #0xc000
	mov fp, #0x200
_02183ed0:
	add r0, sl, sb, lsl #2
	str r8, [r0, #0x808]
	str r8, [r0, #0x810]
	str r7, [r0, #0x818]
	str r6, [r0, #0x820]
	ldr r0, [r4, #4]
	mov r1, r5
	mov r2, r7
	blx func_0201739c
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x834]
	ldr r0, [r4, #4]
	mov r1, fp
	mov r2, #4
	blx func_0201739c
	add r1, sl, sb, lsl #2
	add sb, sb, #1
	str r0, [r1, #0x83c]
	cmp sb, #2
	blo _02183ed0
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_02183e54
_02183f28: .word data_ov40_021891d4
_02183f2c: .word data_027e0ce0

	arm_func_start func_ov40_02183f30
func_ov40_02183f30: ; 0x02183f30
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02183fb8 ; =data_ov40_021891d4
	mov r5, #0
	mov r6, r0
	ldr r7, _02183fbc ; =data_027e0ce0
	str r1, [r6]
	mov r4, r5
	mov r8, r5
_02183f50:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x834]
	cmp r1, #0
	beq _02183f70
	ldr r0, [r7, #4]
	blx func_020174a4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x834]
_02183f70:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x83c]
	cmp r1, #0
	beq _02183f90
	ldr r0, [r7, #4]
	blx func_020174a4
	add r0, r6, r5, lsl #2
	str r8, [r0, #0x83c]
_02183f90:
	add r5, r5, #1
	cmp r5, #2
	blo _02183f50
	add r0, r6, #0x44
	add r0, r0, #0x800
	blx func_0202f1f0
	mov r0, r6
	bl func_ov40_0217c20c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov40_02183f30
_02183fb8: .word data_ov40_021891d4
_02183fbc: .word data_027e0ce0

	arm_func_start func_ov40_02183fc0
func_ov40_02183fc0: ; 0x02183fc0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02184050 ; =data_ov40_021891d4
	mov r5, #0
	mov r6, r0
	ldr r7, _02184054 ; =data_027e0ce0
	str r1, [r6]
	mov r4, r5
	mov r8, r5
_02183fe0:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x834]
	cmp r1, #0
	beq _02184000
	ldr r0, [r7, #4]
	blx func_020174a4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x834]
_02184000:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x83c]
	cmp r1, #0
	beq _02184020
	ldr r0, [r7, #4]
	blx func_020174a4
	add r0, r6, r5, lsl #2
	str r8, [r0, #0x83c]
_02184020:
	add r5, r5, #1
	cmp r5, #2
	blo _02183fe0
	add r0, r6, #0x44
	add r0, r0, #0x800
	blx func_0202f1f0
	mov r0, r6
	bl func_ov40_0217c20c
	mov r0, r6
	bl func_0202ea0c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov40_02183fc0
_02184050: .word data_ov40_021891d4
_02184054: .word data_027e0ce0

	arm_func_start func_ov40_02184058
func_ov40_02184058: ; 0x02184058
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x7c]
	str r0, [r4, #0x80]
	str r0, [r4, #0x84]
	mov r0, #0x1000
	str r0, [r4, #0x88]
	ldr r1, [r4, #0x7c]
	ldr r0, _02184174 ; =data_027e0f74
	str r1, [r4, #0x8c]
	ldr r1, [r4, #0x80]
	str r1, [r4, #0x90]
	ldr r1, [r4, #0x84]
	str r1, [r4, #0x94]
	ldr r1, [r4, #0x88]
	str r1, [r4, #0x98]
	ldr r0, [r0]
	bl func_ov00_02097c08
	cmp r0, #1
	bgt _021840b8
	beq _021840f4
	b _02184118
_021840b8:
	sub r0, r0, #0xb
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02184118
_021840c8: ; jump table
	b _0218410c ; case 0
	b _0218410c ; case 1
	b _02184118 ; case 2
	b _02184118 ; case 3
	b _02184118 ; case 4
	b _02184118 ; case 5
	b _02184118 ; case 6
	b _02184118 ; case 7
	b _02184100 ; case 8
	b _02184100 ; case 9
	b _02184100 ; case 10
_021840f4:
	mov r0, #0
	str r0, [r4, #0x7f4]
	b _02184120
_02184100:
	mov r0, #2
	str r0, [r4, #0x7f4]
	b _02184120
_0218410c:
	mov r0, #1
	str r0, [r4, #0x7f4]
	b _02184120
_02184118:
	mov r0, #1
	str r0, [r4, #0x7f4]
_02184120:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, #1
	bl func_ov40_0218468c
	mov r0, r4
	bl func_ov40_0217c2b8
	mov r5, r0
	add r0, r4, #0x15c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r2, [r0, #8]
	ldr r1, _02184178 ; =data_ov40_021881e8
	add r0, r0, r2
	add r0, r0, #4
	bl func_0201e388
	str r0, [r4, #0x7fc]
	mov r0, r5
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02184058
_02184174: .word data_027e0f74
_02184178: .word data_ov40_021881e8

	arm_func_start func_ov40_0218417c
func_ov40_0218417c: ; 0x0218417c
	ldr ip, _02184184 ; =func_ov40_0217d368
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0218417c
_02184184: .word func_ov40_0217d368

	arm_func_start func_ov40_02184188
func_ov40_02184188: ; 0x02184188
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02184188

	arm_func_start func_ov40_0218419c
func_ov40_0218419c: ; 0x0218419c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x82c]
	mov r4, r1
	cmp r0, #0
	bne _021841dc
	add r0, r5, #0x15c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r1, [r5, #0x7fc]
	mov r2, #0
	bl func_02019570
	mov r0, r5
	mov r1, r4
	bl func_ov40_0217d40c
_021841dc:
	cmp r4, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _02184360 ; =data_027e08e4
	mov r1, #1
	bl func_0202f2f8
	cmp r0, #0
	bne _02184210
	mov r0, r5
	mov r1, #1
	bl func_ov40_021847ec
	mov r0, r5
	mov r1, #0
	bl func_ov40_021847ec
_02184210:
	ldrb r0, [r5, #0x82c]
	cmp r0, #0
	beq _0218434c
	ldrb r0, [r5, #0x82d]
	cmp r0, #0
	beq _02184258
	ldr r0, _02184364 ; =data_027e0de4
	ldr r2, _02184368 ; =func_ov40_0218458c
	mov r1, #6
	mov r3, #0
	bl func_ov00_0207bb1c
	ldr r0, [r5, #0x830]
	add r0, r0, #1
	str r0, [r5, #0x830]
	cmp r0, #3
	movhs r0, #0
	strhsb r0, [r5, #0x82d]
	ldmia sp!, {r3, r4, r5, pc}
_02184258:
	add r0, r5, #0x800
	ldrsh r1, [r0, #0x2a]
	mov r4, #0
	cmp r1, #0
	bne _021842d8
	ldr r1, [r5, #0x7f4]
	ldrsh r3, [r0, #0x28]
	cmp r1, #0
	ldreq r0, [r5, #0x7f8]
	cmpeq r0, #2
	bne _0218429c
	ldr r0, [r5, #0x808]
	cmp r0, #0
	ldrle r0, [r5, #0x80c]
	cmple r0, #0
	orrle r3, r3, #0x990000
	movle r4, #1
_0218429c:
	ldr r0, _02184364 ; =data_027e0de4
	ldr r2, _0218436c ; =func_ov40_021844b4
	mov r1, #6
	bl func_ov00_0207bb1c
	add r0, r5, #0x800
	ldrsh r0, [r0, #0x28]
	cmp r0, #0
	cmpeq r4, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _02184364 ; =data_027e0de4
	ldr r2, _0218436c ; =func_ov40_021844b4
	mov r1, #4
	mov r3, #0x80000000
	bl func_ov00_0207bb1c
	ldmia sp!, {r3, r4, r5, pc}
_021842d8:
	ldrsh r1, [r0, #0x28]
	ldr r0, [r5, #0x7f4]
	cmp r0, #0
	ldreq r0, [r5, #0x7f8]
	orr r3, r1, #0x80000000
	cmpeq r0, #2
	bne _02184310
	ldr r0, [r5, #0x808]
	cmp r0, #0
	ldrle r0, [r5, #0x80c]
	cmple r0, #0
	orrle r3, r1, #0x990000
	orrle r3, r3, #0x80000000
	movle r4, #1
_02184310:
	ldr r0, _02184364 ; =data_027e0de4
	ldr r2, _0218436c ; =func_ov40_021844b4
	mov r1, #6
	bl func_ov00_0207bb1c
	add r0, r5, #0x800
	ldrsh r0, [r0, #0x28]
	cmp r0, #0
	cmpeq r4, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _02184364 ; =data_027e0de4
	ldr r2, _0218436c ; =func_ov40_021844b4
	mov r1, #4
	mov r3, #0
	bl func_ov00_0207bb1c
	ldmia sp!, {r3, r4, r5, pc}
_0218434c:
	add r0, r5, #0x800
	ldrsh r1, [r0, #0x2a]
	mov r0, r5
	bl func_ov40_02184370
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0218419c
_02184360: .word data_027e08e4
_02184364: .word data_027e0de4
_02184368: .word func_ov40_0218458c
_0218436c: .word func_ov40_021844b4

	arm_func_start func_ov40_02184370
func_ov40_02184370: ; 0x02184370
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r5, r0
	mov r4, r1
	bl func_01ffa8d4
	ldr r2, _02184494 ; =0x04000444
	mov r1, #0
	str r1, [r2]
	mov r0, r5
	ldr r3, [r0]
	add r2, sp, #0
	ldr r3, [r3, #0xb8]
	blx r3
	add r0, sp, #0
	bl func_0200567c
	ldr r0, _02184498 ; =data_ov40_021881f8
	ldr r3, _0218449c ; =0x00000629
	ldr r2, _021844a0 ; =0x0400046c
	ldr r0, [r0, r4, lsl #2]
	str r3, [r2]
	str r3, [r2]
	mov r1, #0x1000
	str r1, [r2]
	mov r3, #0x800
	str r3, [r2]
	mov r3, #0x600
	str r3, [r2]
	ldr r5, _021844a4 ; =0x0000ffff
	str r1, [r2]
	str r5, [r2, #0x54]
	ldr r3, _021844a8 ; =0x001f0080
	ldr ip, _021844ac ; =data_027e0d44
	str r3, [r2, #0x38]
	ldr r3, [ip]
	mov r5, #1
	add r3, r3, r0, lsl #3
	ldr r3, [r3, #8]
	ldr lr, _021844b0 ; =0x0800f800
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bic r3, r3, #0xe0000000
	orr r3, r3, #0x2d00000
	orr r3, r3, #0x10000000
	str r3, [r2, #0x3c]
	ldr ip, [ip]
	mov r3, #0
	add r0, ip, r0, lsl #3
	ldr ip, [r0, #0xc]
	mov r4, #0xc000000
	mov ip, ip, lsl #0x10
	mov ip, ip, lsr #0x11
	str ip, [r2, #0x40]
	str r5, [r2, #0x94]
	str r3, [r2, #0x1c]
	str lr, [r2, #0x20]
	str r3, [r2, #0x20]
	sub r0, lr, #0x10000000
	str r4, [r2, #0x1c]
	str r0, [r2, #0x20]
	add r0, r4, #0x1000
	str r3, [r2, #0x20]
	str r0, [r2, #0x1c]
	rsb r0, lr, #0x10000
	str r0, [r2, #0x20]
	str r3, [r2, #0x20]
	str r1, [r2, #0x1c]
	sub r0, lr, #0xf000
	str r0, [r2, #0x20]
	str r3, [r2, #0x20]
	str r3, [r2, #0x98]
	str r5, [r2, #-0x24]
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02184370
_02184494: .word 0x04000444
_02184498: .word data_ov40_021881f8
_0218449c: .word 0x00000629
_021844a0: .word 0x0400046c
_021844a4: .word 0x0000ffff
_021844a8: .word 0x001f0080
_021844ac: .word data_027e0d44
_021844b0: .word 0x0800f800

	arm_func_start func_ov40_021844b4
func_ov40_021844b4: ; 0x021844b4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r1, r0, lsr #0x10
	and r1, r1, #0xff
	mov r2, r0, lsr #0x1f
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r4, r0, lsr #0x10
	moveq r1, #0x100
	cmp r4, #0x100
	and r5, r2, #1
	addeq sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	ldr r3, _02184578 ; =0x0000ffff
	ldr ip, _0218457c ; =0x040004c0
	ldr r0, _02184580 ; =data_ov40_021881f8
	str r3, [ip]
	ldr r2, _02184584 ; =0x001f0080
	ldr lr, _02184588 ; =data_027e0d44
	str r2, [ip, #-0x1c]
	ldr r0, [r0, r5, lsl #2]
	ldr r2, [lr]
	rsb r4, r4, #0
	add r2, r2, r0, lsl #3
	ldr r2, [r2, #8]
	mov r3, #0
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bic r2, r2, #0xe0000000
	orr r2, r2, #0x2d00000
	orr r2, r2, #0x10000000
	str r2, [ip, #-0x18]
	ldr lr, [lr]
	mov r2, #0xc0
	add r0, lr, r0, lsl #3
	ldr lr, [r0, #0xc]
	add r0, sp, #4
	mov lr, lr, lsl #0x10
	mov lr, lr, lsr #0x11
	str lr, [ip, #-0x14]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp]
	bl func_ov05_0210e344
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_021844b4
_02184578: .word 0x0000ffff
_0218457c: .word 0x040004c0
_02184580: .word data_ov40_021881f8
_02184584: .word 0x001f0080
_02184588: .word data_027e0d44

	arm_func_start func_ov40_0218458c
func_ov40_0218458c: ; 0x0218458c
	stmdb sp!, {r3, lr}
	ldr lr, _021845c4 ; =0x040004c0
	mov r1, #0x8000
	mov r0, #0
	ldr r2, _021845c8 ; =0x001f0080
	str r1, [lr]
	mov r1, r0
	str r2, [lr, #-0x1c]
	mov ip, #0x2d00000
	mov r2, #0x100000
	mov r3, #0xc0000
	str ip, [lr, #-0x18]
	bl func_ov05_0210e1b8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_0218458c
_021845c4: .word 0x040004c0
_021845c8: .word 0x001f0080

	arm_func_start func_ov40_021845cc
func_ov40_021845cc: ; 0x021845cc
	stmdb sp!, {r3, lr}
	bl func_ov40_0217d2a0
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_021845cc

	arm_func_start func_ov40_021845dc
func_ov40_021845dc: ; 0x021845dc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl func_ov40_0217d2fc
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x10]
	movs ip, r0, lsl #0xc
	movmi r0, #0
	strmib r0, [r4, #0x82c]
	ldmia sp!, {r3, r4, r5, pc}
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0x14
	mov r0, #0x800
	adds r2, r0, r3, lsl #20
	orr r1, r1, r3, lsr #12
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r3, #1
	strb r3, [r4, #0x82c]
	mov r1, r1, asr #0xc
	add r0, r4, #0x800
	strh r1, [r0, #0x28]
	ldr r1, [r4, #0x7f8]
	mov r3, #0
	cmp r1, ip, asr #12
	ldmia sp!, {r3, r4, r5, pc}
	add r2, r1, #1
	str r2, [r4, #0x7f8]
	ldrsh r1, [r0, #0x2a]
	mov r0, r4
	add r2, r2, #1
	bl func_ov40_0218468c
	add r0, r4, #0x800
	ldrsh r1, [r0, #0x2a]
	cmp r1, #0
	moveq r1, #1
	streqh r1, [r0, #0x2a]
	movne r1, #0
	strneh r1, [r0, #0x2a]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021845dc

	arm_func_start func_ov40_02184680
func_ov40_02184680: ; 0x02184680
	ldr ip, _02184688 ; =func_ov40_0217d35c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02184680
_02184688: .word func_ov40_0217d35c

	arm_func_start func_ov40_0218468c
func_ov40_0218468c: ; 0x0218468c
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr ip, [r5, #0x7f4]
	ldr r4, _02184728 ; =data_ov40_02188200
	mov ip, ip, lsl #0x1
	ldrh ip, [r4, ip]
	mov r6, r1
	mov r4, r3
	cmp r2, ip
	ldmia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	streq r6, [r5, #0x800]
	streq r2, [r5, #0x804]
	beq _021846c8
	bl func_ov40_02184734
_021846c8:
	cmp r4, #0
	bne _021846f0
	add r1, r5, r6, lsl #2
	mov r2, #4
	str r2, [r1, #0x808]
	mov r0, #1
	str r0, [r1, #0x810]
	str r2, [r1, #0x818]
	str r0, [r1, #0x820]
	b _02184708
_021846f0:
	add r0, r5, r6, lsl #2
	mov r1, #1
	str r1, [r0, #0x808]
	str r1, [r0, #0x810]
	str r1, [r0, #0x818]
	str r1, [r0, #0x820]
_02184708:
	cmp r4, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, _0218472c ; =data_027e08e4
	ldr r2, _02184730 ; =func_ov40_021847d8
	mov r3, r5
	mov r1, #1
	blx func_0202f360
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_0218468c
_02184728: .word data_ov40_02188200
_0218472c: .word data_027e08e4
_02184730: .word func_ov40_021847d8

	arm_func_start func_ov40_02184734
func_ov40_02184734: ; 0x02184734
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x104
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0x7f4]
	ldr r3, _021847d4 ; =data_ov40_02188200
	mov r6, r1, lsl #0x1
	ldrh r3, [r3, r6]
	mov r6, r2
	cmp r6, r3
	addge sp, sp, #0x104
	ldmia sp!, {r3, r4, r5, r6, pc}
	add r3, sp, #0x84
	bl func_ov40_021848ec
	ldr r1, [r5, #0x7f4]
	add r3, sp, #4
	mov r0, r5
	mov r2, r6
	bl func_ov40_0218499c
	mvn r0, #0
	blx func_02042190
	mov r3, #0
	mov r6, r0
	str r3, [sp]
	add r1, r5, r4, lsl #2
	ldr r1, [r1, #0x834]
	add r0, sp, #0x84
	mov r2, #0xc000
	blx func_0202d56c
	mov r3, #0
	add r0, r5, r4, lsl #2
	str r3, [sp]
	ldr r1, [r0, #0x83c]
	add r0, sp, #4
	mov r2, #0x200
	blx func_0202d56c
	mov r0, r6
	blx func_02042190
	add sp, sp, #0x104
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02184734
_021847d4: .word data_ov40_02188200

	arm_func_start func_ov40_021847d8
func_ov40_021847d8: ; 0x021847d8
	ldr ip, _021847e8 ; =func_ov40_02184734
	ldr r1, [r0, #0x800]
	ldr r2, [r0, #0x804]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_021847d8
_021847e8: .word func_ov40_02184734

	arm_func_start func_ov40_021847ec
func_ov40_021847ec: ; 0x021847ec
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r6, [r0, #0x808]
	cmp r6, #0
	ble _0218486c
	ldr r7, [r0, #0x818]
	mov r0, #0xc000
	mov r1, r7
	bl func_02002e20
	ldr r2, _021848e4 ; =data_027e0d44
	ldr ip, _021848e8 ; =data_ov40_021881f8
	mov r3, r0
	sub r1, r7, r6
	add r0, r5, r4, lsl #2
	mul r1, r3, r1
	ldr r0, [r0, #0x834]
	ldr lr, [r2]
	ldr ip, [ip, r4, lsl #2]
	add r2, r0, r1
	add r0, lr, ip, lsl #3
	ldr ip, [r0, #8]
	mov r0, #0
	mov ip, ip, lsl #0x10
	add r1, r1, ip, lsr #13
	bl func_02017d30
	add r0, r5, #8
	add r1, r0, #0x800
	ldr r0, [r1, r4, lsl #2]
	sub r0, r0, #1
	str r0, [r1, r4, lsl #2]
_0218486c:
	add r0, r5, r4, lsl #2
	ldr r6, [r0, #0x810]
	cmp r6, #0
	ble _021848dc
	ldr r7, [r0, #0x820]
	mov r0, #0x200
	mov r1, r7
	bl func_02002e20
	ldr r2, _021848e4 ; =data_027e0d44
	ldr ip, _021848e8 ; =data_ov40_021881f8
	mov r3, r0
	sub r1, r7, r6
	add r0, r5, r4, lsl #2
	mul r1, r3, r1
	ldr r0, [r0, #0x83c]
	ldr lr, [r2]
	ldr ip, [ip, r4, lsl #2]
	add r2, r0, r1
	add r0, lr, ip, lsl #3
	ldr ip, [r0, #0xc]
	mov r0, #1
	mov ip, ip, lsl #0x10
	add r1, r1, ip, lsr #13
	bl func_02017d30
	add r1, r5, #0x810
	ldr r0, [r1, r4, lsl #2]
	sub r0, r0, #1
	str r0, [r1, r4, lsl #2]
_021848dc:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_021847ec
_021848e4: .word data_027e0d44
_021848e8: .word data_ov40_021881f8

	arm_func_start func_ov40_021848ec
func_ov40_021848ec: ; 0x021848ec
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _02184984 ; =data_ov40_021892f0
	mov r5, r2
	mov r4, r3
	mov r6, r1
	mov r2, #9
_02184904:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _02184904
	ldr r1, _02184988 ; =data_ov40_02189148
	mov r0, r4
	ldr r1, [r1, r6, lsl #2]
	bl func_0204713c
	ldr r1, _0218498c ; =data_ov40_02189304
	mov r0, r4
	bl func_0204713c
	ldr r1, _02184988 ; =data_ov40_02189148
	mov r0, r4
	ldr r1, [r1, r6, lsl #2]
	bl func_0204713c
	ldr r1, _02184990 ; =data_ov40_02189308
	mov r0, r4
	bl func_0204713c
	ldr r1, _02184994 ; =data_ov40_02189154
	mov r0, #0x28
	mla r0, r6, r0, r1
	ldr r1, [r0, r5, lsl #2]
	mov r0, r4
	bl func_0204713c
	ldr r1, _02184998 ; =data_ov40_0218930c
	mov r0, r4
	bl func_0204713c
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_021848ec
_02184984: .word data_ov40_021892f0
_02184988: .word data_ov40_02189148
_0218498c: .word data_ov40_02189304
_02184990: .word data_ov40_02189308
_02184994: .word data_ov40_02189154
_02184998: .word data_ov40_0218930c

	arm_func_start func_ov40_0218499c
func_ov40_0218499c: ; 0x0218499c
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _02184a34 ; =data_ov40_02189314
	mov r5, r2
	mov r4, r3
	mov r6, r1
	mov r2, #9
_021849b4:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _021849b4
	ldr r1, _02184a38 ; =data_ov40_02189148
	mov r0, r4
	ldr r1, [r1, r6, lsl #2]
	bl func_0204713c
	ldr r1, _02184a3c ; =data_ov40_02189328
	mov r0, r4
	bl func_0204713c
	ldr r1, _02184a38 ; =data_ov40_02189148
	mov r0, r4
	ldr r1, [r1, r6, lsl #2]
	bl func_0204713c
	ldr r1, _02184a40 ; =data_ov40_0218932c
	mov r0, r4
	bl func_0204713c
	ldr r1, _02184a44 ; =data_ov40_02189154
	mov r0, #0x28
	mla r0, r6, r0, r1
	ldr r1, [r0, r5, lsl #2]
	mov r0, r4
	bl func_0204713c
	ldr r1, _02184a48 ; =data_ov40_02189330
	mov r0, r4
	bl func_0204713c
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_0218499c
_02184a34: .word data_ov40_02189314
_02184a38: .word data_ov40_02189148
_02184a3c: .word data_ov40_02189328
_02184a40: .word data_ov40_0218932c
_02184a44: .word data_ov40_02189154
_02184a48: .word data_ov40_02189330

	arm_func_start func_ov40_02184a4c
func_ov40_02184a4c: ; 0x02184a4c
	stmdb sp!, {r3, lr}
	ldr r1, _02184a78 ; =data_027e0fe0
	ldr r0, _02184a7c ; =0x00001b94
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_02184cdc
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02184a4c
_02184a78: .word data_027e0fe0
_02184a7c: .word 0x00001b94

	arm_func_start func_ov40_02184a80
func_ov40_02184a80: ; 0x02184a80
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, [r1, #0x38]
	str r0, [sp]
	add r4, r1, r4
	str r4, [r0, #8]
	ldr r0, [r1, #0x2c]
	mov r6, r2
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0xd
	ldr r0, [sp]
	ldrh sl, [sp, #0x34]
	str r2, [r0, #0x18]
	ldrh r1, [r1, #0x30]
	ldr r2, [r0, #0x14]
	str r3, [sp, #4]
	mov r0, r1, lsl #0x3
	str r0, [sp, #8]
	cmp r2, r1, lsl #3
	strlo r2, [sp, #8]
	ldr r0, [sp, #8]
	and r3, sl, #0x3e0
	cmp r0, r2
	movlo r1, r0
	ldrlo r0, [sp]
	and r2, sl, #0x7c00
	strlo r1, [r0, #0x14]
	ldr r1, [sp, #8]
	mov r5, r2, asr #0xa
	ldr r2, [sp]
	mov sb, r1, lsr #0x1
	and r1, sl, #0x1f
	add r1, r1, #0x1f
	mov r0, #0x1f000
	mov r1, r1, lsl #0xc
	mov r4, r3, asr #0x5
	ldr r7, [r2, #8]
	ldr r8, [r2, #0xc]
	bl func_01ff98e0
	mul r1, r6, r0
	add r1, r1, #0x800
	add r0, r4, #0x1f
	mov fp, r1, asr #0xc
	mov r1, r0, lsl #0xc
	mov r0, #0x1f000
	bl func_01ff98e0
	ldr r1, [sp, #4]
	mul r0, r1, r0
	add r0, r0, #0x800
	add r1, r5, #0x1f
	mov r6, r0, asr #0xc
	mov r0, #0x1f000
	mov r1, r1, lsl #0xc
	bl func_01ff98e0
	ldr r3, [sp, #0x30]
	mov r1, sl, lsl #0x1b
	mul r0, r3, r0
	add r0, r0, #0x800
	cmp sb, #0
	mov r2, #0
	mov lr, r0, asr #0xc
	ble _02184bf0
_02184b78:
	ldrh sl, [r7]
	add r2, r2, #1
	add r7, r7, #2
	mov r0, sl, asr #0xa
	and r3, r0, #0x1f
	and r0, sl, #0x1f
	mov sl, sl, asr #0x5
	and sl, sl, #0x1f
	add r0, r0, sl
	add sl, r3, r0
	mul r0, sl, fp
	add r0, r0, r1, lsr #15
	mov r3, r0, asr #0xc
	mul r0, sl, r6
	add r0, r0, r4, lsl #12
	mov ip, r0, asr #0xc
	mul r0, sl, lr
	add r0, r0, r5, lsl #12
	cmp r3, #0x1f
	movgt r3, #0x1f
	cmp ip, #0x1f
	movgt ip, #0x1f
	mov r0, r0, asr #0xc
	cmp r0, #0x1f
	movgt r0, #0x1f
	orr r3, r3, ip, lsl #5
	orr r0, r3, r0, lsl #10
	strh r0, [r8], #2
	cmp r2, sb
	blt _02184b78
_02184bf0:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0xc]
	bl func_0200e2a4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov40_02184a80

	arm_func_start func_ov40_02184c08
func_ov40_02184c08: ; 0x02184c08
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r1, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r1, [r4, #4]
	ldr r0, [r4, #0x14]
	ldr ip, [r4, #8]
	mov fp, r0, lsr #0x1
	cmp fp, #0
	ldr lr, [r4, #0xc]
	ldr r5, [r4, #0x10]
	mov r6, #0
	ble _02184cb8
_02184c44:
	ldrh r7, [lr], #2
	ldrh r3, [ip], #2
	ldr r2, [r4]
	and r0, r7, #0x3e0
	mov r0, r0, asr #0x5
	and r1, r7, #0x7c00
	mov r1, r1, asr #0xa
	and sb, r7, #0x1f
	mul r7, r0, r2
	and r8, r3, #0x3e0
	and sl, r3, #0x7c00
	mul r0, r1, r2
	add r6, r6, #1
	mov r1, sl, asr #0xa
	and sl, r3, #0x1f
	mul r3, sb, r2
	rsb r2, r2, #0x1000
	mla r0, r1, r2, r0
	mov r1, r8, asr #0x5
	mla r7, r1, r2, r7
	mov r1, r7, asr #0xc
	mla r2, sl, r2, r3
	mov r1, r1, lsl #0x5
	mov r3, r0, asr #0xc
	orr r0, r1, r2, asr #12
	orr r0, r0, r3, lsl #10
	cmp r6, fp
	strh r0, [r5], #2
	blt _02184c44
_02184cb8:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl func_0200e2a4
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	mov r0, #1
	bl func_02017d30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end func_ov40_02184c08

	arm_func_start func_ov40_02184cdc
func_ov40_02184cdc: ; 0x02184cdc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217bf30
	ldr r2, _02184d28 ; =data_ov40_02189380
	add r0, r4, #0x14
	add r1, r4, #0x1d4
	str r2, [r4]
	mov r2, #0
	str r2, [r4, #0x7f4]
	str r2, [r4, #0x7f8]
	str r2, [r4, #0x7fc]
	add r0, r0, #0x800
	str r0, [r4, #0x804]
	add r0, r1, #0x1000
	str r0, [r4, #0x808]
	mov r1, #0x9c0
	mov r0, r4
	str r1, [r4, #0x80c]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02184cdc
_02184d28: .word data_ov40_02189380

	arm_func_start func_ov40_02184d2c
func_ov40_02184d2c: ; 0x02184d2c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217c20c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02184d2c

	arm_func_start func_ov40_02184d40
func_ov40_02184d40: ; 0x02184d40
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217c20c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02184d40

	arm_func_start func_ov40_02184d5c
func_ov40_02184d5c: ; 0x02184d5c
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl func_ov40_0217c2b8
	ldr r1, _02184dac ; =0x00000333
	ldr r3, _02184db0 ; =0x00001610
	str r1, [sp]
	mov r2, #0x800
	ldr r1, _02184db4 ; =data_027e0fec
	str r3, [sp, #4]
	ldr r1, [r1]
	add ip, r4, #0x3f8
	mov r4, r0
	ldr r1, [r1, #0xc10]
	mov r3, r2
	add r0, ip, #0x400
	bl func_ov40_02184a80
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02184d5c
_02184dac: .word 0x00000333
_02184db0: .word 0x00001610
_02184db4: .word data_027e0fec

	arm_func_start func_ov40_02184db8
func_ov40_02184db8: ; 0x02184db8
	ldr ip, _02184dc0 ; =func_ov40_0217d368
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02184db8
_02184dc0: .word func_ov40_0217d368

	arm_func_start func_ov40_02184dc4
func_ov40_02184dc4: ; 0x02184dc4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217d40c
	add r0, r4, #0x3f8
	add r0, r0, #0x400
	bl func_ov40_02184c08
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02184dc4

	arm_func_start func_ov40_02184de0
func_ov40_02184de0: ; 0x02184de0
	ldr ip, _02184de8 ; =func_ov40_0217d2a0
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02184de0
_02184de8: .word func_ov40_0217d2a0

	arm_func_start func_ov40_02184dec
func_ov40_02184dec: ; 0x02184dec
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r5, r1
	bl func_ov40_0217d2fc
	ldr r3, _02184e44 ; =0x0000318c
	mov r2, #0x800
	stmia sp!, {r2, r3}
	ldr r1, _02184e48 ; =data_027e0fec
	add r0, r4, #0x3f8
	ldr r1, [r1]
	mov r3, r2
	ldr r1, [r1, #0xc10]
	add r0, r0, #0x400
	bl func_ov40_02184a80
	ldr r0, [r4, #0x7f4]
	str r0, [r4, #0x7fc]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x7f4]
	str r0, [r4, #0x7f8]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02184dec
_02184e44: .word 0x0000318c
_02184e48: .word data_027e0fec

	arm_func_start func_ov40_02184e4c
func_ov40_02184e4c: ; 0x02184e4c
	ldr ip, _02184e54 ; =func_ov40_0217d35c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02184e4c
_02184e54: .word func_ov40_0217d35c

	arm_func_start func_ov40_02184e58
func_ov40_02184e58: ; 0x02184e58
	stmdb sp!, {r3, lr}
	ldr r1, _02184e84 ; =data_027e0fe0
	mov r0, #0x208
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_02184e88
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02184e58
_02184e84: .word data_027e0fe0

	arm_func_start func_ov40_02184e88
func_ov40_02184e88: ; 0x02184e88
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r1, _02184f28 ; =data_ov40_02189460
	ldr r0, _02184f2c ; =data_027e0fec
	str r1, [r4]
	ldr r0, [r0]
	add r0, r0, #0x98
	add r0, r0, #0x3c00
	bl func_ov00_020c4588
	mov r1, r0
	add r0, r4, #0x158
	blx func_ov00_020a9588
	add r0, r4, #0x1b4
	add r1, r4, #0x1d8
	mov r2, #0
	blx func_ov00_020c0c08
	ldr r1, _02184f30 ; =data_ov40_02189128
	add r0, r4, #0x158
	str r1, [r4, #0x1b4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r0, [r4, #0x1bc]
	ldr r0, _02184f34 ; =data_ov40_02189440
	blx func_02016fe8
	ldr r1, _02184f38 ; =data_ov40_0218820c
	bl func_0201e544
	mov r1, r0
	add r0, r4, #0x1b4
	mov r2, #0
	mov r3, r2
	bl func_ov00_020c0cc8
	add r0, r4, #0x158
	add r1, r4, #0x1b4
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02184e88
_02184f28: .word data_ov40_02189460
_02184f2c: .word data_027e0fec
_02184f30: .word data_ov40_02189128
_02184f34: .word data_ov40_02189440
_02184f38: .word data_ov40_0218820c

	arm_func_start func_ov40_02184f3c
func_ov40_02184f3c: ; 0x02184f3c
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1b4
	blx func_ov00_020a9aec
	add r0, r4, #0x158
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02184f3c

	arm_func_start func_ov40_02184f64
func_ov40_02184f64: ; 0x02184f64
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1b4
	blx func_ov00_020a9aec
	add r0, r4, #0x158
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02184f64

	arm_func_start func_ov40_02184f94
func_ov40_02184f94: ; 0x02184f94
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c313c
	cmp r0, #0
	ldmia sp!, {r4, pc}
	add r0, r4, #0x1b4
	bl func_ov00_020c0e04
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02184f94

	arm_func_start func_ov40_02184fb4
func_ov40_02184fb4: ; 0x02184fb4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x7c]
	str r0, [r4, #0x80]
	str r0, [r4, #0x84]
	str r0, [r4, #0x88]
	ldr r1, [r4, #0x7c]
	ldr r0, _02185028 ; =data_027e0e60
	str r1, [r4, #0x8c]
	ldr r2, [r4, #0x80]
	add r1, sp, #0xc
	str r2, [r4, #0x90]
	ldr r2, [r4, #0x84]
	str r2, [r4, #0x94]
	ldr r2, [r4, #0x88]
	str r2, [r4, #0x98]
	ldr r0, [r0]
	bl func_ov00_0208344c
	ldr r1, [sp, #0xc]
	mov r0, #1
	str r1, [r4, #0x48]
	ldr r1, [sp, #0x10]
	str r1, [r4, #0x4c]
	ldr r1, [sp, #0x14]
	str r1, [r4, #0x50]
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02184fb4
_02185028: .word data_027e0e60

	arm_func_start func_ov40_0218502c
func_ov40_0218502c: ; 0x0218502c
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0218502c

	arm_func_start func_ov40_02185040
func_ov40_02185040: ; 0x02185040
	stmdb sp!, {r3, lr}
	mov r1, r0
	add r0, r1, #0x158
	ldr r2, [r0]
	add r1, r1, #0x48
	ldr r2, [r2, #0x18]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_02185040

	arm_func_start func_ov40_02185060
func_ov40_02185060: ; 0x02185060
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	blx func_ov04_0210f4c8
	ldr r1, _0218513c ; =data_ov40_02189530
	ldr r0, _02185140 ; =data_027e0d38
	str r1, [r4]
	ldr r0, [r0]
	mov r5, #0
	bl func_ov00_02078b88
	cmp r0, #0
	beq _021850a0
	ldr r0, _02185140 ; =data_027e0d38
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	cmp r0, #0x14
	moveq r5, #1
_021850a0:
	cmp r5, #0
	beq _021850cc
	ldr r1, _02185144 ; =data_027e0ce0
	ldr r0, _02185148 ; =0x0000ad68
	ldr r1, [r1, #4]
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	beq _021850d0
	bl func_ov40_02185ce0
	b _021850d0
_021850cc:
	mov r0, #0
_021850d0:
	ldr r1, _02185140 ; =data_027e0d38
	str r0, [r4, #8]
	ldr r0, [r1]
	ldr r0, [r0, #0x18]
	cmp r0, #0x15
	bne _0218510c
	ldr r1, _02185144 ; =data_027e0ce0
	mov r0, #0x10
	ldr r1, [r1, #4]
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	beq _02185110
	bl func_ov40_0218764c
	b _02185110
_0218510c:
	mov r0, #0
_02185110:
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _02185124
	bl func_ov40_02187b60
	b _02185134
_02185124:
	ldr r0, _0218514c ; =data_027e0cbc
	mov r1, #0x1d
	mov r2, #0
	bl func_ov03_020fa874
_02185134:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02185060
_0218513c: .word data_ov40_02189530
_02185140: .word data_027e0d38
_02185144: .word data_027e0ce0
_02185148: .word 0x0000ad68
_0218514c: .word data_027e0cbc

	arm_func_start func_ov40_02185150
func_ov40_02185150: ; 0x02185150
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0218519c ; =data_ov40_02189530
	mov r5, r0
	str r1, [r5]
	ldr r0, [r5, #0xc]
	bl func_0202ea0c
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02185184
	mov r0, r4
	blx func_02032f94
	mov r0, r4
	bl func_0202ea0c
_02185184:
	mov r0, r5
	blx func_ov04_0210f4e4
	mov r0, r5
	bl func_0202ea0c
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02185150
_0218519c: .word data_ov40_02189530

	arm_func_start func_ov40_021851a0
func_ov40_021851a0: ; 0x021851a0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _021851e4 ; =data_ov40_02189530
	mov r5, r0
	str r1, [r5]
	ldr r0, [r5, #0xc]
	bl func_0202ea0c
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _021851d4
	mov r0, r4
	blx func_02032f94
	mov r0, r4
	bl func_0202ea0c
_021851d4:
	mov r0, r5
	blx func_ov04_0210f4e4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_021851a0
_021851e4: .word data_ov40_02189530

	arm_func_start func_ov40_021851e8
func_ov40_021851e8: ; 0x021851e8
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_0210f4e8
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	bl func_ov40_02185d54
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021851e8

	arm_func_start func_ov40_02185208
func_ov40_02185208: ; 0x02185208
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl func_ov00_020d1064
	cmp r0, #0
	movne r4, #1
	ldr r0, [r5, #0xc]
	moveq r4, #0
	cmp r0, #0
	beq _0218523c
	bl func_ov40_02187788
	orrs r0, r4, r0
	movne r4, #1
	moveq r4, #0
_0218523c:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02185208

	arm_func_start func_ov40_02185244
func_ov40_02185244: ; 0x02185244
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl func_ov00_020d1070
	cmp r0, #0
	movne r4, #1
	ldr r0, [r5, #0xc]
	moveq r4, #0
	cmp r0, #0
	beq _02185278
	bl func_ov40_021877f4
	orrs r0, r4, r0
	movne r4, #1
	moveq r4, #0
_02185278:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02185244

	arm_func_start func_ov40_02185280
func_ov40_02185280: ; 0x02185280
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d105c
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021852a4
	mov r1, r4
	bl func_ov40_02185e20
_021852a4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r1, r4
	bl func_ov40_02187860
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02185280

	arm_func_start func_ov40_021852bc
func_ov40_021852bc: ; 0x021852bc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d1088
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r1, r4
	bl func_ov40_02187b00
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021852bc

	arm_func_start func_ov40_021852e4
func_ov40_021852e4: ; 0x021852e4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d1084
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r1, r4
	bl func_ov40_02186154
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021852e4

	arm_func_start func_ov40_0218530c
func_ov40_0218530c: ; 0x0218530c
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov09_0211cb88
	ldr r1, _021853b4 ; =data_ov40_02189594
	ldr r0, _021853b8 ; =data_027e0d38
	str r1, [r4]
	ldr r0, [r0]
	bl func_ov00_02078b40
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021853ac
_02185338: ; jump table
	b _02185348 ; case 0
	b _0218535c ; case 1
	b _0218539c ; case 2
	b _0218535c ; case 3
_02185348:
	ldr r0, _021853bc ; =data_027e0cbc
	mov r1, #0x1e
	mov r2, #0
	bl func_ov03_020fa874
	b _021853ac
_0218535c:
	ldr r0, _021853b8 ; =data_027e0d38
	ldr r0, [r0]
	add r0, r0, #0xc
	bl func_ov00_020a5e9c
	cmp r0, #0x29
	cmpne r0, #0x30
	mov r2, #0
	bne _0218538c
	ldr r0, _021853bc ; =data_027e0cbc
	mov r1, #0x20
	bl func_ov03_020fa874
	b _021853ac
_0218538c:
	ldr r0, _021853bc ; =data_027e0cbc
	mov r1, #0x1f
	bl func_ov03_020fa874
	b _021853ac
_0218539c:
	ldr r0, _021853bc ; =data_027e0cbc
	mov r1, #0x21
	mov r2, #0
	bl func_ov03_020fa874
_021853ac:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_0218530c
_021853b4: .word data_ov40_02189594
_021853b8: .word data_027e0d38
_021853bc: .word data_027e0cbc

	arm_func_start func_ov40_021853c0
func_ov40_021853c0: ; 0x021853c0
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov09_0211cc40
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021853c0

	arm_func_start func_ov40_021853dc
func_ov40_021853dc: ; 0x021853dc
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov09_0211cc40
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021853dc

	arm_func_start func_ov40_021853f0
func_ov40_021853f0: ; 0x021853f0
	stmdb sp!, {r3, lr}
	ldr r1, _0218541c ; =data_027e0fe0
	ldr r0, _02185420 ; =0x00000808
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_02185424
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021853f0
_0218541c: .word data_027e0fe0
_02185420: .word 0x00000808

	arm_func_start func_ov40_02185424
func_ov40_02185424: ; 0x02185424
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217bf30
	ldr r2, _02185460 ; =data_ov40_02189638
	mov r1, #0
	ldr r0, _02185464 ; =data_ov09_0211f530
	str r2, [r4]
	ldr r0, [r0, #4]
	mov r2, r1
	str r0, [r4, #0x7f4]
	strb r1, [r4, #0x7f8]
	ldr r0, [r4, #0x7f4]
	bl func_ov09_021154e8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02185424
_02185460: .word data_ov40_02189638
_02185464: .word data_ov09_0211f530

	arm_func_start func_ov40_02185468
func_ov40_02185468: ; 0x02185468
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217c20c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02185468

	arm_func_start func_ov40_0218547c
func_ov40_0218547c: ; 0x0218547c
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217c20c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0218547c

	arm_func_start func_ov40_02185498
func_ov40_02185498: ; 0x02185498
	ldrh r1, [r0, #0x20]
	mov ip, #0x1000
	mov r2, #0
	str r1, [r0, #0x1b8]
	str r1, [r0, #0x1bc]
	ldr r3, [r0, #0x7f4]
	mov r1, #0x1800
	ldr r3, [r3, #0x1c]
	str r3, [r0, #0x158]
	ldr r3, [r0, #0x7f4]
	str ip, [r3, #0xc]
	str r2, [r0, #0x7c]
	str r1, [r0, #0x80]
	str r2, [r0, #0x84]
	str r1, [r0, #0x88]
	mov r0, #1
	bx lr
	arm_func_end func_ov40_02185498

	arm_func_start func_ov40_021854dc
func_ov40_021854dc: ; 0x021854dc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov40_0217d368
	mov r0, r5
	mov r1, r4
	bl func_ov00_020c313c
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x7f4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_021854dc

	arm_func_start func_ov40_02185514
func_ov40_02185514: ; 0x02185514
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x78
	mov r5, r0
	ldrb r0, [r5, #0x1c4]
	cmp r0, #0
	addeq sp, sp, #0x78
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r5, #0x78]
	ldr r3, _02185628 ; =data_02050f54
	add r0, sp, #0x54
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	add r1, r2, #1
	mov r4, r2, lsl #0x1
	mov r2, r1, lsl #0x1
	ldrsh r1, [r3, r4]
	ldrsh r2, [r3, r2]
	blx func_01ff8214
	ldr r0, [r5, #0x7f4]
	add r1, sp, #0x54
	ldr r4, [r0]
	add r2, r5, #0x48
	ldr r4, [r4, #0xc]
	mov r3, #0
	blx r4
	ldrb r0, [r5, #0x7f8]
	cmp r0, #0
	addne sp, sp, #0x78
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0x7f4]
	add r3, sp, #0
	ldr r0, [r0, #0x2c]
	add r7, sp, #0x18
	add r0, r0, #0x68
	ldmia r0!, {r0, r1, r2}
	stmia r3!, {r0, r1, r2}
	ldr r0, [r5, #0x7f4]
	ldr r4, [sp]
	ldr r0, [r0, #0x1c]
	ldr lr, [sp, #4]
	add r8, r0, #0x3f8
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x44]
	ldr ip, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	add r6, r5, #0x3fc
	add r0, r6, #0x400
	str r4, [r5, #0x7fc]
	str lr, [r5, #0x800]
	mov r2, r0
	add r1, sp, #0xc
	str r4, [sp, #0x48]
	str lr, [sp, #0x4c]
	str ip, [sp, #0x50]
	str ip, [r5, #0x804]
	bl func_01ff9bf8
	mov r0, #1
	strb r0, [r5, #0x7f8]
	add sp, sp, #0x78
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov40_02185514
_02185628: .word data_02050f54

	arm_func_start func_ov40_0218562c
func_ov40_0218562c: ; 0x0218562c
	ldr ip, _02185634 ; =func_ov40_0217d2a0
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0218562c
_02185634: .word func_ov40_0217d2a0

	arm_func_start func_ov40_02185638
func_ov40_02185638: ; 0x02185638
	ldr ip, _02185640 ; =func_ov40_0217d2fc
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02185638
_02185640: .word func_ov40_0217d2fc

	arm_func_start func_ov40_02185644
func_ov40_02185644: ; 0x02185644
	ldr ip, _0218564c ; =func_ov40_0217d35c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02185644
_0218564c: .word func_ov40_0217d35c

	arm_func_start func_ov40_02185650
func_ov40_02185650: ; 0x02185650
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _021856b4 ; =data_ov40_0218821c
	mov r7, r0
	mov r6, r1
	mov r4, #0
_02185664:
	mov r0, r6
	mov r1, r5
	bl func_0204716c
	cmp r0, #0
	ldreq r0, _021856b8 ; =data_ov40_0218822c
	ldreq r0, [r0, r4, lsl #2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
	cmp r4, #1
	add r5, r5, #0x10
	blt _02185664
	ldr r0, [r7, #0x7f4]
	ldr r0, [r0, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, r6
	add r0, r0, #0x40
	bl func_0201e388
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_02185650
_021856b4: .word data_ov40_0218821c
_021856b8: .word data_ov40_0218822c

	arm_func_start func_ov40_021856bc
func_ov40_021856bc: ; 0x021856bc
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x70
	ldr r3, _0218578c ; =data_ov40_0218821c
	mov r5, r0
	ldr r0, [r3, #0x10]
	mov r4, r2
	cmp r1, r0
	bne _02185754
	add r0, r5, #0x3fc
	add r0, r0, #0x400
	add r3, sp, #0x64
	ldmia r0!, {r0, r1, r2}
	stmia r3!, {r0, r1, r2}
	add r0, sp, #0x34
	bl func_01ff892c
	ldr r1, [sp, #0x6c]
	add r0, sp, #0x34
	str r1, [sp]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x68]
	mov r1, r0
	bl func_01ff8988
	ldr r0, [r5, #0x7f4]
	add ip, sp, #4
	ldr r0, [r0, #0x1c]
	mov r5, ip
	add lr, r0, #0x3f8
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	mov r0, r5
	mov r2, r4
	add r1, sp, #0x34
	bl func_01ff8e84
	b _02185780
_02185754:
	ldr r2, [r5, #0x7f4]
	mov r0, #0x30
	ldr r2, [r2, #0x1c]
	mla r0, r1, r0, r2
	add r5, r0, #0x2a8
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
_02185780:
	mov r0, #1
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_021856bc
_0218578c: .word data_ov40_0218821c

	arm_func_start func_ov40_02185790
func_ov40_02185790: ; 0x02185790
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [r0]
	mov r5, r0
	ldr r3, [r3, #0xb4]
	mov r4, r2
	blx r3
	mov r1, r0
	mov r0, r5
	ldr r3, [r0]
	mov r1, r1, lsl #0x10
	ldr r3, [r3, #0xb8]
	mov r2, r4
	mov r1, r1, lsr #0x10
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02185790

	arm_func_start func_ov40_021857cc
func_ov40_021857cc: ; 0x021857cc
	stmdb sp!, {r3, lr}
	ldr r1, _021857f8 ; =data_027e0fe0
	mov r0, #0x15c
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_021857fc
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021857cc
_021857f8: .word data_027e0fe0

	arm_func_start func_ov40_021857fc
func_ov40_021857fc: ; 0x021857fc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r0, _02185820 ; =data_ov40_02189700
	mvn r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x158]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021857fc
_02185820: .word data_ov40_02189700

	arm_func_start func_ov40_02185824
func_ov40_02185824: ; 0x02185824
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02185824

	arm_func_start func_ov40_02185838
func_ov40_02185838: ; 0x02185838
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1730
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02185838

	arm_func_start func_ov40_02185854
func_ov40_02185854: ; 0x02185854
	ldr ip, _0218585c ; =func_ov00_020c1734
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02185854
_0218585c: .word func_ov00_020c1734

	arm_func_start func_ov40_02185860
func_ov40_02185860: ; 0x02185860
	ldr ip, _02185868 ; =func_ov00_020c17b8
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02185860
_02185868: .word func_ov00_020c17b8

	arm_func_start func_ov40_0218586c
func_ov40_0218586c: ; 0x0218586c
	ldr ip, _02185874 ; =func_ov00_020c1b6c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0218586c
_02185874: .word func_ov00_020c1b6c

	arm_func_start func_ov40_02185878
func_ov40_02185878: ; 0x02185878
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r0
	bl func_ov00_020c1bb4
	ldr r3, [r4, #0x14]
	ldr r2, [r6, #0x158]
	mov r0, r3, asr #0x10
	mov r1, r0, lsl #0x10
	mov r0, r3, lsl #0x10
	mov r5, r0, asr #0x10
	mov r4, r1, asr #0x10
	cmp r2, r1, asr #16
	ldmia sp!, {r4, r5, r6, pc}
	cmp r4, #7
	beq _021858c8
	cmp r4, #8
	beq _021859ec
	cmp r4, #0xc
	beq _02185b10
	b _02185b38
_021858c8:
	ldr r0, _02185b40 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020846a4
	sub r0, r0, #0xd
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021859c0
_021858e4: ; jump table
	b _021858f4 ; case 0
	b _021858f4 ; case 1
	b _02185994 ; case 2
	b _02185994 ; case 3
_021858f4:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xd
	bl func_ov00_02082650
	ldr r0, _02185b44 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097c08
	sub r0, r0, #0x13
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0218597c
_02185924: ; jump table
	b _02185964 ; case 0
	b _0218597c ; case 1
	b _0218597c ; case 2
	b _0218597c ; case 3
	b _0218597c ; case 4
	b _0218594c ; case 5
	b _0218597c ; case 6
	b _0218594c ; case 7
	b _0218594c ; case 8
	b _02185964 ; case 9
_0218594c:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x2b
	bl func_ov00_02082660
	b _02185b38
_02185964:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x2c
	bl func_ov00_02082660
	b _02185b38
_0218597c:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x1d
	bl func_ov00_02082660
	b _02185b38
_02185994:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xf
	bl func_ov00_02082650
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #4
	bl func_ov00_02082660
	b _02185b38
_021859c0:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #6
	bl func_ov00_02082650
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #4
	bl func_ov00_02082660
	b _02185b38
_021859ec:
	ldr r0, _02185b40 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020846a4
	sub r0, r0, #0xd
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02185ae4
_02185a08: ; jump table
	b _02185a18 ; case 0
	b _02185a18 ; case 1
	b _02185ab8 ; case 2
	b _02185ab8 ; case 3
_02185a18:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xe
	bl func_ov00_02082650
	ldr r0, _02185b44 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097c08
	sub r0, r0, #0x13
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02185aa0
_02185a48: ; jump table
	b _02185a88 ; case 0
	b _02185aa0 ; case 1
	b _02185aa0 ; case 2
	b _02185aa0 ; case 3
	b _02185aa0 ; case 4
	b _02185a70 ; case 5
	b _02185aa0 ; case 6
	b _02185a70 ; case 7
	b _02185a70 ; case 8
	b _02185a88 ; case 9
_02185a70:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x25
	bl func_ov00_02082660
	b _02185b38
_02185a88:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x2d
	bl func_ov00_02082660
	b _02185b38
_02185aa0:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x25
	bl func_ov00_02082660
	b _02185b38
_02185ab8:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0x10
	bl func_ov00_02082650
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #2
	bl func_ov00_02082660
	b _02185b38
_02185ae4:
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #2
	bl func_ov00_02082650
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #2
	bl func_ov00_02082660
	b _02185b38
_02185b10:
	ldr r0, _02185b40 ; =data_027e0e60
	ldr r0, [r0]
	bl func_ov00_020846a4
	cmp r0, #0xe
	bne _02185b38
	ldr r0, _02185b40 ; =data_027e0e60
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xe
	bl func_ov00_02082670
_02185b38:
	str r4, [r6, #0x158]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02185878
_02185b40: .word data_027e0e60
_02185b44: .word data_027e0f74

	arm_func_start func_ov40_02185b48
func_ov40_02185b48: ; 0x02185b48
	ldr ip, _02185b50 ; =func_ov00_020c1bf8
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02185b48
_02185b50: .word func_ov00_020c1bf8

	arm_func_start func_ov40_02185b54
func_ov40_02185b54: ; 0x02185b54
	cmp r0, #0
	bgt _02185ba0
	bge _02185be8
	ldr r2, _02185c08 ; =0x80004000
	cmp r0, r2
	bgt _02185b7c
	bge _02185bf8
	cmp r0, #0x80000000
	beq _02185bf8
	b _02185c00
_02185b7c:
	add r1, r2, #0x4000
	cmp r0, r1
	bgt _02185b90
	beq _02185bf0
	b _02185c00
_02185b90:
	ldr r1, _02185c0c ; =0xc0008000
	cmp r0, r1
	beq _02185bf8
	b _02185c00
_02185ba0:
	cmp r0, #0x40000000
	bgt _02185bc8
	bge _02185bf0
	cmp r0, #0x4000
	bgt _02185bbc
	beq _02185bf0
	b _02185c00
_02185bbc:
	cmp r0, #0x8000
	beq _02185be8
	b _02185c00
_02185bc8:
	ldr r1, _02185c10 ; =0x40004000
	cmp r0, r1
	bgt _02185bdc
	beq _02185bf8
	b _02185c00
_02185bdc:
	add r1, r1, #0x4000
	cmp r0, r1
	bne _02185c00
_02185be8:
	mov r0, #8
	bx lr
_02185bf0:
	mov r0, #0x10
	bx lr
_02185bf8:
	mov r0, #0x20
	bx lr
_02185c00:
	mov r0, #0x40
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02185b54
_02185c08: .word 0x80004000
_02185c0c: .word 0xc0008000
_02185c10: .word 0x40004000

	arm_func_start func_ov40_02185c14
func_ov40_02185c14: ; 0x02185c14
	cmp r0, #0
	bgt _02185c60
	bge _02185cac
	ldr r2, _02185ccc ; =0x80004000
	cmp r0, r2
	bgt _02185c3c
	bge _02185cb4
	cmp r0, #0x80000000
	beq _02185cbc
	b _02185cc4
_02185c3c:
	add r1, r2, #0x4000
	cmp r0, r1
	bgt _02185c50
	beq _02185cbc
	b _02185cc4
_02185c50:
	sub r1, r2, #0xc0000000
	cmp r0, r1
	beq _02185cbc
	b _02185cc4
_02185c60:
	cmp r0, #0x40000000
	bgt _02185c88
	bge _02185cb4
	cmp r0, #0x4000
	bgt _02185c7c
	beq _02185cac
	b _02185cc4
_02185c7c:
	cmp r0, #0x8000
	beq _02185cb4
	b _02185cc4
_02185c88:
	ldr r1, _02185cd0 ; =0x40004000
	cmp r0, r1
	bgt _02185c9c
	beq _02185cac
	b _02185cc4
_02185c9c:
	add r1, r1, #0x4000
	cmp r0, r1
	beq _02185cbc
	b _02185cc4
_02185cac:
	mov r0, #8
	bx lr
_02185cb4:
	mov r0, #0x10
	bx lr
_02185cbc:
	mov r0, #0x20
	bx lr
_02185cc4:
	mov r0, #0x40
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02185c14
_02185ccc: .word 0x80004000
_02185cd0: .word 0x40004000

	arm_func_start func_ov40_02185cd4
func_ov40_02185cd4: ; 0x02185cd4
	ldrsh r0, [r0]
	add r0, r0, #0x200000
	bx lr
	arm_func_end func_ov40_02185cd4

	arm_func_start func_ov40_02185ce0
func_ov40_02185ce0: ; 0x02185ce0
	stmdb sp!, {r4, lr}
	mov r1, #0xff
	mov r4, r0
	blx func_02032d18
	ldr r1, _02185d3c ; =data_ov40_02189800
	mov r0, #2
	str r1, [r4]
	strb r0, [r4, #0x4d]
	add r3, r4, #0xa000
	mov r0, #0
	str r0, [r3, #0xd54]
	str r0, [r3, #0xd58]
	add r1, r4, #0x54
	mov r2, #0x9800
	str r0, [r3, #0xd5c]
	bl func_020078f4
	add r0, r4, #0x54
	add r1, r0, #0x9800
	mov r0, #0
	mov r2, #0x1500
	bl func_020078f4
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02185ce0
_02185d3c: .word data_ov40_02189800

	arm_func_start func_ov40_02185d40
func_ov40_02185d40: ; 0x02185d40
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_02032f94
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02185d40

	arm_func_start func_ov40_02185d54
func_ov40_02185d54: ; 0x02185d54
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bl func_02004e4c
	mov r1, r0
	mov r0, #0
	mov r2, #0x980
	bl func_020078f4
	add r1, r4, #0x54
	mov r0, #0
	mov r2, #0x9800
	bl func_020078f4
	mov r0, #0
	add r1, r4, #0x54
	add r1, r1, #0x9800
	mov r2, #0x1500
	bl func_020078f4
	ldr r1, _02185e1c ; =data_02068ebc
	mov r0, #0x130
	str r1, [r4, #0x2c]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	add r0, r4, #0x54
	str r0, [sp, #0x14]
	mov r0, r4
	mov r2, r1
	mov r3, #0x100
	bl func_02032d68
	mov r2, #0
	add r0, r4, #0xad00
	strh r2, [r0, #0x60]
	mov r1, #0xa000
	add r0, r4, #0xa000
	str r1, [r0, #0xd64]
	mov r1, #0xd
	strb r1, [r0, #0xd62]
	mov r0, #0x1c
	str r0, [sp]
	mov r0, r4
	add r1, r4, #0x54
	add r1, r1, #0x9800
	mov r3, r2
	bl func_ov40_02186230
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02185d54
_02185e1c: .word data_02068ebc

	arm_func_start func_ov40_02185e20
func_ov40_02185e20: ; 0x02185e20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	cmp r1, #0
	mov sl, r0
	addne sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _0218613c ; =data_027e0c68
	add r0, sl, #0xa000
	ldr r2, [r1, #0x14]
	ldr r1, [r0, #0xd5c]
	ldr r2, [r2]
	cmp r1, #0x8c000
	ldr r2, [r2, #0x384]
	ldr r0, _02186140 ; =0x001fffff
	ldrh r1, [r2, #8]
	add r0, r1, r0
	str r0, [sp, #0x10]
	bge _02185ea0
	add r0, sl, #0xd60
	add r0, r0, #0xa000
	bl func_ov40_02185cd4
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02185e90
	add r0, sl, #0xa000
	ldr r1, [r0, #0xd5c]
	add r1, r1, #0x1000
	str r1, [r0, #0xd5c]
_02185e90:
	add r0, sl, #0xa000
	ldr r1, [r0, #0xd54]
	add r1, r1, #0x1000
	str r1, [r0, #0xd54]
_02185ea0:
	add r5, sl, #0xa000
	ldr r2, [r5, #0xd54]
	ldr r1, [r5, #0xd58]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	mov r2, r0, asr #0xc
	mov r0, r2, asr #0x2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #0x3
	str r0, [sp, #0xc]
	cmp r0, r1
	addeq sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r0, r1
	str r0, [sp, #8]
	cmp r0, #0
	mov fp, #0
	ble _02186128
	ldr r1, _02186144 ; =data_ov40_021897d4
	ldr r4, _02186148 ; =0x00640003
	ldrsh r0, [r1, #0x20]
	add r8, sl, #0x54
	str r0, [sp, #0x14]
	ldrsh r0, [r1, #0x22]
	add r1, sl, #0x164
	add r7, r1, #0xac00
	str r0, [sp, #0x18]
	add r0, sl, #0xd60
	add r6, r0, #0xa000
	sub r0, r4, #2
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	sub r0, r4, #1
	str r0, [sp, #0x1c]
	sub r0, r4, #2
	str r0, [sp, #0x20]
	sub r0, r4, #1
	str r0, [sp, #0x2c]
	sub r0, r4, #2
	str r0, [sp, #0x30]
_02185f40:
	add r0, r8, #0x400
	mov r1, r8
	mov r2, #0x9400
	bl func_02007908
	mov r0, #0
	add r1, r8, #0x9400
	mov r2, #4
	bl func_020078f4
	ldr r0, [r7]
	sub r0, r0, #0x8000
	str r0, [r7]
	ldr r0, [r5, #0xd64]
	cmp r0, #0
	bgt _02186118
	mov r0, r6
	bl func_ov40_02185cd4
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bhs _02186118
	mov r0, r6
	bl func_ov40_02185cd4
	mov r1, r0
	mov r0, sl
	bl func_ov40_021861b0
	mov sb, r0
	ldr r0, [sp, #0x1c]
	cmp sb, r0
	bne _02185fc8
	mov r0, sl
	mov r1, #0x1b
	bl func_ov40_0218646c
	mov r0, #0
	str r0, [r5, #0xd5c]
	b _02186000
_02185fc8:
	mov r0, r6
	bl func_ov40_02185cd4
	ldrb r3, [r5, #0xd62]
	mov r2, #0
	mov r1, r0
	str r3, [sp]
	mov r3, r2
	str r3, [sp, #4]
	ldr r3, [r5, #0xd64]
	mov r0, sl
	add r3, r3, #0x800
	mov r3, r3, asr #0xc
	add r3, r3, #0xd2
	bl func_02033214
_02186000:
	ldrsh r1, [r6]
	mov r0, r6
	add r1, r1, #1
	strh r1, [r6]
	bl func_ov40_02185cd4
	mov r1, r0
	mov r0, sl
	bl func_ov40_021861b0
	cmp sb, #0x640000
	beq _02186040
	ldr r1, [sp, #0x20]
	cmp sb, r1
	beq _02186068
	cmp sb, r4
	beq _021860bc
	b _021860d8
_02186040:
	cmp r0, #0x640000
	beq _021860d8
	ldr r1, [sp, #0x24]
	cmp r0, r1
	bne _021860d8
	ldr r2, [r7]
	ldr r1, [sp, #0x14]
	add r1, r2, r1, lsl #12
	str r1, [r7]
	b _021860d8
_02186068:
	cmp r0, #0x640000
	beq _02186088
	ldr r1, [sp, #0x28]
	cmp r0, r1
	beq _021860ac
	cmp r0, r4
	beq _0218609c
	b _021860d8
_02186088:
	ldr r2, [r7]
	ldr r1, [sp, #0x18]
	add r1, r2, r1, lsl #12
	str r1, [r7]
	b _021860d8
_0218609c:
	ldr r1, [r7]
	add r1, r1, #0x82000
	str r1, [r7]
	b _021860d8
_021860ac:
	ldr r1, [r7]
	add r1, r1, #0x14000
	str r1, [r7]
	b _021860d8
_021860bc:
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne _021860d8
	ldr r1, [r7]
	add r1, r1, #0x3b000
	add r1, r1, #0x100000
	str r1, [r7]
_021860d8:
	cmp r0, #0x640000
	beq _021860f4
	ldr r1, [sp, #0x30]
	cmp r0, r1
	beq _02186108
	cmp r0, r4
	bne _02186118
_021860f4:
	ldr r0, _0218614c ; =data_02068ebc
	str r0, [sl, #0x2c]
	mov r0, #0xd
	strb r0, [r5, #0xd62]
	b _02186118
_02186108:
	ldr r0, _02186150 ; =data_02068eac
	str r0, [sl, #0x2c]
	mov r0, #8
	strb r0, [r5, #0xd62]
_02186118:
	ldr r0, [sp, #8]
	add fp, fp, #1
	cmp fp, r0
	blt _02185f40
_02186128:
	ldr r0, [sp, #0xc]
	add r1, sl, #0xa000
	str r0, [r1, #0xd58]
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_02185e20
_0218613c: .word data_027e0c68
_02186140: .word 0x001fffff
_02186144: .word data_ov40_021897d4
_02186148: .word 0x00640003
_0218614c: .word data_02068ebc
_02186150: .word data_02068eac

	arm_func_start func_ov40_02186154
func_ov40_02186154: ; 0x02186154
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xa000
	ldr r0, [r0, #0xd54]
	mov r1, #0x8000
	bl func_01ff9b88
	add r1, r0, #0x800
	ldr r0, _021861a8 ; =0x01ff0000
	mov r1, r1, asr #0xc
	ldr r2, _021861ac ; =0x04001014
	and r3, r0, r1, lsl #16
	add r0, r4, #0x54
	mov r1, #0x9800
	str r3, [r2]
	bl func_0200e2c0
	bl func_020050e4
	mov r1, r0
	add r0, r4, #0x54
	mov r2, #0x7800
	bl func_02007908
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02186154
_021861a8: .word 0x01ff0000
_021861ac: .word 0x04001014

	arm_func_start func_ov40_021861b0
func_ov40_021861b0: ; 0x021861b0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r2, r1
	ldr r1, _0218622c ; =data_027e0c68
	add r0, sp, #0
	bl func_0203643c
	mov r4, #0
	add r6, sp, #0
	mov r5, #1
	b _02186200
_021861d8:
	ldrh r0, [r2]
	cmp r0, #0x1a
	bne _021861f8
	ldrb r1, [r2, #3]
	ldrh r0, [r2, #4]
	add sp, sp, #4
	orr r0, r0, r1, lsl #16
	ldmia sp!, {r3, r4, r5, r6, pc}
_021861f8:
	mov r0, r6
	bl func_02037604
_02186200:
	ldr r2, [sp]
	mov r1, r5
	cmp r2, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	movne r1, r4
	cmp r1, #0
	beq _021861d8
	mvn r0, #0xff000000
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_021861b0
_0218622c: .word data_027e0c68

	arm_func_start func_ov40_02186230
func_ov40_02186230: ; 0x02186230
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	sub sp, sp, #0x400
	mov fp, r3
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov sl, r2
	str r3, [sp, #8]
	add r0, sp, #0x24
	mov r1, #0x1c
	mov r2, #6
	str r3, [sp, #0xc]
	ldr sb, [sp, #0x448]
	bl func_02029a5c
	mov r4, #0
	str r0, [sp, #0x20]
	str r4, [sp, #0x1c]
	cmp r0, #0
	addle sp, sp, #0x24
	addle sp, sp, #0x400
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sp, #0x24
_02186294:
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x24
	ldr r1, _02186364 ; =0xc000c000
	ldr r0, [r2, r0, lsl #3]
	and r0, r0, r1
	bl func_ov40_02185b54
	ldr r1, [sp, #0x1c]
	add r3, sp, #0x24
	ldr r2, _02186364 ; =0xc000c000
	ldr r1, [r3, r1, lsl #3]
	mov r5, r0, lsr #0x3
	and r0, r1, r2
	bl func_ov40_02185c14
	mov r0, r0, lsr #0x3
	str r0, [sp, #0x18]
	cmp r0, #0
	mov r8, #0
	ble _0218633c
_021862dc:
	cmp r5, #0
	mov r6, #0
	ble _0218632c
_021862e8:
	ldr r0, _02186368 ; =data_ov00_020eacd0
	str sb, [sp]
	stmib sp, {r0, r4}
	ldr r3, [r7]
	ldr r0, [sp, #0x10]
	mov r2, r3, lsl #0x7
	mov r3, r3, lsl #0x18
	add r2, sl, r2, lsr #26
	add r3, fp, r3, lsr #27
	ldr r1, [sp, #0x14]
	add r2, r6, r2
	add r3, r8, r3
	bl func_ov40_021863a0
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, r5
	blt _021862e8
_0218632c:
	ldr r0, [sp, #0x18]
	add r8, r8, #1
	cmp r8, r0
	blt _021862dc
_0218633c:
	ldr r0, [sp, #0x1c]
	add r7, r7, #8
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _02186294
	add sp, sp, #0x24
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_02186230
_02186364: .word 0xc000c000
_02186368: .word data_ov00_020eacd0

	arm_func_start func_ov40_0218636c
func_ov40_0218636c: ; 0x0218636c
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr lr, [sp, #0x1c]
	ldr ip, [sp, #0x18]
	mla r5, r3, r2, r1
	ldr r2, [sp, #0x20]
	mla r1, lr, ip, r4
	ldr r3, [sp, #0x10]
	add r0, r0, r5, lsl #5
	add r1, r3, r1, lsl #5
	mov r2, r2, lsl #0x5
	bl func_02007908
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_0218636c

	arm_func_start func_ov40_021863a0
func_ov40_021863a0: ; 0x021863a0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mla r2, r4, r3, r2
	ldr r5, [sp, #0x24]
	movs r4, r0, lsl #0x6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0x3f
	cmp r0, #0x2a00
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add lr, r1, r2, lsl #5
	mov ip, #0
	mov r3, #1
	mov r2, #8
	mov r1, ip
	mov r0, r3
	mov r8, ip
	mov sb, r2
_021863e8:
	ldrb r6, [lr]
	tst r6, #0xf
	bne _0218641c
	mov r6, r4, lsr #0x5
	ldr r6, [r5, r6, lsl #2]
	and r7, r4, #0x1f
	tst r6, r3, lsl r7
	movne r6, r2
	moveq r6, r1
	ldrb r7, [lr]
	and r6, r6, #0xff
	orr r6, r7, r6
	strb r6, [lr]
_0218641c:
	ldrb r6, [lr]
	tst r6, #0xf0
	bne _02186454
	add r7, r4, #1
	mov r6, r7, lsr #0x5
	ldr r6, [r5, r6, lsl #2]
	and r7, r7, #0x1f
	tst r6, r0, lsl r7
	movne r6, sb
	moveq r6, r8
	ldrb r7, [lr]
	and r6, r6, #0xff
	orr r6, r7, r6, lsl #4
	strb r6, [lr]
_02186454:
	add ip, ip, #1
	cmp ip, #0x20
	add lr, lr, #1
	add r4, r4, #2
	blo _021863e8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end func_ov40_021863a0

	arm_func_start func_ov40_0218646c
func_ov40_0218646c: ; 0x0218646c
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa0
	mov r5, r0
	ldr r0, _021865fc ; =data_027e05f4
	mov r4, r1
	blx func_0202ab38
	mov r1, r0
	add r0, sp, #0x20
	bl func_02047024
	ldr r1, _02186600 ; =data_ov40_02189828
	add r0, sp, #0x20
	bl func_0204713c
	mov r0, #1
	str r0, [sp]
	ldr r0, _02186604 ; =data_ov40_02189840
	ldr r2, _02186608 ; =data_020691a0
	add r1, sp, #0x20
	mov r3, #0xcc00
	blx func_0202d5b4
	mov r6, r0
	ldr r1, _0218660c ; =data_ov40_02189844
	add r0, sp, #0x14
	blx func_02031e1c
	add r0, r5, #0x54
	ldr r2, [sp, #0x18]
	add r1, r0, #0x6000
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl func_02007984
	mov r0, r6
	blx func_02016fcc
	mvn r6, #0
	mov r1, #0
	mov fp, r6
	mov r8, r6
	mov sl, #1
	mov r0, r1
_02186500:
	mov r2, #0
	mov r3, r2
	mov lr, r1
_0218650c:
	mov ip, r0
	add r7, r5, lr, lsl #5
_02186514:
	add sb, r7, #0x9000
	ldrb sb, [sb, #0x854]
	cmp sb, #0
	movne r2, sl
	bne _02186538
	add r7, r7, #1
	add ip, ip, #1
	cmp ip, #0x20
	blt _02186514
_02186538:
	cmp r2, #0
	beq _02186550
	cmp r6, r8
	moveq r6, r1
	mov fp, r1
	b _02186560
_02186550:
	add r3, r3, #1
	cmp r3, #6
	add lr, lr, #0x1c
	blt _0218650c
_02186560:
	add r1, r1, #1
	cmp r1, #0x1c
	blt _02186500
	add r0, fp, #1
	sub sb, r0, r6
	rsb r0, sb, #0x20
	add r0, r0, r0, lsr #31
	mov sl, r0, asr #0x1
	mov r8, #0
	add r7, r5, #0x54
	mov fp, #0x20
_0218658c:
	stmia sp!, {r7, sl}
	add r0, r4, r8
	str r0, [sp, #8]
	str fp, [sp, #0xc]
	mov r1, r6
	mov r2, r8
	mov r3, #0x1c
	add r0, r7, #0x9800
	str sb, [sp, #0x10]
	bl func_ov40_0218636c
	add r8, r8, #1
	cmp r8, #6
	blt _0218658c
	mov r7, #0
	mov r6, r7
_021865c8:
	mov r8, r6
_021865cc:
	mov r0, r5
	mov r1, r7
	add r2, r8, r4, lsl #3
	bl func_ov40_02186810
	add r8, r8, #1
	cmp r8, #0x3a
	blt _021865cc
	add r7, r7, #1
	cmp r7, #0x100
	blt _021865c8
	add sp, sp, #0xa0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_0218646c
_021865fc: .word data_027e05f4
_02186600: .word data_ov40_02189828
_02186604: .word data_ov40_02189840
_02186608: .word data_020691a0
_0218660c: .word data_ov40_02189844

	arm_func_start func_ov40_02186610
func_ov40_02186610: ; 0x02186610
	stmdb sp!, {r4, lr}
	cmp r1, r3, lsl #3
	mvnge r0, #0
	ldmia sp!, {r4, pc}
	mov ip, r2, asr #0x2
	add ip, r2, ip, lsr #29
	mov lr, ip, asr #0x3
	mul ip, r3, lr
	mov r3, r1, asr #0x2
	add r3, r1, r3, lsr #29
	mov r4, r3, asr #0x3
	add ip, ip, r3, asr #3
	subs r3, r1, r4, lsl #3
	sub r2, r2, lr, lsl #3
	bmi _02186654
	cmp r3, #8
	blt _0218665c
_02186654:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_0218665c:
	cmp r2, #0
	blt _0218666c
	cmp r2, #8
	blt _02186674
_0218666c:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_02186674:
	add r1, r3, r3, lsr #31
	mov r1, r1, asr #0x1
	add r1, r1, ip, lsl #5
	add r1, r1, r2, lsl #2
	ldrb r0, [r0, r1]
	tst r3, #1
	mov r0, r0, asr #0x4
	andeq r0, r0, #0xf
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02186610

	arm_func_start func_ov40_02186698
func_ov40_02186698: ; 0x02186698
	stmdb sp!, {r4, lr}
	cmp r1, r3, lsl #3
	movge r0, #0
	ldmia sp!, {r4, pc}
	mov ip, r2, asr #0x2
	add ip, r2, ip, lsr #29
	mov lr, ip, asr #0x3
	mul ip, r3, lr
	mov r3, r1, asr #0x2
	add r3, r1, r3, lsr #29
	mov r4, r3, asr #0x3
	add ip, ip, r3, asr #3
	subs r3, r1, r4, lsl #3
	sub r2, r2, lr, lsl #3
	bmi _021866dc
	cmp r3, #8
	blt _021866e4
_021866dc:
	mov r0, #0
	ldmia sp!, {r4, pc}
_021866e4:
	cmp r2, #0
	blt _021866f4
	cmp r2, #8
	blt _021866fc
_021866f4:
	mov r0, #0
	ldmia sp!, {r4, pc}
_021866fc:
	add r1, r3, r3, lsr #31
	mov r1, r1, asr #0x1
	add r1, r1, ip, lsl #5
	tst r3, #1
	add r1, r1, r2, lsl #2
	beq _02186748
	ldrb r2, [sp, #0xc]
	cmp r2, #0
	beq _02186730
	ldrb r2, [r0, r1]
	tst r2, #0xf0
	movne r0, #0
	ldmia sp!, {r4, pc}
_02186730:
	ldrb r3, [r0, r1]
	ldrb r2, [sp, #8]
	and r3, r3, #0xf
	add r2, r3, r2, lsl #4
	strb r2, [r0, r1]
	b _02186778
_02186748:
	ldrb r2, [sp, #0xc]
	cmp r2, #0
	beq _02186764
	ldrb r2, [r0, r1]
	tst r2, #0xf
	movne r0, #0
	ldmia sp!, {r4, pc}
_02186764:
	ldrb r3, [r0, r1]
	ldrb r2, [sp, #8]
	and r3, r3, #0xf0
	add r2, r3, r2
	strb r2, [r0, r1]
_02186778:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02186698

	arm_func_start func_ov40_02186780
func_ov40_02186780: ; 0x02186780
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x20]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl func_ov40_02186610
	cmp r0, #0
	addlt sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _0218680c ; =data_ov40_02188230
	mov r2, #0
_021867b4:
	ldrb r1, [r3]
	cmp r0, r1
	addeq sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, r1
	bne _021867f4
	str r4, [sp]
	mov r4, #1
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp, #4]
	bl func_ov40_02186698
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021867f4:
	add r2, r2, #1
	cmp r2, #6
	add r3, r3, #1
	blo _021867b4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
	arm_func_end func_ov40_02186780
_0218680c: .word data_ov40_02188230

	arm_func_start func_ov40_02186810
func_ov40_02186810: ; 0x02186810
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x54
	mov r3, #0x20
	mov r6, r1
	mov r5, r2
	bl func_ov40_02186610
	cmp r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02186928 ; =data_ov40_02188230
	add r6, r6, #2
	ldrb ip, [r0, #1]
	add r5, r5, #2
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x54
	mov r3, #0x20
	str ip, [sp]
	bl func_ov40_02186780
	ldr r0, _02186928 ; =data_ov40_02188230
	mov r2, r5
	ldrb r7, [r0, #3]
	add r0, r4, #0x54
	add r1, r6, #1
	mov r3, #0x20
	str r7, [sp]
	bl func_ov40_02186780
	mov r2, r5
	add r0, r4, #0x54
	str r7, [sp]
	sub r1, r6, #1
	mov r3, #0x20
	bl func_ov40_02186780
	str r7, [sp]
	add r0, r4, #0x54
	mov r1, r6
	add r2, r5, #1
	mov r3, #0x20
	bl func_ov40_02186780
	str r7, [sp]
	add r0, r4, #0x54
	mov r1, r6
	sub r2, r5, #1
	mov r3, #0x20
	bl func_ov40_02186780
	str r7, [sp]
	add r0, r4, #0x54
	add r1, r6, #1
	add r2, r5, #1
	mov r3, #0x20
	bl func_ov40_02186780
	str r7, [sp]
	add r0, r4, #0x54
	sub r1, r6, #1
	add r2, r5, #1
	mov r3, #0x20
	bl func_ov40_02186780
	str r7, [sp]
	add r0, r4, #0x54
	add r1, r6, #1
	sub r2, r5, #1
	mov r3, #0x20
	bl func_ov40_02186780
	str r7, [sp]
	add r0, r4, #0x54
	sub r1, r6, #1
	sub r2, r5, #1
	mov r3, #0x20
	bl func_ov40_02186780
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov40_02186810
_02186928: .word data_ov40_02188230

	arm_func_start func_ov40_0218692c
func_ov40_0218692c: ; 0x0218692c
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_02032f94
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0218692c

	arm_func_start func_ov40_02186948
func_ov40_02186948: ; 0x02186948
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr ip, _021869d8 ; =func_ov40_021869e0
	ldr r3, _021869dc ; =func_ov40_021869e4
	mov r1, #2
	mov r2, #0x18
	mov r4, r0
	str ip, [sp]
	bl func_0204f614
	mov r0, #0x3c
	strh r0, [r4, #0x30]
	mov r0, #0x8f
	mov r2, #0
	str r0, [sp]
	mov r0, #3
	stmib sp, {r0, r2}
	mov r0, r4
	mov r3, r2
	mov r1, #0x36
	str r2, [sp, #0xc]
	bl func_ov00_020cfed0
	mov r0, #0x8f
	str r0, [sp]
	mov r0, #3
	mov r2, #1
	str r0, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	mov r3, r2
	add r0, r4, #0x18
	mov r1, #0x36
	str ip, [sp, #0xc]
	bl func_ov00_020cfed0
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02186948
_021869d8: .word func_ov40_021869e0
_021869dc: .word func_ov40_021869e4

	arm_func_start func_ov40_021869e0
func_ov40_021869e0: ; 0x021869e0
	bx lr
	arm_func_end func_ov40_021869e0

	arm_func_start func_ov40_021869e4
func_ov40_021869e4: ; 0x021869e4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d05dc
	ldr r0, _02186a1c ; =data_ov00_020e899c
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
	arm_func_end func_ov40_021869e4
_02186a1c: .word data_ov00_020e899c

	arm_func_start func_ov40_02186a20
func_ov40_02186a20: ; 0x02186a20
	ldr r1, _02186a54 ; =data_027e05f8
	ldrh r1, [r1, #2]
	tst r1, #8
	beq _02186a4c
	ldrsh r1, [r0, #0x30]
	cmp r1, #0x3c
	movlt r1, #0x3c
	movge r1, #0
	strh r1, [r0, #0x30]
	mov r0, #1
	bx lr
_02186a4c:
	mov r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov40_02186a20
_02186a54: .word data_027e05f8

	arm_func_start func_ov40_02186a58
func_ov40_02186a58: ; 0x02186a58
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsh r0, [r5, #0x30]
	cmp r0, #0x3c
	movge r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, _02186b0c ; =data_027e0cbc
	mov r1, #0x11
	bl func_0203d7e0
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	ldr r0, _02186b10 ; =data_027e0c68
	mov r4, #0
	bl func_020366c4
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	ble _02186ab8
	add r0, r0, #0x500
	ldrsb r0, [r0, #0x7b]
	cmp r0, #2
	moveq r1, #1
	beq _02186abc
_02186ab8:
	mov r1, #0
_02186abc:
	mov r0, #0x18
	mul r6, r1, r0
	add r0, r5, r6
	ldr ip, [r0]
	mov r1, #0
	ldr ip, [ip]
	mov r2, r1
	mov r3, r1
	blx ip
	tst r0, #8
	beq _02186b04
	add r0, r5, r6
	ldrh r1, [r0, #0xa]
	mov r0, r5
	mov r4, #1
	bl func_ov40_02186c44
	cmp r0, #0
	moveq r4, #0
_02186b04:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02186a58
_02186b0c: .word data_027e0cbc
_02186b10: .word data_027e0c68

	arm_func_start func_ov40_02186b14
func_ov40_02186b14: ; 0x02186b14
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmia sp!, {r4, pc}
	ldrsh r0, [r4, #0x30]
	cmp r0, #0x3c
	ldmia sp!, {r4, pc}
	ldr r0, _02186b80 ; =data_027e0c68
	bl func_020366c4
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	ble _02186b5c
	add r0, r0, #0x500
	ldrsb r0, [r0, #0x7b]
	cmp r0, #2
	moveq r1, #1
	beq _02186b60
_02186b5c:
	mov r1, #0
_02186b60:
	mov r0, #0x18
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0xd]
	tst r0, #1
	ldrnesh r0, [r4, #0x30]
	addne r0, r0, #1
	strneh r0, [r4, #0x30]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02186b14
_02186b80: .word data_027e0c68

	arm_func_start func_ov40_02186b84
func_ov40_02186b84: ; 0x02186b84
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrsh r0, [r5, #0x30]
	mov r4, r1
	cmp r0, #0x3c
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _02186c34 ; =data_027e0cbc
	mov r1, #0x11
	bl func_0203d7e0
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r1, _02186c38 ; =data_027e0e2c
	mvn r0, #0
	ldr r1, [r1, #4]
	cmp r1, r0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _02186c3c ; =data_027e0c54
	ldrb r0, [r0]
	cmp r0, #0
	beq _02186be4
	ldmia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4]
	tst r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_02186be4:
	ldr r0, _02186c40 ; =data_027e0c68
	bl func_020366c4
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x5c]
	cmp r1, #0
	ble _02186c10
	add r0, r0, #0x500
	ldrsb r0, [r0, #0x7b]
	cmp r0, #2
	moveq r1, #1
	beq _02186c14
_02186c10:
	mov r1, #0
_02186c14:
	mov r0, #0x18
	mla r0, r1, r0, r5
	mov r1, #0
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl func_ov00_020d00c4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02186b84
_02186c34: .word data_027e0cbc
_02186c38: .word data_027e0e2c
_02186c3c: .word data_027e0c54
_02186c40: .word data_027e0c68

	arm_func_start func_ov40_02186c44
func_ov40_02186c44: ; 0x02186c44
	stmdb sp!, {r3, lr}
	cmp r1, #0x8f
	bne _02186c7c
	ldr r0, _02186c84 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097e6c
	cmp r0, #0
	beq _02186c7c
	ldr r0, _02186c88 ; =data_ov00_020eec9c
	mov r1, #4
	bl func_ov00_020d77e4
	ldr r0, _02186c84 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097e7c
_02186c7c:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02186c44
_02186c84: .word data_027e0f74
_02186c88: .word data_ov00_020eec9c

	arm_func_start func_ov40_02186c8c
func_ov40_02186c8c: ; 0x02186c8c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	blx func_ov04_0210f4c8
	ldr r0, _02186cf4 ; =data_ov40_02189858
	mov r1, #0
	str r0, [r4]
	strh r1, [r4, #8]
	strb r1, [r4, #0x14]
	mov r3, r1
_02186cb4:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	str r3, [r0, #0xc]
	cmp r1, #2
	blt _02186cb4
	mvn r1, #0
	ldr r0, _02186cf8 ; =data_027e0cbc
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, #1
	ldr r0, [r0, #0x48]
	mov r2, r1
	bl func_020340d0
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02186c8c
_02186cf4: .word data_ov40_02189858
_02186cf8: .word data_027e0cbc

	arm_func_start func_ov40_02186cfc
func_ov40_02186cfc: ; 0x02186cfc
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl func_ov00_020d105c
	cmp r5, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldrsb r0, [r4, #0x14]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02186f0c
_02186d24: ; jump table
	b _02186f0c ; case 0
	b _02186d44 ; case 1
	b _02186d90 ; case 2
	b _02186dc4 ; case 3
	b _02186df8 ; case 4
	b _02186e50 ; case 5
	b _02186ec0 ; case 6
	b _02186ef4 ; case 7
_02186d44:
	mov r0, #0x1000
	mov r1, #0x8000
	bl func_01ff98e0
	ldr r2, [r4, #0xc]
	mov r1, #0x8000
	add r0, r2, r0
	str r0, [r4, #0xc]
	mov r0, #0x1000
	bl func_01ff98e0
	ldr r1, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldrsh r0, [r4, #8]
	cmp r0, #0xc
	ble _02186f0c
	mov r0, r4
	mov r1, #4
	bl func_ov40_02186f94
	b _02186f0c
_02186d90:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldrsh r0, [r4, #8]
	cmp r0, #0x2d
	ble _02186f0c
	mov r0, r4
	mov r1, #3
	bl func_ov40_02186f94
	b _02186f0c
_02186dc4:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r1, [r4, #0x10]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldrsh r0, [r4, #8]
	cmp r0, #0xc
	ble _02186f0c
	mov r0, r4
	mov r1, #4
	bl func_ov40_02186f94
	b _02186f0c
_02186df8:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r2, [r4, #0xc]
	ldr r1, _02186f84 ; =0x00000924
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldrsh r0, [r4, #8]
	ldr r2, _02186f88 ; =data_02050f54
	smulbb r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x1
	add r0, r0, #1
	mov r0, r0, lsl #0x1
	ldrsh r0, [r2, r0]
	add r0, r0, #0x1000
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r4, #0x10]
	b _02186f0c
_02186e50:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r2, [r4, #0xc]
	ldr r1, _02186f88 ; =data_02050f54
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldrsh r0, [r4, #8]
	rsb r0, r0, r0, lsl #14
	sub r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #0x4
	mov r0, r0, lsl #0x1
	add r0, r0, #1
	mov r0, r0, lsl #0x1
	ldrsh r0, [r1, r0]
	add r0, r0, #0x1000
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	str r0, [r4, #0x10]
	ldrsh r0, [r4, #8]
	cmp r0, #0x10
	ble _02186f0c
	mov r0, r4
	mov r1, #6
	bl func_ov40_02186f94
	b _02186f0c
_02186ec0:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldrsh r0, [r4, #8]
	cmp r0, #3
	ble _02186f0c
	mov r0, r4
	mov r1, #7
	bl func_ov40_02186f94
	b _02186f0c
_02186ef4:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0xc]
_02186f0c:
	ldr r0, [r4, #0xc]
	mov r3, #0
	cmp r0, #0x1000
	movgt r0, #0x1000
	strgt r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r0, #0x1000
	movgt r0, #0x1000
	strgt r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	mov r0, #0xf000
	umull ip, r2, r1, r0
	mla r2, r1, r3, r2
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds ip, ip, #0x800
	adc r0, r2, #0
	mov r1, ip, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r1, r1, #0x800
	mov r2, r1, asr #0xc
	ldr r0, _02186f8c ; =data_027e0c38
	mov r1, #6
	bl func_02033e70
	ldrsh r1, [r4, #8]
	ldr r0, _02186f90 ; =0x00007fff
	cmp r1, r0
	addlt r0, r1, #1
	strlth r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02186cfc
_02186f84: .word 0x00000924
_02186f88: .word data_02050f54
_02186f8c: .word data_027e0c38
_02186f90: .word 0x00007fff

	arm_func_start func_ov40_02186f94
func_ov40_02186f94: ; 0x02186f94
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #1
	beq _02186fbc
	cmp r4, #5
	beq _02186fcc
	cmp r4, #7
	beq _02186fdc
	b _02186fec
_02186fbc:
	ldr r0, _02186ffc ; =data_ov00_020eec9c
	mov r1, #0x12
	bl func_ov00_020d77e4
	b _02186fec
_02186fcc:
	ldr r0, _02186ffc ; =data_ov00_020eec9c
	mov r1, #0x13
	bl func_ov00_020d77e4
	b _02186fec
_02186fdc:
	ldr r0, _02187000 ; =data_027e0618
	mov r1, #1
	mov r2, #0
	blx func_0202cec8
_02186fec:
	strb r4, [r5, #0x14]
	mov r0, #0
	strh r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02186f94
_02186ffc: .word data_ov00_020eec9c
_02187000: .word data_027e0618

	arm_func_start func_ov40_02187004
func_ov40_02187004: ; 0x02187004
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d1064
	cmp r0, #0
	movne r0, #1
	ldrsb r2, [r4, #0x14]
	moveq r0, #0
	cmp r2, #5
	cmpne r2, #6
	cmpne r2, #7
	ldmia sp!, {r4, pc}
	ldr r1, _0218709c ; =data_027e05f8
	ldrh r1, [r1, #2]
	tst r1, #8
	ldmia sp!, {r4, pc}
	cmp r2, #0
	beq _02187058
	cmp r2, #1
	cmpne r2, #4
	beq _02187068
	b _02187094
_02187058:
	mov r0, r4
	mov r1, #1
	bl func_ov40_02186f94
	b _02187094
_02187068:
	ldr r0, _021870a0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097e6c
	cmp r0, #0
	beq _02187094
	ldr r0, _021870a0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097ea4
	mov r0, r4
	mov r1, #5
	bl func_ov40_02186f94
_02187094:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02187004
_0218709c: .word data_027e05f8
_021870a0: .word data_027e0f74

	arm_func_start func_ov40_021870a4
func_ov40_021870a4: ; 0x021870a4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020d1070
	cmp r0, #0
	movne r0, #1
	ldrsb r2, [r4, #0x14]
	moveq r0, #0
	cmp r2, #5
	cmpne r2, #6
	cmpne r2, #7
	ldmia sp!, {r4, pc}
	ldr r1, _0218713c ; =data_027e0d78
	ldrh r1, [r1, #0x34]
	tst r1, #1
	ldmia sp!, {r4, pc}
	cmp r2, #0
	beq _021870f8
	cmp r2, #1
	cmpne r2, #4
	beq _02187108
	b _02187134
_021870f8:
	mov r0, r4
	mov r1, #1
	bl func_ov40_02186f94
	b _02187134
_02187108:
	ldr r0, _02187140 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097e6c
	cmp r0, #0
	beq _02187134
	ldr r0, _02187140 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097ea4
	mov r0, r4
	mov r1, #5
	bl func_ov40_02186f94
_02187134:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021870a4
_0218713c: .word data_027e0d78
_02187140: .word data_027e0f74

	arm_func_start func_ov40_02187144
func_ov40_02187144: ; 0x02187144
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r0
	mov r4, r1
	ldr r0, _02187228 ; =data_027e0cbc
	mov r1, #0x12
	bl func_0203d7e0
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4]
	tst r0, #2
	addeq sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	cmp r0, #4
	beq _021871bc
	cmp r0, #5
	bne _021871d4
	mov r2, #0
	str r2, [sp]
	mov r3, r2
	mov r0, #0x39
	mov r1, #2
	str r2, [sp, #4]
	bl func_020349cc
	b _021871d4
_021871bc:
	mov r1, #0
	mov r2, r1
	mov r3, r1
	mov r0, #0x39
	str r1, [sp]
	bl func_0203493c
_021871d4:
	add r0, sp, #8
	bl func_01ffbe34
	ldrsb r0, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02187204
_021871ec: ; jump table
	b _02187220 ; case 0
	b _021871fc ; case 1
	b _02187220 ; case 2
	b _021871fc ; case 3
_021871fc:
	mov r0, #1
	str r0, [sp, #0x18]
_02187204:
	mov r2, #0
	add ip, sp, #8
	mov r3, r2
	mov r0, #0x39
	mov r1, #1
	str ip, [sp]
	bl func_0203493c
_02187220:
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02187144
_02187228: .word data_027e0cbc

	arm_func_start func_ov40_0218722c
func_ov40_0218722c: ; 0x0218722c
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020d1098
	ldrsb r0, [r5, #0x14]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _02187268 ; =data_027e0de4
	ldr r2, _0218726c ; =func_ov40_02187270
	mov r3, r5
	mov r1, #6
	bl func_ov00_0207bb1c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0218722c
_02187268: .word data_027e0de4
_0218726c: .word func_ov40_02187270

	arm_func_start func_ov40_02187270
func_ov40_02187270: ; 0x02187270
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x24
	ldr r2, [r0, #0xc]
	mov r0, #0x1f000
	mov r1, #0
	umull ip, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r2, ip, #0x800
	adc r0, r3, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, #0x800
	mov r4, r0, asr #0xc
	cmp r4, #0
	addle sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	mov r2, #4
	add r0, sp, #0xc
	mov r1, #0x1e
	mov r3, #5
	str r2, [sp]
	bl func_ov00_020d0a30
	cmp r4, #0x1f
	bge _021872ec
	ldr r0, _02187318 ; =data_ov00_020e9360
	mov r1, #0xa
	str r4, [sp, #0x1c]
	bl func_ov00_02079e68
	str r0, [sp, #0x20]
_021872ec:
	mov r0, #0x80
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r0, sp, #0xc
	mov r2, #0x28
	mov r3, #0x100
	str r1, [sp, #8]
	bl func_ov00_020d0a80
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02187270
_02187318: .word data_ov00_020e9360

	arm_func_start func_ov40_0218731c
func_ov40_0218731c: ; 0x0218731c
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_0210f4e4
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_0218731c

	arm_func_start func_ov40_02187338
func_ov40_02187338: ; 0x02187338
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov04_0210f4e4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02187338

	arm_func_start func_ov40_0218734c
func_ov40_0218734c: ; 0x0218734c
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	ldrsb r1, [r0, #0x14]
	cmp r1, #0
	ldmia sp!, {r3, pc}
	mov r1, #2
	bl func_ov40_02186f94
	ldmia sp!, {r3, pc}
	arm_func_end func_ov40_0218734c

	arm_func_start func_ov40_0218736c
func_ov40_0218736c: ; 0x0218736c
	ldr r0, [r0]
	ldr ip, _0218737c ; =func_ov40_02187b90
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0218736c
_0218737c: .word func_ov40_02187b90

	arm_func_start func_ov40_02187380
func_ov40_02187380: ; 0x02187380
	stmdb sp!, {r3, lr}
	ldr r1, _021873ac ; =data_027e0fe0
	ldr r0, _021873b0 ; =0x00000808
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov40_021873b4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02187380
_021873ac: .word data_027e0fe0
_021873b0: .word 0x00000808

	arm_func_start func_ov40_021873b4
func_ov40_021873b4: ; 0x021873b4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217bf30
	ldr r0, _021873dc ; =data_ov40_02189930
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x800]
	mov r0, r4
	str r1, [r4, #0x804]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021873b4
_021873dc: .word data_ov40_02189930

	arm_func_start func_ov40_021873e0
func_ov40_021873e0: ; 0x021873e0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217c20c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021873e0

	arm_func_start func_ov40_021873f4
func_ov40_021873f4: ; 0x021873f4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov40_0217c20c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_021873f4

	arm_func_start func_ov40_02187410
func_ov40_02187410: ; 0x02187410
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl func_ov40_0217c2b8
	ldr r2, _02187548 ; =data_027e0fb4
	ldr r1, _0218754c ; =0x91a2b3c5
	ldr r3, [r2]
	str r0, [sp]
	ldr r3, [r3, #0xc]
	umull r0, r4, r3, r1
	mov r4, r4, lsr #0xb
	str r4, [sl, #0x800]
	ldr r0, [r2]
	ldr r2, [r0, #0xc]
	umull r0, r1, r2, r1
	mov r1, r1, lsr #0xb
	cmp r1, #0xf
	movlo r0, #0
	blo _02187464
	cmp r1, #0x14
	movlo r0, #1
	movhs r0, #2
_02187464:
	add r0, r0, #1
	str r0, [sl, #0x804]
	ldr r0, [sl, #0x800]
	cmp r0, #0
	moveq r0, #0
	streq r0, [sl, #0x804]
	ldr r0, _02187550 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097c08
	cmp r0, #0x15
	cmpne r0, #0x16
	moveq r0, #0
	streq r0, [sl, #0x804]
	ldr r0, [sl, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r7, #0
	ldr r1, [r0, #8]
	ldr r8, _02187554 ; =data_ov40_02188330
	ldr sb, _02187558 ; =data_ov40_02188300
	add r6, r0, r1
	mov r4, r7
	mov fp, r7
_021874c4:
	mov r1, r8
	add r0, r6, #4
	bl func_0201e388
	mov r5, r0
	ldr r0, [sl, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, r5
	mov r2, r4
	bl func_02019570
	add r0, r6, #4
	mov r1, sb
	bl func_0201e388
	add r1, sl, r7, lsl #2
	str r0, [r1, #0x7f4]
	ldr r0, [sl, #0x158]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r1, sl, r7, lsl #2
	ldr r1, [r1, #0x7f4]
	mov r2, fp
	bl func_02019570
	add r8, r8, #0x10
	add sb, sb, #0x10
	add r7, r7, #1
	cmp r7, #3
	blo _021874c4
	mov r0, sl
	bl func_ov40_021875d8
	ldr r0, [sp]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_02187410
_02187548: .word data_027e0fb4
_0218754c: .word 0x91a2b3c5
_02187550: .word data_027e0f74
_02187554: .word data_ov40_02188330
_02187558: .word data_ov40_02188300

	arm_func_start func_ov40_0218755c
func_ov40_0218755c: ; 0x0218755c
	ldr ip, _02187564 ; =func_ov40_0217d40c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_0218755c
_02187564: .word func_ov40_0217d40c

	arm_func_start func_ov40_02187568
func_ov40_02187568: ; 0x02187568
	ldr ip, _02187570 ; =func_ov40_0217d2a0
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02187568
_02187570: .word func_ov40_0217d2a0

	arm_func_start func_ov40_02187574
func_ov40_02187574: ; 0x02187574
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl func_ov40_0217d2fc
	ldr r0, [r5, #0x18]
	cmp r0, #0xb
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x800]
	add r0, r0, #2
	str r0, [r4, #0x800]
	cmp r0, #0x14
	movhs r0, #3
	strhs r0, [r4, #0x804]
	bhs _021875c0
	cmp r0, #0xf
	movhs r0, #2
	strhs r0, [r4, #0x804]
	movlo r0, #1
	strlo r0, [r4, #0x804]
_021875c0:
	mov r0, r4
	bl func_ov40_021875d8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02187574

	arm_func_start func_ov40_021875cc
func_ov40_021875cc: ; 0x021875cc
	ldr ip, _021875d4 ; =func_ov40_0217d35c
	bx ip
	.align 2, 0
	arm_func_end func_ov40_021875cc
_021875d4: .word func_ov40_0217d35c

	arm_func_start func_ov40_021875d8
func_ov40_021875d8: ; 0x021875d8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r6, r4
	mov r7, #0x1f
_021875ec:
	cmp r4, #0
	beq _0218763c
	ldr r0, [r5, #0x804]
	cmp r4, r0
	ldr r0, [r5, #0x158]
	ldr r1, [r0]
	bne _02187624
	ldr r1, [r1, #8]
	blx r1
	add r1, r5, r4, lsl #2
	ldr r1, [r1, #0x7f0]
	mov r2, r7
	bl func_02019570
	b _0218763c
_02187624:
	ldr r1, [r1, #8]
	blx r1
	add r1, r5, r4, lsl #2
	ldr r1, [r1, #0x7f0]
	mov r2, r6
	bl func_02019570
_0218763c:
	add r4, r4, #1
	cmp r4, #4
	blt _021875ec
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end func_ov40_021875d8

	arm_func_start func_ov40_0218764c
func_ov40_0218764c: ; 0x0218764c
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x9c
	mov r4, r0
	mov r2, #0
	strh r2, [r4]
	strb r2, [r4, #0xc]
	mov r0, r2
_02187668:
	add r1, r4, r2, lsl #2
	add r2, r2, #1
	str r0, [r1, #4]
	cmp r2, #2
	blt _02187668
	add r1, sp, #0x1c
	mov r2, #0x80
	strb r0, [sp, #0x1c]
	blx func_02031fc4
	ldr r1, _0218776c ; =data_ov40_021899f0
	add r0, sp, #0x1c
	bl func_0204713c
	mov r5, #1
	ldr r0, _02187770 ; =data_ov40_02189a08
	ldr r2, _02187774 ; =data_020691a0
	add r1, sp, #0x1c
	mov r3, #0xcc00
	str r5, [sp]
	blx func_0202d5b4
	mov r5, r0
	ldr r1, _02187778 ; =data_ov40_02189a0c
	add r0, sp, #0x10
	blx func_02031e1c
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, #5
	blx func_02027ab4
	mov r0, r5
	blx func_02016fcc
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, _0218777c ; =0x04001050
	mov r1, #2
	mov r2, #0x3d
	mov r3, #0
	bl func_020052e4
	ldr r3, _02187780 ; =0x04001000
	ldr r0, _02187784 ; =data_027e0c38
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #0x8
	bic r2, r1, #0x1f00
	bic r1, ip, #2
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	mov r2, #0
	mov r1, #8
	mov r3, r2
	bl func_02033e70
	ldr r0, _02187784 ; =data_027e0c38
	mov r1, #8
	mov r2, #0
	mov r3, #1
	bl func_02033e70
	mov r0, r4
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_0218764c
_0218776c: .word data_ov40_021899f0
_02187770: .word data_ov40_02189a08
_02187774: .word data_020691a0
_02187778: .word data_ov40_02189a0c
_0218777c: .word 0x04001050
_02187780: .word 0x04001000
_02187784: .word data_027e0c38

	arm_func_start func_ov40_02187788
func_ov40_02187788: ; 0x02187788
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	cmp r0, #5
	movne r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _021877ec ; =data_027e05f8
	ldrh r0, [r0, #2]
	tst r0, #8
	beq _021877e4
	ldr r0, _021877f0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097e6c
	cmp r0, #0
	beq _021877e4
	ldr r0, _021877f0 ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097ea4
	mov r0, r4
	mov r1, #6
	bl func_ov40_02187a28
	mov r0, #1
	ldmia sp!, {r4, pc}
_021877e4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02187788
_021877ec: .word data_027e05f8
_021877f0: .word data_027e0f74

	arm_func_start func_ov40_021877f4
func_ov40_021877f4: ; 0x021877f4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	cmp r0, #5
	movne r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _02187858 ; =data_027e0d78
	ldrh r0, [r0, #0x34]
	tst r0, #1
	beq _02187850
	ldr r0, _0218785c ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097e6c
	cmp r0, #0
	beq _02187850
	ldr r0, _0218785c ; =data_027e0f74
	ldr r0, [r0]
	bl func_ov00_02097ea4
	mov r0, r4
	mov r1, #6
	bl func_ov40_02187a28
	mov r0, #1
	ldmia sp!, {r4, pc}
_02187850:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_021877f4
_02187858: .word data_027e0d78
_0218785c: .word data_027e0f74

	arm_func_start func_ov40_02187860
func_ov40_02187860: ; 0x02187860
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmia sp!, {r4, pc}
	ldrsb r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _02187948
_02187880: ; jump table
	b _0218789c ; case 0
	b _021878b4 ; case 1
	b _021878e8 ; case 2
	b _02187900 ; case 3
	b _02187934 ; case 4
	b _02187948 ; case 5
	b _02187948 ; case 6
_0218789c:
	ldr r0, _02187a20 ; =data_027e0c38
	mov r1, #8
	mov r2, #0
	mov r3, #1
	bl func_02033e70
	b _02187948
_021878b4:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r1, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	ldrsh r0, [r4]
	cmp r0, #0xc
	ble _02187948
	mov r0, r4
	mov r1, #2
	bl func_ov40_02187a28
	b _02187948
_021878e8:
	ldrsh r1, [r4]
	cmp r1, #0x87
	ble _02187948
	mov r1, #3
	bl func_ov40_02187a28
	b _02187948
_02187900:
	mov r0, #0x1000
	mov r1, #0xc000
	bl func_01ff98e0
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	ldrsh r0, [r4]
	cmp r0, #0xc
	ble _02187948
	mov r0, r4
	mov r1, #4
	bl func_ov40_02187a28
	b _02187948
_02187934:
	ldrsh r1, [r4]
	cmp r1, #0x2d
	ble _02187948
	mov r1, #5
	bl func_ov40_02187a28
_02187948:
	mov r3, #0
	mov r0, #0x1000
_02187950:
	add r2, r4, r3, lsl #2
	ldr r1, [r2, #4]
	add r3, r3, #1
	cmp r1, #0x1000
	strgt r0, [r2, #4]
	cmp r3, #2
	blt _02187950
	ldrsb r0, [r4, #0xc]
	cmp r0, #1
	bne _021879c0
	ldr r2, [r4, #4]
	mov r0, #0xf000
	umull ip, r3, r2, r0
	mov r1, #0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	adds r2, ip, #0x800
	mla r3, r1, r0, r3
	adc r0, r3, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r1, r1, #0x800
	ldr r0, _02187a20 ; =data_027e0c38
	mov r2, r1, asr #0xc
	mov r1, #8
	mov r3, #1
	bl func_02033e70
	b _02187a08
_021879c0:
	cmp r0, #3
	bne _02187a08
	ldr r1, [r4, #8]
	mov r0, #0xf000
	umull ip, r2, r1, r0
	mov r3, #0
	mla r2, r1, r3, r2
	mov r1, r1, asr #0x1f
	adds ip, ip, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, #0
	mov r1, ip, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r1, r1, #0x800
	ldr r0, _02187a20 ; =data_027e0c38
	mov r2, r1, asr #0xc
	mov r1, #8
	bl func_02033e70
_02187a08:
	ldrsh r1, [r4]
	ldr r0, _02187a24 ; =0x00007fff
	cmp r1, r0
	addlt r0, r1, #1
	strlth r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02187860
_02187a20: .word data_027e0c38
_02187a24: .word 0x00007fff

	arm_func_start func_ov40_02187a28
func_ov40_02187a28: ; 0x02187a28
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #1
	beq _02187a50
	cmp r4, #3
	beq _02187abc
	cmp r4, #6
	beq _02187ad4
	b _02187ae4
_02187a50:
	ldr lr, _02187af4 ; =0x04001000
	mov r2, #0
	ldr r1, [lr]
	ldr r0, [lr]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #0x8
	bic r1, r0, #0x1f00
	orr r0, r3, #2
	orr ip, r1, r0, lsl #8
	ldr r0, _02187af8 ; =data_027e0c38
	mov r3, r2
	mov r1, #8
	str ip, [lr]
	bl func_02033e70
	ldr r0, _02187af8 ; =data_027e0c38
	mov r1, #8
	mov r2, #0
	mov r3, #1
	bl func_02033e70
	mov r2, #0
	mov r1, r2
_02187aa4:
	add r0, r5, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #4]
	cmp r2, #2
	blt _02187aa4
	b _02187ae4
_02187abc:
	mov r2, #0
	ldr r0, _02187af8 ; =data_027e0c38
	mov r3, r2
	mov r1, #8
	bl func_02033e70
	b _02187ae4
_02187ad4:
	mov r1, #1
	ldr r0, _02187afc ; =data_027e0618
	mov r2, r1
	blx func_0202cec8
_02187ae4:
	strb r4, [r5, #0xc]
	mov r0, #0
	strh r0, [r5]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov40_02187a28
_02187af4: .word 0x04001000
_02187af8: .word data_027e0c38
_02187afc: .word data_027e0618

	arm_func_start func_ov40_02187b00
func_ov40_02187b00: ; 0x02187b00
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x24
	mov r4, r0
	add r0, sp, #4
	bl func_01ffbe34
	ldrsb r0, [r4, #0xc]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02187b3c
_02187b24: ; jump table
	b _02187b58 ; case 0
	b _02187b58 ; case 1
	b _02187b58 ; case 2
	b _02187b34 ; case 3
_02187b34:
	mov r0, #1
	str r0, [sp, #0x14]
_02187b3c:
	mov r1, #0
	add ip, sp, #4
	mov r2, r1
	mov r3, r1
	mov r0, #0x3c
	str ip, [sp]
	bl func_0203493c
_02187b58:
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov40_02187b00

	arm_func_start func_ov40_02187b60
func_ov40_02187b60: ; 0x02187b60
	stmdb sp!, {r3, lr}
	mvn r1, #0
	ldr r0, _02187b8c ; =data_027e0cbc
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, #1
	ldr r0, [r0, #0x4c]
	mov r2, r1
	mov r3, #0
	bl func_020340d0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02187b60
_02187b8c: .word data_027e0cbc

	arm_func_start func_ov40_02187b90
func_ov40_02187b90: ; 0x02187b90
	ldr ip, _02187b9c ; =func_ov40_02187a28
	mov r1, #1
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02187b90
_02187b9c: .word func_ov40_02187a28

	arm_func_start func_ov40_02187ba0
func_ov40_02187ba0: ; 0x02187ba0
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_020395b4
	ldr r1, _02187bbc ; =data_ov40_02189a24
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov40_02187ba0
_02187bbc: .word data_ov40_02189a24

	arm_func_start func_ov40_02187bc0
func_ov40_02187bc0: ; 0x02187bc0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	ldr fp, [r2]
	str r2, [sp, #4]
	ldrb r5, [fp, #3]
	ldrh r4, [fp, #4]
	ldr r2, _02187da4 ; =0x00ff0002
	mov sl, r0
	orr r0, r4, r5, lsl #16
	mov sb, r1
	str r3, [sp, #8]
	cmp r0, r2
	bne _02187d80
	ldrb r0, [fp, #2]
	mov r5, #0
	ldrb r6, [fp, #6]
	sub r0, r0, #7
	mov r4, r0, lsr #0x1
	ldr r0, [sp, #4]
	cmp r4, #0xf
	ldr r0, [r0]
	movhi r4, #0xf
	mov r7, r5
	str r0, [sp, #0x10]
	cmp r6, #0
	ble _02187c90
_02187c28:
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	cmp r1, #0x1a
	beq _02187c80
	cmp r1, #0
	cmpne r1, #0xa
	beq _02187c90
	ldr r8, [sl, #0x2c]
	mov r0, r8
	bl func_02023ea4
	mov r1, r0
	ldr r0, _02187da8 ; =0x0000ffff
	cmp r1, r0
	ldreq r0, [r8]
	ldreqh r1, [r0, #2]
	mov r0, r8
	bl func_02023eec
	ldrsb r1, [r0, #2]
	ldr r0, [sl, #0x30]
	add r7, r7, #1
	add r0, r1, r0
	add r5, r5, r0
_02187c80:
	add r0, sp, #0x10
	bl func_02037604
	cmp r7, r6
	blt _02187c28
_02187c90:
	ldr r0, [sl, #0x30]
	add r1, sp, #0x28
	str r0, [sp, #0xc]
	ldr r3, [sp, #0xc]
	add r0, fp, #7
	mov r2, r4, lsl #0x1
	ldr fp, [sl, #0x2c]
	sub r5, r5, r3
	bl func_02007ad8
	add r1, sp, #0x28
	mov r0, r4, lsl #0x1
	mov r3, #0
	strh r3, [r1, r0]
	ldr r2, _02187dac ; =data_02068e8c
	mov r0, sl
	str r2, [sl, #0x2c]
	str r3, [sl, #0x30]
	bl func_02033cbc
	ldr r1, _02187db0 ; =data_020579f8
	sub r0, r5, r0
	str r1, [sp, #0x14]
	ldr r1, [sb, #4]
	add r0, r0, r0, lsr #31
	str r1, [sp, #0x18]
	ldrsh r3, [sb, #8]
	mov r1, #1
	cmp r4, #0
	strh r3, [sp, #0x1c]
	ldrsh r2, [sb, #0xa]
	add r0, r3, r0, asr #1
	mov r8, #0
	strh r2, [sp, #0x1e]
	ldrsh r2, [sb, #0xc]
	strh r2, [sp, #0x20]
	ldrsh r2, [sb, #0xe]
	strh r2, [sp, #0x22]
	ldr r2, [sb, #0x10]
	str r2, [sp, #0x24]
	strh r0, [sp, #0x1c]
	ldrsh r0, [sb, #0xa]
	sub r0, r0, #9
	strh r0, [sp, #0x1e]
	strh r1, [sp, #0x22]
	bls _02187d74
	mov r7, r8
	add r6, sp, #0x28
	add r5, sp, #0x14
_02187d4c:
	str r7, [sp]
	mov r0, r8, lsl #0x1
	ldrh r1, [r6, r0]
	mov r0, sl
	mov r2, r5
	mov r3, r7
	bl func_020334b4
	add r8, r8, #1
	cmp r8, r4
	blo _02187d4c
_02187d74:
	ldr r0, [sp, #0xc]
	str fp, [sl, #0x2c]
	str r0, [sl, #0x30]
_02187d80:
	ldr r4, [sp, #0x70]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, sl
	mov r1, sb
	str r4, [sp]
	bl func_0203b814
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov40_02187bc0
_02187da4: .word 0x00ff0002
_02187da8: .word 0x0000ffff
_02187dac: .word data_02068e8c
_02187db0: .word data_020579f8

	arm_func_start func_ov40_02187db4
func_ov40_02187db4: ; 0x02187db4
	ldr ip, _02187dc0 ; =func_02039d74
	sub r2, r2, #6
	bx ip
	.align 2, 0
	arm_func_end func_ov40_02187db4
_02187dc0: .word func_02039d74

	arm_func_start func_ov40_02187dc4
func_ov40_02187dc4: ; 0x02187dc4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _02187e30
_02187ddc: ; jump table
	b _02187e30 ; case 0
	b _02187df0 ; case 1
	b _02187dfc ; case 2
	b _02187e20 ; case 3
	b _02187e20 ; case 4
_02187df0:
	mov r0, #4
	str r0, [r5, #0x34]
	b _02187e30
_02187dfc:
	blx func_0202ab48
	cmp r0, #0
	bne _02187e14
	mov r0, #0x17
	str r0, [r5, #0x34]
	b _02187e30
_02187e14:
	mov r0, #0x14
	str r0, [r5, #0x34]
	b _02187e30
_02187e20:
	blx func_0202ab48
	cmp r0, #0
	movne r0, #2
	strne r0, [r5, #0x34]
_02187e30:
	mov r0, r5
	mov r1, r4
	bl func_020337d8
	ldr r1, [r5, #0x18]
	rsb r0, r0, r1, lsl #3
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #0x1
	add r0, r0, #6
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov40_02187dc4

	arm_func_start func_ov40_02187e54
func_ov40_02187e54: ; 0x02187e54
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x388
	bl func_020350ac
	add r0, r4, #0x300
	bl func_020350ac
	add r0, r4, #0x278
	bl func_020350ac
	add r0, r4, #0x1f0
	bl func_020350ac
	add r0, r4, #0x168
	bl func_020350ac
	mov r0, r4
	blx func_02038b1c
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02187e54

	arm_func_start func_ov40_02187e9c
func_ov40_02187e9c: ; 0x02187e9c
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x388
	bl func_020350ac
	add r0, r4, #0x300
	bl func_020350ac
	add r0, r4, #0x278
	bl func_020350ac
	add r0, r4, #0x1f0
	bl func_020350ac
	add r0, r4, #0x168
	bl func_020350ac
	mov r0, r4
	blx func_02038b1c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov40_02187e9c

	arm_func_start func_ov40_02187edc
func_ov40_02187edc: ; 0x02187edc
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r5, r2
	ldr r4, [sp, #0x38]
	cmp r5, #0
	ldr lr, [sp, #0x3c]
	addle sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #0x4e
	cmpne r4, #0xde
	mov lr, lr, asr #0x1
	cmp lr, #0
	addeq sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	add r6, sp, #0x18
	ldmia r1!, {r0, r1, r2}
	stmia r6!, {r0, r1, r2}
	ldr ip, _02187ff4 ; =data_027e0d38
	mov r0, #0
	ldr r1, [ip]
	mov ip, #1
	ldr r1, [r1, #0x18]
	cmp r1, #0x1a
	cmpeq r4, #0x31
	bne _02187f50
	sub r1, r0, #0x1f4
	mov r0, ip
	str r1, [sp, #0x1c]
	b _02187fb8
_02187f50:
	sub r1, r4, #0xef
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02187f74
_02187f60: ; jump table
	b _02187f70 ; case 0
	b _02187f70 ; case 1
	b _02187f70 ; case 2
	b _02187f70 ; case 3
_02187f70:
	mov ip, #0
_02187f74:
	sub r1, r4, #0xef
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02187fb8
_02187f84: ; jump table
	b _02187f94 ; case 0
	b _02187f9c ; case 1
	b _02187f9c ; case 2
	b _02187fac ; case 3
_02187f94:
	mov r0, #1
	b _02187fb8
_02187f9c:
	ldr r1, [sp, #0x1c]
	add r1, r1, #0x800
	str r1, [sp, #0x1c]
	b _02187fb8
_02187fac:
	ldr r1, [sp, #0x1c]
	add r1, r1, #0x1000
	str r1, [sp, #0x1c]
_02187fb8:
	cmp r3, #0
	addeq sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	str r5, [sp]
	mov r1, #0
	stmib sp, {r1, lr}
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, _02187ff8 ; =data_ov00_020e9370
	add r2, sp, #0x18
	mov r3, r5
	str ip, [sp, #0x14]
	bl func_ov05_02102c2c
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov40_02187edc
_02187ff4: .word data_027e0d38
_02187ff8: .word data_ov00_020e9370
data_ov40_02187ffc: ; 0x02187ffc
	.byte 0x63, 0x65, 0x6e, 0x74
	.byte 0x65, 0x72, 0x00, 0x00
data_ov40_02188004: ; 0x02188004
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188008: ; 0x02188008
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218800c: ; 0x0218800c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188010: ; 0x02188010
	.byte 0x53, 0x54, 0x42, 0x00
data_ov40_02188014: ; 0x02188014
	.byte 0x02, 0x00, 0x00, 0x00
data_ov40_02188018: ; 0x02188018
	.byte 0x03, 0x00, 0x00, 0x00
data_ov40_0218801c: ; 0x0218801c
	.byte 0x04, 0x00, 0x00, 0x00
data_ov40_02188020: ; 0x02188020
	.byte 0x05, 0x00, 0x00, 0x00
data_ov40_02188024: ; 0x02188024
	.byte 0x06, 0x00, 0x00, 0x00
data_ov40_02188028: ; 0x02188028
	.byte 0x07, 0x00, 0x00, 0x00
data_ov40_0218802c: ; 0x0218802c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188030: ; 0x02188030
	.byte 0x01, 0x00, 0x00, 0x00
data_ov40_02188034: ; 0x02188034
	.byte 0x02, 0x00, 0x00, 0x00
data_ov40_02188038: ; 0x02188038
	.byte 0x03, 0x00, 0x00, 0x00
data_ov40_0218803c: ; 0x0218803c
	.byte 0x04, 0x00, 0x00, 0x00
data_ov40_02188040: ; 0x02188040
	.byte 0x05, 0x00, 0x00, 0x00
data_ov40_02188044: ; 0x02188044
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188048: ; 0x02188048
	.byte 0x01, 0x00, 0x00, 0x00
data_ov40_0218804c: ; 0x0218804c
	.byte 0x02, 0x00, 0x00, 0x00
data_ov40_02188050: ; 0x02188050
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188054: ; 0x02188054
	.byte 0x01, 0x00, 0x00, 0x00
data_ov40_02188058: ; 0x02188058
	.byte 0x02, 0x00, 0x00, 0x00
data_ov40_0218805c: ; 0x0218805c
	.byte 0x7c, 0x8b, 0x18, 0x02
data_ov40_02188060: ; 0x02188060
	.byte 0x88, 0x8b, 0x18, 0x02
data_ov40_02188064: ; 0x02188064
	.byte 0x14, 0x8d, 0x18, 0x02
data_ov40_02188068: ; 0x02188068
	.byte 0x10, 0x8b, 0x18, 0x02
data_ov40_0218806c: ; 0x0218806c
	.byte 0x24, 0x8c, 0x18, 0x02
data_ov40_02188070: ; 0x02188070
	.byte 0x40, 0x8e, 0x18, 0x02
data_ov40_02188074: ; 0x02188074
	.byte 0x68, 0x8b, 0x18, 0x02
data_ov40_02188078: ; 0x02188078
	.byte 0x00, 0x8d, 0x18, 0x02
data_ov40_0218807c: ; 0x0218807c
	.byte 0x04, 0x8e, 0x18, 0x02
data_ov40_02188080: ; 0x02188080
	.byte 0x6c, 0x8b, 0x18, 0x02
data_ov40_02188084: ; 0x02188084
	.byte 0x98, 0x8b, 0x18, 0x02
data_ov40_02188088: ; 0x02188088
	.byte 0x2c, 0x8e, 0x18, 0x02
data_ov40_0218808c: ; 0x0218808c
	.byte 0x44, 0x8b, 0x18, 0x02
data_ov40_02188090: ; 0x02188090
	.byte 0xc4, 0x8c, 0x18, 0x02
data_ov40_02188094: ; 0x02188094
	.byte 0x54, 0x8e, 0x18, 0x02
data_ov40_02188098: ; 0x02188098
	.byte 0x04, 0x8b, 0x18, 0x02
data_ov40_0218809c: ; 0x0218809c
	.byte 0x68, 0x8e, 0x18, 0x02
data_ov40_021880a0: ; 0x021880a0
	.byte 0x68, 0x90, 0x18, 0x02
data_ov40_021880a4: ; 0x021880a4
	.byte 0x28, 0x8b, 0x18, 0x02
data_ov40_021880a8: ; 0x021880a8
	.byte 0x4c, 0x8c, 0x18, 0x02
data_ov40_021880ac: ; 0x021880ac
	.byte 0xa4, 0x8e, 0x18, 0x02
data_ov40_021880b0: ; 0x021880b0
	.byte 0x08, 0x8b, 0x18, 0x02
data_ov40_021880b4: ; 0x021880b4
	.byte 0x60, 0x8c, 0x18, 0x02
data_ov40_021880b8: ; 0x021880b8
	.byte 0xcc, 0x8e, 0x18, 0x02
data_ov40_021880bc: ; 0x021880bc
	.byte 0x2c, 0x8b, 0x18, 0x02
data_ov40_021880c0: ; 0x021880c0
	.byte 0x38, 0x8c, 0x18, 0x02
data_ov40_021880c4: ; 0x021880c4
	.byte 0xf4, 0x8e, 0x18, 0x02
data_ov40_021880c8: ; 0x021880c8
	.byte 0x4c, 0x8b, 0x18, 0x02
data_ov40_021880cc: ; 0x021880cc
	.byte 0x9c, 0x8c, 0x18, 0x02
data_ov40_021880d0: ; 0x021880d0
	.byte 0x1c, 0x8f, 0x18, 0x02
data_ov40_021880d4: ; 0x021880d4
	.byte 0x1c, 0x8b, 0x18, 0x02
data_ov40_021880d8: ; 0x021880d8
	.byte 0x44, 0x8f, 0x18, 0x02
data_ov40_021880dc: ; 0x021880dc
	.byte 0x98, 0x90, 0x18, 0x02
data_ov40_021880e0: ; 0x021880e0
	.byte 0x50, 0x8b, 0x18, 0x02
data_ov40_021880e4: ; 0x021880e4
	.byte 0xec, 0x8c, 0x18, 0x02
data_ov40_021880e8: ; 0x021880e8
	.byte 0x80, 0x8f, 0x18, 0x02
data_ov40_021880ec: ; 0x021880ec
	.byte 0x40, 0x8b, 0x18, 0x02
data_ov40_021880f0: ; 0x021880f0
	.byte 0xb4, 0x8d, 0x18, 0x02
data_ov40_021880f4: ; 0x021880f4
	.byte 0xa8, 0x8f, 0x18, 0x02
data_ov40_021880f8: ; 0x021880f8
	.byte 0x48, 0x8b, 0x18, 0x02
data_ov40_021880fc: ; 0x021880fc
	.byte 0x3c, 0x8d, 0x18, 0x02
data_ov40_02188100: ; 0x02188100
	.byte 0xc0, 0x8f, 0x18, 0x02
data_ov40_02188104: ; 0x02188104
	.byte 0x74, 0x8b, 0x18, 0x02
data_ov40_02188108: ; 0x02188108
	.byte 0x64, 0x8d, 0x18, 0x02
data_ov40_0218810c: ; 0x0218810c
	.byte 0xd8, 0x8f, 0x18, 0x02
data_ov40_02188110: ; 0x02188110
	.byte 0x60, 0x8b, 0x18, 0x02
data_ov40_02188114: ; 0x02188114
	.byte 0x78, 0x8d, 0x18, 0x02
data_ov40_02188118: ; 0x02188118
	.byte 0x08, 0x90, 0x18, 0x02
data_ov40_0218811c: ; 0x0218811c
	.byte 0x18, 0x8b, 0x18, 0x02
data_ov40_02188120: ; 0x02188120
	.byte 0xe8, 0x8b, 0x18, 0x02
data_ov40_02188124: ; 0x02188124
	.byte 0xa0, 0x8d, 0x18, 0x02
data_ov40_02188128: ; 0x02188128
	.byte 0x38, 0x8b, 0x18, 0x02
data_ov40_0218812c: ; 0x0218812c
	.byte 0x10, 0x8c, 0x18, 0x02
data_ov40_02188130: ; 0x02188130
	.byte 0xf0, 0x8d, 0x18, 0x02
data_ov40_02188134: ; 0x02188134
	.byte 0x78, 0x8b, 0x18, 0x02
data_ov40_02188138: ; 0x02188138
	.byte 0x18, 0x8e, 0x18, 0x02
data_ov40_0218813c: ; 0x0218813c
	.byte 0x38, 0x90, 0x18, 0x02
data_ov40_02188140: ; 0x02188140
	.byte 0x54, 0x8b, 0x18, 0x02
data_ov40_02188144: ; 0x02188144
	.byte 0xd8, 0x8c, 0x18, 0x02
data_ov40_02188148: ; 0x02188148
	.byte 0x90, 0x8e, 0x18, 0x02
data_ov40_0218814c: ; 0x0218814c
	.byte 0x80, 0x8b, 0x18, 0x02
data_ov40_02188150: ; 0x02188150
	.byte 0x74, 0x8c, 0x18, 0x02
data_ov40_02188154: ; 0x02188154
	.byte 0xe0, 0x8e, 0x18, 0x02
data_ov40_02188158: ; 0x02188158
	.byte 0x0c, 0x8b, 0x18, 0x02
data_ov40_0218815c: ; 0x0218815c
	.byte 0xb0, 0x8c, 0x18, 0x02
data_ov40_02188160: ; 0x02188160
	.byte 0x30, 0x8f, 0x18, 0x02
data_ov40_02188164: ; 0x02188164
	.byte 0x58, 0x8b, 0x18, 0x02
data_ov40_02188168: ; 0x02188168
	.byte 0x6c, 0x8f, 0x18, 0x02
data_ov40_0218816c: ; 0x0218816c
	.byte 0xc8, 0x90, 0x18, 0x02
data_ov40_02188170: ; 0x02188170
	.byte 0x64, 0x8b, 0x18, 0x02
data_ov40_02188174: ; 0x02188174
	.byte 0xac, 0x8b, 0x18, 0x02
data_ov40_02188178: ; 0x02188178
	.byte 0x50, 0x8d, 0x18, 0x02
data_ov40_0218817c: ; 0x0218817c
	.byte 0x5c, 0x8b, 0x18, 0x02
data_ov40_02188180: ; 0x02188180
	.byte 0xc0, 0x8b, 0x18, 0x02
data_ov40_02188184: ; 0x02188184
	.byte 0x8c, 0x8d, 0x18, 0x02
data_ov40_02188188: ; 0x02188188
	.byte 0x14, 0x8b, 0x18, 0x02
data_ov40_0218818c: ; 0x0218818c
	.byte 0xc8, 0x8d, 0x18, 0x02
data_ov40_02188190: ; 0x02188190
	.byte 0x20, 0x90, 0x18, 0x02
data_ov40_02188194: ; 0x02188194
	.byte 0x70, 0x8b, 0x18, 0x02
data_ov40_02188198: ; 0x02188198
	.byte 0x7c, 0x8e, 0x18, 0x02
data_ov40_0218819c: ; 0x0218819c
	.byte 0x80, 0x90, 0x18, 0x02
data_ov40_021881a0: ; 0x021881a0
	.byte 0x30, 0x8b, 0x18, 0x02
data_ov40_021881a4: ; 0x021881a4
	.byte 0x08, 0x8f, 0x18, 0x02
data_ov40_021881a8: ; 0x021881a8
	.byte 0xb0, 0x90, 0x18, 0x02
data_ov40_021881ac: ; 0x021881ac
	.byte 0x20, 0x8b, 0x18, 0x02
data_ov40_021881b0: ; 0x021881b0
	.byte 0x28, 0x8d, 0x18, 0x02
data_ov40_021881b4: ; 0x021881b4
	.byte 0xf0, 0x8f, 0x18, 0x02
data_ov40_021881b8: ; 0x021881b8
	.byte 0x3c, 0x8b, 0x18, 0x02
data_ov40_021881bc: ; 0x021881bc
	.byte 0xdc, 0x8d, 0x18, 0x02
data_ov40_021881c0: ; 0x021881c0
	.byte 0x50, 0x90, 0x18, 0x02
data_ov40_021881c4: ; 0x021881c4
	.byte 0x84, 0x8b, 0x18, 0x02
data_ov40_021881c8: ; 0x021881c8
	.byte 0x88, 0x8c, 0x18, 0x02
data_ov40_021881cc: ; 0x021881cc
	.byte 0x94, 0x8f, 0x18, 0x02
data_ov40_021881d0: ; 0x021881d0
	.byte 0x34, 0x8b, 0x18, 0x02
data_ov40_021881d4: ; 0x021881d4
	.byte 0xd4, 0x8b, 0x18, 0x02
data_ov40_021881d8: ; 0x021881d8
	.byte 0xb8, 0x8e, 0x18, 0x02
data_ov40_021881dc: ; 0x021881dc
	.byte 0x24, 0x8b, 0x18, 0x02
data_ov40_021881e0: ; 0x021881e0
	.byte 0xfc, 0x8b, 0x18, 0x02
data_ov40_021881e4: ; 0x021881e4
	.byte 0x58, 0x8f, 0x18, 0x02
data_ov40_021881e8: ; 0x021881e8
	.byte 0x6d, 0x74, 0x5f, 0x64, 0x75, 0x6d, 0x6d, 0x79
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021881f4: ; 0x021881f4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021881f8: ; 0x021881f8
	.byte 0x42, 0x00, 0x00, 0x00
data_ov40_021881fc: ; 0x021881fc
	.byte 0x43, 0x00, 0x00, 0x00
data_ov40_02188200: ; 0x02188200
	.byte 0x07, 0x00
data_ov40_02188202: ; 0x02188202
	.byte 0x04, 0x00
data_ov40_02188204: ; 0x02188204
	.byte 0x0a, 0x00
data_ov40_02188206: ; 0x02188206
	.byte 0x00, 0x00
data_ov40_02188208: ; 0x02188208
	.byte 0x80, 0x00
data_ov40_0218820a: ; 0x0218820a
	.byte 0x00, 0x00
data_ov40_0218820c: ; 0x0218820c
	.byte 0x6f, 0x63, 0x65, 0x61
	.byte 0x6e, 0x5f, 0x64, 0x65, 0x6d, 0x00, 0x00, 0x00
data_ov40_02188218: ; 0x02188218
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218821c: ; 0x0218821c
	.byte 0x66, 0x6e, 0x6c, 0x5f
	.byte 0x73, 0x6d, 0x6f, 0x6b, 0x65, 0x5f, 0x70, 0x74, 0x00, 0x00, 0x00, 0x00
data_ov40_0218822c: ; 0x0218822c
	.byte 0x40, 0x00, 0x00, 0x00
data_ov40_02188230: ; 0x02188230
	.byte 0x08
data_ov40_02188231: ; 0x02188231
	.byte 0x09
data_ov40_02188232: ; 0x02188232
	.byte 0x0a
data_ov40_02188233: ; 0x02188233
	.byte 0x0b
data_ov40_02188234: ; 0x02188234
	.byte 0x0c
data_ov40_02188235: ; 0x02188235
	.byte 0x00
data_ov40_02188236: ; 0x02188236
	.byte 0x00
data_ov40_02188237: ; 0x02188237
	.byte 0x00
data_ov40_02188238: ; 0x02188238
	.byte 0x2c
data_ov40_02188239: ; 0x02188239
	.byte 0x2d
data_ov40_0218823a: ; 0x0218823a
	.byte 0x32
data_ov40_0218823b: ; 0x0218823b
	.byte 0x33
data_ov40_0218823c: ; 0x0218823c
	.byte 0x34
data_ov40_0218823d: ; 0x0218823d
	.byte 0x35
data_ov40_0218823e: ; 0x0218823e
	.byte 0x38
data_ov40_0218823f: ; 0x0218823f
	.byte 0x39
data_ov40_02188240: ; 0x02188240
	.byte 0x3a
data_ov40_02188241: ; 0x02188241
	.byte 0x3b
data_ov40_02188242: ; 0x02188242
	.byte 0x3c
data_ov40_02188243: ; 0x02188243
	.byte 0x00
data_ov40_02188244: ; 0x02188244
	.byte 0x00
data_ov40_02188245: ; 0x02188245
	.byte 0x00
data_ov40_02188246: ; 0x02188246
	.byte 0x00
data_ov40_02188247: ; 0x02188247
	.byte 0x00
data_ov40_02188248: ; 0x02188248
	.byte 0x00
data_ov40_02188249: ; 0x02188249
	.byte 0x00
data_ov40_0218824a: ; 0x0218824a
	.byte 0x00
data_ov40_0218824b: ; 0x0218824b
	.byte 0x00
data_ov40_0218824c: ; 0x0218824c
	.byte 0x00
data_ov40_0218824d: ; 0x0218824d
	.byte 0x3d
data_ov40_0218824e: ; 0x0218824e
	.byte 0x3f
data_ov40_0218824f: ; 0x0218824f
	.byte 0x00
data_ov40_02188250: ; 0x02188250
	.byte 0x00
data_ov40_02188251: ; 0x02188251
	.byte 0x00
data_ov40_02188252: ; 0x02188252
	.byte 0x01
data_ov40_02188253: ; 0x02188253
	.byte 0x0f
data_ov40_02188254: ; 0x02188254
	.byte 0x02
data_ov40_02188255: ; 0x02188255
	.byte 0x00
data_ov40_02188256: ; 0x02188256
	.byte 0x06
data_ov40_02188257: ; 0x02188257
	.byte 0x0f
data_ov40_02188258: ; 0x02188258
	.byte 0x08
data_ov40_02188259: ; 0x02188259
	.byte 0x00
data_ov40_0218825a: ; 0x0218825a
	.byte 0x0c
data_ov40_0218825b: ; 0x0218825b
	.byte 0x0f
data_ov40_0218825c: ; 0x0218825c
	.byte 0x12
data_ov40_0218825d: ; 0x0218825d
	.byte 0x00
data_ov40_0218825e: ; 0x0218825e
	.byte 0x6a
data_ov40_0218825f: ; 0x0218825f
	.byte 0x06
data_ov40_02188260: ; 0x02188260
	.byte 0x02
data_ov40_02188261: ; 0x02188261
	.byte 0x00
data_ov40_02188262: ; 0x02188262
	.byte 0x0c
data_ov40_02188263: ; 0x02188263
	.byte 0x0f
data_ov40_02188264: ; 0x02188264
	.byte 0x13
data_ov40_02188265: ; 0x02188265
	.byte 0x00
data_ov40_02188266: ; 0x02188266
	.byte 0x6a
data_ov40_02188267: ; 0x02188267
	.byte 0x06
data_ov40_02188268: ; 0x02188268
	.byte 0x07
data_ov40_02188269: ; 0x02188269
	.byte 0x00
data_ov40_0218826a: ; 0x0218826a
	.byte 0x0c
data_ov40_0218826b: ; 0x0218826b
	.byte 0x0f
data_ov40_0218826c: ; 0x0218826c
	.byte 0x00
data_ov40_0218826d: ; 0x0218826d
	.byte 0x00
data_ov40_0218826e: ; 0x0218826e
	.byte 0x0f
data_ov40_0218826f: ; 0x0218826f
	.byte 0x0f
data_ov40_02188270: ; 0x02188270
	.byte 0x02
data_ov40_02188271: ; 0x02188271
	.byte 0x00
data_ov40_02188272: ; 0x02188272
	.byte 0x07
data_ov40_02188273: ; 0x02188273
	.byte 0x0f
data_ov40_02188274: ; 0x02188274
	.byte 0x0d
data_ov40_02188275: ; 0x02188275
	.byte 0x08
data_ov40_02188276: ; 0x02188276
	.byte 0x0f
data_ov40_02188277: ; 0x02188277
	.byte 0x0f
data_ov40_02188278: ; 0x02188278
	.byte 0x02
data_ov40_02188279: ; 0x02188279
	.byte 0x00
data_ov40_0218827a: ; 0x0218827a
	.byte 0x03
data_ov40_0218827b: ; 0x0218827b
	.byte 0x0f
data_ov40_0218827c: ; 0x0218827c
	.byte 0x11
data_ov40_0218827d: ; 0x0218827d
	.byte 0x02
data_ov40_0218827e: ; 0x0218827e
	.byte 0x6a
data_ov40_0218827f: ; 0x0218827f
	.byte 0x06
data_ov40_02188280: ; 0x02188280
	.byte 0x36
data_ov40_02188281: ; 0x02188281
	.byte 0x00
data_ov40_02188282: ; 0x02188282
	.byte 0x00
data_ov40_02188283: ; 0x02188283
	.byte 0x00
data_ov40_02188284: ; 0x02188284
	.byte 0xd0
data_ov40_02188285: ; 0x02188285
	.byte 0x98
data_ov40_02188286: ; 0x02188286
	.byte 0x18
data_ov40_02188287: ; 0x02188287
	.byte 0x02
data_ov40_02188288: ; 0x02188288
	.byte 0x3c
data_ov40_02188289: ; 0x02188289
	.byte 0x00
data_ov40_0218828a: ; 0x0218828a
	.byte 0x00
data_ov40_0218828b: ; 0x0218828b
	.byte 0x00
data_ov40_0218828c: ; 0x0218828c
	.byte 0xb8
data_ov40_0218828d: ; 0x0218828d
	.byte 0x98
data_ov40_0218828e: ; 0x0218828e
	.byte 0x18
data_ov40_0218828f: ; 0x0218828f
	.byte 0x02
data_ov40_02188290: ; 0x02188290
	.byte 0x39
data_ov40_02188291: ; 0x02188291
	.byte 0x00
data_ov40_02188292: ; 0x02188292
	.byte 0x00
data_ov40_02188293: ; 0x02188293
	.byte 0x00
data_ov40_02188294: ; 0x02188294
	.byte 0xd8
data_ov40_02188295: ; 0x02188295
	.byte 0x98
data_ov40_02188296: ; 0x02188296
	.byte 0x18
data_ov40_02188297: ; 0x02188297
	.byte 0x02
data_ov40_02188298: ; 0x02188298
	.byte 0x00
data_ov40_02188299: ; 0x02188299
	.byte 0x03
data_ov40_0218829a: ; 0x0218829a
	.byte 0x00
data_ov40_0218829b: ; 0x0218829b
	.byte 0x0f
data_ov40_0218829c: ; 0x0218829c
	.byte 0x01
data_ov40_0218829d: ; 0x0218829d
	.byte 0x03
data_ov40_0218829e: ; 0x0218829e
	.byte 0x01
data_ov40_0218829f: ; 0x0218829f
	.byte 0x0f
data_ov40_021882a0: ; 0x021882a0
	.byte 0xc8
data_ov40_021882a1: ; 0x021882a1
	.byte 0x98
data_ov40_021882a2: ; 0x021882a2
	.byte 0x18
data_ov40_021882a3: ; 0x021882a3
	.byte 0x02
data_ov40_021882a4: ; 0x021882a4
	.byte 0x80
data_ov40_021882a5: ; 0x021882a5
	.byte 0x82
data_ov40_021882a6: ; 0x021882a6
	.byte 0x18
data_ov40_021882a7: ; 0x021882a7
	.byte 0x02
data_ov40_021882a8: ; 0x021882a8
	.byte 0x01
data_ov40_021882a9: ; 0x021882a9
	.byte 0x00
data_ov40_021882aa: ; 0x021882aa
	.byte 0x00
data_ov40_021882ab: ; 0x021882ab
	.byte 0x00
data_ov40_021882ac: ; 0x021882ac
	.byte 0x35
data_ov40_021882ad: ; 0x021882ad
	.byte 0x00
data_ov40_021882ae: ; 0x021882ae
	.byte 0x00
data_ov40_021882af: ; 0x021882af
	.byte 0x00
data_ov40_021882b0: ; 0x021882b0
	.byte 0x37
data_ov40_021882b1: ; 0x021882b1
	.byte 0x00
data_ov40_021882b2: ; 0x021882b2
	.byte 0x00
data_ov40_021882b3: ; 0x021882b3
	.byte 0x00
data_ov40_021882b4: ; 0x021882b4
	.byte 0x01
data_ov40_021882b5: ; 0x021882b5
	.byte 0x00
data_ov40_021882b6: ; 0x021882b6
	.byte 0x00
data_ov40_021882b7: ; 0x021882b7
	.byte 0x00
data_ov40_021882b8: ; 0x021882b8
	.byte 0x68
data_ov40_021882b9: ; 0x021882b9
	.byte 0x82
data_ov40_021882ba: ; 0x021882ba
	.byte 0x18
data_ov40_021882bb: ; 0x021882bb
	.byte 0x02
data_ov40_021882bc: ; 0x021882bc
	.byte 0x01
data_ov40_021882bd: ; 0x021882bd
	.byte 0x00
data_ov40_021882be: ; 0x021882be
	.byte 0x00
data_ov40_021882bf: ; 0x021882bf
	.byte 0x00
data_ov40_021882c0: ; 0x021882c0
	.byte 0xe0
data_ov40_021882c1: ; 0x021882c1
	.byte 0x98
data_ov40_021882c2: ; 0x021882c2
	.byte 0x18
data_ov40_021882c3: ; 0x021882c3
	.byte 0x02
data_ov40_021882c4: ; 0x021882c4
	.byte 0x90
data_ov40_021882c5: ; 0x021882c5
	.byte 0x82
data_ov40_021882c6: ; 0x021882c6
	.byte 0x18
data_ov40_021882c7: ; 0x021882c7
	.byte 0x02
data_ov40_021882c8: ; 0x021882c8
	.byte 0x01
data_ov40_021882c9: ; 0x021882c9
	.byte 0x00
data_ov40_021882ca: ; 0x021882ca
	.byte 0x00
data_ov40_021882cb: ; 0x021882cb
	.byte 0x00
data_ov40_021882cc: ; 0x021882cc
	.byte 0x38
data_ov40_021882cd: ; 0x021882cd
	.byte 0x00
data_ov40_021882ce: ; 0x021882ce
	.byte 0x00
data_ov40_021882cf: ; 0x021882cf
	.byte 0x00
data_ov40_021882d0: ; 0x021882d0
	.byte 0x3a
data_ov40_021882d1: ; 0x021882d1
	.byte 0x00
data_ov40_021882d2: ; 0x021882d2
	.byte 0x00
data_ov40_021882d3: ; 0x021882d3
	.byte 0x00
data_ov40_021882d4: ; 0x021882d4
	.byte 0x01
data_ov40_021882d5: ; 0x021882d5
	.byte 0x00
data_ov40_021882d6: ; 0x021882d6
	.byte 0x00
data_ov40_021882d7: ; 0x021882d7
	.byte 0x00
data_ov40_021882d8: ; 0x021882d8
	.byte 0x78
data_ov40_021882d9: ; 0x021882d9
	.byte 0x82
data_ov40_021882da: ; 0x021882da
	.byte 0x18
data_ov40_021882db: ; 0x021882db
	.byte 0x02
data_ov40_021882dc: ; 0x021882dc
	.byte 0x01
data_ov40_021882dd: ; 0x021882dd
	.byte 0x00
data_ov40_021882de: ; 0x021882de
	.byte 0x00
data_ov40_021882df: ; 0x021882df
	.byte 0x00
data_ov40_021882e0: ; 0x021882e0
	.byte 0xc0
data_ov40_021882e1: ; 0x021882e1
	.byte 0x98
data_ov40_021882e2: ; 0x021882e2
	.byte 0x18
data_ov40_021882e3: ; 0x021882e3
	.byte 0x02
data_ov40_021882e4: ; 0x021882e4
	.byte 0x88
data_ov40_021882e5: ; 0x021882e5
	.byte 0x82
data_ov40_021882e6: ; 0x021882e6
	.byte 0x18
data_ov40_021882e7: ; 0x021882e7
	.byte 0x02
data_ov40_021882e8: ; 0x021882e8
	.byte 0x01
data_ov40_021882e9: ; 0x021882e9
	.byte 0x00
data_ov40_021882ea: ; 0x021882ea
	.byte 0x00
data_ov40_021882eb: ; 0x021882eb
	.byte 0x00
data_ov40_021882ec: ; 0x021882ec
	.byte 0x3b
data_ov40_021882ed: ; 0x021882ed
	.byte 0x00
data_ov40_021882ee: ; 0x021882ee
	.byte 0x00
data_ov40_021882ef: ; 0x021882ef
	.byte 0x00
data_ov40_021882f0: ; 0x021882f0
	.byte 0x3d
data_ov40_021882f1: ; 0x021882f1
	.byte 0x00
data_ov40_021882f2: ; 0x021882f2
	.byte 0x00
data_ov40_021882f3: ; 0x021882f3
	.byte 0x00
data_ov40_021882f4: ; 0x021882f4
	.byte 0x01
data_ov40_021882f5: ; 0x021882f5
	.byte 0x00
data_ov40_021882f6: ; 0x021882f6
	.byte 0x00
data_ov40_021882f7: ; 0x021882f7
	.byte 0x00
data_ov40_021882f8: ; 0x021882f8
	.byte 0x78
data_ov40_021882f9: ; 0x021882f9
	.byte 0x82
data_ov40_021882fa: ; 0x021882fa
	.byte 0x18
data_ov40_021882fb: ; 0x021882fb
	.byte 0x02
data_ov40_021882fc: ; 0x021882fc
	.byte 0x01
data_ov40_021882fd: ; 0x021882fd
	.byte 0x00
data_ov40_021882fe: ; 0x021882fe
	.byte 0x00
data_ov40_021882ff: ; 0x021882ff
	.byte 0x00
data_ov40_02188300: ; 0x02188300
	.byte 0x6d, 0x74, 0x5f, 0x67, 0x64, 0x5f, 0x73, 0x61, 0x6e, 0x64, 0x41, 0x5f, 0x73, 0x00, 0x00, 0x00
data_ov40_02188310: ; 0x02188310
	.asciz "mt_gd_sandA_m"
_0218831e:
	.byte 0x00, 0x00
data_ov40_02188320: ; 0x02188320
	.asciz "mt_gd_sandA_f"
_0218832e:
	.byte 0x00, 0x00
data_ov40_02188330: ; 0x02188330
	.byte 0x6d, 0x74, 0x5f, 0x67, 0x64, 0x5f, 0x73, 0x61, 0x6e, 0x64, 0x42, 0x5f, 0x73, 0x00, 0x00, 0x00
data_ov40_02188340: ; 0x02188340
	.asciz "mt_gd_sandB_m"
_0218834e:
	.byte 0x00, 0x00
data_ov40_02188350: ; 0x02188350
	.asciz "mt_gd_sandB_f"
_0218835e:
	.byte 0x00, 0x00

	arm_func_start func_ov40_02188360
func_ov40_02188360: ; 0x02188360
	stmdb sp!, {r3, lr}
	ldr r0, _0218838c ; =data_ov40_02189acc
	ldr r1, _02188390 ; =0x444d4348
	ldr r2, _02188394 ; =func_ov40_0217bd80
	mov r3, #0
	bl func_0203e784
	ldr r0, _0218838c ; =data_ov40_02189acc
	ldr r1, _02188398 ; =func_0203e7b4
	ldr r2, _0218839c ; =data_ov40_02189ac0
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02188360
_0218838c: .word data_ov40_02189acc
_02188390: .word 0x444d4348
_02188394: .word func_ov40_0217bd80
_02188398: .word func_0203e7b4
_0218839c: .word data_ov40_02189ac0

	arm_func_start func_ov40_021883a0
func_ov40_021883a0: ; 0x021883a0
	stmdb sp!, {r3, lr}
	ldr r0, _021883cc ; =data_ov40_0219a0ec
	ldr r1, _021883d0 ; =0x444d4b53
	ldr r2, _021883d4 ; =func_ov40_02183e24
	mov r3, #0
	bl func_0203e784
	ldr r0, _021883cc ; =data_ov40_0219a0ec
	ldr r1, _021883d8 ; =func_0203e7b4
	ldr r2, _021883dc ; =data_ov40_0219a0e0
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021883a0
_021883cc: .word data_ov40_0219a0ec
_021883d0: .word 0x444d4b53
_021883d4: .word func_ov40_02183e24
_021883d8: .word func_0203e7b4
_021883dc: .word data_ov40_0219a0e0

	arm_func_start func_ov40_021883e0
func_ov40_021883e0: ; 0x021883e0
	stmdb sp!, {r3, lr}
	ldr r0, _0218840c ; =data_ov40_0219a10c
	ldr r1, _02188410 ; =0x444d5452
	ldr r2, _02188414 ; =func_ov40_02184a4c
	mov r3, #0
	bl func_0203e784
	ldr r0, _0218840c ; =data_ov40_0219a10c
	ldr r1, _02188418 ; =func_0203e7b4
	ldr r2, _0218841c ; =data_ov40_0219a100
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021883e0
_0218840c: .word data_ov40_0219a10c
_02188410: .word 0x444d5452
_02188414: .word func_ov40_02184a4c
_02188418: .word func_0203e7b4
_0218841c: .word data_ov40_0219a100

	arm_func_start func_ov40_02188420
func_ov40_02188420: ; 0x02188420
	stmdb sp!, {r3, lr}
	ldr r0, _0218844c ; =data_ov40_0219a12c
	ldr r1, _02188450 ; =0x444d5345
	ldr r2, _02188454 ; =func_ov40_02184e58
	mov r3, #0
	bl func_0203e784
	ldr r0, _0218844c ; =data_ov40_0219a12c
	ldr r1, _02188458 ; =func_0203e7b4
	ldr r2, _0218845c ; =data_ov40_0219a120
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02188420
_0218844c: .word data_ov40_0219a12c
_02188450: .word 0x444d5345
_02188454: .word func_ov40_02184e58
_02188458: .word func_0203e7b4
_0218845c: .word data_ov40_0219a120

	arm_func_start func_ov40_02188460
func_ov40_02188460: ; 0x02188460
	stmdb sp!, {r3, lr}
	blx func_0202ab48
	cmp r0, #0
	moveq r1, #0x14
	beq _0218847c
	blx func_0202ab48
	mov r1, #0x11
_0218847c:
	ldr r0, _021884a8 ; =data_ov40_02189524
	strh r1, [r0]
	blx func_0202ab48
	cmp r0, #0
	moveq r1, #0x2d
	beq _0218849c
	blx func_0202ab48
	mov r1, #0x25
_0218849c:
	ldr r0, _021884a8 ; =data_ov40_02189524
	strh r1, [r0, #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02188460
_021884a8: .word data_ov40_02189524

	arm_func_start func_ov40_021884ac
func_ov40_021884ac: ; 0x021884ac
	stmdb sp!, {r3, lr}
	ldr r0, _021884d8 ; =data_ov40_0219a14c
	ldr r1, _021884dc ; =0x444d5350
	ldr r2, _021884e0 ; =func_ov40_021853f0
	mov r3, #0
	bl func_0203e784
	ldr r0, _021884d8 ; =data_ov40_0219a14c
	ldr r1, _021884e4 ; =func_0203e7b4
	ldr r2, _021884e8 ; =data_ov40_0219a140
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021884ac
_021884d8: .word data_ov40_0219a14c
_021884dc: .word 0x444d5350
_021884e0: .word func_ov40_021853f0
_021884e4: .word func_0203e7b4
_021884e8: .word data_ov40_0219a140

	arm_func_start func_ov40_021884ec
func_ov40_021884ec: ; 0x021884ec
	stmdb sp!, {r3, lr}
	ldr r0, _02188518 ; =data_ov40_0219a16c
	ldr r1, _0218851c ; =0x444d4556
	ldr r2, _02188520 ; =func_ov40_021857cc
	mov r3, #0
	bl func_0203e784
	ldr r0, _02188518 ; =data_ov40_0219a16c
	ldr r1, _02188524 ; =func_0203e7b4
	ldr r2, _02188528 ; =data_ov40_0219a160
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021884ec
_02188518: .word data_ov40_0219a16c
_0218851c: .word 0x444d4556
_02188520: .word func_ov40_021857cc
_02188524: .word func_0203e7b4
_02188528: .word data_ov40_0219a160

	arm_func_start func_ov40_0218852c
func_ov40_0218852c: ; 0x0218852c
	stmdb sp!, {r3, lr}
	blx func_0202ab48
	cmp r0, #0
	moveq r1, #0x14
	beq _02188548
	blx func_0202ab48
	mov r1, #0x11
_02188548:
	ldr r0, _02188574 ; =data_ov40_021897d4
	strh r1, [r0, #0x20]
	blx func_0202ab48
	cmp r0, #0
	moveq r1, #0x2d
	beq _02188568
	blx func_0202ab48
	mov r1, #0x25
_02188568:
	ldr r0, _02188574 ; =data_ov40_021897d4
	strh r1, [r0, #0x22]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_0218852c
_02188574: .word data_ov40_021897d4

	arm_func_start func_ov40_02188578
func_ov40_02188578: ; 0x02188578
	stmdb sp!, {r3, lr}
	blx func_0202ab48
	cmp r0, #0
	moveq r1, #0x14
	beq _02188594
	blx func_0202ab48
	mov r1, #0x11
_02188594:
	ldr r0, _021885c0 ; =data_ov40_021898b4
	strh r1, [r0]
	blx func_0202ab48
	cmp r0, #0
	moveq r1, #0x2d
	beq _021885b4
	blx func_0202ab48
	mov r1, #0x25
_021885b4:
	ldr r0, _021885c0 ; =data_ov40_021898b4
	strh r1, [r0, #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_02188578
_021885c0: .word data_ov40_021898b4

	arm_func_start func_ov40_021885c4
func_ov40_021885c4: ; 0x021885c4
	stmdb sp!, {r3, lr}
	ldr r0, _021885f0 ; =data_ov40_0219a18c
	ldr r1, _021885f4 ; =0x444d4847
	ldr r2, _021885f8 ; =func_ov40_02187380
	mov r3, #0
	bl func_0203e784
	ldr r0, _021885f0 ; =data_ov40_0219a18c
	ldr r1, _021885fc ; =func_0203e7b4
	ldr r2, _02188600 ; =data_ov40_0219a180
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov40_021885c4
_021885f0: .word data_ov40_0219a18c
_021885f4: .word 0x444d4847
_021885f8: .word func_ov40_02187380
_021885fc: .word func_0203e7b4
_02188600: .word data_ov40_0219a180
data_ov40_02188604: ; 0x02188604
	.byte 0x60, 0x83, 0x18, 0x02
data_ov40_02188608: ; 0x02188608
	.byte 0xa0, 0x83, 0x18, 0x02
data_ov40_0218860c: ; 0x0218860c
	.byte 0xe0, 0x83, 0x18, 0x02
data_ov40_02188610: ; 0x02188610
	.byte 0x20, 0x84, 0x18, 0x02
data_ov40_02188614: ; 0x02188614
	.byte 0x60, 0x84, 0x18, 0x02
data_ov40_02188618: ; 0x02188618
	.byte 0xac, 0x84, 0x18, 0x02
data_ov40_0218861c: ; 0x0218861c
	.byte 0xec, 0x84, 0x18, 0x02
data_ov40_02188620: ; 0x02188620
	.byte 0x2c, 0x85, 0x18, 0x02
data_ov40_02188624: ; 0x02188624
	.byte 0x78, 0x85, 0x18, 0x02
data_ov40_02188628: ; 0x02188628
	.byte 0xc4, 0x85, 0x18, 0x02
data_ov40_0218862c: ; 0x0218862c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188630: ; 0x02188630
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188634: ; 0x02188634
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188638: ; 0x02188638
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218863c: ; 0x0218863c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188640: ; 0x02188640
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_02188644: ; 0x02188644
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_02188648: ; 0x02188648
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_0218864c: ; 0x0218864c
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_02188650: ; 0x02188650
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_02188654: ; 0x02188654
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_02188658: ; 0x02188658
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_0218865c: ; 0x0218865c
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_02188660: ; 0x02188660
	.byte 0x5c, 0x86, 0x18, 0x02
data_ov40_02188664: ; 0x02188664
	.byte 0x58, 0x86, 0x18, 0x02
data_ov40_02188668: ; 0x02188668
	.byte 0x54, 0x86, 0x18, 0x02
data_ov40_0218866c: ; 0x0218866c
	.byte 0x50, 0x86, 0x18, 0x02
data_ov40_02188670: ; 0x02188670
	.byte 0x4c, 0x86, 0x18, 0x02
data_ov40_02188674: ; 0x02188674
	.byte 0x48, 0x86, 0x18, 0x02
data_ov40_02188678: ; 0x02188678
	.byte 0x44, 0x86, 0x18, 0x02
data_ov40_0218867c: ; 0x0218867c
	.byte 0x40, 0x86, 0x18, 0x02
data_ov40_02188680: ; 0x02188680
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188684: ; 0x02188684
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188688: ; 0x02188688
	.byte 0xac, 0xc0, 0x17, 0x02
data_ov40_0218868c: ; 0x0218868c
	.byte 0x58, 0xc1, 0x17, 0x02
data_ov40_02188690: ; 0x02188690
	.byte 0xb8, 0xc2, 0x17, 0x02
data_ov40_02188694: ; 0x02188694
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_02188698: ; 0x02188698
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_0218869c: ; 0x0218869c
	.byte 0x68, 0xd3, 0x17, 0x02
data_ov40_021886a0: ; 0x021886a0
	.byte 0xf8, 0xd3, 0x17, 0x02
data_ov40_021886a4: ; 0x021886a4
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_021886a8: ; 0x021886a8
	.byte 0x0c, 0xd4, 0x17, 0x02
data_ov40_021886ac: ; 0x021886ac
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_021886b0: ; 0x021886b0
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_021886b4: ; 0x021886b4
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_021886b8: ; 0x021886b8
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_021886bc: ; 0x021886bc
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_021886c0: ; 0x021886c0
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_021886c4: ; 0x021886c4
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_021886c8: ; 0x021886c8
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_021886cc: ; 0x021886cc
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_021886d0: ; 0x021886d0
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_021886d4: ; 0x021886d4
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_021886d8: ; 0x021886d8
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_021886dc: ; 0x021886dc
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_021886e0: ; 0x021886e0
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_021886e4: ; 0x021886e4
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_021886e8: ; 0x021886e8
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_021886ec: ; 0x021886ec
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_021886f0: ; 0x021886f0
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_021886f4: ; 0x021886f4
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_021886f8: ; 0x021886f8
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_021886fc: ; 0x021886fc
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_02188700: ; 0x02188700
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_02188704: ; 0x02188704
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_02188708: ; 0x02188708
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_0218870c: ; 0x0218870c
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_02188710: ; 0x02188710
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_02188714: ; 0x02188714
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_02188718: ; 0x02188718
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_0218871c: ; 0x0218871c
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_02188720: ; 0x02188720
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_02188724: ; 0x02188724
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_02188728: ; 0x02188728
	.byte 0xa0, 0xd2, 0x17, 0x02
data_ov40_0218872c: ; 0x0218872c
	.byte 0xfc, 0xd2, 0x17, 0x02
data_ov40_02188730: ; 0x02188730
	.byte 0x5c, 0xd3, 0x17, 0x02
data_ov40_02188734: ; 0x02188734
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_02188738: ; 0x02188738
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_0218873c: ; 0x0218873c
	.byte 0x3c, 0xd8, 0x17, 0x02
data_ov40_02188740: ; 0x02188740
	.byte 0x64, 0xd8, 0x17, 0x02
data_ov40_02188744: ; 0x02188744
	.byte 0x98, 0xd8, 0x17, 0x02
data_ov40_02188748: ; 0x02188748
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218874c: ; 0x0218874c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188750: ; 0x02188750
	.byte 0x6d, 0x9b, 0x0a, 0x02
data_ov40_02188754: ; 0x02188754
	.byte 0x79, 0x9b, 0x0a, 0x02
data_ov40_02188758: ; 0x02188758
	.byte 0x53, 0x45, 0x00, 0x00
data_ov40_0218875c: ; 0x0218875c
	.byte 0x7c, 0x87, 0x18, 0x02
data_ov40_02188760: ; 0x02188760
	.byte 0x84, 0x87, 0x18, 0x02
data_ov40_02188764: ; 0x02188764
	.byte 0x58, 0x87, 0x18, 0x02
data_ov40_02188768: ; 0x02188768
	.byte 0x74, 0x87, 0x18, 0x02
data_ov40_0218876c: ; 0x0218876c
	.byte 0x70, 0x87, 0x18, 0x02
data_ov40_02188770: ; 0x02188770
	.byte 0x42, 0x47, 0x4d, 0x00
data_ov40_02188774: ; 0x02188774
	.byte 0x4c, 0x49, 0x4e, 0x4b, 0x00, 0x00, 0x00, 0x00
data_ov40_0218877c: ; 0x0218877c
	.byte 0x4d, 0x43, 0x41, 0x4d
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188784: ; 0x02188784
	.byte 0x53, 0x43, 0x41, 0x4d, 0x00, 0x00, 0x00, 0x00
data_ov40_0218878c: ; 0x0218878c
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_02188790: ; 0x02188790
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_02188794: ; 0x02188794
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_02188798: ; 0x02188798
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_0218879c: ; 0x0218879c
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_021887a0: ; 0x021887a0
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_021887a4: ; 0x021887a4
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_021887a8: ; 0x021887a8
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_021887ac: ; 0x021887ac
	.byte 0xa8, 0x87, 0x18, 0x02
data_ov40_021887b0: ; 0x021887b0
	.byte 0xa4, 0x87, 0x18, 0x02
data_ov40_021887b4: ; 0x021887b4
	.byte 0xa0, 0x87, 0x18, 0x02
data_ov40_021887b8: ; 0x021887b8
	.byte 0x9c, 0x87, 0x18, 0x02
data_ov40_021887bc: ; 0x021887bc
	.byte 0x98, 0x87, 0x18, 0x02
data_ov40_021887c0: ; 0x021887c0
	.byte 0x94, 0x87, 0x18, 0x02
data_ov40_021887c4: ; 0x021887c4
	.byte 0x90, 0x87, 0x18, 0x02
data_ov40_021887c8: ; 0x021887c8
	.byte 0x8c, 0x87, 0x18, 0x02
data_ov40_021887cc: ; 0x021887cc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021887d0: ; 0x021887d0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021887d4: ; 0x021887d4
	.byte 0x58, 0x23, 0x18, 0x02
data_ov40_021887d8: ; 0x021887d8
	.byte 0x6c, 0x23, 0x18, 0x02
data_ov40_021887dc: ; 0x021887dc
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_021887e0: ; 0x021887e0
	.byte 0x88, 0x23, 0x18, 0x02
data_ov40_021887e4: ; 0x021887e4
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_021887e8: ; 0x021887e8
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_021887ec: ; 0x021887ec
	.byte 0xac, 0xf4, 0x17, 0x02
data_ov40_021887f0: ; 0x021887f0
	.byte 0xb4, 0xf4, 0x17, 0x02
data_ov40_021887f4: ; 0x021887f4
	.byte 0xbc, 0xf4, 0x17, 0x02
data_ov40_021887f8: ; 0x021887f8
	.byte 0x04, 0xef, 0x17, 0x02
data_ov40_021887fc: ; 0x021887fc
	.byte 0xac, 0x24, 0x18, 0x02
data_ov40_02188800: ; 0x02188800
	.byte 0xc0, 0x24, 0x18, 0x02
data_ov40_02188804: ; 0x02188804
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_02188808: ; 0x02188808
	.byte 0xdc, 0x24, 0x18, 0x02
data_ov40_0218880c: ; 0x0218880c
	.byte 0x70, 0x24, 0x18, 0x02
data_ov40_02188810: ; 0x02188810
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188814: ; 0x02188814
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188818: ; 0x02188818
	.byte 0xe8, 0x1c, 0x18, 0x02
data_ov40_0218881c: ; 0x0218881c
	.byte 0x18, 0x1d, 0x18, 0x02
data_ov40_02188820: ; 0x02188820
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_02188824: ; 0x02188824
	.byte 0x50, 0x1d, 0x18, 0x02
data_ov40_02188828: ; 0x02188828
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_0218882c: ; 0x0218882c
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_02188830: ; 0x02188830
	.byte 0xac, 0xf4, 0x17, 0x02
data_ov40_02188834: ; 0x02188834
	.byte 0xb4, 0xf4, 0x17, 0x02
data_ov40_02188838: ; 0x02188838
	.byte 0xbc, 0xf4, 0x17, 0x02
data_ov40_0218883c: ; 0x0218883c
	.byte 0x04, 0xef, 0x17, 0x02
data_ov40_02188840: ; 0x02188840
	.byte 0x08, 0xef, 0x17, 0x02
data_ov40_02188844: ; 0x02188844
	.byte 0x9c, 0x1d, 0x18, 0x02
data_ov40_02188848: ; 0x02188848
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_0218884c: ; 0x0218884c
	.byte 0xf4, 0x22, 0x18, 0x02
data_ov40_02188850: ; 0x02188850
	.byte 0x20, 0xef, 0x17, 0x02
data_ov40_02188854: ; 0x02188854
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188858: ; 0x02188858
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218885c: ; 0x0218885c
	.byte 0x40, 0x19, 0x18, 0x02
data_ov40_02188860: ; 0x02188860
	.byte 0x78, 0x19, 0x18, 0x02
data_ov40_02188864: ; 0x02188864
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_02188868: ; 0x02188868
	.byte 0xb8, 0x19, 0x18, 0x02
data_ov40_0218886c: ; 0x0218886c
	.byte 0xe4, 0x19, 0x18, 0x02
data_ov40_02188870: ; 0x02188870
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_02188874: ; 0x02188874
	.byte 0xac, 0xf4, 0x17, 0x02
data_ov40_02188878: ; 0x02188878
	.byte 0xb4, 0xf4, 0x17, 0x02
data_ov40_0218887c: ; 0x0218887c
	.byte 0xbc, 0xf4, 0x17, 0x02
data_ov40_02188880: ; 0x02188880
	.byte 0x04, 0xef, 0x17, 0x02
data_ov40_02188884: ; 0x02188884
	.byte 0x0c, 0x1a, 0x18, 0x02
data_ov40_02188888: ; 0x02188888
	.byte 0x34, 0x1a, 0x18, 0x02
data_ov40_0218888c: ; 0x0218888c
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_02188890: ; 0x02188890
	.byte 0xe0, 0x1a, 0x18, 0x02
data_ov40_02188894: ; 0x02188894
	.byte 0x20, 0xef, 0x17, 0x02
data_ov40_02188898: ; 0x02188898
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218889c: ; 0x0218889c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021888a0: ; 0x021888a0
	.byte 0x60, 0x11, 0x18, 0x02
data_ov40_021888a4: ; 0x021888a4
	.byte 0xac, 0x11, 0x18, 0x02
data_ov40_021888a8: ; 0x021888a8
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_021888ac: ; 0x021888ac
	.byte 0x00, 0x12, 0x18, 0x02
data_ov40_021888b0: ; 0x021888b0
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_021888b4: ; 0x021888b4
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_021888b8: ; 0x021888b8
	.byte 0xac, 0xf4, 0x17, 0x02
data_ov40_021888bc: ; 0x021888bc
	.byte 0xb4, 0xf4, 0x17, 0x02
data_ov40_021888c0: ; 0x021888c0
	.byte 0xbc, 0xf4, 0x17, 0x02
data_ov40_021888c4: ; 0x021888c4
	.byte 0x04, 0xef, 0x17, 0x02
data_ov40_021888c8: ; 0x021888c8
	.byte 0x9c, 0x15, 0x18, 0x02
data_ov40_021888cc: ; 0x021888cc
	.byte 0xb0, 0x13, 0x18, 0x02
data_ov40_021888d0: ; 0x021888d0
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_021888d4: ; 0x021888d4
	.byte 0x1c, 0xef, 0x17, 0x02
data_ov40_021888d8: ; 0x021888d8
	.byte 0x20, 0xef, 0x17, 0x02
data_ov40_021888dc: ; 0x021888dc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021888e0: ; 0x021888e0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021888e4: ; 0x021888e4
	.byte 0x8c, 0x0b, 0x18, 0x02
data_ov40_021888e8: ; 0x021888e8
	.byte 0xbc, 0x0b, 0x18, 0x02
data_ov40_021888ec: ; 0x021888ec
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_021888f0: ; 0x021888f0
	.byte 0xf4, 0x0b, 0x18, 0x02
data_ov40_021888f4: ; 0x021888f4
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_021888f8: ; 0x021888f8
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_021888fc: ; 0x021888fc
	.byte 0x30, 0x0c, 0x18, 0x02
data_ov40_02188900: ; 0x02188900
	.byte 0x38, 0x0c, 0x18, 0x02
data_ov40_02188904: ; 0x02188904
	.byte 0xb8, 0x0c, 0x18, 0x02
data_ov40_02188908: ; 0x02188908
	.byte 0x94, 0x0f, 0x18, 0x02
data_ov40_0218890c: ; 0x0218890c
	.byte 0xd0, 0x0f, 0x18, 0x02
data_ov40_02188910: ; 0x02188910
	.byte 0x38, 0x0d, 0x18, 0x02
data_ov40_02188914: ; 0x02188914
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_02188918: ; 0x02188918
	.byte 0x1c, 0xef, 0x17, 0x02
data_ov40_0218891c: ; 0x0218891c
	.byte 0xf4, 0x0f, 0x18, 0x02
data_ov40_02188920: ; 0x02188920
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188924: ; 0x02188924
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188928: ; 0x02188928
	.byte 0x50, 0x06, 0x18, 0x02
data_ov40_0218892c: ; 0x0218892c
	.byte 0x64, 0x06, 0x18, 0x02
data_ov40_02188930: ; 0x02188930
	.byte 0x04, 0xfe, 0x17, 0x02
data_ov40_02188934: ; 0x02188934
	.byte 0x80, 0x06, 0x18, 0x02
data_ov40_02188938: ; 0x02188938
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_0218893c: ; 0x0218893c
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_02188940: ; 0x02188940
	.byte 0x4c, 0x07, 0x18, 0x02
data_ov40_02188944: ; 0x02188944
	.byte 0x90, 0x07, 0x18, 0x02
data_ov40_02188948: ; 0x02188948
	.byte 0xe8, 0x07, 0x18, 0x02
data_ov40_0218894c: ; 0x0218894c
	.byte 0x1c, 0x08, 0x18, 0x02
data_ov40_02188950: ; 0x02188950
	.byte 0xe8, 0x08, 0x18, 0x02
data_ov40_02188954: ; 0x02188954
	.byte 0x78, 0x01, 0x18, 0x02
data_ov40_02188958: ; 0x02188958
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_0218895c: ; 0x0218895c
	.byte 0x08, 0x09, 0x18, 0x02
data_ov40_02188960: ; 0x02188960
	.byte 0x9c, 0x00, 0x18, 0x02
data_ov40_02188964: ; 0x02188964
	.byte 0xa0, 0x09, 0x18, 0x02
data_ov40_02188968: ; 0x02188968
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218896c: ; 0x0218896c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188970: ; 0x02188970
	.byte 0xac, 0xf9, 0x17, 0x02
data_ov40_02188974: ; 0x02188974
	.byte 0xdc, 0xf9, 0x17, 0x02
data_ov40_02188978: ; 0x02188978
	.byte 0x04, 0xfe, 0x17, 0x02
data_ov40_0218897c: ; 0x0218897c
	.byte 0x14, 0xfd, 0x17, 0x02
data_ov40_02188980: ; 0x02188980
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_02188984: ; 0x02188984
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_02188988: ; 0x02188988
	.byte 0x74, 0xfe, 0x17, 0x02
data_ov40_0218898c: ; 0x0218898c
	.byte 0xc0, 0xfe, 0x17, 0x02
data_ov40_02188990: ; 0x02188990
	.byte 0x20, 0xff, 0x17, 0x02
data_ov40_02188994: ; 0x02188994
	.byte 0x74, 0xff, 0x17, 0x02
data_ov40_02188998: ; 0x02188998
	.byte 0x60, 0x00, 0x18, 0x02
data_ov40_0218899c: ; 0x0218899c
	.byte 0x78, 0x01, 0x18, 0x02
data_ov40_021889a0: ; 0x021889a0
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_021889a4: ; 0x021889a4
	.byte 0xa0, 0x00, 0x18, 0x02
data_ov40_021889a8: ; 0x021889a8
	.byte 0x9c, 0x00, 0x18, 0x02
data_ov40_021889ac: ; 0x021889ac
	.byte 0x7c, 0x04, 0x18, 0x02
data_ov40_021889b0: ; 0x021889b0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021889b4: ; 0x021889b4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021889b8: ; 0x021889b8
	.byte 0x04, 0xf5, 0x17, 0x02
data_ov40_021889bc: ; 0x021889bc
	.byte 0x18, 0xf5, 0x17, 0x02
data_ov40_021889c0: ; 0x021889c0
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_021889c4: ; 0x021889c4
	.byte 0xb4, 0xee, 0x17, 0x02
data_ov40_021889c8: ; 0x021889c8
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_021889cc: ; 0x021889cc
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_021889d0: ; 0x021889d0
	.byte 0xac, 0xf4, 0x17, 0x02
data_ov40_021889d4: ; 0x021889d4
	.byte 0xb4, 0xf4, 0x17, 0x02
data_ov40_021889d8: ; 0x021889d8
	.byte 0xbc, 0xf4, 0x17, 0x02
data_ov40_021889dc: ; 0x021889dc
	.byte 0x04, 0xef, 0x17, 0x02
data_ov40_021889e0: ; 0x021889e0
	.byte 0x08, 0xef, 0x17, 0x02
data_ov40_021889e4: ; 0x021889e4
	.byte 0x0c, 0xef, 0x17, 0x02
data_ov40_021889e8: ; 0x021889e8
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_021889ec: ; 0x021889ec
	.byte 0x34, 0xf5, 0x17, 0x02
data_ov40_021889f0: ; 0x021889f0
	.byte 0x20, 0xef, 0x17, 0x02
data_ov40_021889f4: ; 0x021889f4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021889f8: ; 0x021889f8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021889fc: ; 0x021889fc
	.byte 0x00, 0xec, 0x17, 0x02
data_ov40_02188a00: ; 0x02188a00
	.byte 0x10, 0xec, 0x17, 0x02
data_ov40_02188a04: ; 0x02188a04
	.byte 0x68, 0xec, 0x17, 0x02
data_ov40_02188a08: ; 0x02188a08
	.byte 0xb4, 0xee, 0x17, 0x02
data_ov40_02188a0c: ; 0x02188a0c
	.byte 0x7c, 0xf4, 0x17, 0x02
data_ov40_02188a10: ; 0x02188a10
	.byte 0x88, 0xf4, 0x17, 0x02
data_ov40_02188a14: ; 0x02188a14
	.byte 0xac, 0xf4, 0x17, 0x02
data_ov40_02188a18: ; 0x02188a18
	.byte 0xb4, 0xf4, 0x17, 0x02
data_ov40_02188a1c: ; 0x02188a1c
	.byte 0xbc, 0xf4, 0x17, 0x02
data_ov40_02188a20: ; 0x02188a20
	.byte 0x04, 0xef, 0x17, 0x02
data_ov40_02188a24: ; 0x02188a24
	.byte 0x08, 0xef, 0x17, 0x02
data_ov40_02188a28: ; 0x02188a28
	.byte 0x0c, 0xef, 0x17, 0x02
data_ov40_02188a2c: ; 0x02188a2c
	.byte 0x10, 0xef, 0x17, 0x02
data_ov40_02188a30: ; 0x02188a30
	.byte 0x1c, 0xef, 0x17, 0x02
data_ov40_02188a34: ; 0x02188a34
	.byte 0x20, 0xef, 0x17, 0x02
data_ov40_02188a38: ; 0x02188a38
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_02188a3c: ; 0x02188a3c
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_02188a40: ; 0x02188a40
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_02188a44: ; 0x02188a44
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_02188a48: ; 0x02188a48
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_02188a4c: ; 0x02188a4c
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_02188a50: ; 0x02188a50
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_02188a54: ; 0x02188a54
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_02188a58: ; 0x02188a58
	.byte 0x54, 0x8a, 0x18, 0x02
data_ov40_02188a5c: ; 0x02188a5c
	.byte 0x50, 0x8a, 0x18, 0x02
data_ov40_02188a60: ; 0x02188a60
	.byte 0x4c, 0x8a, 0x18, 0x02
data_ov40_02188a64: ; 0x02188a64
	.byte 0x48, 0x8a, 0x18, 0x02
data_ov40_02188a68: ; 0x02188a68
	.byte 0x44, 0x8a, 0x18, 0x02
data_ov40_02188a6c: ; 0x02188a6c
	.byte 0x40, 0x8a, 0x18, 0x02
data_ov40_02188a70: ; 0x02188a70
	.byte 0x3c, 0x8a, 0x18, 0x02
data_ov40_02188a74: ; 0x02188a74
	.byte 0x38, 0x8a, 0x18, 0x02
data_ov40_02188a78: ; 0x02188a78
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188a7c: ; 0x02188a7c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188a80: ; 0x02188a80
	.byte 0xe4, 0x25, 0x18, 0x02
data_ov40_02188a84: ; 0x02188a84
	.byte 0x38, 0x26, 0x18, 0x02
data_ov40_02188a88: ; 0x02188a88
	.byte 0x94, 0x26, 0x18, 0x02
data_ov40_02188a8c: ; 0x02188a8c
	.byte 0xb0, 0x27, 0x18, 0x02
data_ov40_02188a90: ; 0x02188a90
	.byte 0x20, 0x28, 0x18, 0x02
data_ov40_02188a94: ; 0x02188a94
	.byte 0x50, 0x28, 0x18, 0x02
data_ov40_02188a98: ; 0x02188a98
	.byte 0x78, 0x28, 0x18, 0x02
data_ov40_02188a9c: ; 0x02188a9c
	.byte 0xa0, 0x28, 0x18, 0x02
data_ov40_02188aa0: ; 0x02188aa0
	.byte 0xfc, 0x28, 0x18, 0x02
data_ov40_02188aa4: ; 0x02188aa4
	.byte 0x60, 0x29, 0x18, 0x02
data_ov40_02188aa8: ; 0x02188aa8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188aac: ; 0x02188aac
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188ab0: ; 0x02188ab0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188ab4: ; 0x02188ab4
	.byte 0xc4, 0x63, 0x0a, 0x02
data_ov40_02188ab8: ; 0x02188ab8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188abc: ; 0x02188abc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188ac0: ; 0x02188ac0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188ac4: ; 0x02188ac4
	.byte 0x14, 0x2e, 0x18, 0x02
data_ov40_02188ac8: ; 0x02188ac8
	.byte 0x78, 0x2e, 0x18, 0x02
data_ov40_02188acc: ; 0x02188acc
	.byte 0x48, 0x2e, 0x18, 0x02
data_ov40_02188ad0: ; 0x02188ad0
	.byte 0x50, 0x2e, 0x18, 0x02
data_ov40_02188ad4: ; 0x02188ad4
	.byte 0x5c, 0x2e, 0x18, 0x02
data_ov40_02188ad8: ; 0x02188ad8
	.byte 0x60, 0x2e, 0x18, 0x02
data_ov40_02188adc: ; 0x02188adc
	.byte 0x68, 0x2e, 0x18, 0x02
data_ov40_02188ae0: ; 0x02188ae0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188ae4: ; 0x02188ae4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188ae8: ; 0x02188ae8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188aec: ; 0x02188aec
	.byte 0x18, 0xed, 0x09, 0x02
data_ov40_02188af0: ; 0x02188af0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188af4: ; 0x02188af4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188af8: ; 0x02188af8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188afc: ; 0x02188afc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188b00: ; 0x02188b00
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188b04: ; 0x02188b04
	.byte 0x44, 0x35, 0x32, 0x00
data_ov40_02188b08: ; 0x02188b08
	.byte 0x44, 0x31, 0x34, 0x00
data_ov40_02188b0c: ; 0x02188b0c
	.byte 0x44, 0x33, 0x30, 0x00
data_ov40_02188b10: ; 0x02188b10
	.byte 0x44, 0x30, 0x31, 0x00
data_ov40_02188b14: ; 0x02188b14
	.byte 0x44, 0x36, 0x33, 0x00
data_ov40_02188b18: ; 0x02188b18
	.byte 0x44, 0x32, 0x34, 0x00
data_ov40_02188b1c: ; 0x02188b1c
	.byte 0x44, 0x38, 0x32, 0x00
data_ov40_02188b20: ; 0x02188b20
	.byte 0x44, 0x33, 0x38, 0x00
data_ov40_02188b24: ; 0x02188b24
	.byte 0x44, 0x34, 0x32, 0x00
data_ov40_02188b28: ; 0x02188b28
	.byte 0x44, 0x31, 0x30, 0x00
data_ov40_02188b2c: ; 0x02188b2c
	.byte 0x44, 0x31, 0x37, 0x00
data_ov40_02188b30: ; 0x02188b30
	.byte 0x44, 0x34, 0x37, 0x00
data_ov40_02188b34: ; 0x02188b34
	.byte 0x44, 0x34, 0x31, 0x00
data_ov40_02188b38: ; 0x02188b38
	.byte 0x44, 0x32, 0x36, 0x00
data_ov40_02188b3c: ; 0x02188b3c
	.byte 0x44, 0x33, 0x39, 0x00
data_ov40_02188b40: ; 0x02188b40
	.byte 0x44, 0x33, 0x31, 0x00
data_ov40_02188b44: ; 0x02188b44
	.byte 0x44, 0x30, 0x35, 0x00
data_ov40_02188b48: ; 0x02188b48
	.byte 0x44, 0x33, 0x32, 0x00
data_ov40_02188b4c: ; 0x02188b4c
	.byte 0x44, 0x31, 0x38, 0x00
data_ov40_02188b50: ; 0x02188b50
	.byte 0x44, 0x32, 0x31, 0x00
data_ov40_02188b54: ; 0x02188b54
	.byte 0x44, 0x32, 0x38, 0x00
data_ov40_02188b58: ; 0x02188b58
	.byte 0x44, 0x31, 0x32, 0x00
data_ov40_02188b5c: ; 0x02188b5c
	.byte 0x44, 0x32, 0x37, 0x00
data_ov40_02188b60: ; 0x02188b60
	.byte 0x44, 0x33, 0x34, 0x00
data_ov40_02188b64: ; 0x02188b64
	.byte 0x44, 0x30, 0x30, 0x00
data_ov40_02188b68: ; 0x02188b68
	.byte 0x44, 0x30, 0x32, 0x00
data_ov40_02188b6c: ; 0x02188b6c
	.byte 0x44, 0x30, 0x33, 0x00
data_ov40_02188b70: ; 0x02188b70
	.byte 0x44, 0x33, 0x37, 0x00
data_ov40_02188b74: ; 0x02188b74
	.byte 0x44, 0x33, 0x33, 0x00
data_ov40_02188b78: ; 0x02188b78
	.byte 0x44, 0x36, 0x32, 0x00
data_ov40_02188b7c: ; 0x02188b7c
	.byte 0x44, 0x4d, 0x54, 0x00
data_ov40_02188b80: ; 0x02188b80
	.byte 0x44, 0x32, 0x39, 0x00
data_ov40_02188b84: ; 0x02188b84
	.byte 0x44, 0x34, 0x30, 0x00
data_ov40_02188b88: ; 0x02188b88
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x74, 0x65
	.byte 0x73, 0x74, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00
data_ov40_02188b98: ; 0x02188b98
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x30, 0x33, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188bac: ; 0x02188bac
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x30, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188bc0: ; 0x02188bc0
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x37, 0x2e, 0x62, 0x69, 0x6e
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188bd4: ; 0x02188bd4
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32
	.byte 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188be8: ; 0x02188be8
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x34, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188bfc: ; 0x02188bfc
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188c10: ; 0x02188c10
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x36, 0x2e, 0x62, 0x69, 0x6e
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188c24: ; 0x02188c24
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x31
	.byte 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188c38: ; 0x02188c38
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x31, 0x37, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188c4c: ; 0x02188c4c
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x30, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188c60: ; 0x02188c60
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x34, 0x2e, 0x62, 0x69, 0x6e
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188c74: ; 0x02188c74
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x39
	.byte 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188c88: ; 0x02188c88
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188c9c: ; 0x02188c9c
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x38, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188cb0: ; 0x02188cb0
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x33, 0x30, 0x2e, 0x62, 0x69, 0x6e
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188cc4: ; 0x02188cc4
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x35
	.byte 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188cd8: ; 0x02188cd8
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x38, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188cec: ; 0x02188cec
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x31, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02188d00: ; 0x02188d00
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02188d14: ; 0x02188d14
	.byte 0x44, 0x4d, 0x54, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x74, 0x65, 0x73
	.byte 0x74, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00, 0x00
data_ov40_02188d28: ; 0x02188d28
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x38, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188d3c: ; 0x02188d3c
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x32, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188d50: ; 0x02188d50
	.byte 0x44, 0x30, 0x30, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x30, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188d64: ; 0x02188d64
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x32
	.byte 0x5f, 0x30, 0x33, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188d78: ; 0x02188d78
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x32, 0x5f, 0x30, 0x34, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188d8c: ; 0x02188d8c
	.byte 0x44, 0x32, 0x37, 0x3a
	.byte 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x37, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188da0: ; 0x02188da0
	.byte 0x44, 0x32, 0x34, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x34, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188db4: ; 0x02188db4
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x31
	.byte 0x5f, 0x30, 0x33, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188dc8: ; 0x02188dc8
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x36, 0x5f, 0x30, 0x33, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188ddc: ; 0x02188ddc
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188df0: ; 0x02188df0
	.byte 0x44, 0x32, 0x36, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x36, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188e04: ; 0x02188e04
	.byte 0x44, 0x30, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d
	.byte 0x6f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188e18: ; 0x02188e18
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x36, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188e2c: ; 0x02188e2c
	.byte 0x44, 0x30, 0x33, 0x3a
	.byte 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x33, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188e40: ; 0x02188e40
	.byte 0x44, 0x30, 0x31, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x31, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188e54: ; 0x02188e54
	.byte 0x44, 0x30, 0x35, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d
	.byte 0x6f, 0x30, 0x35, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188e68: ; 0x02188e68
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x30, 0x35, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188e7c: ; 0x02188e7c
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x37, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188e90: ; 0x02188e90
	.byte 0x44, 0x32, 0x38, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x38, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188ea4: ; 0x02188ea4
	.byte 0x44, 0x31, 0x30, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d
	.byte 0x6f, 0x31, 0x30, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188eb8: ; 0x02188eb8
	.byte 0x44, 0x34, 0x31, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188ecc: ; 0x02188ecc
	.byte 0x44, 0x31, 0x34, 0x3a
	.byte 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x34, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188ee0: ; 0x02188ee0
	.byte 0x44, 0x32, 0x39, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x39, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188ef4: ; 0x02188ef4
	.byte 0x44, 0x31, 0x37, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d
	.byte 0x6f, 0x31, 0x37, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188f08: ; 0x02188f08
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65
	.byte 0x6d, 0x6f, 0x32, 0x37, 0x5f, 0x30, 0x33, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188f1c: ; 0x02188f1c
	.byte 0x44, 0x31, 0x38, 0x3a
	.byte 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x38, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188f30: ; 0x02188f30
	.byte 0x44, 0x33, 0x30, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x33, 0x30, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188f44: ; 0x02188f44
	.byte 0x45, 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x38
	.byte 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188f58: ; 0x02188f58
	.byte 0x44, 0x34, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188f6c: ; 0x02188f6c
	.byte 0x45, 0x76, 0x65, 0x6e
	.byte 0x74, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x32, 0x5f, 0x30, 0x32, 0x2e, 0x62, 0x69, 0x6e, 0x00
data_ov40_02188f80: ; 0x02188f80
	.byte 0x44, 0x32, 0x31, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x31, 0x2e
	.byte 0x73, 0x74, 0x62, 0x00
data_ov40_02188f94: ; 0x02188f94
	.byte 0x44, 0x34, 0x30, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d
	.byte 0x6f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00
data_ov40_02188fa8: ; 0x02188fa8
	.byte 0x44, 0x33, 0x31, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x31, 0x5f, 0x30, 0x33, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02188fc0: ; 0x02188fc0
	.byte 0x44, 0x33, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x32, 0x5f
	.byte 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02188fd8: ; 0x02188fd8
	.byte 0x44, 0x33, 0x33, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x32, 0x5f, 0x30, 0x33, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02188ff0: ; 0x02188ff0
	.byte 0x44, 0x33, 0x38, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x38, 0x5f
	.byte 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189008: ; 0x02189008
	.byte 0x44, 0x33, 0x34, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x32, 0x5f, 0x30, 0x34, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189020: ; 0x02189020
	.byte 0x44, 0x36, 0x33, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x36, 0x5f
	.byte 0x30, 0x33, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189038: ; 0x02189038
	.byte 0x44, 0x36, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x36, 0x5f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189050: ; 0x02189050
	.byte 0x44, 0x33, 0x39, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x32, 0x5f
	.byte 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189068: ; 0x02189068
	.byte 0x44, 0x35, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x30, 0x35, 0x5f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189080: ; 0x02189080
	.byte 0x44, 0x33, 0x37, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x37, 0x5f
	.byte 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_02189098: ; 0x02189098
	.byte 0x44, 0x38, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x38, 0x5f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_021890b0: ; 0x021890b0
	.byte 0x44, 0x34, 0x37, 0x3a, 0x2f, 0x73, 0x74, 0x62, 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x32, 0x37, 0x5f
	.byte 0x30, 0x33, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_021890c8: ; 0x021890c8
	.byte 0x44, 0x31, 0x32, 0x3a, 0x2f, 0x73, 0x74, 0x62
	.byte 0x2f, 0x64, 0x65, 0x6d, 0x6f, 0x31, 0x32, 0x5f, 0x30, 0x32, 0x2e, 0x73, 0x74, 0x62, 0x00, 0x00
data_ov40_021890e0: ; 0x021890e0
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_021890e4: ; 0x021890e4
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_021890e8: ; 0x021890e8
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_021890ec: ; 0x021890ec
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_021890f0: ; 0x021890f0
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_021890f4: ; 0x021890f4
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_021890f8: ; 0x021890f8
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_021890fc: ; 0x021890fc
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_02189100: ; 0x02189100
	.byte 0xfc, 0x90, 0x18, 0x02
data_ov40_02189104: ; 0x02189104
	.byte 0xf8, 0x90, 0x18, 0x02
data_ov40_02189108: ; 0x02189108
	.byte 0xf4, 0x90, 0x18, 0x02
data_ov40_0218910c: ; 0x0218910c
	.byte 0xf0, 0x90, 0x18, 0x02
data_ov40_02189110: ; 0x02189110
	.byte 0xec, 0x90, 0x18, 0x02
data_ov40_02189114: ; 0x02189114
	.byte 0xe8, 0x90, 0x18, 0x02
data_ov40_02189118: ; 0x02189118
	.byte 0xe4, 0x90, 0x18, 0x02
data_ov40_0218911c: ; 0x0218911c
	.byte 0xe0, 0x90, 0x18, 0x02
data_ov40_02189120: ; 0x02189120
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189124: ; 0x02189124
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189128: ; 0x02189128
	.byte 0xed, 0x9a, 0x0a, 0x02
data_ov40_0218912c: ; 0x0218912c
	.byte 0xf9, 0x9a, 0x0a, 0x02
data_ov40_02189130: ; 0x02189130
	.byte 0x6b, 0x61, 0x6d, 0x69, 0x31, 0x00, 0x00, 0x00
data_ov40_02189138: ; 0x02189138
	.byte 0x6b, 0x61, 0x6d, 0x69, 0x32, 0x00, 0x00, 0x00
data_ov40_02189140: ; 0x02189140
	.byte 0x6b, 0x61, 0x6d, 0x69, 0x33, 0x00, 0x00, 0x00
data_ov40_02189148: ; 0x02189148
	.byte 0x30, 0x91, 0x18, 0x02
data_ov40_0218914c: ; 0x0218914c
	.byte 0x38, 0x91, 0x18, 0x02
data_ov40_02189150: ; 0x02189150
	.byte 0x40, 0x91, 0x18, 0x02
data_ov40_02189154: ; 0x02189154
	.byte 0x94, 0x92, 0x18, 0x02
data_ov40_02189158: ; 0x02189158
	.byte 0x98, 0x92, 0x18, 0x02
data_ov40_0218915c: ; 0x0218915c
	.byte 0x9c, 0x92, 0x18, 0x02
data_ov40_02189160: ; 0x02189160
	.byte 0xa4, 0x92, 0x18, 0x02
data_ov40_02189164: ; 0x02189164
	.byte 0xac, 0x92, 0x18, 0x02
data_ov40_02189168: ; 0x02189168
	.byte 0xb0, 0x92, 0x18, 0x02
data_ov40_0218916c: ; 0x0218916c
	.byte 0xb4, 0x92, 0x18, 0x02
data_ov40_02189170: ; 0x02189170
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189174: ; 0x02189174
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189178: ; 0x02189178
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218917c: ; 0x0218917c
	.byte 0xb8, 0x92, 0x18, 0x02
data_ov40_02189180: ; 0x02189180
	.byte 0xbc, 0x92, 0x18, 0x02
data_ov40_02189184: ; 0x02189184
	.byte 0xc0, 0x92, 0x18, 0x02
data_ov40_02189188: ; 0x02189188
	.byte 0xc4, 0x92, 0x18, 0x02
data_ov40_0218918c: ; 0x0218918c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189190: ; 0x02189190
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189194: ; 0x02189194
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189198: ; 0x02189198
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218919c: ; 0x0218919c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021891a0: ; 0x021891a0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021891a4: ; 0x021891a4
	.byte 0xc8, 0x92, 0x18, 0x02
data_ov40_021891a8: ; 0x021891a8
	.byte 0xcc, 0x92, 0x18, 0x02
data_ov40_021891ac: ; 0x021891ac
	.byte 0xd0, 0x92, 0x18, 0x02
data_ov40_021891b0: ; 0x021891b0
	.byte 0xd4, 0x92, 0x18, 0x02
data_ov40_021891b4: ; 0x021891b4
	.byte 0xd8, 0x92, 0x18, 0x02
data_ov40_021891b8: ; 0x021891b8
	.byte 0xdc, 0x92, 0x18, 0x02
data_ov40_021891bc: ; 0x021891bc
	.byte 0xe0, 0x92, 0x18, 0x02
data_ov40_021891c0: ; 0x021891c0
	.byte 0xe4, 0x92, 0x18, 0x02
data_ov40_021891c4: ; 0x021891c4
	.byte 0xe8, 0x92, 0x18, 0x02
data_ov40_021891c8: ; 0x021891c8
	.byte 0xec, 0x92, 0x18, 0x02
data_ov40_021891cc: ; 0x021891cc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021891d0: ; 0x021891d0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021891d4: ; 0x021891d4
	.byte 0x30, 0x3f, 0x18, 0x02
data_ov40_021891d8: ; 0x021891d8
	.byte 0xc0, 0x3f, 0x18, 0x02
data_ov40_021891dc: ; 0x021891dc
	.byte 0x58, 0x40, 0x18, 0x02
data_ov40_021891e0: ; 0x021891e0
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_021891e4: ; 0x021891e4
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_021891e8: ; 0x021891e8
	.byte 0x7c, 0x41, 0x18, 0x02
data_ov40_021891ec: ; 0x021891ec
	.byte 0x88, 0x41, 0x18, 0x02
data_ov40_021891f0: ; 0x021891f0
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_021891f4: ; 0x021891f4
	.byte 0x9c, 0x41, 0x18, 0x02
data_ov40_021891f8: ; 0x021891f8
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_021891fc: ; 0x021891fc
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_02189200: ; 0x02189200
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_02189204: ; 0x02189204
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_02189208: ; 0x02189208
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_0218920c: ; 0x0218920c
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_02189210: ; 0x02189210
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_02189214: ; 0x02189214
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_02189218: ; 0x02189218
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_0218921c: ; 0x0218921c
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_02189220: ; 0x02189220
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_02189224: ; 0x02189224
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_02189228: ; 0x02189228
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_0218922c: ; 0x0218922c
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_02189230: ; 0x02189230
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_02189234: ; 0x02189234
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_02189238: ; 0x02189238
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_0218923c: ; 0x0218923c
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_02189240: ; 0x02189240
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_02189244: ; 0x02189244
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_02189248: ; 0x02189248
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_0218924c: ; 0x0218924c
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_02189250: ; 0x02189250
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_02189254: ; 0x02189254
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_02189258: ; 0x02189258
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_0218925c: ; 0x0218925c
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_02189260: ; 0x02189260
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_02189264: ; 0x02189264
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_02189268: ; 0x02189268
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_0218926c: ; 0x0218926c
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_02189270: ; 0x02189270
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_02189274: ; 0x02189274
	.byte 0xcc, 0x45, 0x18, 0x02
data_ov40_02189278: ; 0x02189278
	.byte 0xdc, 0x45, 0x18, 0x02
data_ov40_0218927c: ; 0x0218927c
	.byte 0x80, 0x46, 0x18, 0x02
data_ov40_02189280: ; 0x02189280
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_02189284: ; 0x02189284
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_02189288: ; 0x02189288
	.byte 0x3c, 0xd8, 0x17, 0x02
data_ov40_0218928c: ; 0x0218928c
	.byte 0x64, 0xd8, 0x17, 0x02
data_ov40_02189290: ; 0x02189290
	.byte 0x98, 0xd8, 0x17, 0x02
data_ov40_02189294: ; 0x02189294
	.byte 0x30, 0x31, 0x00, 0x00
data_ov40_02189298: ; 0x02189298
	.byte 0x30, 0x32, 0x00, 0x00
data_ov40_0218929c: ; 0x0218929c
	.byte 0x30, 0x33, 0x5f, 0x31
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021892a4: ; 0x021892a4
	.byte 0x30, 0x33, 0x5f, 0x32, 0x00, 0x00, 0x00, 0x00
data_ov40_021892ac: ; 0x021892ac
	.byte 0x30, 0x34, 0x00, 0x00
data_ov40_021892b0: ; 0x021892b0
	.byte 0x30, 0x35, 0x00, 0x00
data_ov40_021892b4: ; 0x021892b4
	.byte 0x30, 0x36, 0x00, 0x00
data_ov40_021892b8: ; 0x021892b8
	.byte 0x30, 0x31, 0x00, 0x00
data_ov40_021892bc: ; 0x021892bc
	.byte 0x30, 0x32, 0x00, 0x00
data_ov40_021892c0: ; 0x021892c0
	.byte 0x30, 0x33, 0x00, 0x00
data_ov40_021892c4: ; 0x021892c4
	.byte 0x30, 0x34, 0x00, 0x00
data_ov40_021892c8: ; 0x021892c8
	.byte 0x30, 0x31, 0x00, 0x00
data_ov40_021892cc: ; 0x021892cc
	.byte 0x30, 0x32, 0x00, 0x00
data_ov40_021892d0: ; 0x021892d0
	.byte 0x30, 0x33, 0x00, 0x00
data_ov40_021892d4: ; 0x021892d4
	.byte 0x30, 0x34, 0x00, 0x00
data_ov40_021892d8: ; 0x021892d8
	.byte 0x30, 0x35, 0x00, 0x00
data_ov40_021892dc: ; 0x021892dc
	.byte 0x30, 0x36, 0x00, 0x00
data_ov40_021892e0: ; 0x021892e0
	.byte 0x30, 0x37, 0x00, 0x00
data_ov40_021892e4: ; 0x021892e4
	.byte 0x30, 0x38, 0x00, 0x00
data_ov40_021892e8: ; 0x021892e8
	.byte 0x30, 0x39, 0x00, 0x00
data_ov40_021892ec: ; 0x021892ec
	.byte 0x31, 0x30, 0x00, 0x00
data_ov40_021892f0: ; 0x021892f0
	.byte 0x45
data_ov40_021892f1: ; 0x021892f1
	.byte 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x4b, 0x61, 0x6d, 0x69, 0x73, 0x68, 0x69, 0x62, 0x61, 0x69
	.byte 0x2f, 0x00, 0x00, 0x00
data_ov40_02189304: ; 0x02189304
	.byte 0x2f, 0x00, 0x00, 0x00
data_ov40_02189308: ; 0x02189308
	.byte 0x2d, 0x00, 0x00, 0x00
data_ov40_0218930c: ; 0x0218930c
	.byte 0x2e, 0x6e, 0x74, 0x66
	.byte 0x74, 0x00, 0x00, 0x00
data_ov40_02189314: ; 0x02189314
	.byte 0x45
data_ov40_02189315: ; 0x02189315
	.byte 0x76, 0x65, 0x6e, 0x74, 0x2f, 0x4b, 0x61, 0x6d, 0x69, 0x73, 0x68
	.byte 0x69, 0x62, 0x61, 0x69, 0x2f, 0x00, 0x00, 0x00
data_ov40_02189328: ; 0x02189328
	.byte 0x2f, 0x00, 0x00, 0x00
data_ov40_0218932c: ; 0x0218932c
	.byte 0x2d, 0x00, 0x00, 0x00
data_ov40_02189330: ; 0x02189330
	.byte 0x2e, 0x6e, 0x74, 0x66, 0x70, 0x00, 0x00, 0x00
data_ov40_02189338: ; 0x02189338
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_0218933c: ; 0x0218933c
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_02189340: ; 0x02189340
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_02189344: ; 0x02189344
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_02189348: ; 0x02189348
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_0218934c: ; 0x0218934c
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_02189350: ; 0x02189350
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_02189354: ; 0x02189354
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_02189358: ; 0x02189358
	.byte 0x54, 0x93, 0x18, 0x02
data_ov40_0218935c: ; 0x0218935c
	.byte 0x50, 0x93, 0x18, 0x02
data_ov40_02189360: ; 0x02189360
	.byte 0x4c, 0x93, 0x18, 0x02
data_ov40_02189364: ; 0x02189364
	.byte 0x48, 0x93, 0x18, 0x02
data_ov40_02189368: ; 0x02189368
	.byte 0x44, 0x93, 0x18, 0x02
data_ov40_0218936c: ; 0x0218936c
	.byte 0x40, 0x93, 0x18, 0x02
data_ov40_02189370: ; 0x02189370
	.byte 0x3c, 0x93, 0x18, 0x02
data_ov40_02189374: ; 0x02189374
	.byte 0x38, 0x93, 0x18, 0x02
data_ov40_02189378: ; 0x02189378
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218937c: ; 0x0218937c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189380: ; 0x02189380
	.byte 0x2c, 0x4d, 0x18, 0x02
data_ov40_02189384: ; 0x02189384
	.byte 0x40, 0x4d, 0x18, 0x02
data_ov40_02189388: ; 0x02189388
	.byte 0x5c, 0x4d, 0x18, 0x02
data_ov40_0218938c: ; 0x0218938c
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_02189390: ; 0x02189390
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_02189394: ; 0x02189394
	.byte 0xb8, 0x4d, 0x18, 0x02
data_ov40_02189398: ; 0x02189398
	.byte 0xf8, 0xd3, 0x17, 0x02
data_ov40_0218939c: ; 0x0218939c
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_021893a0: ; 0x021893a0
	.byte 0xc4, 0x4d, 0x18, 0x02
data_ov40_021893a4: ; 0x021893a4
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_021893a8: ; 0x021893a8
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_021893ac: ; 0x021893ac
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_021893b0: ; 0x021893b0
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_021893b4: ; 0x021893b4
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_021893b8: ; 0x021893b8
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_021893bc: ; 0x021893bc
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_021893c0: ; 0x021893c0
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_021893c4: ; 0x021893c4
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_021893c8: ; 0x021893c8
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_021893cc: ; 0x021893cc
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_021893d0: ; 0x021893d0
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_021893d4: ; 0x021893d4
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_021893d8: ; 0x021893d8
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_021893dc: ; 0x021893dc
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_021893e0: ; 0x021893e0
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_021893e4: ; 0x021893e4
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_021893e8: ; 0x021893e8
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_021893ec: ; 0x021893ec
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_021893f0: ; 0x021893f0
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_021893f4: ; 0x021893f4
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_021893f8: ; 0x021893f8
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_021893fc: ; 0x021893fc
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_02189400: ; 0x02189400
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_02189404: ; 0x02189404
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_02189408: ; 0x02189408
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_0218940c: ; 0x0218940c
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_02189410: ; 0x02189410
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_02189414: ; 0x02189414
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_02189418: ; 0x02189418
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_0218941c: ; 0x0218941c
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_02189420: ; 0x02189420
	.byte 0xe0, 0x4d, 0x18, 0x02
data_ov40_02189424: ; 0x02189424
	.byte 0xec, 0x4d, 0x18, 0x02
data_ov40_02189428: ; 0x02189428
	.byte 0x4c, 0x4e, 0x18, 0x02
data_ov40_0218942c: ; 0x0218942c
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_02189430: ; 0x02189430
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_02189434: ; 0x02189434
	.byte 0x3c, 0xd8, 0x17, 0x02
data_ov40_02189438: ; 0x02189438
	.byte 0x64, 0xd8, 0x17, 0x02
data_ov40_0218943c: ; 0x0218943c
	.byte 0x98, 0xd8, 0x17, 0x02
data_ov40_02189440: ; 0x02189440
	.byte 0x44, 0x53, 0x45, 0x3a, 0x2f, 0x6f, 0x63, 0x65, 0x61, 0x6e, 0x5f, 0x64, 0x65, 0x6d, 0x2e, 0x6e
	.byte 0x73, 0x62, 0x74, 0x61, 0x00, 0x00, 0x00, 0x00
data_ov40_02189458: ; 0x02189458
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218945c: ; 0x0218945c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189460: ; 0x02189460
	.byte 0x3c, 0x4f, 0x18, 0x02
data_ov40_02189464: ; 0x02189464
	.byte 0x64, 0x4f, 0x18, 0x02
data_ov40_02189468: ; 0x02189468
	.byte 0xb4, 0x4f, 0x18, 0x02
data_ov40_0218946c: ; 0x0218946c
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_02189470: ; 0x02189470
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_02189474: ; 0x02189474
	.byte 0x94, 0x4f, 0x18, 0x02
data_ov40_02189478: ; 0x02189478
	.byte 0x2c, 0x50, 0x18, 0x02
data_ov40_0218947c: ; 0x0218947c
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_02189480: ; 0x02189480
	.byte 0x40, 0x50, 0x18, 0x02
data_ov40_02189484: ; 0x02189484
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_02189488: ; 0x02189488
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_0218948c: ; 0x0218948c
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_02189490: ; 0x02189490
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_02189494: ; 0x02189494
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_02189498: ; 0x02189498
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_0218949c: ; 0x0218949c
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_021894a0: ; 0x021894a0
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_021894a4: ; 0x021894a4
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_021894a8: ; 0x021894a8
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_021894ac: ; 0x021894ac
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_021894b0: ; 0x021894b0
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_021894b4: ; 0x021894b4
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_021894b8: ; 0x021894b8
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_021894bc: ; 0x021894bc
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_021894c0: ; 0x021894c0
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_021894c4: ; 0x021894c4
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_021894c8: ; 0x021894c8
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_021894cc: ; 0x021894cc
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_021894d0: ; 0x021894d0
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_021894d4: ; 0x021894d4
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_021894d8: ; 0x021894d8
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_021894dc: ; 0x021894dc
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_021894e0: ; 0x021894e0
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_021894e4: ; 0x021894e4
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_021894e8: ; 0x021894e8
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_021894ec: ; 0x021894ec
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_021894f0: ; 0x021894f0
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_021894f4: ; 0x021894f4
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_021894f8: ; 0x021894f8
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_021894fc: ; 0x021894fc
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_02189500: ; 0x02189500
	.byte 0x6c, 0x1b, 0x0c, 0x02
data_ov40_02189504: ; 0x02189504
	.byte 0xb4, 0x1b, 0x0c, 0x02
data_ov40_02189508: ; 0x02189508
	.byte 0xf8, 0x1b, 0x0c, 0x02
data_ov40_0218950c: ; 0x0218950c
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_02189510: ; 0x02189510
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_02189514: ; 0x02189514
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189518: ; 0x02189518
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218951c: ; 0x0218951c
	.byte 0xed, 0x9a, 0x0a, 0x02
data_ov40_02189520: ; 0x02189520
	.byte 0xf9, 0x9a, 0x0a, 0x02
data_ov40_02189524: ; 0x02189524
	.byte 0x00, 0x00
data_ov40_02189526: ; 0x02189526
	.byte 0x00, 0x00
data_ov40_02189528: ; 0x02189528
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218952c: ; 0x0218952c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189530: ; 0x02189530
	.byte 0x80, 0x52, 0x18, 0x02
data_ov40_02189534: ; 0x02189534
	.byte 0xa0, 0x51, 0x18, 0x02
data_ov40_02189538: ; 0x02189538
	.byte 0x50, 0x51, 0x18, 0x02
data_ov40_0218953c: ; 0x0218953c
	.byte 0x55, 0x10, 0x0d, 0x02
data_ov40_02189540: ; 0x02189540
	.byte 0xe8, 0x51, 0x18, 0x02
data_ov40_02189544: ; 0x02189544
	.byte 0xed, 0xf4, 0x10, 0x02
data_ov40_02189548: ; 0x02189548
	.byte 0xf1, 0xf4, 0x10, 0x02
data_ov40_0218954c: ; 0x0218954c
	.byte 0xf5, 0xf4, 0x10, 0x02
data_ov40_02189550: ; 0x02189550
	.byte 0x58, 0x10, 0x0d, 0x02
data_ov40_02189554: ; 0x02189554
	.byte 0x60, 0x10, 0x0d, 0x02
data_ov40_02189558: ; 0x02189558
	.byte 0x08, 0x52, 0x18, 0x02
data_ov40_0218955c: ; 0x0218955c
	.byte 0x44, 0x52, 0x18, 0x02
data_ov40_02189560: ; 0x02189560
	.byte 0x6c, 0x10, 0x0d, 0x02
data_ov40_02189564: ; 0x02189564
	.byte 0x78, 0x10, 0x0d, 0x02
data_ov40_02189568: ; 0x02189568
	.byte 0x80, 0x10, 0x0d, 0x02
data_ov40_0218956c: ; 0x0218956c
	.byte 0xe4, 0x52, 0x18, 0x02
data_ov40_02189570: ; 0x02189570
	.byte 0xbc, 0x52, 0x18, 0x02
data_ov40_02189574: ; 0x02189574
	.byte 0x8c, 0x10, 0x0d, 0x02
data_ov40_02189578: ; 0x02189578
	.byte 0x91, 0x10, 0x0d, 0x02
data_ov40_0218957c: ; 0x0218957c
	.byte 0x95, 0x10, 0x0d, 0x02
data_ov40_02189580: ; 0x02189580
	.byte 0x98, 0x10, 0x0d, 0x02
data_ov40_02189584: ; 0x02189584
	.byte 0x9c, 0x10, 0x0d, 0x02
data_ov40_02189588: ; 0x02189588
	.byte 0xa0, 0x10, 0x0d, 0x02
data_ov40_0218958c: ; 0x0218958c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189590: ; 0x02189590
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189594: ; 0x02189594
	.byte 0xd8, 0x37, 0x0d, 0x02
data_ov40_02189598: ; 0x02189598
	.byte 0xdc, 0x53, 0x18, 0x02
data_ov40_0218959c: ; 0x0218959c
	.byte 0xc0, 0x53, 0x18, 0x02
data_ov40_021895a0: ; 0x021895a0
	.byte 0x55, 0x10, 0x0d, 0x02
data_ov40_021895a4: ; 0x021895a4
	.byte 0xe9, 0xf4, 0x10, 0x02
data_ov40_021895a8: ; 0x021895a8
	.byte 0xed, 0xf4, 0x10, 0x02
data_ov40_021895ac: ; 0x021895ac
	.byte 0xf1, 0xf4, 0x10, 0x02
data_ov40_021895b0: ; 0x021895b0
	.byte 0xf5, 0xf4, 0x10, 0x02
data_ov40_021895b4: ; 0x021895b4
	.byte 0x58, 0x10, 0x0d, 0x02
data_ov40_021895b8: ; 0x021895b8
	.byte 0x60, 0x10, 0x0d, 0x02
data_ov40_021895bc: ; 0x021895bc
	.byte 0x64, 0x10, 0x0d, 0x02
data_ov40_021895c0: ; 0x021895c0
	.byte 0x70, 0x10, 0x0d, 0x02
data_ov40_021895c4: ; 0x021895c4
	.byte 0x6c, 0x10, 0x0d, 0x02
data_ov40_021895c8: ; 0x021895c8
	.byte 0x78, 0x10, 0x0d, 0x02
data_ov40_021895cc: ; 0x021895cc
	.byte 0x80, 0x10, 0x0d, 0x02
data_ov40_021895d0: ; 0x021895d0
	.byte 0x10, 0x38, 0x0d, 0x02
data_ov40_021895d4: ; 0x021895d4
	.byte 0x2c, 0x38, 0x0d, 0x02
data_ov40_021895d8: ; 0x021895d8
	.byte 0x8c, 0x10, 0x0d, 0x02
data_ov40_021895dc: ; 0x021895dc
	.byte 0x75, 0xcc, 0x11, 0x02
data_ov40_021895e0: ; 0x021895e0
	.byte 0x99, 0xcc, 0x11, 0x02
data_ov40_021895e4: ; 0x021895e4
	.byte 0x4c, 0x38, 0x0d, 0x02
data_ov40_021895e8: ; 0x021895e8
	.byte 0x9c, 0x10, 0x0d, 0x02
data_ov40_021895ec: ; 0x021895ec
	.byte 0xa0, 0x10, 0x0d, 0x02
data_ov40_021895f0: ; 0x021895f0
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_021895f4: ; 0x021895f4
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_021895f8: ; 0x021895f8
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_021895fc: ; 0x021895fc
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_02189600: ; 0x02189600
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_02189604: ; 0x02189604
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_02189608: ; 0x02189608
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_0218960c: ; 0x0218960c
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_02189610: ; 0x02189610
	.byte 0x0c, 0x96, 0x18, 0x02
data_ov40_02189614: ; 0x02189614
	.byte 0x08, 0x96, 0x18, 0x02
data_ov40_02189618: ; 0x02189618
	.byte 0x04, 0x96, 0x18, 0x02
data_ov40_0218961c: ; 0x0218961c
	.byte 0x00, 0x96, 0x18, 0x02
data_ov40_02189620: ; 0x02189620
	.byte 0xfc, 0x95, 0x18, 0x02
data_ov40_02189624: ; 0x02189624
	.byte 0xf8, 0x95, 0x18, 0x02
data_ov40_02189628: ; 0x02189628
	.byte 0xf4, 0x95, 0x18, 0x02
data_ov40_0218962c: ; 0x0218962c
	.byte 0xf0, 0x95, 0x18, 0x02
data_ov40_02189630: ; 0x02189630
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189634: ; 0x02189634
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189638: ; 0x02189638
	.byte 0x68, 0x54, 0x18, 0x02
data_ov40_0218963c: ; 0x0218963c
	.byte 0x7c, 0x54, 0x18, 0x02
data_ov40_02189640: ; 0x02189640
	.byte 0x98, 0x54, 0x18, 0x02
data_ov40_02189644: ; 0x02189644
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_02189648: ; 0x02189648
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_0218964c: ; 0x0218964c
	.byte 0xdc, 0x54, 0x18, 0x02
data_ov40_02189650: ; 0x02189650
	.byte 0xf8, 0xd3, 0x17, 0x02
data_ov40_02189654: ; 0x02189654
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_02189658: ; 0x02189658
	.byte 0x14, 0x55, 0x18, 0x02
data_ov40_0218965c: ; 0x0218965c
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_02189660: ; 0x02189660
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_02189664: ; 0x02189664
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_02189668: ; 0x02189668
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_0218966c: ; 0x0218966c
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_02189670: ; 0x02189670
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_02189674: ; 0x02189674
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_02189678: ; 0x02189678
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_0218967c: ; 0x0218967c
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_02189680: ; 0x02189680
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_02189684: ; 0x02189684
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_02189688: ; 0x02189688
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_0218968c: ; 0x0218968c
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_02189690: ; 0x02189690
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_02189694: ; 0x02189694
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_02189698: ; 0x02189698
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_0218969c: ; 0x0218969c
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_021896a0: ; 0x021896a0
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_021896a4: ; 0x021896a4
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_021896a8: ; 0x021896a8
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_021896ac: ; 0x021896ac
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_021896b0: ; 0x021896b0
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_021896b4: ; 0x021896b4
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_021896b8: ; 0x021896b8
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_021896bc: ; 0x021896bc
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_021896c0: ; 0x021896c0
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_021896c4: ; 0x021896c4
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_021896c8: ; 0x021896c8
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_021896cc: ; 0x021896cc
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_021896d0: ; 0x021896d0
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_021896d4: ; 0x021896d4
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_021896d8: ; 0x021896d8
	.byte 0x2c, 0x56, 0x18, 0x02
data_ov40_021896dc: ; 0x021896dc
	.byte 0x38, 0x56, 0x18, 0x02
data_ov40_021896e0: ; 0x021896e0
	.byte 0x44, 0x56, 0x18, 0x02
data_ov40_021896e4: ; 0x021896e4
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_021896e8: ; 0x021896e8
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_021896ec: ; 0x021896ec
	.byte 0x50, 0x56, 0x18, 0x02
data_ov40_021896f0: ; 0x021896f0
	.byte 0xbc, 0x56, 0x18, 0x02
data_ov40_021896f4: ; 0x021896f4
	.byte 0x90, 0x57, 0x18, 0x02
data_ov40_021896f8: ; 0x021896f8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021896fc: ; 0x021896fc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189700: ; 0x02189700
	.byte 0x24, 0x58, 0x18, 0x02
data_ov40_02189704: ; 0x02189704
	.byte 0x38, 0x58, 0x18, 0x02
data_ov40_02189708: ; 0x02189708
	.byte 0x54, 0x58, 0x18, 0x02
data_ov40_0218970c: ; 0x0218970c
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_02189710: ; 0x02189710
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_02189714: ; 0x02189714
	.byte 0x60, 0x58, 0x18, 0x02
data_ov40_02189718: ; 0x02189718
	.byte 0xbc, 0x17, 0x0c, 0x02
data_ov40_0218971c: ; 0x0218971c
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_02189720: ; 0x02189720
	.byte 0x94, 0x18, 0x0c, 0x02
data_ov40_02189724: ; 0x02189724
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_02189728: ; 0x02189728
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_0218972c: ; 0x0218972c
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_02189730: ; 0x02189730
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_02189734: ; 0x02189734
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_02189738: ; 0x02189738
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_0218973c: ; 0x0218973c
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_02189740: ; 0x02189740
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_02189744: ; 0x02189744
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_02189748: ; 0x02189748
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_0218974c: ; 0x0218974c
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_02189750: ; 0x02189750
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_02189754: ; 0x02189754
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_02189758: ; 0x02189758
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_0218975c: ; 0x0218975c
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_02189760: ; 0x02189760
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_02189764: ; 0x02189764
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_02189768: ; 0x02189768
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_0218976c: ; 0x0218976c
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_02189770: ; 0x02189770
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_02189774: ; 0x02189774
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_02189778: ; 0x02189778
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_0218977c: ; 0x0218977c
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_02189780: ; 0x02189780
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_02189784: ; 0x02189784
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_02189788: ; 0x02189788
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_0218978c: ; 0x0218978c
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_02189790: ; 0x02189790
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_02189794: ; 0x02189794
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_02189798: ; 0x02189798
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_0218979c: ; 0x0218979c
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_021897a0: ; 0x021897a0
	.byte 0x6c, 0x58, 0x18, 0x02
data_ov40_021897a4: ; 0x021897a4
	.byte 0x78, 0x58, 0x18, 0x02
data_ov40_021897a8: ; 0x021897a8
	.byte 0x48, 0x5b, 0x18, 0x02
data_ov40_021897ac: ; 0x021897ac
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_021897b0: ; 0x021897b0
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_021897b4: ; 0x021897b4
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_021897b8: ; 0x021897b8
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_021897bc: ; 0x021897bc
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_021897c0: ; 0x021897c0
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_021897c4: ; 0x021897c4
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_021897c8: ; 0x021897c8
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_021897cc: ; 0x021897cc
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_021897d0: ; 0x021897d0
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_021897d4: ; 0x021897d4
	.byte 0xd0, 0x97, 0x18, 0x02
data_ov40_021897d8: ; 0x021897d8
	.byte 0xcc, 0x97, 0x18, 0x02
data_ov40_021897dc: ; 0x021897dc
	.byte 0xc8, 0x97, 0x18, 0x02
data_ov40_021897e0: ; 0x021897e0
	.byte 0xc4, 0x97, 0x18, 0x02
data_ov40_021897e4: ; 0x021897e4
	.byte 0xc0, 0x97, 0x18, 0x02
data_ov40_021897e8: ; 0x021897e8
	.byte 0xbc, 0x97, 0x18, 0x02
data_ov40_021897ec: ; 0x021897ec
	.byte 0xb8, 0x97, 0x18, 0x02
data_ov40_021897f0: ; 0x021897f0
	.byte 0xb4, 0x97, 0x18, 0x02
data_ov40_021897f4: ; 0x021897f4
	.byte 0x00, 0x00
data_ov40_021897f6: ; 0x021897f6
	.byte 0x00, 0x00
data_ov40_021897f8: ; 0x021897f8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_021897fc: ; 0x021897fc
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189800: ; 0x02189800
	.byte 0x40, 0x5d, 0x18, 0x02
data_ov40_02189804: ; 0x02189804
	.byte 0x2c, 0x69, 0x18, 0x02
data_ov40_02189808: ; 0x02189808
	.byte 0x30, 0x30, 0x03, 0x02
data_ov40_0218980c: ; 0x0218980c
	.byte 0x90, 0x31, 0x03, 0x02
data_ov40_02189810: ; 0x02189810
	.byte 0xc4, 0x31, 0x03, 0x02
data_ov40_02189814: ; 0x02189814
	.byte 0xcc, 0x2f, 0x03, 0x02
data_ov40_02189818: ; 0x02189818
	.byte 0xe4, 0x32, 0x03, 0x02
data_ov40_0218981c: ; 0x0218981c
	.byte 0x60, 0x33, 0x03, 0x02
data_ov40_02189820: ; 0x02189820
	.byte 0xe0, 0x33, 0x03, 0x02
data_ov40_02189824: ; 0x02189824
	.byte 0xf4, 0x3a, 0x03, 0x02
data_ov40_02189828: ; 0x02189828
	.byte 0x2f, 0x4d, 0x65, 0x6e, 0x75, 0x2f, 0x42, 0x67
	.byte 0x2f, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x42, 0x67, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov40_02189840: ; 0x02189840
	.byte 0x53, 0x54, 0x53, 0x00
data_ov40_02189844: ; 0x02189844
	.byte 0x53, 0x54, 0x53, 0x3a, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x42, 0x67, 0x00
data_ov40_02189850: ; 0x02189850
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189854: ; 0x02189854
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189858: ; 0x02189858
	.byte 0xfc, 0x6c, 0x18, 0x02
data_ov40_0218985c: ; 0x0218985c
	.byte 0x38, 0x73, 0x18, 0x02
data_ov40_02189860: ; 0x02189860
	.byte 0x1c, 0x73, 0x18, 0x02
data_ov40_02189864: ; 0x02189864
	.byte 0x55, 0x10, 0x0d, 0x02
data_ov40_02189868: ; 0x02189868
	.byte 0xe9, 0xf4, 0x10, 0x02
data_ov40_0218986c: ; 0x0218986c
	.byte 0xed, 0xf4, 0x10, 0x02
data_ov40_02189870: ; 0x02189870
	.byte 0xf1, 0xf4, 0x10, 0x02
data_ov40_02189874: ; 0x02189874
	.byte 0xf5, 0xf4, 0x10, 0x02
data_ov40_02189878: ; 0x02189878
	.byte 0x58, 0x10, 0x0d, 0x02
data_ov40_0218987c: ; 0x0218987c
	.byte 0x60, 0x10, 0x0d, 0x02
data_ov40_02189880: ; 0x02189880
	.byte 0x04, 0x70, 0x18, 0x02
data_ov40_02189884: ; 0x02189884
	.byte 0xa4, 0x70, 0x18, 0x02
data_ov40_02189888: ; 0x02189888
	.byte 0x6c, 0x10, 0x0d, 0x02
data_ov40_0218988c: ; 0x0218988c
	.byte 0x78, 0x10, 0x0d, 0x02
data_ov40_02189890: ; 0x02189890
	.byte 0x80, 0x10, 0x0d, 0x02
data_ov40_02189894: ; 0x02189894
	.byte 0x84, 0x10, 0x0d, 0x02
data_ov40_02189898: ; 0x02189898
	.byte 0x44, 0x71, 0x18, 0x02
data_ov40_0218989c: ; 0x0218989c
	.byte 0x8c, 0x10, 0x0d, 0x02
data_ov40_021898a0: ; 0x021898a0
	.byte 0x91, 0x10, 0x0d, 0x02
data_ov40_021898a4: ; 0x021898a4
	.byte 0x95, 0x10, 0x0d, 0x02
data_ov40_021898a8: ; 0x021898a8
	.byte 0x2c, 0x72, 0x18, 0x02
data_ov40_021898ac: ; 0x021898ac
	.byte 0x9c, 0x10, 0x0d, 0x02
data_ov40_021898b0: ; 0x021898b0
	.byte 0xa0, 0x10, 0x0d, 0x02
data_ov40_021898b4: ; 0x021898b4
	.byte 0x00, 0x00
data_ov40_021898b6: ; 0x021898b6
	.byte 0x00, 0x00
data_ov40_021898b8: ; 0x021898b8
	.asciz "finM"
_021898bd:
	.byte 0x00, 0x00, 0x00
data_ov40_021898c0: ; 0x021898c0
	.asciz "finM"
_021898c5:
	.byte 0x00, 0x00, 0x00
data_ov40_021898c8: ; 0x021898c8
	.asciz "skipM"
_021898ce:
	.byte 0x00, 0x00
data_ov40_021898d0: ; 0x021898d0
	.asciz "skipM"
_021898d6:
	.byte 0x00, 0x00
data_ov40_021898d8: ; 0x021898d8
	.asciz "touchM"
_021898df:
	.byte 0x00
data_ov40_021898e0: ; 0x021898e0
	.asciz "touchM"
_021898e7:
	.byte 0x00
data_ov40_021898e8: ; 0x021898e8
	.byte 0x62, 0x72, 0x67, 0x00
data_ov40_021898ec: ; 0x021898ec
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov40_021898f0: ; 0x021898f0
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov40_021898f4: ; 0x021898f4
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov40_021898f8: ; 0x021898f8
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov40_021898fc: ; 0x021898fc
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov40_02189900: ; 0x02189900
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov40_02189904: ; 0x02189904
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov40_02189908: ; 0x02189908
	.byte 0x04, 0x99, 0x18, 0x02
data_ov40_0218990c: ; 0x0218990c
	.byte 0x00, 0x99, 0x18, 0x02
data_ov40_02189910: ; 0x02189910
	.byte 0xfc, 0x98, 0x18, 0x02
data_ov40_02189914: ; 0x02189914
	.byte 0xf8, 0x98, 0x18, 0x02
data_ov40_02189918: ; 0x02189918
	.byte 0xf4, 0x98, 0x18, 0x02
data_ov40_0218991c: ; 0x0218991c
	.byte 0xf0, 0x98, 0x18, 0x02
data_ov40_02189920: ; 0x02189920
	.byte 0xec, 0x98, 0x18, 0x02
data_ov40_02189924: ; 0x02189924
	.byte 0xe8, 0x98, 0x18, 0x02
data_ov40_02189928: ; 0x02189928
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_0218992c: ; 0x0218992c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189930: ; 0x02189930
	.byte 0xe0, 0x73, 0x18, 0x02
data_ov40_02189934: ; 0x02189934
	.byte 0xf4, 0x73, 0x18, 0x02
data_ov40_02189938: ; 0x02189938
	.byte 0x10, 0x74, 0x18, 0x02
data_ov40_0218993c: ; 0x0218993c
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov40_02189940: ; 0x02189940
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov40_02189944: ; 0x02189944
	.byte 0x68, 0xd3, 0x17, 0x02
data_ov40_02189948: ; 0x02189948
	.byte 0xf8, 0xd3, 0x17, 0x02
data_ov40_0218994c: ; 0x0218994c
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov40_02189950: ; 0x02189950
	.byte 0x5c, 0x75, 0x18, 0x02
data_ov40_02189954: ; 0x02189954
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov40_02189958: ; 0x02189958
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov40_0218995c: ; 0x0218995c
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov40_02189960: ; 0x02189960
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov40_02189964: ; 0x02189964
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov40_02189968: ; 0x02189968
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov40_0218996c: ; 0x0218996c
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov40_02189970: ; 0x02189970
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov40_02189974: ; 0x02189974
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov40_02189978: ; 0x02189978
	.byte 0x48, 0x1c, 0x0c, 0x02
data_ov40_0218997c: ; 0x0218997c
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov40_02189980: ; 0x02189980
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov40_02189984: ; 0x02189984
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov40_02189988: ; 0x02189988
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov40_0218998c: ; 0x0218998c
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov40_02189990: ; 0x02189990
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov40_02189994: ; 0x02189994
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov40_02189998: ; 0x02189998
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov40_0218999c: ; 0x0218999c
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov40_021899a0: ; 0x021899a0
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov40_021899a4: ; 0x021899a4
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov40_021899a8: ; 0x021899a8
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov40_021899ac: ; 0x021899ac
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov40_021899b0: ; 0x021899b0
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov40_021899b4: ; 0x021899b4
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov40_021899b8: ; 0x021899b8
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov40_021899bc: ; 0x021899bc
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov40_021899c0: ; 0x021899c0
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov40_021899c4: ; 0x021899c4
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov40_021899c8: ; 0x021899c8
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov40_021899cc: ; 0x021899cc
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov40_021899d0: ; 0x021899d0
	.byte 0x68, 0x75, 0x18, 0x02
data_ov40_021899d4: ; 0x021899d4
	.byte 0x74, 0x75, 0x18, 0x02
data_ov40_021899d8: ; 0x021899d8
	.byte 0xcc, 0x75, 0x18, 0x02
data_ov40_021899dc: ; 0x021899dc
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov40_021899e0: ; 0x021899e0
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov40_021899e4: ; 0x021899e4
	.byte 0x3c, 0xd8, 0x17, 0x02
data_ov40_021899e8: ; 0x021899e8
	.byte 0x64, 0xd8, 0x17, 0x02
data_ov40_021899ec: ; 0x021899ec
	.byte 0x98, 0xd8, 0x17, 0x02
data_ov40_021899f0: ; 0x021899f0
	.byte 0x2f, 0x4d, 0x65, 0x6e, 0x75, 0x2f, 0x42, 0x67, 0x2f, 0x65, 0x6e, 0x64, 0x6c, 0x6f, 0x67, 0x6f
	.byte 0x53, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00
data_ov40_02189a08: ; 0x02189a08
	.byte 0x45, 0x44, 0x47, 0x00
data_ov40_02189a0c: ; 0x02189a0c
	.byte 0x45, 0x44, 0x47, 0x3a
	.byte 0x65, 0x6e, 0x64, 0x6c, 0x6f, 0x67, 0x6f, 0x53, 0x00, 0x00, 0x00, 0x00
data_ov40_02189a1c: ; 0x02189a1c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189a20: ; 0x02189a20
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189a24: ; 0x02189a24
	.byte 0x9c, 0x7e, 0x18, 0x02
data_ov40_02189a28: ; 0x02189a28
	.byte 0x54, 0x7e, 0x18, 0x02
data_ov40_02189a2c: ; 0x02189a2c
	.byte 0x28, 0x92, 0x03, 0x02
data_ov40_02189a30: ; 0x02189a30
	.byte 0x78, 0x95, 0x03, 0x02
data_ov40_02189a34: ; 0x02189a34
	.byte 0x34, 0x8b, 0x03, 0x02
data_ov40_02189a38: ; 0x02189a38
	.byte 0xb4, 0xdc, 0x03, 0x02
data_ov40_02189a3c: ; 0x02189a3c
	.byte 0x64, 0xb2, 0x03, 0x02
data_ov40_02189a40: ; 0x02189a40
	.byte 0x10, 0xb3, 0x03, 0x02
data_ov40_02189a44: ; 0x02189a44
	.byte 0xc0, 0x7b, 0x18, 0x02
data_ov40_02189a48: ; 0x02189a48
	.byte 0xf4, 0x3a, 0x03, 0x02
data_ov40_02189a4c: ; 0x02189a4c
	.byte 0xc8, 0xe0, 0x03, 0x02
data_ov40_02189a50: ; 0x02189a50
	.byte 0x5c, 0x9a, 0x03, 0x02
data_ov40_02189a54: ; 0x02189a54
	.byte 0xd0, 0x8e, 0x03, 0x02
data_ov40_02189a58: ; 0x02189a58
	.byte 0x34, 0x8c, 0x03, 0x02
data_ov40_02189a5c: ; 0x02189a5c
	.byte 0x50, 0xc3, 0x03, 0x02
data_ov40_02189a60: ; 0x02189a60
	.byte 0xcc, 0x9c, 0x03, 0x02
data_ov40_02189a64: ; 0x02189a64
	.byte 0xb4, 0x7d, 0x18, 0x02
data_ov40_02189a68: ; 0x02189a68
	.byte 0xfc, 0xa3, 0x03, 0x02
data_ov40_02189a6c: ; 0x02189a6c
	.byte 0x28, 0xa3, 0x03, 0x02
data_ov40_02189a70: ; 0x02189a70
	.byte 0x3d, 0x9a, 0x03, 0x02
data_ov40_02189a74: ; 0x02189a74
	.byte 0xf0, 0xa7, 0x03, 0x02
data_ov40_02189a78: ; 0x02189a78
	.byte 0x88, 0xa9, 0x03, 0x02
data_ov40_02189a7c: ; 0x02189a7c
	.byte 0x1c, 0xaf, 0x03, 0x02
data_ov40_02189a80: ; 0x02189a80
	.byte 0xa8, 0xae, 0x03, 0x02
data_ov40_02189a84: ; 0x02189a84
	.byte 0x10, 0xb4, 0x03, 0x02
data_ov40_02189a88: ; 0x02189a88
	.byte 0xd0, 0xb5, 0x03, 0x02
data_ov40_02189a8c: ; 0x02189a8c
	.byte 0xc4, 0x7d, 0x18, 0x02
data_ov40_02189a90: ; 0x02189a90
	.byte 0xcc, 0xbd, 0x03, 0x02
data_ov40_02189a94: ; 0x02189a94
	.byte 0xd8, 0x94, 0x03, 0x02
data_ov40_02189a98: ; 0x02189a98
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189a9c: ; 0x02189a9c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189aa0: ; 0x02189aa0
	.byte 0x2c, 0xff, 0x02, 0x02
data_ov40_02189aa4: ; 0x02189aa4
	.byte 0x2c, 0x3d, 0x03, 0x02
data_ov40_02189aa8: ; 0x02189aa8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189aac: ; 0x02189aac
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189ab0: ; 0x02189ab0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189ab4: ; 0x02189ab4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189ab8: ; 0x02189ab8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov40_02189abc: ; 0x02189abc
	.byte 0x00, 0x00, 0x00, 0x00
	; 0x02189ac0

	.bss
data_ov40_02189ac0:
	.space 0x4
data_ov40_02189ac4:
	.space 0x4
data_ov40_02189ac8:
	.space 0x4
data_ov40_02189acc:
	.space 0x4
data_ov40_02189ad0:
	.space 0x4
data_ov40_02189ad4:
	.space 0x4
data_ov40_02189ad8:
	.space 0x4
data_ov40_02189adc:
	.space 0x4
data_ov40_02189ae0:
	.space 0x4
data_ov40_02189ae4:
	.space 0x4
data_ov40_02189ae8:
	.space 0x4
data_ov40_02189aec:
	.space 0x4
data_ov40_02189af0:
	.space 0x4
data_ov40_02189af4:
	.space 0x4
data_ov40_02189af8:
	.space 0x4
data_ov40_02189afc:
	.space 0x4
data_ov40_02189b00:
	.space 0x4
data_ov40_02189b04:
	.space 0x4
data_ov40_02189b08:
	.space 0x4
data_ov40_02189b0c:
	.space 0x4
data_ov40_02189b10:
	.space 0x4
data_ov40_02189b14:
	.space 0x4
data_ov40_02189b18:
	.space 0x4
data_ov40_02189b1c:
	.space 0x4
data_ov40_02189b20:
	.space 0x4
data_ov40_02189b24:
	.space 0x4
data_ov40_02189b28:
	.space 0x4
data_ov40_02189b2c:
	.space 0x4
data_ov40_02189b30:
	.space 0x4
data_ov40_02189b34:
	.space 0x4
data_ov40_02189b38:
	.space 0x4
data_ov40_02189b3c:
	.space 0x4
data_ov40_02189b40:
	.space 0x4
data_ov40_02189b44:
	.space 0x4
data_ov40_02189b48:
	.space 0x4
data_ov40_02189b4c:
	.space 0x4
data_ov40_02189b50:
	.space 0x4
data_ov40_02189b54:
	.space 0x4
data_ov40_02189b58:
	.space 0x4
data_ov40_02189b5c:
	.space 0x4
data_ov40_02189b60:
	.space 0x4
data_ov40_02189b64:
	.space 0x4
data_ov40_02189b68:
	.space 0x4
data_ov40_02189b6c:
	.space 0x4
data_ov40_02189b70:
	.space 0x4
data_ov40_02189b74:
	.space 0x4
data_ov40_02189b78:
	.space 0x4
data_ov40_02189b7c:
	.space 0x4
data_ov40_02189b80:
	.space 0x4
data_ov40_02189b84:
	.space 0x4
data_ov40_02189b88:
	.space 0x4
data_ov40_02189b8c:
	.space 0x4
data_ov40_02189b90:
	.space 0x4
data_ov40_02189b94:
	.space 0x4
data_ov40_02189b98:
	.space 0x4
data_ov40_02189b9c:
	.space 0x4
data_ov40_02189ba0:
	.space 0x4
data_ov40_02189ba4:
	.space 0x4
data_ov40_02189ba8:
	.space 0x4
data_ov40_02189bac:
	.space 0x4
data_ov40_02189bb0:
	.space 0x4
data_ov40_02189bb4:
	.space 0x4
data_ov40_02189bb8:
	.space 0x4
data_ov40_02189bbc:
	.space 0x4
data_ov40_02189bc0:
	.space 0x4
data_ov40_02189bc4:
	.space 0x4
data_ov40_02189bc8:
	.space 0x4
data_ov40_02189bcc:
	.space 0x4
data_ov40_02189bd0:
	.space 0x4
data_ov40_02189bd4:
	.space 0x4
data_ov40_02189bd8:
	.space 0x4
data_ov40_02189bdc:
	.space 0x4
data_ov40_02189be0:
	.space 0x4
data_ov40_02189be4:
	.space 0x4
data_ov40_02189be8:
	.space 0x4
data_ov40_02189bec:
	.space 0x4
data_ov40_02189bf0:
	.space 0x4
data_ov40_02189bf4:
	.space 0x4
data_ov40_02189bf8:
	.space 0x4
data_ov40_02189bfc:
	.space 0x4
data_ov40_02189c00:
	.space 0x4
data_ov40_02189c04:
	.space 0x4
data_ov40_02189c08:
	.space 0x4
data_ov40_02189c0c:
	.space 0x4
data_ov40_02189c10:
	.space 0x4
data_ov40_02189c14:
	.space 0x4
data_ov40_02189c18:
	.space 0x4
data_ov40_02189c1c:
	.space 0x4
data_ov40_02189c20:
	.space 0x4
data_ov40_02189c24:
	.space 0x4
data_ov40_02189c28:
	.space 0x4
data_ov40_02189c2c:
	.space 0x4
data_ov40_02189c30:
	.space 0x4
data_ov40_02189c34:
	.space 0x4
data_ov40_02189c38:
	.space 0x4
data_ov40_02189c3c:
	.space 0x4
data_ov40_02189c40:
	.space 0x4
data_ov40_02189c44:
	.space 0x4
data_ov40_02189c48:
	.space 0x4
data_ov40_02189c4c:
	.space 0x4
data_ov40_02189c50:
	.space 0x4
data_ov40_02189c54:
	.space 0x4
data_ov40_02189c58:
	.space 0x4
data_ov40_02189c5c:
	.space 0x4
data_ov40_02189c60:
	.space 0x4
data_ov40_02189c64:
	.space 0x4
data_ov40_02189c68:
	.space 0x4
data_ov40_02189c6c:
	.space 0x4
data_ov40_02189c70:
	.space 0x4
data_ov40_02189c74:
	.space 0x4
data_ov40_02189c78:
	.space 0x4
data_ov40_02189c7c:
	.space 0x4
data_ov40_02189c80:
	.space 0x4
data_ov40_02189c84:
	.space 0x4
data_ov40_02189c88:
	.space 0x4
data_ov40_02189c8c:
	.space 0x4
data_ov40_02189c90:
	.space 0x4
data_ov40_02189c94:
	.space 0x4
data_ov40_02189c98:
	.space 0x4
data_ov40_02189c9c:
	.space 0x4
data_ov40_02189ca0:
	.space 0x4
data_ov40_02189ca4:
	.space 0x4
data_ov40_02189ca8:
	.space 0x4
data_ov40_02189cac:
	.space 0x4
data_ov40_02189cb0:
	.space 0x4
data_ov40_02189cb4:
	.space 0x4
data_ov40_02189cb8:
	.space 0x4
data_ov40_02189cbc:
	.space 0x4
data_ov40_02189cc0:
	.space 0x4
data_ov40_02189cc4:
	.space 0x4
data_ov40_02189cc8:
	.space 0x4
data_ov40_02189ccc:
	.space 0x4
data_ov40_02189cd0:
	.space 0x4
data_ov40_02189cd4:
	.space 0x4
data_ov40_02189cd8:
	.space 0x4
data_ov40_02189cdc:
	.space 0x4
data_ov40_02189ce0:
	.space 0x4
data_ov40_02189ce4:
	.space 0x4
data_ov40_02189ce8:
	.space 0x4
data_ov40_02189cec:
	.space 0x4
data_ov40_02189cf0:
	.space 0x4
data_ov40_02189cf4:
	.space 0x4
data_ov40_02189cf8:
	.space 0x4
data_ov40_02189cfc:
	.space 0x4
data_ov40_02189d00:
	.space 0x4
data_ov40_02189d04:
	.space 0x4
data_ov40_02189d08:
	.space 0x4
data_ov40_02189d0c:
	.space 0x4
data_ov40_02189d10:
	.space 0x4
data_ov40_02189d14:
	.space 0x4
data_ov40_02189d18:
	.space 0x4
data_ov40_02189d1c:
	.space 0x4
data_ov40_02189d20:
	.space 0x4
data_ov40_02189d24:
	.space 0x4
data_ov40_02189d28:
	.space 0x4
data_ov40_02189d2c:
	.space 0x4
data_ov40_02189d30:
	.space 0x4
data_ov40_02189d34:
	.space 0x4
data_ov40_02189d38:
	.space 0x4
data_ov40_02189d3c:
	.space 0x4
data_ov40_02189d40:
	.space 0x4
data_ov40_02189d44:
	.space 0x4
data_ov40_02189d48:
	.space 0x4
data_ov40_02189d4c:
	.space 0x4
data_ov40_02189d50:
	.space 0x4
data_ov40_02189d54:
	.space 0x4
data_ov40_02189d58:
	.space 0x4
data_ov40_02189d5c:
	.space 0x4
data_ov40_02189d60:
	.space 0x4
data_ov40_02189d64:
	.space 0x4
data_ov40_02189d68:
	.space 0x4
data_ov40_02189d6c:
	.space 0x4
data_ov40_02189d70:
	.space 0x4
data_ov40_02189d74:
	.space 0x4
data_ov40_02189d78:
	.space 0x4
data_ov40_02189d7c:
	.space 0x4
data_ov40_02189d80:
	.space 0x4
data_ov40_02189d84:
	.space 0x4
data_ov40_02189d88:
	.space 0x4
data_ov40_02189d8c:
	.space 0x4
data_ov40_02189d90:
	.space 0x4
data_ov40_02189d94:
	.space 0x4
data_ov40_02189d98:
	.space 0x4
data_ov40_02189d9c:
	.space 0x4
data_ov40_02189da0:
	.space 0x4
data_ov40_02189da4:
	.space 0x4
data_ov40_02189da8:
	.space 0x4
data_ov40_02189dac:
	.space 0x4
data_ov40_02189db0:
	.space 0x4
data_ov40_02189db4:
	.space 0x4
data_ov40_02189db8:
	.space 0x4
data_ov40_02189dbc:
	.space 0x4
data_ov40_02189dc0:
	.space 0x4
data_ov40_02189dc4:
	.space 0x4
data_ov40_02189dc8:
	.space 0x4
data_ov40_02189dcc:
	.space 0x4
data_ov40_02189dd0:
	.space 0x4
data_ov40_02189dd4:
	.space 0x4
data_ov40_02189dd8:
	.space 0x4
data_ov40_02189ddc:
	.space 0x4
data_ov40_02189de0:
	.space 0x4
data_ov40_02189de4:
	.space 0x4
data_ov40_02189de8:
	.space 0x4
data_ov40_02189dec:
	.space 0x4
data_ov40_02189df0:
	.space 0x4
data_ov40_02189df4:
	.space 0x4
data_ov40_02189df8:
	.space 0x4
data_ov40_02189dfc:
	.space 0x4
data_ov40_02189e00:
	.space 0x4
data_ov40_02189e04:
	.space 0x4
data_ov40_02189e08:
	.space 0x4
data_ov40_02189e0c:
	.space 0x4
data_ov40_02189e10:
	.space 0x4
data_ov40_02189e14:
	.space 0x4
data_ov40_02189e18:
	.space 0x4
data_ov40_02189e1c:
	.space 0x4
data_ov40_02189e20:
	.space 0x4
data_ov40_02189e24:
	.space 0x4
data_ov40_02189e28:
	.space 0x4
data_ov40_02189e2c:
	.space 0x4
data_ov40_02189e30:
	.space 0x4
data_ov40_02189e34:
	.space 0x4
data_ov40_02189e38:
	.space 0x4
data_ov40_02189e3c:
	.space 0x4
data_ov40_02189e40:
	.space 0x4
data_ov40_02189e44:
	.space 0x4
data_ov40_02189e48:
	.space 0x4
data_ov40_02189e4c:
	.space 0x4
data_ov40_02189e50:
	.space 0x4
data_ov40_02189e54:
	.space 0x4
data_ov40_02189e58:
	.space 0x4
data_ov40_02189e5c:
	.space 0x4
data_ov40_02189e60:
	.space 0x4
data_ov40_02189e64:
	.space 0x4
data_ov40_02189e68:
	.space 0x4
data_ov40_02189e6c:
	.space 0x4
data_ov40_02189e70:
	.space 0x4
data_ov40_02189e74:
	.space 0x4
data_ov40_02189e78:
	.space 0x4
data_ov40_02189e7c:
	.space 0x4
data_ov40_02189e80:
	.space 0x4
data_ov40_02189e84:
	.space 0x4
data_ov40_02189e88:
	.space 0x4
data_ov40_02189e8c:
	.space 0x4
data_ov40_02189e90:
	.space 0x4
data_ov40_02189e94:
	.space 0x4
data_ov40_02189e98:
	.space 0x4
data_ov40_02189e9c:
	.space 0x4
data_ov40_02189ea0:
	.space 0x4
data_ov40_02189ea4:
	.space 0x4
data_ov40_02189ea8:
	.space 0x4
data_ov40_02189eac:
	.space 0x4
data_ov40_02189eb0:
	.space 0x4
data_ov40_02189eb4:
	.space 0x4
data_ov40_02189eb8:
	.space 0x4
data_ov40_02189ebc:
	.space 0x4
data_ov40_02189ec0:
	.space 0x4
data_ov40_02189ec4:
	.space 0x4
data_ov40_02189ec8:
	.space 0x4
data_ov40_02189ecc:
	.space 0x4
data_ov40_02189ed0:
	.space 0x4
data_ov40_02189ed4:
	.space 0x4
data_ov40_02189ed8:
	.space 0x4
data_ov40_02189edc:
	.space 0x4
data_ov40_02189ee0:
	.space 0x4
data_ov40_02189ee4:
	.space 0x4
data_ov40_02189ee8:
	.space 0x4
data_ov40_02189eec:
	.space 0x4
data_ov40_02189ef0:
	.space 0x4
data_ov40_02189ef4:
	.space 0x4
data_ov40_02189ef8:
	.space 0x4
data_ov40_02189efc:
	.space 0x4
data_ov40_02189f00:
	.space 0x4
data_ov40_02189f04:
	.space 0x4
data_ov40_02189f08:
	.space 0x4
data_ov40_02189f0c:
	.space 0x4
data_ov40_02189f10:
	.space 0x4
data_ov40_02189f14:
	.space 0x4
data_ov40_02189f18:
	.space 0x4
data_ov40_02189f1c:
	.space 0x4
data_ov40_02189f20:
	.space 0x4
data_ov40_02189f24:
	.space 0x4
data_ov40_02189f28:
	.space 0x4
data_ov40_02189f2c:
	.space 0x4
data_ov40_02189f30:
	.space 0x4
data_ov40_02189f34:
	.space 0x4
data_ov40_02189f38:
	.space 0x4
data_ov40_02189f3c:
	.space 0x4
data_ov40_02189f40:
	.space 0x4
data_ov40_02189f44:
	.space 0x4
data_ov40_02189f48:
	.space 0x4
data_ov40_02189f4c:
	.space 0x4
data_ov40_02189f50:
	.space 0x4
data_ov40_02189f54:
	.space 0x4
data_ov40_02189f58:
	.space 0x4
data_ov40_02189f5c:
	.space 0x4
data_ov40_02189f60:
	.space 0x4
data_ov40_02189f64:
	.space 0x4
data_ov40_02189f68:
	.space 0x4
data_ov40_02189f6c:
	.space 0x4
data_ov40_02189f70:
	.space 0x4
data_ov40_02189f74:
	.space 0x4
data_ov40_02189f78:
	.space 0x4
data_ov40_02189f7c:
	.space 0x4
data_ov40_02189f80:
	.space 0x4
data_ov40_02189f84:
	.space 0x4
data_ov40_02189f88:
	.space 0x4
data_ov40_02189f8c:
	.space 0x4
data_ov40_02189f90:
	.space 0x4
data_ov40_02189f94:
	.space 0x4
data_ov40_02189f98:
	.space 0x4
data_ov40_02189f9c:
	.space 0x4
data_ov40_02189fa0:
	.space 0x4
data_ov40_02189fa4:
	.space 0x4
data_ov40_02189fa8:
	.space 0x4
data_ov40_02189fac:
	.space 0x4
data_ov40_02189fb0:
	.space 0x4
data_ov40_02189fb4:
	.space 0x4
data_ov40_02189fb8:
	.space 0x4
data_ov40_02189fbc:
	.space 0x4
data_ov40_02189fc0:
	.space 0x4
data_ov40_02189fc4:
	.space 0x4
data_ov40_02189fc8:
	.space 0x4
data_ov40_02189fcc:
	.space 0x4
data_ov40_02189fd0:
	.space 0x4
data_ov40_02189fd4:
	.space 0x4
data_ov40_02189fd8:
	.space 0x4
data_ov40_02189fdc:
	.space 0x4
data_ov40_02189fe0:
	.space 0x4
data_ov40_02189fe4:
	.space 0x4
data_ov40_02189fe8:
	.space 0x4
data_ov40_02189fec:
	.space 0x4
data_ov40_02189ff0:
	.space 0x4
data_ov40_02189ff4:
	.space 0x4
data_ov40_02189ff8:
	.space 0x4
data_ov40_02189ffc:
	.space 0x4
data_ov40_0218a000:
	.space 0x4
data_ov40_0218a004:
	.space 0x4
data_ov40_0218a008:
	.space 0x4
data_ov40_0218a00c:
	.space 0x4
data_ov40_0218a010:
	.space 0x4
data_ov40_0218a014:
	.space 0x4
data_ov40_0218a018:
	.space 0x4
data_ov40_0218a01c:
	.space 0x4
data_ov40_0218a020:
	.space 0x4
data_ov40_0218a024:
	.space 0x4
data_ov40_0218a028:
	.space 0x4
data_ov40_0218a02c:
	.space 0x4
data_ov40_0218a030:
	.space 0x4
data_ov40_0218a034:
	.space 0x4
data_ov40_0218a038:
	.space 0x4
data_ov40_0218a03c:
	.space 0x4
data_ov40_0218a040:
	.space 0x4
data_ov40_0218a044:
	.space 0x4
data_ov40_0218a048:
	.space 0x4
data_ov40_0218a04c:
	.space 0x4
data_ov40_0218a050:
	.space 0x4
data_ov40_0218a054:
	.space 0x4
data_ov40_0218a058:
	.space 0x4
data_ov40_0218a05c:
	.space 0x4
data_ov40_0218a060:
	.space 0x4
data_ov40_0218a064:
	.space 0x4
data_ov40_0218a068:
	.space 0x4
data_ov40_0218a06c:
	.space 0x4
data_ov40_0218a070:
	.space 0x4
data_ov40_0218a074:
	.space 0x4
data_ov40_0218a078:
	.space 0x4
data_ov40_0218a07c:
	.space 0x4
data_ov40_0218a080:
	.space 0x4
data_ov40_0218a084:
	.space 0x4
data_ov40_0218a088:
	.space 0x4
data_ov40_0218a08c:
	.space 0x4
data_ov40_0218a090:
	.space 0x4
data_ov40_0218a094:
	.space 0x4
data_ov40_0218a098:
	.space 0x4
data_ov40_0218a09c:
	.space 0x4
data_ov40_0218a0a0:
	.space 0x4
data_ov40_0218a0a4:
	.space 0x4
data_ov40_0218a0a8:
	.space 0x4
data_ov40_0218a0ac:
	.space 0x4
data_ov40_0218a0b0:
	.space 0x4
data_ov40_0218a0b4:
	.space 0x4
data_ov40_0218a0b8:
	.space 0x4
data_ov40_0218a0bc:
	.space 0x4
data_ov40_0218a0c0:
	.space 0x4
data_ov40_0218a0c4:
	.space 0x4
data_ov40_0218a0c8:
	.space 0x4
data_ov40_0218a0cc:
	.space 0x4
data_ov40_0218a0d0:
	.space 0x4
data_ov40_0218a0d4:
	.space 0x4
data_ov40_0218a0d8:
	.space 0x4
data_ov40_0218a0dc:
	.space 0x4
data_ov40_0218a0e0:
	.space 0x4
data_ov40_0218a0e4:
	.space 0x4
data_ov40_0218a0e8:
	.space 0x4
data_ov40_0218a0ec:
	.space 0x4
data_ov40_0218a0f0:
	.space 0x4
data_ov40_0218a0f4:
	.space 0x4
data_ov40_0218a0f8:
	.space 0x4
data_ov40_0218a0fc:
	.space 0x4
data_ov40_0218a100:
	.space 0x4
data_ov40_0218a104:
	.space 0x4
data_ov40_0218a108:
	.space 0x4
data_ov40_0218a10c:
	.space 0x4
data_ov40_0218a110:
	.space 0x4
data_ov40_0218a114:
	.space 0x4
data_ov40_0218a118:
	.space 0x4
data_ov40_0218a11c:
	.space 0x4
data_ov40_0218a120:
	.space 0x4
data_ov40_0218a124:
	.space 0x4
data_ov40_0218a128:
	.space 0x4
data_ov40_0218a12c:
	.space 0x4
data_ov40_0218a130:
	.space 0x4
data_ov40_0218a134:
	.space 0x4
data_ov40_0218a138:
	.space 0x4
data_ov40_0218a13c:
	.space 0x4
data_ov40_0218a140:
	.space 0x4
data_ov40_0218a144:
	.space 0x4
data_ov40_0218a148:
	.space 0x4
data_ov40_0218a14c:
	.space 0x4
data_ov40_0218a150:
	.space 0x4
data_ov40_0218a154:
	.space 0x4
data_ov40_0218a158:
	.space 0x4
data_ov40_0218a15c:
	.space 0x4
data_ov40_0218a160:
	.space 0x4
data_ov40_0218a164:
	.space 0x4
data_ov40_0218a168:
	.space 0x4
data_ov40_0218a16c:
	.space 0x4
data_ov40_0218a170:
	.space 0x4
data_ov40_0218a174:
	.space 0x4
data_ov40_0218a178:
	.space 0x4
data_ov40_0218a17c:
	.space 0x4
data_ov40_0218a180:
	.space 0x4
data_ov40_0218a184:
	.space 0x4
data_ov40_0218a188:
	.space 0x4
data_ov40_0218a18c:
	.space 0x4
data_ov40_0218a190:
	.space 0x4
data_ov40_0218a194:
	.space 0x4
data_ov40_0218a198:
	.space 0x4
data_ov40_0218a19c:
	.space 0x4
data_ov40_0218a1a0:
	.space 0x4
data_ov40_0218a1a4:
	.space 0x4
data_ov40_0218a1a8:
	.space 0x4
data_ov40_0218a1ac:
	.space 0x4
data_ov40_0218a1b0:
	.space 0x4
data_ov40_0218a1b4:
	.space 0x4
data_ov40_0218a1b8:
	.space 0x4
data_ov40_0218a1bc:
	.space 0x4
data_ov40_0218a1c0:
	.space 0x4
data_ov40_0218a1c4:
	.space 0x4
data_ov40_0218a1c8:
	.space 0x4
data_ov40_0218a1cc:
	.space 0x4
data_ov40_0218a1d0:
	.space 0x4
data_ov40_0218a1d4:
	.space 0x4
data_ov40_0218a1d8:
	.space 0x4
data_ov40_0218a1dc:
	.space 0x4
data_ov40_0218a1e0:
	.space 0x4
data_ov40_0218a1e4:
	.space 0x4
data_ov40_0218a1e8:
	.space 0x4
data_ov40_0218a1ec:
	.space 0x4
data_ov40_0218a1f0:
	.space 0x4
data_ov40_0218a1f4:
	.space 0x4
data_ov40_0218a1f8:
	.space 0x4
data_ov40_0218a1fc:
	.space 0x4
data_ov40_0218a200:
	.space 0x4
data_ov40_0218a204:
	.space 0x4
data_ov40_0218a208:
	.space 0x4
data_ov40_0218a20c:
	.space 0x4
data_ov40_0218a210:
	.space 0x4
data_ov40_0218a214:
	.space 0x4
data_ov40_0218a218:
	.space 0x4
data_ov40_0218a21c:
	.space 0x4
data_ov40_0218a220:
	.space 0x4
data_ov40_0218a224:
	.space 0x4
data_ov40_0218a228:
	.space 0x4
data_ov40_0218a22c:
	.space 0x4
data_ov40_0218a230:
	.space 0x4
data_ov40_0218a234:
	.space 0x4
data_ov40_0218a238:
	.space 0x4
data_ov40_0218a23c:
	.space 0x4
data_ov40_0218a240:
	.space 0x4
data_ov40_0218a244:
	.space 0x4
data_ov40_0218a248:
	.space 0x4
data_ov40_0218a24c:
	.space 0x4
data_ov40_0218a250:
	.space 0x4
data_ov40_0218a254:
	.space 0x4
data_ov40_0218a258:
	.space 0x4
data_ov40_0218a25c:
	.space 0x4
data_ov40_0218a260:
	.space 0x4
data_ov40_0218a264:
	.space 0x4
data_ov40_0218a268:
	.space 0x4
data_ov40_0218a26c:
	.space 0x4
data_ov40_0218a270:
	.space 0x4
data_ov40_0218a274:
	.space 0x4
data_ov40_0218a278:
	.space 0x4
data_ov40_0218a27c:
	.space 0x4
data_ov40_0218a280:
	.space 0x4
data_ov40_0218a284:
	.space 0x4
data_ov40_0218a288:
	.space 0x4
data_ov40_0218a28c:
	.space 0x4
data_ov40_0218a290:
	.space 0x4
data_ov40_0218a294:
	.space 0x4
data_ov40_0218a298:
	.space 0x4
data_ov40_0218a29c:
	.space 0x4
data_ov40_0218a2a0:
	.space 0x4
data_ov40_0218a2a4:
	.space 0x4
data_ov40_0218a2a8:
	.space 0x4
data_ov40_0218a2ac:
	.space 0x4
data_ov40_0218a2b0:
	.space 0x4
data_ov40_0218a2b4:
	.space 0x4
data_ov40_0218a2b8:
	.space 0x4
data_ov40_0218a2bc:
	.space 0x4
data_ov40_0218a2c0:
	.space 0x4
data_ov40_0218a2c4:
	.space 0x4
data_ov40_0218a2c8:
	.space 0x4
data_ov40_0218a2cc:
	.space 0x4
data_ov40_0218a2d0:
	.space 0x4
data_ov40_0218a2d4:
	.space 0x4
data_ov40_0218a2d8:
	.space 0x4
data_ov40_0218a2dc:
	.space 0x4
data_ov40_0218a2e0:
	.space 0x4
data_ov40_0218a2e4:
	.space 0x4
data_ov40_0218a2e8:
	.space 0x4
data_ov40_0218a2ec:
	.space 0x4
data_ov40_0218a2f0:
	.space 0x4
data_ov40_0218a2f4:
	.space 0x4
data_ov40_0218a2f8:
	.space 0x4
data_ov40_0218a2fc:
	.space 0x4
data_ov40_0218a300:
	.space 0x4
data_ov40_0218a304:
	.space 0x4
data_ov40_0218a308:
	.space 0x4
data_ov40_0218a30c:
	.space 0x4
data_ov40_0218a310:
	.space 0x4
data_ov40_0218a314:
	.space 0x4
data_ov40_0218a318:
	.space 0x4
data_ov40_0218a31c:
	.space 0x4
data_ov40_0218a320:
	.space 0x4
data_ov40_0218a324:
	.space 0x4
data_ov40_0218a328:
	.space 0x4
data_ov40_0218a32c:
	.space 0x4
data_ov40_0218a330:
	.space 0x4
data_ov40_0218a334:
	.space 0x4
data_ov40_0218a338:
	.space 0x4
data_ov40_0218a33c:
	.space 0x4
data_ov40_0218a340:
	.space 0x4
data_ov40_0218a344:
	.space 0x4
data_ov40_0218a348:
	.space 0x4
data_ov40_0218a34c:
	.space 0x4
data_ov40_0218a350:
	.space 0x4
data_ov40_0218a354:
	.space 0x4
data_ov40_0218a358:
	.space 0x4
data_ov40_0218a35c:
	.space 0x4
data_ov40_0218a360:
	.space 0x4
data_ov40_0218a364:
	.space 0x4
data_ov40_0218a368:
	.space 0x4
data_ov40_0218a36c:
	.space 0x4
data_ov40_0218a370:
	.space 0x4
data_ov40_0218a374:
	.space 0x4
data_ov40_0218a378:
	.space 0x4
data_ov40_0218a37c:
	.space 0x4
data_ov40_0218a380:
	.space 0x4
data_ov40_0218a384:
	.space 0x4
data_ov40_0218a388:
	.space 0x4
data_ov40_0218a38c:
	.space 0x4
data_ov40_0218a390:
	.space 0x4
data_ov40_0218a394:
	.space 0x4
data_ov40_0218a398:
	.space 0x4
data_ov40_0218a39c:
	.space 0x4
data_ov40_0218a3a0:
	.space 0x4
data_ov40_0218a3a4:
	.space 0x4
data_ov40_0218a3a8:
	.space 0x4
data_ov40_0218a3ac:
	.space 0x4
data_ov40_0218a3b0:
	.space 0x4
data_ov40_0218a3b4:
	.space 0x4
data_ov40_0218a3b8:
	.space 0x4
data_ov40_0218a3bc:
	.space 0x4
data_ov40_0218a3c0:
	.space 0x4
data_ov40_0218a3c4:
	.space 0x4
data_ov40_0218a3c8:
	.space 0x4
data_ov40_0218a3cc:
	.space 0x4
data_ov40_0218a3d0:
	.space 0x4
data_ov40_0218a3d4:
	.space 0x4
data_ov40_0218a3d8:
	.space 0x4
data_ov40_0218a3dc:
	.space 0x4
data_ov40_0218a3e0:
	.space 0x4
data_ov40_0218a3e4:
	.space 0x4
data_ov40_0218a3e8:
	.space 0x4
data_ov40_0218a3ec:
	.space 0x4
data_ov40_0218a3f0:
	.space 0x4
data_ov40_0218a3f4:
	.space 0x4
data_ov40_0218a3f8:
	.space 0x4
data_ov40_0218a3fc:
	.space 0x4
data_ov40_0218a400:
	.space 0x4
data_ov40_0218a404:
	.space 0x4
data_ov40_0218a408:
	.space 0x4
data_ov40_0218a40c:
	.space 0x4
data_ov40_0218a410:
	.space 0x4
data_ov40_0218a414:
	.space 0x4
data_ov40_0218a418:
	.space 0x4
data_ov40_0218a41c:
	.space 0x4
data_ov40_0218a420:
	.space 0x4
data_ov40_0218a424:
	.space 0x4
data_ov40_0218a428:
	.space 0x4
data_ov40_0218a42c:
	.space 0x4
data_ov40_0218a430:
	.space 0x4
data_ov40_0218a434:
	.space 0x4
data_ov40_0218a438:
	.space 0x4
data_ov40_0218a43c:
	.space 0x4
data_ov40_0218a440:
	.space 0x4
data_ov40_0218a444:
	.space 0x4
data_ov40_0218a448:
	.space 0x4
data_ov40_0218a44c:
	.space 0x4
data_ov40_0218a450:
	.space 0x4
data_ov40_0218a454:
	.space 0x4
data_ov40_0218a458:
	.space 0x4
data_ov40_0218a45c:
	.space 0x4
data_ov40_0218a460:
	.space 0x4
data_ov40_0218a464:
	.space 0x4
data_ov40_0218a468:
	.space 0x4
data_ov40_0218a46c:
	.space 0x4
data_ov40_0218a470:
	.space 0x4
data_ov40_0218a474:
	.space 0x4
data_ov40_0218a478:
	.space 0x4
data_ov40_0218a47c:
	.space 0x4
data_ov40_0218a480:
	.space 0x4
data_ov40_0218a484:
	.space 0x4
data_ov40_0218a488:
	.space 0x4
data_ov40_0218a48c:
	.space 0x4
data_ov40_0218a490:
	.space 0x4
data_ov40_0218a494:
	.space 0x4
data_ov40_0218a498:
	.space 0x4
data_ov40_0218a49c:
	.space 0x4
data_ov40_0218a4a0:
	.space 0x4
data_ov40_0218a4a4:
	.space 0x4
data_ov40_0218a4a8:
	.space 0x4
data_ov40_0218a4ac:
	.space 0x4
data_ov40_0218a4b0:
	.space 0x4
data_ov40_0218a4b4:
	.space 0x4
data_ov40_0218a4b8:
	.space 0x4
data_ov40_0218a4bc:
	.space 0x4
data_ov40_0218a4c0:
	.space 0x4
data_ov40_0218a4c4:
	.space 0x4
data_ov40_0218a4c8:
	.space 0x4
data_ov40_0218a4cc:
	.space 0x4
data_ov40_0218a4d0:
	.space 0x4
data_ov40_0218a4d4:
	.space 0x4
data_ov40_0218a4d8:
	.space 0x4
data_ov40_0218a4dc:
	.space 0x4
data_ov40_0218a4e0:
	.space 0x4
data_ov40_0218a4e4:
	.space 0x4
data_ov40_0218a4e8:
	.space 0x4
data_ov40_0218a4ec:
	.space 0x4
data_ov40_0218a4f0:
	.space 0x4
data_ov40_0218a4f4:
	.space 0x4
data_ov40_0218a4f8:
	.space 0x4
data_ov40_0218a4fc:
	.space 0x4
data_ov40_0218a500:
	.space 0x4
data_ov40_0218a504:
	.space 0x4
data_ov40_0218a508:
	.space 0x4
data_ov40_0218a50c:
	.space 0x4
data_ov40_0218a510:
	.space 0x4
data_ov40_0218a514:
	.space 0x4
data_ov40_0218a518:
	.space 0x4
data_ov40_0218a51c:
	.space 0x4
data_ov40_0218a520:
	.space 0x4
data_ov40_0218a524:
	.space 0x4
data_ov40_0218a528:
	.space 0x4
data_ov40_0218a52c:
	.space 0x4
data_ov40_0218a530:
	.space 0x4
data_ov40_0218a534:
	.space 0x4
data_ov40_0218a538:
	.space 0x4
data_ov40_0218a53c:
	.space 0x4
data_ov40_0218a540:
	.space 0x4
data_ov40_0218a544:
	.space 0x4
data_ov40_0218a548:
	.space 0x4
data_ov40_0218a54c:
	.space 0x4
data_ov40_0218a550:
	.space 0x4
data_ov40_0218a554:
	.space 0x4
data_ov40_0218a558:
	.space 0x4
data_ov40_0218a55c:
	.space 0x4
data_ov40_0218a560:
	.space 0x4
data_ov40_0218a564:
	.space 0x4
data_ov40_0218a568:
	.space 0x4
data_ov40_0218a56c:
	.space 0x4
data_ov40_0218a570:
	.space 0x4
data_ov40_0218a574:
	.space 0x4
data_ov40_0218a578:
	.space 0x4
data_ov40_0218a57c:
	.space 0x4
data_ov40_0218a580:
	.space 0x4
data_ov40_0218a584:
	.space 0x4
data_ov40_0218a588:
	.space 0x4
data_ov40_0218a58c:
	.space 0x4
data_ov40_0218a590:
	.space 0x4
data_ov40_0218a594:
	.space 0x4
data_ov40_0218a598:
	.space 0x4
data_ov40_0218a59c:
	.space 0x4
data_ov40_0218a5a0:
	.space 0x4
data_ov40_0218a5a4:
	.space 0x4
data_ov40_0218a5a8:
	.space 0x4
data_ov40_0218a5ac:
	.space 0x4
data_ov40_0218a5b0:
	.space 0x4
data_ov40_0218a5b4:
	.space 0x4
data_ov40_0218a5b8:
	.space 0x4
data_ov40_0218a5bc:
	.space 0x4
data_ov40_0218a5c0:
	.space 0x4
data_ov40_0218a5c4:
	.space 0x4
data_ov40_0218a5c8:
	.space 0x4
data_ov40_0218a5cc:
	.space 0x4
data_ov40_0218a5d0:
	.space 0x4
data_ov40_0218a5d4:
	.space 0x4
data_ov40_0218a5d8:
	.space 0x4
data_ov40_0218a5dc:
	.space 0x4
data_ov40_0218a5e0:
	.space 0x4
data_ov40_0218a5e4:
	.space 0x4
data_ov40_0218a5e8:
	.space 0x4
data_ov40_0218a5ec:
	.space 0x4
data_ov40_0218a5f0:
	.space 0x4
data_ov40_0218a5f4:
	.space 0x4
data_ov40_0218a5f8:
	.space 0x4
data_ov40_0218a5fc:
	.space 0x4
data_ov40_0218a600:
	.space 0x4
data_ov40_0218a604:
	.space 0x4
data_ov40_0218a608:
	.space 0x4
data_ov40_0218a60c:
	.space 0x4
data_ov40_0218a610:
	.space 0x4
data_ov40_0218a614:
	.space 0x4
data_ov40_0218a618:
	.space 0x4
data_ov40_0218a61c:
	.space 0x4
data_ov40_0218a620:
	.space 0x4
data_ov40_0218a624:
	.space 0x4
data_ov40_0218a628:
	.space 0x4
data_ov40_0218a62c:
	.space 0x4
data_ov40_0218a630:
	.space 0x4
data_ov40_0218a634:
	.space 0x4
data_ov40_0218a638:
	.space 0x4
data_ov40_0218a63c:
	.space 0x4
data_ov40_0218a640:
	.space 0x4
data_ov40_0218a644:
	.space 0x4
data_ov40_0218a648:
	.space 0x4
data_ov40_0218a64c:
	.space 0x4
data_ov40_0218a650:
	.space 0x4
data_ov40_0218a654:
	.space 0x4
data_ov40_0218a658:
	.space 0x4
data_ov40_0218a65c:
	.space 0x4
data_ov40_0218a660:
	.space 0x4
data_ov40_0218a664:
	.space 0x4
data_ov40_0218a668:
	.space 0x4
data_ov40_0218a66c:
	.space 0x4
data_ov40_0218a670:
	.space 0x4
data_ov40_0218a674:
	.space 0x4
data_ov40_0218a678:
	.space 0x4
data_ov40_0218a67c:
	.space 0x4
data_ov40_0218a680:
	.space 0x4
data_ov40_0218a684:
	.space 0x4
data_ov40_0218a688:
	.space 0x4
data_ov40_0218a68c:
	.space 0x4
data_ov40_0218a690:
	.space 0x4
data_ov40_0218a694:
	.space 0x4
data_ov40_0218a698:
	.space 0x4
data_ov40_0218a69c:
	.space 0x4
data_ov40_0218a6a0:
	.space 0x4
data_ov40_0218a6a4:
	.space 0x4
data_ov40_0218a6a8:
	.space 0x4
data_ov40_0218a6ac:
	.space 0x4
data_ov40_0218a6b0:
	.space 0x4
data_ov40_0218a6b4:
	.space 0x4
data_ov40_0218a6b8:
	.space 0x4
data_ov40_0218a6bc:
	.space 0x4
data_ov40_0218a6c0:
	.space 0x4
data_ov40_0218a6c4:
	.space 0x4
data_ov40_0218a6c8:
	.space 0x4
data_ov40_0218a6cc:
	.space 0x4
data_ov40_0218a6d0:
	.space 0x4
data_ov40_0218a6d4:
	.space 0x4
data_ov40_0218a6d8:
	.space 0x4
data_ov40_0218a6dc:
	.space 0x4
data_ov40_0218a6e0:
	.space 0x4
data_ov40_0218a6e4:
	.space 0x4
data_ov40_0218a6e8:
	.space 0x4
data_ov40_0218a6ec:
	.space 0x4
data_ov40_0218a6f0:
	.space 0x4
data_ov40_0218a6f4:
	.space 0x4
data_ov40_0218a6f8:
	.space 0x4
data_ov40_0218a6fc:
	.space 0x4
data_ov40_0218a700:
	.space 0x4
data_ov40_0218a704:
	.space 0x4
data_ov40_0218a708:
	.space 0x4
data_ov40_0218a70c:
	.space 0x4
data_ov40_0218a710:
	.space 0x4
data_ov40_0218a714:
	.space 0x4
data_ov40_0218a718:
	.space 0x4
data_ov40_0218a71c:
	.space 0x4
data_ov40_0218a720:
	.space 0x4
data_ov40_0218a724:
	.space 0x4
data_ov40_0218a728:
	.space 0x4
data_ov40_0218a72c:
	.space 0x4
data_ov40_0218a730:
	.space 0x4
data_ov40_0218a734:
	.space 0x4
data_ov40_0218a738:
	.space 0x4
data_ov40_0218a73c:
	.space 0x4
data_ov40_0218a740:
	.space 0x4
data_ov40_0218a744:
	.space 0x4
data_ov40_0218a748:
	.space 0x4
data_ov40_0218a74c:
	.space 0x4
data_ov40_0218a750:
	.space 0x4
data_ov40_0218a754:
	.space 0x4
data_ov40_0218a758:
	.space 0x4
data_ov40_0218a75c:
	.space 0x4
data_ov40_0218a760:
	.space 0x4
data_ov40_0218a764:
	.space 0x4
data_ov40_0218a768:
	.space 0x4
data_ov40_0218a76c:
	.space 0x4
data_ov40_0218a770:
	.space 0x4
data_ov40_0218a774:
	.space 0x4
data_ov40_0218a778:
	.space 0x4
data_ov40_0218a77c:
	.space 0x4
data_ov40_0218a780:
	.space 0x4
data_ov40_0218a784:
	.space 0x4
data_ov40_0218a788:
	.space 0x4
data_ov40_0218a78c:
	.space 0x4
data_ov40_0218a790:
	.space 0x4
data_ov40_0218a794:
	.space 0x4
data_ov40_0218a798:
	.space 0x4
data_ov40_0218a79c:
	.space 0x4
data_ov40_0218a7a0:
	.space 0x4
data_ov40_0218a7a4:
	.space 0x4
data_ov40_0218a7a8:
	.space 0x4
data_ov40_0218a7ac:
	.space 0x4
data_ov40_0218a7b0:
	.space 0x4
data_ov40_0218a7b4:
	.space 0x4
data_ov40_0218a7b8:
	.space 0x4
data_ov40_0218a7bc:
	.space 0x4
data_ov40_0218a7c0:
	.space 0x4
data_ov40_0218a7c4:
	.space 0x4
data_ov40_0218a7c8:
	.space 0x4
data_ov40_0218a7cc:
	.space 0x4
data_ov40_0218a7d0:
	.space 0x4
data_ov40_0218a7d4:
	.space 0x4
data_ov40_0218a7d8:
	.space 0x4
data_ov40_0218a7dc:
	.space 0x4
data_ov40_0218a7e0:
	.space 0x4
data_ov40_0218a7e4:
	.space 0x4
data_ov40_0218a7e8:
	.space 0x4
data_ov40_0218a7ec:
	.space 0x4
data_ov40_0218a7f0:
	.space 0x4
data_ov40_0218a7f4:
	.space 0x4
data_ov40_0218a7f8:
	.space 0x4
data_ov40_0218a7fc:
	.space 0x4
data_ov40_0218a800:
	.space 0x4
data_ov40_0218a804:
	.space 0x4
data_ov40_0218a808:
	.space 0x4
data_ov40_0218a80c:
	.space 0x4
data_ov40_0218a810:
	.space 0x4
data_ov40_0218a814:
	.space 0x4
data_ov40_0218a818:
	.space 0x4
data_ov40_0218a81c:
	.space 0x4
data_ov40_0218a820:
	.space 0x4
data_ov40_0218a824:
	.space 0x4
data_ov40_0218a828:
	.space 0x4
data_ov40_0218a82c:
	.space 0x4
data_ov40_0218a830:
	.space 0x4
data_ov40_0218a834:
	.space 0x4
data_ov40_0218a838:
	.space 0x4
data_ov40_0218a83c:
	.space 0x4
data_ov40_0218a840:
	.space 0x4
data_ov40_0218a844:
	.space 0x4
data_ov40_0218a848:
	.space 0x4
data_ov40_0218a84c:
	.space 0x4
data_ov40_0218a850:
	.space 0x4
data_ov40_0218a854:
	.space 0x4
data_ov40_0218a858:
	.space 0x4
data_ov40_0218a85c:
	.space 0x4
data_ov40_0218a860:
	.space 0x4
data_ov40_0218a864:
	.space 0x4
data_ov40_0218a868:
	.space 0x4
data_ov40_0218a86c:
	.space 0x4
data_ov40_0218a870:
	.space 0x4
data_ov40_0218a874:
	.space 0x4
data_ov40_0218a878:
	.space 0x4
data_ov40_0218a87c:
	.space 0x4
data_ov40_0218a880:
	.space 0x4
data_ov40_0218a884:
	.space 0x4
data_ov40_0218a888:
	.space 0x4
data_ov40_0218a88c:
	.space 0x4
data_ov40_0218a890:
	.space 0x4
data_ov40_0218a894:
	.space 0x4
data_ov40_0218a898:
	.space 0x4
data_ov40_0218a89c:
	.space 0x4
data_ov40_0218a8a0:
	.space 0x4
data_ov40_0218a8a4:
	.space 0x4
data_ov40_0218a8a8:
	.space 0x4
data_ov40_0218a8ac:
	.space 0x4
data_ov40_0218a8b0:
	.space 0x4
data_ov40_0218a8b4:
	.space 0x4
data_ov40_0218a8b8:
	.space 0x4
data_ov40_0218a8bc:
	.space 0x4
data_ov40_0218a8c0:
	.space 0x4
data_ov40_0218a8c4:
	.space 0x4
data_ov40_0218a8c8:
	.space 0x4
data_ov40_0218a8cc:
	.space 0x4
data_ov40_0218a8d0:
	.space 0x4
data_ov40_0218a8d4:
	.space 0x4
data_ov40_0218a8d8:
	.space 0x4
data_ov40_0218a8dc:
	.space 0x4
data_ov40_0218a8e0:
	.space 0x4
data_ov40_0218a8e4:
	.space 0x4
data_ov40_0218a8e8:
	.space 0x4
data_ov40_0218a8ec:
	.space 0x4
data_ov40_0218a8f0:
	.space 0x4
data_ov40_0218a8f4:
	.space 0x4
data_ov40_0218a8f8:
	.space 0x4
data_ov40_0218a8fc:
	.space 0x4
data_ov40_0218a900:
	.space 0x4
data_ov40_0218a904:
	.space 0x4
data_ov40_0218a908:
	.space 0x4
data_ov40_0218a90c:
	.space 0x4
data_ov40_0218a910:
	.space 0x4
data_ov40_0218a914:
	.space 0x4
data_ov40_0218a918:
	.space 0x4
data_ov40_0218a91c:
	.space 0x4
data_ov40_0218a920:
	.space 0x4
data_ov40_0218a924:
	.space 0x4
data_ov40_0218a928:
	.space 0x4
data_ov40_0218a92c:
	.space 0x4
data_ov40_0218a930:
	.space 0x4
data_ov40_0218a934:
	.space 0x4
data_ov40_0218a938:
	.space 0x4
data_ov40_0218a93c:
	.space 0x4
data_ov40_0218a940:
	.space 0x4
data_ov40_0218a944:
	.space 0x4
data_ov40_0218a948:
	.space 0x4
data_ov40_0218a94c:
	.space 0x4
data_ov40_0218a950:
	.space 0x4
data_ov40_0218a954:
	.space 0x4
data_ov40_0218a958:
	.space 0x4
data_ov40_0218a95c:
	.space 0x4
data_ov40_0218a960:
	.space 0x4
data_ov40_0218a964:
	.space 0x4
data_ov40_0218a968:
	.space 0x4
data_ov40_0218a96c:
	.space 0x4
data_ov40_0218a970:
	.space 0x4
data_ov40_0218a974:
	.space 0x4
data_ov40_0218a978:
	.space 0x4
data_ov40_0218a97c:
	.space 0x4
data_ov40_0218a980:
	.space 0x4
data_ov40_0218a984:
	.space 0x4
data_ov40_0218a988:
	.space 0x4
data_ov40_0218a98c:
	.space 0x4
data_ov40_0218a990:
	.space 0x4
data_ov40_0218a994:
	.space 0x4
data_ov40_0218a998:
	.space 0x4
data_ov40_0218a99c:
	.space 0x4
data_ov40_0218a9a0:
	.space 0x4
data_ov40_0218a9a4:
	.space 0x4
data_ov40_0218a9a8:
	.space 0x4
data_ov40_0218a9ac:
	.space 0x4
data_ov40_0218a9b0:
	.space 0x4
data_ov40_0218a9b4:
	.space 0x4
data_ov40_0218a9b8:
	.space 0x4
data_ov40_0218a9bc:
	.space 0x4
data_ov40_0218a9c0:
	.space 0x4
data_ov40_0218a9c4:
	.space 0x4
data_ov40_0218a9c8:
	.space 0x4
data_ov40_0218a9cc:
	.space 0x4
data_ov40_0218a9d0:
	.space 0x4
data_ov40_0218a9d4:
	.space 0x4
data_ov40_0218a9d8:
	.space 0x4
data_ov40_0218a9dc:
	.space 0x4
data_ov40_0218a9e0:
	.space 0x4
data_ov40_0218a9e4:
	.space 0x4
data_ov40_0218a9e8:
	.space 0x4
data_ov40_0218a9ec:
	.space 0x4
data_ov40_0218a9f0:
	.space 0x4
data_ov40_0218a9f4:
	.space 0x4
data_ov40_0218a9f8:
	.space 0x4
data_ov40_0218a9fc:
	.space 0x4
data_ov40_0218aa00:
	.space 0x4
data_ov40_0218aa04:
	.space 0x4
data_ov40_0218aa08:
	.space 0x4
data_ov40_0218aa0c:
	.space 0x4
data_ov40_0218aa10:
	.space 0x4
data_ov40_0218aa14:
	.space 0x4
data_ov40_0218aa18:
	.space 0x4
data_ov40_0218aa1c:
	.space 0x4
data_ov40_0218aa20:
	.space 0x4
data_ov40_0218aa24:
	.space 0x4
data_ov40_0218aa28:
	.space 0x4
data_ov40_0218aa2c:
	.space 0x4
data_ov40_0218aa30:
	.space 0x4
data_ov40_0218aa34:
	.space 0x4
data_ov40_0218aa38:
	.space 0x4
data_ov40_0218aa3c:
	.space 0x4
data_ov40_0218aa40:
	.space 0x4
data_ov40_0218aa44:
	.space 0x4
data_ov40_0218aa48:
	.space 0x4
data_ov40_0218aa4c:
	.space 0x4
data_ov40_0218aa50:
	.space 0x4
data_ov40_0218aa54:
	.space 0x4
data_ov40_0218aa58:
	.space 0x4
data_ov40_0218aa5c:
	.space 0x4
data_ov40_0218aa60:
	.space 0x4
data_ov40_0218aa64:
	.space 0x4
data_ov40_0218aa68:
	.space 0x4
data_ov40_0218aa6c:
	.space 0x4
data_ov40_0218aa70:
	.space 0x4
data_ov40_0218aa74:
	.space 0x4
data_ov40_0218aa78:
	.space 0x4
data_ov40_0218aa7c:
	.space 0x4
data_ov40_0218aa80:
	.space 0x4
data_ov40_0218aa84:
	.space 0x4
data_ov40_0218aa88:
	.space 0x4
data_ov40_0218aa8c:
	.space 0x4
data_ov40_0218aa90:
	.space 0x4
data_ov40_0218aa94:
	.space 0x4
data_ov40_0218aa98:
	.space 0x4
data_ov40_0218aa9c:
	.space 0x4
data_ov40_0218aaa0:
	.space 0x4
data_ov40_0218aaa4:
	.space 0x4
data_ov40_0218aaa8:
	.space 0x4
data_ov40_0218aaac:
	.space 0x4
data_ov40_0218aab0:
	.space 0x4
data_ov40_0218aab4:
	.space 0x4
data_ov40_0218aab8:
	.space 0x4
data_ov40_0218aabc:
	.space 0x4
data_ov40_0218aac0:
	.space 0x4
data_ov40_0218aac4:
	.space 0x4
data_ov40_0218aac8:
	.space 0x4
data_ov40_0218aacc:
	.space 0x4
data_ov40_0218aad0:
	.space 0x4
data_ov40_0218aad4:
	.space 0x4
data_ov40_0218aad8:
	.space 0x4
data_ov40_0218aadc:
	.space 0x4
data_ov40_0218aae0:
	.space 0x4
data_ov40_0218aae4:
	.space 0x4
data_ov40_0218aae8:
	.space 0x4
data_ov40_0218aaec:
	.space 0x4
data_ov40_0218aaf0:
	.space 0x4
data_ov40_0218aaf4:
	.space 0x4
data_ov40_0218aaf8:
	.space 0x4
data_ov40_0218aafc:
	.space 0x4
data_ov40_0218ab00:
	.space 0x4
data_ov40_0218ab04:
	.space 0x4
data_ov40_0218ab08:
	.space 0x4
data_ov40_0218ab0c:
	.space 0x4
data_ov40_0218ab10:
	.space 0x4
data_ov40_0218ab14:
	.space 0x4
data_ov40_0218ab18:
	.space 0x4
data_ov40_0218ab1c:
	.space 0x4
data_ov40_0218ab20:
	.space 0x4
data_ov40_0218ab24:
	.space 0x4
data_ov40_0218ab28:
	.space 0x4
data_ov40_0218ab2c:
	.space 0x4
data_ov40_0218ab30:
	.space 0x4
data_ov40_0218ab34:
	.space 0x4
data_ov40_0218ab38:
	.space 0x4
data_ov40_0218ab3c:
	.space 0x4
data_ov40_0218ab40:
	.space 0x4
data_ov40_0218ab44:
	.space 0x4
data_ov40_0218ab48:
	.space 0x4
data_ov40_0218ab4c:
	.space 0x4
data_ov40_0218ab50:
	.space 0x4
data_ov40_0218ab54:
	.space 0x4
data_ov40_0218ab58:
	.space 0x4
data_ov40_0218ab5c:
	.space 0x4
data_ov40_0218ab60:
	.space 0x4
data_ov40_0218ab64:
	.space 0x4
data_ov40_0218ab68:
	.space 0x4
data_ov40_0218ab6c:
	.space 0x4
data_ov40_0218ab70:
	.space 0x4
data_ov40_0218ab74:
	.space 0x4
data_ov40_0218ab78:
	.space 0x4
data_ov40_0218ab7c:
	.space 0x4
data_ov40_0218ab80:
	.space 0x4
data_ov40_0218ab84:
	.space 0x4
data_ov40_0218ab88:
	.space 0x4
data_ov40_0218ab8c:
	.space 0x4
data_ov40_0218ab90:
	.space 0x4
data_ov40_0218ab94:
	.space 0x4
data_ov40_0218ab98:
	.space 0x4
data_ov40_0218ab9c:
	.space 0x4
data_ov40_0218aba0:
	.space 0x4
data_ov40_0218aba4:
	.space 0x4
data_ov40_0218aba8:
	.space 0x4
data_ov40_0218abac:
	.space 0x4
data_ov40_0218abb0:
	.space 0x4
data_ov40_0218abb4:
	.space 0x4
data_ov40_0218abb8:
	.space 0x4
data_ov40_0218abbc:
	.space 0x4
data_ov40_0218abc0:
	.space 0x4
data_ov40_0218abc4:
	.space 0x4
data_ov40_0218abc8:
	.space 0x4
data_ov40_0218abcc:
	.space 0x4
data_ov40_0218abd0:
	.space 0x4
data_ov40_0218abd4:
	.space 0x4
data_ov40_0218abd8:
	.space 0x4
data_ov40_0218abdc:
	.space 0x4
data_ov40_0218abe0:
	.space 0x4
data_ov40_0218abe4:
	.space 0x4
data_ov40_0218abe8:
	.space 0x4
data_ov40_0218abec:
	.space 0x4
data_ov40_0218abf0:
	.space 0x4
data_ov40_0218abf4:
	.space 0x4
data_ov40_0218abf8:
	.space 0x4
data_ov40_0218abfc:
	.space 0x4
data_ov40_0218ac00:
	.space 0x4
data_ov40_0218ac04:
	.space 0x4
data_ov40_0218ac08:
	.space 0x4
data_ov40_0218ac0c:
	.space 0x4
data_ov40_0218ac10:
	.space 0x4
data_ov40_0218ac14:
	.space 0x4
data_ov40_0218ac18:
	.space 0x4
data_ov40_0218ac1c:
	.space 0x4
data_ov40_0218ac20:
	.space 0x4
data_ov40_0218ac24:
	.space 0x4
data_ov40_0218ac28:
	.space 0x4
data_ov40_0218ac2c:
	.space 0x4
data_ov40_0218ac30:
	.space 0x4
data_ov40_0218ac34:
	.space 0x4
data_ov40_0218ac38:
	.space 0x4
data_ov40_0218ac3c:
	.space 0x4
data_ov40_0218ac40:
	.space 0x4
data_ov40_0218ac44:
	.space 0x4
data_ov40_0218ac48:
	.space 0x4
data_ov40_0218ac4c:
	.space 0x4
data_ov40_0218ac50:
	.space 0x4
data_ov40_0218ac54:
	.space 0x4
data_ov40_0218ac58:
	.space 0x4
data_ov40_0218ac5c:
	.space 0x4
data_ov40_0218ac60:
	.space 0x4
data_ov40_0218ac64:
	.space 0x4
data_ov40_0218ac68:
	.space 0x4
data_ov40_0218ac6c:
	.space 0x4
data_ov40_0218ac70:
	.space 0x4
data_ov40_0218ac74:
	.space 0x4
data_ov40_0218ac78:
	.space 0x4
data_ov40_0218ac7c:
	.space 0x4
data_ov40_0218ac80:
	.space 0x4
data_ov40_0218ac84:
	.space 0x4
data_ov40_0218ac88:
	.space 0x4
data_ov40_0218ac8c:
	.space 0x4
data_ov40_0218ac90:
	.space 0x4
data_ov40_0218ac94:
	.space 0x4
data_ov40_0218ac98:
	.space 0x4
data_ov40_0218ac9c:
	.space 0x4
data_ov40_0218aca0:
	.space 0x4
data_ov40_0218aca4:
	.space 0x4
data_ov40_0218aca8:
	.space 0x4
data_ov40_0218acac:
	.space 0x4
data_ov40_0218acb0:
	.space 0x4
data_ov40_0218acb4:
	.space 0x4
data_ov40_0218acb8:
	.space 0x4
data_ov40_0218acbc:
	.space 0x4
data_ov40_0218acc0:
	.space 0x4
data_ov40_0218acc4:
	.space 0x4
data_ov40_0218acc8:
	.space 0x4
data_ov40_0218accc:
	.space 0x4
data_ov40_0218acd0:
	.space 0x4
data_ov40_0218acd4:
	.space 0x4
data_ov40_0218acd8:
	.space 0x4
data_ov40_0218acdc:
	.space 0x4
data_ov40_0218ace0:
	.space 0x4
data_ov40_0218ace4:
	.space 0x4
data_ov40_0218ace8:
	.space 0x4
data_ov40_0218acec:
	.space 0x4
data_ov40_0218acf0:
	.space 0x4
data_ov40_0218acf4:
	.space 0x4
data_ov40_0218acf8:
	.space 0x4
data_ov40_0218acfc:
	.space 0x4
data_ov40_0218ad00:
	.space 0x4
data_ov40_0218ad04:
	.space 0x4
data_ov40_0218ad08:
	.space 0x4
data_ov40_0218ad0c:
	.space 0x4
data_ov40_0218ad10:
	.space 0x4
data_ov40_0218ad14:
	.space 0x4
data_ov40_0218ad18:
	.space 0x4
data_ov40_0218ad1c:
	.space 0x4
data_ov40_0218ad20:
	.space 0x4
data_ov40_0218ad24:
	.space 0x4
data_ov40_0218ad28:
	.space 0x4
data_ov40_0218ad2c:
	.space 0x4
data_ov40_0218ad30:
	.space 0x4
data_ov40_0218ad34:
	.space 0x4
data_ov40_0218ad38:
	.space 0x4
data_ov40_0218ad3c:
	.space 0x4
data_ov40_0218ad40:
	.space 0x4
data_ov40_0218ad44:
	.space 0x4
data_ov40_0218ad48:
	.space 0x4
data_ov40_0218ad4c:
	.space 0x4
data_ov40_0218ad50:
	.space 0x4
data_ov40_0218ad54:
	.space 0x4
data_ov40_0218ad58:
	.space 0x4
data_ov40_0218ad5c:
	.space 0x4
data_ov40_0218ad60:
	.space 0x4
data_ov40_0218ad64:
	.space 0x4
data_ov40_0218ad68:
	.space 0x4
data_ov40_0218ad6c:
	.space 0x4
data_ov40_0218ad70:
	.space 0x4
data_ov40_0218ad74:
	.space 0x4
data_ov40_0218ad78:
	.space 0x4
data_ov40_0218ad7c:
	.space 0x4
data_ov40_0218ad80:
	.space 0x4
data_ov40_0218ad84:
	.space 0x4
data_ov40_0218ad88:
	.space 0x4
data_ov40_0218ad8c:
	.space 0x4
data_ov40_0218ad90:
	.space 0x4
data_ov40_0218ad94:
	.space 0x4
data_ov40_0218ad98:
	.space 0x4
data_ov40_0218ad9c:
	.space 0x4
data_ov40_0218ada0:
	.space 0x4
data_ov40_0218ada4:
	.space 0x4
data_ov40_0218ada8:
	.space 0x4
data_ov40_0218adac:
	.space 0x4
data_ov40_0218adb0:
	.space 0x4
data_ov40_0218adb4:
	.space 0x4
data_ov40_0218adb8:
	.space 0x4
data_ov40_0218adbc:
	.space 0x4
data_ov40_0218adc0:
	.space 0x4
data_ov40_0218adc4:
	.space 0x4
data_ov40_0218adc8:
	.space 0x4
data_ov40_0218adcc:
	.space 0x4
data_ov40_0218add0:
	.space 0x4
data_ov40_0218add4:
	.space 0x4
data_ov40_0218add8:
	.space 0x4
data_ov40_0218addc:
	.space 0x4
data_ov40_0218ade0:
	.space 0x4
data_ov40_0218ade4:
	.space 0x4
data_ov40_0218ade8:
	.space 0x4
data_ov40_0218adec:
	.space 0x4
data_ov40_0218adf0:
	.space 0x4
data_ov40_0218adf4:
	.space 0x4
data_ov40_0218adf8:
	.space 0x4
data_ov40_0218adfc:
	.space 0x4
data_ov40_0218ae00:
	.space 0x4
data_ov40_0218ae04:
	.space 0x4
data_ov40_0218ae08:
	.space 0x4
data_ov40_0218ae0c:
	.space 0x4
data_ov40_0218ae10:
	.space 0x4
data_ov40_0218ae14:
	.space 0x4
data_ov40_0218ae18:
	.space 0x4
data_ov40_0218ae1c:
	.space 0x4
data_ov40_0218ae20:
	.space 0x4
data_ov40_0218ae24:
	.space 0x4
data_ov40_0218ae28:
	.space 0x4
data_ov40_0218ae2c:
	.space 0x4
data_ov40_0218ae30:
	.space 0x4
data_ov40_0218ae34:
	.space 0x4
data_ov40_0218ae38:
	.space 0x4
data_ov40_0218ae3c:
	.space 0x4
data_ov40_0218ae40:
	.space 0x4
data_ov40_0218ae44:
	.space 0x4
data_ov40_0218ae48:
	.space 0x4
data_ov40_0218ae4c:
	.space 0x4
data_ov40_0218ae50:
	.space 0x4
data_ov40_0218ae54:
	.space 0x4
data_ov40_0218ae58:
	.space 0x4
data_ov40_0218ae5c:
	.space 0x4
data_ov40_0218ae60:
	.space 0x4
data_ov40_0218ae64:
	.space 0x4
data_ov40_0218ae68:
	.space 0x4
data_ov40_0218ae6c:
	.space 0x4
data_ov40_0218ae70:
	.space 0x4
data_ov40_0218ae74:
	.space 0x4
data_ov40_0218ae78:
	.space 0x4
data_ov40_0218ae7c:
	.space 0x4
data_ov40_0218ae80:
	.space 0x4
data_ov40_0218ae84:
	.space 0x4
data_ov40_0218ae88:
	.space 0x4
data_ov40_0218ae8c:
	.space 0x4
data_ov40_0218ae90:
	.space 0x4
data_ov40_0218ae94:
	.space 0x4
data_ov40_0218ae98:
	.space 0x4
data_ov40_0218ae9c:
	.space 0x4
data_ov40_0218aea0:
	.space 0x4
data_ov40_0218aea4:
	.space 0x4
data_ov40_0218aea8:
	.space 0x4
data_ov40_0218aeac:
	.space 0x4
data_ov40_0218aeb0:
	.space 0x4
data_ov40_0218aeb4:
	.space 0x4
data_ov40_0218aeb8:
	.space 0x4
data_ov40_0218aebc:
	.space 0x4
data_ov40_0218aec0:
	.space 0x4
data_ov40_0218aec4:
	.space 0x4
data_ov40_0218aec8:
	.space 0x4
data_ov40_0218aecc:
	.space 0x4
data_ov40_0218aed0:
	.space 0x4
data_ov40_0218aed4:
	.space 0x4
data_ov40_0218aed8:
	.space 0x4
data_ov40_0218aedc:
	.space 0x4
data_ov40_0218aee0:
	.space 0x4
data_ov40_0218aee4:
	.space 0x4
data_ov40_0218aee8:
	.space 0x4
data_ov40_0218aeec:
	.space 0x4
data_ov40_0218aef0:
	.space 0x4
data_ov40_0218aef4:
	.space 0x4
data_ov40_0218aef8:
	.space 0x4
data_ov40_0218aefc:
	.space 0x4
data_ov40_0218af00:
	.space 0x4
data_ov40_0218af04:
	.space 0x4
data_ov40_0218af08:
	.space 0x4
data_ov40_0218af0c:
	.space 0x4
data_ov40_0218af10:
	.space 0x4
data_ov40_0218af14:
	.space 0x4
data_ov40_0218af18:
	.space 0x4
data_ov40_0218af1c:
	.space 0x4
data_ov40_0218af20:
	.space 0x4
data_ov40_0218af24:
	.space 0x4
data_ov40_0218af28:
	.space 0x4
data_ov40_0218af2c:
	.space 0x4
data_ov40_0218af30:
	.space 0x4
data_ov40_0218af34:
	.space 0x4
data_ov40_0218af38:
	.space 0x4
data_ov40_0218af3c:
	.space 0x4
data_ov40_0218af40:
	.space 0x4
data_ov40_0218af44:
	.space 0x4
data_ov40_0218af48:
	.space 0x4
data_ov40_0218af4c:
	.space 0x4
data_ov40_0218af50:
	.space 0x4
data_ov40_0218af54:
	.space 0x4
data_ov40_0218af58:
	.space 0x4
data_ov40_0218af5c:
	.space 0x4
data_ov40_0218af60:
	.space 0x4
data_ov40_0218af64:
	.space 0x4
data_ov40_0218af68:
	.space 0x4
data_ov40_0218af6c:
	.space 0x4
data_ov40_0218af70:
	.space 0x4
data_ov40_0218af74:
	.space 0x4
data_ov40_0218af78:
	.space 0x4
data_ov40_0218af7c:
	.space 0x4
data_ov40_0218af80:
	.space 0x4
data_ov40_0218af84:
	.space 0x4
data_ov40_0218af88:
	.space 0x4
data_ov40_0218af8c:
	.space 0x4
data_ov40_0218af90:
	.space 0x4
data_ov40_0218af94:
	.space 0x4
data_ov40_0218af98:
	.space 0x4
data_ov40_0218af9c:
	.space 0x4
data_ov40_0218afa0:
	.space 0x4
data_ov40_0218afa4:
	.space 0x4
data_ov40_0218afa8:
	.space 0x4
data_ov40_0218afac:
	.space 0x4
data_ov40_0218afb0:
	.space 0x4
data_ov40_0218afb4:
	.space 0x4
data_ov40_0218afb8:
	.space 0x4
data_ov40_0218afbc:
	.space 0x4
data_ov40_0218afc0:
	.space 0x4
data_ov40_0218afc4:
	.space 0x4
data_ov40_0218afc8:
	.space 0x4
data_ov40_0218afcc:
	.space 0x4
data_ov40_0218afd0:
	.space 0x4
data_ov40_0218afd4:
	.space 0x4
data_ov40_0218afd8:
	.space 0x4
data_ov40_0218afdc:
	.space 0x4
data_ov40_0218afe0:
	.space 0x4
data_ov40_0218afe4:
	.space 0x4
data_ov40_0218afe8:
	.space 0x4
data_ov40_0218afec:
	.space 0x4
data_ov40_0218aff0:
	.space 0x4
data_ov40_0218aff4:
	.space 0x4
data_ov40_0218aff8:
	.space 0x4
data_ov40_0218affc:
	.space 0x4
data_ov40_0218b000:
	.space 0x4
data_ov40_0218b004:
	.space 0x4
data_ov40_0218b008:
	.space 0x4
data_ov40_0218b00c:
	.space 0x4
data_ov40_0218b010:
	.space 0x4
data_ov40_0218b014:
	.space 0x4
data_ov40_0218b018:
	.space 0x4
data_ov40_0218b01c:
	.space 0x4
data_ov40_0218b020:
	.space 0x4
data_ov40_0218b024:
	.space 0x4
data_ov40_0218b028:
	.space 0x4
data_ov40_0218b02c:
	.space 0x4
data_ov40_0218b030:
	.space 0x4
data_ov40_0218b034:
	.space 0x4
data_ov40_0218b038:
	.space 0x4
data_ov40_0218b03c:
	.space 0x4
data_ov40_0218b040:
	.space 0x4
data_ov40_0218b044:
	.space 0x4
data_ov40_0218b048:
	.space 0x4
data_ov40_0218b04c:
	.space 0x4
data_ov40_0218b050:
	.space 0x4
data_ov40_0218b054:
	.space 0x4
data_ov40_0218b058:
	.space 0x4
data_ov40_0218b05c:
	.space 0x4
data_ov40_0218b060:
	.space 0x4
data_ov40_0218b064:
	.space 0x4
data_ov40_0218b068:
	.space 0x4
data_ov40_0218b06c:
	.space 0x4
data_ov40_0218b070:
	.space 0x4
data_ov40_0218b074:
	.space 0x4
data_ov40_0218b078:
	.space 0x4
data_ov40_0218b07c:
	.space 0x4
data_ov40_0218b080:
	.space 0x4
data_ov40_0218b084:
	.space 0x4
data_ov40_0218b088:
	.space 0x4
data_ov40_0218b08c:
	.space 0x4
data_ov40_0218b090:
	.space 0x4
data_ov40_0218b094:
	.space 0x4
data_ov40_0218b098:
	.space 0x4
data_ov40_0218b09c:
	.space 0x4
data_ov40_0218b0a0:
	.space 0x4
data_ov40_0218b0a4:
	.space 0x4
data_ov40_0218b0a8:
	.space 0x4
data_ov40_0218b0ac:
	.space 0x4
data_ov40_0218b0b0:
	.space 0x4
data_ov40_0218b0b4:
	.space 0x4
data_ov40_0218b0b8:
	.space 0x4
data_ov40_0218b0bc:
	.space 0x4
data_ov40_0218b0c0:
	.space 0x4
data_ov40_0218b0c4:
	.space 0x4
data_ov40_0218b0c8:
	.space 0x4
data_ov40_0218b0cc:
	.space 0x4
data_ov40_0218b0d0:
	.space 0x4
data_ov40_0218b0d4:
	.space 0x4
data_ov40_0218b0d8:
	.space 0x4
data_ov40_0218b0dc:
	.space 0x4
data_ov40_0218b0e0:
	.space 0x4
data_ov40_0218b0e4:
	.space 0x4
data_ov40_0218b0e8:
	.space 0x4
data_ov40_0218b0ec:
	.space 0x4
data_ov40_0218b0f0:
	.space 0x4
data_ov40_0218b0f4:
	.space 0x4
data_ov40_0218b0f8:
	.space 0x4
data_ov40_0218b0fc:
	.space 0x4
data_ov40_0218b100:
	.space 0x4
data_ov40_0218b104:
	.space 0x4
data_ov40_0218b108:
	.space 0x4
data_ov40_0218b10c:
	.space 0x4
data_ov40_0218b110:
	.space 0x4
data_ov40_0218b114:
	.space 0x4
data_ov40_0218b118:
	.space 0x4
data_ov40_0218b11c:
	.space 0x4
data_ov40_0218b120:
	.space 0x4
data_ov40_0218b124:
	.space 0x4
data_ov40_0218b128:
	.space 0x4
data_ov40_0218b12c:
	.space 0x4
data_ov40_0218b130:
	.space 0x4
data_ov40_0218b134:
	.space 0x4
data_ov40_0218b138:
	.space 0x4
data_ov40_0218b13c:
	.space 0x4
data_ov40_0218b140:
	.space 0x4
data_ov40_0218b144:
	.space 0x4
data_ov40_0218b148:
	.space 0x4
data_ov40_0218b14c:
	.space 0x4
data_ov40_0218b150:
	.space 0x4
data_ov40_0218b154:
	.space 0x4
data_ov40_0218b158:
	.space 0x4
data_ov40_0218b15c:
	.space 0x4
data_ov40_0218b160:
	.space 0x4
data_ov40_0218b164:
	.space 0x4
data_ov40_0218b168:
	.space 0x4
data_ov40_0218b16c:
	.space 0x4
data_ov40_0218b170:
	.space 0x4
data_ov40_0218b174:
	.space 0x4
data_ov40_0218b178:
	.space 0x4
data_ov40_0218b17c:
	.space 0x4
data_ov40_0218b180:
	.space 0x4
data_ov40_0218b184:
	.space 0x4
data_ov40_0218b188:
	.space 0x4
data_ov40_0218b18c:
	.space 0x4
data_ov40_0218b190:
	.space 0x4
data_ov40_0218b194:
	.space 0x4
data_ov40_0218b198:
	.space 0x4
data_ov40_0218b19c:
	.space 0x4
data_ov40_0218b1a0:
	.space 0x4
data_ov40_0218b1a4:
	.space 0x4
data_ov40_0218b1a8:
	.space 0x4
data_ov40_0218b1ac:
	.space 0x4
data_ov40_0218b1b0:
	.space 0x4
data_ov40_0218b1b4:
	.space 0x4
data_ov40_0218b1b8:
	.space 0x4
data_ov40_0218b1bc:
	.space 0x4
data_ov40_0218b1c0:
	.space 0x4
data_ov40_0218b1c4:
	.space 0x4
data_ov40_0218b1c8:
	.space 0x4
data_ov40_0218b1cc:
	.space 0x4
data_ov40_0218b1d0:
	.space 0x4
data_ov40_0218b1d4:
	.space 0x4
data_ov40_0218b1d8:
	.space 0x4
data_ov40_0218b1dc:
	.space 0x4
data_ov40_0218b1e0:
	.space 0x4
data_ov40_0218b1e4:
	.space 0x4
data_ov40_0218b1e8:
	.space 0x4
data_ov40_0218b1ec:
	.space 0x4
data_ov40_0218b1f0:
	.space 0x4
data_ov40_0218b1f4:
	.space 0x4
data_ov40_0218b1f8:
	.space 0x4
data_ov40_0218b1fc:
	.space 0x4
data_ov40_0218b200:
	.space 0x4
data_ov40_0218b204:
	.space 0x4
data_ov40_0218b208:
	.space 0x4
data_ov40_0218b20c:
	.space 0x4
data_ov40_0218b210:
	.space 0x4
data_ov40_0218b214:
	.space 0x4
data_ov40_0218b218:
	.space 0x4
data_ov40_0218b21c:
	.space 0x4
data_ov40_0218b220:
	.space 0x4
data_ov40_0218b224:
	.space 0x4
data_ov40_0218b228:
	.space 0x4
data_ov40_0218b22c:
	.space 0x4
data_ov40_0218b230:
	.space 0x4
data_ov40_0218b234:
	.space 0x4
data_ov40_0218b238:
	.space 0x4
data_ov40_0218b23c:
	.space 0x4
data_ov40_0218b240:
	.space 0x4
data_ov40_0218b244:
	.space 0x4
data_ov40_0218b248:
	.space 0x4
data_ov40_0218b24c:
	.space 0x4
data_ov40_0218b250:
	.space 0x4
data_ov40_0218b254:
	.space 0x4
data_ov40_0218b258:
	.space 0x4
data_ov40_0218b25c:
	.space 0x4
data_ov40_0218b260:
	.space 0x4
data_ov40_0218b264:
	.space 0x4
data_ov40_0218b268:
	.space 0x4
data_ov40_0218b26c:
	.space 0x4
data_ov40_0218b270:
	.space 0x4
data_ov40_0218b274:
	.space 0x4
data_ov40_0218b278:
	.space 0x4
data_ov40_0218b27c:
	.space 0x4
data_ov40_0218b280:
	.space 0x4
data_ov40_0218b284:
	.space 0x4
data_ov40_0218b288:
	.space 0x4
data_ov40_0218b28c:
	.space 0x4
data_ov40_0218b290:
	.space 0x4
data_ov40_0218b294:
	.space 0x4
data_ov40_0218b298:
	.space 0x4
data_ov40_0218b29c:
	.space 0x4
data_ov40_0218b2a0:
	.space 0x4
data_ov40_0218b2a4:
	.space 0x4
data_ov40_0218b2a8:
	.space 0x4
data_ov40_0218b2ac:
	.space 0x4
data_ov40_0218b2b0:
	.space 0x4
data_ov40_0218b2b4:
	.space 0x4
data_ov40_0218b2b8:
	.space 0x4
data_ov40_0218b2bc:
	.space 0x4
data_ov40_0218b2c0:
	.space 0x4
data_ov40_0218b2c4:
	.space 0x4
data_ov40_0218b2c8:
	.space 0x4
data_ov40_0218b2cc:
	.space 0x4
data_ov40_0218b2d0:
	.space 0x4
data_ov40_0218b2d4:
	.space 0x4
data_ov40_0218b2d8:
	.space 0x4
data_ov40_0218b2dc:
	.space 0x4
data_ov40_0218b2e0:
	.space 0x4
data_ov40_0218b2e4:
	.space 0x4
data_ov40_0218b2e8:
	.space 0x4
data_ov40_0218b2ec:
	.space 0x4
data_ov40_0218b2f0:
	.space 0x4
data_ov40_0218b2f4:
	.space 0x4
data_ov40_0218b2f8:
	.space 0x4
data_ov40_0218b2fc:
	.space 0x4
data_ov40_0218b300:
	.space 0x4
data_ov40_0218b304:
	.space 0x4
data_ov40_0218b308:
	.space 0x4
data_ov40_0218b30c:
	.space 0x4
data_ov40_0218b310:
	.space 0x4
data_ov40_0218b314:
	.space 0x4
data_ov40_0218b318:
	.space 0x4
data_ov40_0218b31c:
	.space 0x4
data_ov40_0218b320:
	.space 0x4
data_ov40_0218b324:
	.space 0x4
data_ov40_0218b328:
	.space 0x4
data_ov40_0218b32c:
	.space 0x4
data_ov40_0218b330:
	.space 0x4
data_ov40_0218b334:
	.space 0x4
data_ov40_0218b338:
	.space 0x4
data_ov40_0218b33c:
	.space 0x4
data_ov40_0218b340:
	.space 0x4
data_ov40_0218b344:
	.space 0x4
data_ov40_0218b348:
	.space 0x4
data_ov40_0218b34c:
	.space 0x4
data_ov40_0218b350:
	.space 0x4
data_ov40_0218b354:
	.space 0x4
data_ov40_0218b358:
	.space 0x4
data_ov40_0218b35c:
	.space 0x4
data_ov40_0218b360:
	.space 0x4
data_ov40_0218b364:
	.space 0x4
data_ov40_0218b368:
	.space 0x4
data_ov40_0218b36c:
	.space 0x4
data_ov40_0218b370:
	.space 0x4
data_ov40_0218b374:
	.space 0x4
data_ov40_0218b378:
	.space 0x4
data_ov40_0218b37c:
	.space 0x4
data_ov40_0218b380:
	.space 0x4
data_ov40_0218b384:
	.space 0x4
data_ov40_0218b388:
	.space 0x4
data_ov40_0218b38c:
	.space 0x4
data_ov40_0218b390:
	.space 0x4
data_ov40_0218b394:
	.space 0x4
data_ov40_0218b398:
	.space 0x4
data_ov40_0218b39c:
	.space 0x4
data_ov40_0218b3a0:
	.space 0x4
data_ov40_0218b3a4:
	.space 0x4
data_ov40_0218b3a8:
	.space 0x4
data_ov40_0218b3ac:
	.space 0x4
data_ov40_0218b3b0:
	.space 0x4
data_ov40_0218b3b4:
	.space 0x4
data_ov40_0218b3b8:
	.space 0x4
data_ov40_0218b3bc:
	.space 0x4
data_ov40_0218b3c0:
	.space 0x4
data_ov40_0218b3c4:
	.space 0x4
data_ov40_0218b3c8:
	.space 0x4
data_ov40_0218b3cc:
	.space 0x4
data_ov40_0218b3d0:
	.space 0x4
data_ov40_0218b3d4:
	.space 0x4
data_ov40_0218b3d8:
	.space 0x4
data_ov40_0218b3dc:
	.space 0x4
data_ov40_0218b3e0:
	.space 0x4
data_ov40_0218b3e4:
	.space 0x4
data_ov40_0218b3e8:
	.space 0x4
data_ov40_0218b3ec:
	.space 0x4
data_ov40_0218b3f0:
	.space 0x4
data_ov40_0218b3f4:
	.space 0x4
data_ov40_0218b3f8:
	.space 0x4
data_ov40_0218b3fc:
	.space 0x4
data_ov40_0218b400:
	.space 0x4
data_ov40_0218b404:
	.space 0x4
data_ov40_0218b408:
	.space 0x4
data_ov40_0218b40c:
	.space 0x4
data_ov40_0218b410:
	.space 0x4
data_ov40_0218b414:
	.space 0x4
data_ov40_0218b418:
	.space 0x4
data_ov40_0218b41c:
	.space 0x4
data_ov40_0218b420:
	.space 0x4
data_ov40_0218b424:
	.space 0x4
data_ov40_0218b428:
	.space 0x4
data_ov40_0218b42c:
	.space 0x4
data_ov40_0218b430:
	.space 0x4
data_ov40_0218b434:
	.space 0x4
data_ov40_0218b438:
	.space 0x4
data_ov40_0218b43c:
	.space 0x4
data_ov40_0218b440:
	.space 0x4
data_ov40_0218b444:
	.space 0x4
data_ov40_0218b448:
	.space 0x4
data_ov40_0218b44c:
	.space 0x4
data_ov40_0218b450:
	.space 0x4
data_ov40_0218b454:
	.space 0x4
data_ov40_0218b458:
	.space 0x4
data_ov40_0218b45c:
	.space 0x4
data_ov40_0218b460:
	.space 0x4
data_ov40_0218b464:
	.space 0x4
data_ov40_0218b468:
	.space 0x4
data_ov40_0218b46c:
	.space 0x4
data_ov40_0218b470:
	.space 0x4
data_ov40_0218b474:
	.space 0x4
data_ov40_0218b478:
	.space 0x4
data_ov40_0218b47c:
	.space 0x4
data_ov40_0218b480:
	.space 0x4
data_ov40_0218b484:
	.space 0x4
data_ov40_0218b488:
	.space 0x4
data_ov40_0218b48c:
	.space 0x4
data_ov40_0218b490:
	.space 0x4
data_ov40_0218b494:
	.space 0x4
data_ov40_0218b498:
	.space 0x4
data_ov40_0218b49c:
	.space 0x4
data_ov40_0218b4a0:
	.space 0x4
data_ov40_0218b4a4:
	.space 0x4
data_ov40_0218b4a8:
	.space 0x4
data_ov40_0218b4ac:
	.space 0x4
data_ov40_0218b4b0:
	.space 0x4
data_ov40_0218b4b4:
	.space 0x4
data_ov40_0218b4b8:
	.space 0x4
data_ov40_0218b4bc:
	.space 0x4
data_ov40_0218b4c0:
	.space 0x4
data_ov40_0218b4c4:
	.space 0x4
data_ov40_0218b4c8:
	.space 0x4
data_ov40_0218b4cc:
	.space 0x4
data_ov40_0218b4d0:
	.space 0x4
data_ov40_0218b4d4:
	.space 0x4
data_ov40_0218b4d8:
	.space 0x4
data_ov40_0218b4dc:
	.space 0x4
data_ov40_0218b4e0:
	.space 0x4
data_ov40_0218b4e4:
	.space 0x4
data_ov40_0218b4e8:
	.space 0x4
data_ov40_0218b4ec:
	.space 0x4
data_ov40_0218b4f0:
	.space 0x4
data_ov40_0218b4f4:
	.space 0x4
data_ov40_0218b4f8:
	.space 0x4
data_ov40_0218b4fc:
	.space 0x4
data_ov40_0218b500:
	.space 0x4
data_ov40_0218b504:
	.space 0x4
data_ov40_0218b508:
	.space 0x4
data_ov40_0218b50c:
	.space 0x4
data_ov40_0218b510:
	.space 0x4
data_ov40_0218b514:
	.space 0x4
data_ov40_0218b518:
	.space 0x4
data_ov40_0218b51c:
	.space 0x4
data_ov40_0218b520:
	.space 0x4
data_ov40_0218b524:
	.space 0x4
data_ov40_0218b528:
	.space 0x4
data_ov40_0218b52c:
	.space 0x4
data_ov40_0218b530:
	.space 0x4
data_ov40_0218b534:
	.space 0x4
data_ov40_0218b538:
	.space 0x4
data_ov40_0218b53c:
	.space 0x4
data_ov40_0218b540:
	.space 0x4
data_ov40_0218b544:
	.space 0x4
data_ov40_0218b548:
	.space 0x4
data_ov40_0218b54c:
	.space 0x4
data_ov40_0218b550:
	.space 0x4
data_ov40_0218b554:
	.space 0x4
data_ov40_0218b558:
	.space 0x4
data_ov40_0218b55c:
	.space 0x4
data_ov40_0218b560:
	.space 0x4
data_ov40_0218b564:
	.space 0x4
data_ov40_0218b568:
	.space 0x4
data_ov40_0218b56c:
	.space 0x4
data_ov40_0218b570:
	.space 0x4
data_ov40_0218b574:
	.space 0x4
data_ov40_0218b578:
	.space 0x4
data_ov40_0218b57c:
	.space 0x4
data_ov40_0218b580:
	.space 0x4
data_ov40_0218b584:
	.space 0x4
data_ov40_0218b588:
	.space 0x4
data_ov40_0218b58c:
	.space 0x4
data_ov40_0218b590:
	.space 0x4
data_ov40_0218b594:
	.space 0x4
data_ov40_0218b598:
	.space 0x4
data_ov40_0218b59c:
	.space 0x4
data_ov40_0218b5a0:
	.space 0x4
data_ov40_0218b5a4:
	.space 0x4
data_ov40_0218b5a8:
	.space 0x4
data_ov40_0218b5ac:
	.space 0x4
data_ov40_0218b5b0:
	.space 0x4
data_ov40_0218b5b4:
	.space 0x4
data_ov40_0218b5b8:
	.space 0x4
data_ov40_0218b5bc:
	.space 0x4
data_ov40_0218b5c0:
	.space 0x4
data_ov40_0218b5c4:
	.space 0x4
data_ov40_0218b5c8:
	.space 0x4
data_ov40_0218b5cc:
	.space 0x4
data_ov40_0218b5d0:
	.space 0x4
data_ov40_0218b5d4:
	.space 0x4
data_ov40_0218b5d8:
	.space 0x4
data_ov40_0218b5dc:
	.space 0x4
data_ov40_0218b5e0:
	.space 0x4
data_ov40_0218b5e4:
	.space 0x4
data_ov40_0218b5e8:
	.space 0x4
data_ov40_0218b5ec:
	.space 0x4
data_ov40_0218b5f0:
	.space 0x4
data_ov40_0218b5f4:
	.space 0x4
data_ov40_0218b5f8:
	.space 0x4
data_ov40_0218b5fc:
	.space 0x4
data_ov40_0218b600:
	.space 0x4
data_ov40_0218b604:
	.space 0x4
data_ov40_0218b608:
	.space 0x4
data_ov40_0218b60c:
	.space 0x4
data_ov40_0218b610:
	.space 0x4
data_ov40_0218b614:
	.space 0x4
data_ov40_0218b618:
	.space 0x4
data_ov40_0218b61c:
	.space 0x4
data_ov40_0218b620:
	.space 0x4
data_ov40_0218b624:
	.space 0x4
data_ov40_0218b628:
	.space 0x4
data_ov40_0218b62c:
	.space 0x4
data_ov40_0218b630:
	.space 0x4
data_ov40_0218b634:
	.space 0x4
data_ov40_0218b638:
	.space 0x4
data_ov40_0218b63c:
	.space 0x4
data_ov40_0218b640:
	.space 0x4
data_ov40_0218b644:
	.space 0x4
data_ov40_0218b648:
	.space 0x4
data_ov40_0218b64c:
	.space 0x4
data_ov40_0218b650:
	.space 0x4
data_ov40_0218b654:
	.space 0x4
data_ov40_0218b658:
	.space 0x4
data_ov40_0218b65c:
	.space 0x4
data_ov40_0218b660:
	.space 0x4
data_ov40_0218b664:
	.space 0x4
data_ov40_0218b668:
	.space 0x4
data_ov40_0218b66c:
	.space 0x4
data_ov40_0218b670:
	.space 0x4
data_ov40_0218b674:
	.space 0x4
data_ov40_0218b678:
	.space 0x4
data_ov40_0218b67c:
	.space 0x4
data_ov40_0218b680:
	.space 0x4
data_ov40_0218b684:
	.space 0x4
data_ov40_0218b688:
	.space 0x4
data_ov40_0218b68c:
	.space 0x4
data_ov40_0218b690:
	.space 0x4
data_ov40_0218b694:
	.space 0x4
data_ov40_0218b698:
	.space 0x4
data_ov40_0218b69c:
	.space 0x4
data_ov40_0218b6a0:
	.space 0x4
data_ov40_0218b6a4:
	.space 0x4
data_ov40_0218b6a8:
	.space 0x4
data_ov40_0218b6ac:
	.space 0x4
data_ov40_0218b6b0:
	.space 0x4
data_ov40_0218b6b4:
	.space 0x4
data_ov40_0218b6b8:
	.space 0x4
data_ov40_0218b6bc:
	.space 0x4
data_ov40_0218b6c0:
	.space 0x4
data_ov40_0218b6c4:
	.space 0x4
data_ov40_0218b6c8:
	.space 0x4
data_ov40_0218b6cc:
	.space 0x4
data_ov40_0218b6d0:
	.space 0x4
data_ov40_0218b6d4:
	.space 0x4
data_ov40_0218b6d8:
	.space 0x4
data_ov40_0218b6dc:
	.space 0x4
data_ov40_0218b6e0:
	.space 0x4
data_ov40_0218b6e4:
	.space 0x4
data_ov40_0218b6e8:
	.space 0x4
data_ov40_0218b6ec:
	.space 0x4
data_ov40_0218b6f0:
	.space 0x4
data_ov40_0218b6f4:
	.space 0x4
data_ov40_0218b6f8:
	.space 0x4
data_ov40_0218b6fc:
	.space 0x4
data_ov40_0218b700:
	.space 0x4
data_ov40_0218b704:
	.space 0x4
data_ov40_0218b708:
	.space 0x4
data_ov40_0218b70c:
	.space 0x4
data_ov40_0218b710:
	.space 0x4
data_ov40_0218b714:
	.space 0x4
data_ov40_0218b718:
	.space 0x4
data_ov40_0218b71c:
	.space 0x4
data_ov40_0218b720:
	.space 0x4
data_ov40_0218b724:
	.space 0x4
data_ov40_0218b728:
	.space 0x4
data_ov40_0218b72c:
	.space 0x4
data_ov40_0218b730:
	.space 0x4
data_ov40_0218b734:
	.space 0x4
data_ov40_0218b738:
	.space 0x4
data_ov40_0218b73c:
	.space 0x4
data_ov40_0218b740:
	.space 0x4
data_ov40_0218b744:
	.space 0x4
data_ov40_0218b748:
	.space 0x4
data_ov40_0218b74c:
	.space 0x4
data_ov40_0218b750:
	.space 0x4
data_ov40_0218b754:
	.space 0x4
data_ov40_0218b758:
	.space 0x4
data_ov40_0218b75c:
	.space 0x4
data_ov40_0218b760:
	.space 0x4
data_ov40_0218b764:
	.space 0x4
data_ov40_0218b768:
	.space 0x4
data_ov40_0218b76c:
	.space 0x4
data_ov40_0218b770:
	.space 0x4
data_ov40_0218b774:
	.space 0x4
data_ov40_0218b778:
	.space 0x4
data_ov40_0218b77c:
	.space 0x4
data_ov40_0218b780:
	.space 0x4
data_ov40_0218b784:
	.space 0x4
data_ov40_0218b788:
	.space 0x4
data_ov40_0218b78c:
	.space 0x4
data_ov40_0218b790:
	.space 0x4
data_ov40_0218b794:
	.space 0x4
data_ov40_0218b798:
	.space 0x4
data_ov40_0218b79c:
	.space 0x4
data_ov40_0218b7a0:
	.space 0x4
data_ov40_0218b7a4:
	.space 0x4
data_ov40_0218b7a8:
	.space 0x4
data_ov40_0218b7ac:
	.space 0x4
data_ov40_0218b7b0:
	.space 0x4
data_ov40_0218b7b4:
	.space 0x4
data_ov40_0218b7b8:
	.space 0x4
data_ov40_0218b7bc:
	.space 0x4
data_ov40_0218b7c0:
	.space 0x4
data_ov40_0218b7c4:
	.space 0x4
data_ov40_0218b7c8:
	.space 0x4
data_ov40_0218b7cc:
	.space 0x4
data_ov40_0218b7d0:
	.space 0x4
data_ov40_0218b7d4:
	.space 0x4
data_ov40_0218b7d8:
	.space 0x4
data_ov40_0218b7dc:
	.space 0x4
data_ov40_0218b7e0:
	.space 0x4
data_ov40_0218b7e4:
	.space 0x4
data_ov40_0218b7e8:
	.space 0x4
data_ov40_0218b7ec:
	.space 0x4
data_ov40_0218b7f0:
	.space 0x4
data_ov40_0218b7f4:
	.space 0x4
data_ov40_0218b7f8:
	.space 0x4
data_ov40_0218b7fc:
	.space 0x4
data_ov40_0218b800:
	.space 0x4
data_ov40_0218b804:
	.space 0x4
data_ov40_0218b808:
	.space 0x4
data_ov40_0218b80c:
	.space 0x4
data_ov40_0218b810:
	.space 0x4
data_ov40_0218b814:
	.space 0x4
data_ov40_0218b818:
	.space 0x4
data_ov40_0218b81c:
	.space 0x4
data_ov40_0218b820:
	.space 0x4
data_ov40_0218b824:
	.space 0x4
data_ov40_0218b828:
	.space 0x4
data_ov40_0218b82c:
	.space 0x4
data_ov40_0218b830:
	.space 0x4
data_ov40_0218b834:
	.space 0x4
data_ov40_0218b838:
	.space 0x4
data_ov40_0218b83c:
	.space 0x4
data_ov40_0218b840:
	.space 0x4
data_ov40_0218b844:
	.space 0x4
data_ov40_0218b848:
	.space 0x4
data_ov40_0218b84c:
	.space 0x4
data_ov40_0218b850:
	.space 0x4
data_ov40_0218b854:
	.space 0x4
data_ov40_0218b858:
	.space 0x4
data_ov40_0218b85c:
	.space 0x4
data_ov40_0218b860:
	.space 0x4
data_ov40_0218b864:
	.space 0x4
data_ov40_0218b868:
	.space 0x4
data_ov40_0218b86c:
	.space 0x4
data_ov40_0218b870:
	.space 0x4
data_ov40_0218b874:
	.space 0x4
data_ov40_0218b878:
	.space 0x4
data_ov40_0218b87c:
	.space 0x4
data_ov40_0218b880:
	.space 0x4
data_ov40_0218b884:
	.space 0x4
data_ov40_0218b888:
	.space 0x4
data_ov40_0218b88c:
	.space 0x4
data_ov40_0218b890:
	.space 0x4
data_ov40_0218b894:
	.space 0x4
data_ov40_0218b898:
	.space 0x4
data_ov40_0218b89c:
	.space 0x4
data_ov40_0218b8a0:
	.space 0x4
data_ov40_0218b8a4:
	.space 0x4
data_ov40_0218b8a8:
	.space 0x4
data_ov40_0218b8ac:
	.space 0x4
data_ov40_0218b8b0:
	.space 0x4
data_ov40_0218b8b4:
	.space 0x4
data_ov40_0218b8b8:
	.space 0x4
data_ov40_0218b8bc:
	.space 0x4
data_ov40_0218b8c0:
	.space 0x4
data_ov40_0218b8c4:
	.space 0x4
data_ov40_0218b8c8:
	.space 0x4
data_ov40_0218b8cc:
	.space 0x4
data_ov40_0218b8d0:
	.space 0x4
data_ov40_0218b8d4:
	.space 0x4
data_ov40_0218b8d8:
	.space 0x4
data_ov40_0218b8dc:
	.space 0x4
data_ov40_0218b8e0:
	.space 0x4
data_ov40_0218b8e4:
	.space 0x4
data_ov40_0218b8e8:
	.space 0x4
data_ov40_0218b8ec:
	.space 0x4
data_ov40_0218b8f0:
	.space 0x4
data_ov40_0218b8f4:
	.space 0x4
data_ov40_0218b8f8:
	.space 0x4
data_ov40_0218b8fc:
	.space 0x4
data_ov40_0218b900:
	.space 0x4
data_ov40_0218b904:
	.space 0x4
data_ov40_0218b908:
	.space 0x4
data_ov40_0218b90c:
	.space 0x4
data_ov40_0218b910:
	.space 0x4
data_ov40_0218b914:
	.space 0x4
data_ov40_0218b918:
	.space 0x4
data_ov40_0218b91c:
	.space 0x4
data_ov40_0218b920:
	.space 0x4
data_ov40_0218b924:
	.space 0x4
data_ov40_0218b928:
	.space 0x4
data_ov40_0218b92c:
	.space 0x4
data_ov40_0218b930:
	.space 0x4
data_ov40_0218b934:
	.space 0x4
data_ov40_0218b938:
	.space 0x4
data_ov40_0218b93c:
	.space 0x4
data_ov40_0218b940:
	.space 0x4
data_ov40_0218b944:
	.space 0x4
data_ov40_0218b948:
	.space 0x4
data_ov40_0218b94c:
	.space 0x4
data_ov40_0218b950:
	.space 0x4
data_ov40_0218b954:
	.space 0x4
data_ov40_0218b958:
	.space 0x4
data_ov40_0218b95c:
	.space 0x4
data_ov40_0218b960:
	.space 0x4
data_ov40_0218b964:
	.space 0x4
data_ov40_0218b968:
	.space 0x4
data_ov40_0218b96c:
	.space 0x4
data_ov40_0218b970:
	.space 0x4
data_ov40_0218b974:
	.space 0x4
data_ov40_0218b978:
	.space 0x4
data_ov40_0218b97c:
	.space 0x4
data_ov40_0218b980:
	.space 0x4
data_ov40_0218b984:
	.space 0x4
data_ov40_0218b988:
	.space 0x4
data_ov40_0218b98c:
	.space 0x4
data_ov40_0218b990:
	.space 0x4
data_ov40_0218b994:
	.space 0x4
data_ov40_0218b998:
	.space 0x4
data_ov40_0218b99c:
	.space 0x4
data_ov40_0218b9a0:
	.space 0x4
data_ov40_0218b9a4:
	.space 0x4
data_ov40_0218b9a8:
	.space 0x4
data_ov40_0218b9ac:
	.space 0x4
data_ov40_0218b9b0:
	.space 0x4
data_ov40_0218b9b4:
	.space 0x4
data_ov40_0218b9b8:
	.space 0x4
data_ov40_0218b9bc:
	.space 0x4
data_ov40_0218b9c0:
	.space 0x4
data_ov40_0218b9c4:
	.space 0x4
data_ov40_0218b9c8:
	.space 0x4
data_ov40_0218b9cc:
	.space 0x4
data_ov40_0218b9d0:
	.space 0x4
data_ov40_0218b9d4:
	.space 0x4
data_ov40_0218b9d8:
	.space 0x4
data_ov40_0218b9dc:
	.space 0x4
data_ov40_0218b9e0:
	.space 0x4
data_ov40_0218b9e4:
	.space 0x4
data_ov40_0218b9e8:
	.space 0x4
data_ov40_0218b9ec:
	.space 0x4
data_ov40_0218b9f0:
	.space 0x4
data_ov40_0218b9f4:
	.space 0x4
data_ov40_0218b9f8:
	.space 0x4
data_ov40_0218b9fc:
	.space 0x4
data_ov40_0218ba00:
	.space 0x4
data_ov40_0218ba04:
	.space 0x4
data_ov40_0218ba08:
	.space 0x4
data_ov40_0218ba0c:
	.space 0x4
data_ov40_0218ba10:
	.space 0x4
data_ov40_0218ba14:
	.space 0x4
data_ov40_0218ba18:
	.space 0x4
data_ov40_0218ba1c:
	.space 0x4
data_ov40_0218ba20:
	.space 0x4
data_ov40_0218ba24:
	.space 0x4
data_ov40_0218ba28:
	.space 0x4
data_ov40_0218ba2c:
	.space 0x4
data_ov40_0218ba30:
	.space 0x4
data_ov40_0218ba34:
	.space 0x4
data_ov40_0218ba38:
	.space 0x4
data_ov40_0218ba3c:
	.space 0x4
data_ov40_0218ba40:
	.space 0x4
data_ov40_0218ba44:
	.space 0x4
data_ov40_0218ba48:
	.space 0x4
data_ov40_0218ba4c:
	.space 0x4
data_ov40_0218ba50:
	.space 0x4
data_ov40_0218ba54:
	.space 0x4
data_ov40_0218ba58:
	.space 0x4
data_ov40_0218ba5c:
	.space 0x4
data_ov40_0218ba60:
	.space 0x4
data_ov40_0218ba64:
	.space 0x4
data_ov40_0218ba68:
	.space 0x4
data_ov40_0218ba6c:
	.space 0x4
data_ov40_0218ba70:
	.space 0x4
data_ov40_0218ba74:
	.space 0x4
data_ov40_0218ba78:
	.space 0x4
data_ov40_0218ba7c:
	.space 0x4
data_ov40_0218ba80:
	.space 0x4
data_ov40_0218ba84:
	.space 0x4
data_ov40_0218ba88:
	.space 0x4
data_ov40_0218ba8c:
	.space 0x4
data_ov40_0218ba90:
	.space 0x4
data_ov40_0218ba94:
	.space 0x4
data_ov40_0218ba98:
	.space 0x4
data_ov40_0218ba9c:
	.space 0x4
data_ov40_0218baa0:
	.space 0x4
data_ov40_0218baa4:
	.space 0x4
data_ov40_0218baa8:
	.space 0x4
data_ov40_0218baac:
	.space 0x4
data_ov40_0218bab0:
	.space 0x4
data_ov40_0218bab4:
	.space 0x4
data_ov40_0218bab8:
	.space 0x4
data_ov40_0218babc:
	.space 0x4
data_ov40_0218bac0:
	.space 0x4
data_ov40_0218bac4:
	.space 0x4
data_ov40_0218bac8:
	.space 0x4
data_ov40_0218bacc:
	.space 0x4
data_ov40_0218bad0:
	.space 0x4
data_ov40_0218bad4:
	.space 0x4
data_ov40_0218bad8:
	.space 0x4
data_ov40_0218badc:
	.space 0x4
data_ov40_0218bae0:
	.space 0x4
data_ov40_0218bae4:
	.space 0x4
data_ov40_0218bae8:
	.space 0x4
data_ov40_0218baec:
	.space 0x4
data_ov40_0218baf0:
	.space 0x4
data_ov40_0218baf4:
	.space 0x4
data_ov40_0218baf8:
	.space 0x4
data_ov40_0218bafc:
	.space 0x4
data_ov40_0218bb00:
	.space 0x4
data_ov40_0218bb04:
	.space 0x4
data_ov40_0218bb08:
	.space 0x4
data_ov40_0218bb0c:
	.space 0x4
data_ov40_0218bb10:
	.space 0x4
data_ov40_0218bb14:
	.space 0x4
data_ov40_0218bb18:
	.space 0x4
data_ov40_0218bb1c:
	.space 0x4
data_ov40_0218bb20:
	.space 0x4
data_ov40_0218bb24:
	.space 0x4
data_ov40_0218bb28:
	.space 0x4
data_ov40_0218bb2c:
	.space 0x4
data_ov40_0218bb30:
	.space 0x4
data_ov40_0218bb34:
	.space 0x4
data_ov40_0218bb38:
	.space 0x4
data_ov40_0218bb3c:
	.space 0x4
data_ov40_0218bb40:
	.space 0x4
data_ov40_0218bb44:
	.space 0x4
data_ov40_0218bb48:
	.space 0x4
data_ov40_0218bb4c:
	.space 0x4
data_ov40_0218bb50:
	.space 0x4
data_ov40_0218bb54:
	.space 0x4
data_ov40_0218bb58:
	.space 0x4
data_ov40_0218bb5c:
	.space 0x4
data_ov40_0218bb60:
	.space 0x4
data_ov40_0218bb64:
	.space 0x4
data_ov40_0218bb68:
	.space 0x4
data_ov40_0218bb6c:
	.space 0x4
data_ov40_0218bb70:
	.space 0x4
data_ov40_0218bb74:
	.space 0x4
data_ov40_0218bb78:
	.space 0x4
data_ov40_0218bb7c:
	.space 0x4
data_ov40_0218bb80:
	.space 0x4
data_ov40_0218bb84:
	.space 0x4
data_ov40_0218bb88:
	.space 0x4
data_ov40_0218bb8c:
	.space 0x4
data_ov40_0218bb90:
	.space 0x4
data_ov40_0218bb94:
	.space 0x4
data_ov40_0218bb98:
	.space 0x4
data_ov40_0218bb9c:
	.space 0x4
data_ov40_0218bba0:
	.space 0x4
data_ov40_0218bba4:
	.space 0x4
data_ov40_0218bba8:
	.space 0x4
data_ov40_0218bbac:
	.space 0x4
data_ov40_0218bbb0:
	.space 0x4
data_ov40_0218bbb4:
	.space 0x4
data_ov40_0218bbb8:
	.space 0x4
data_ov40_0218bbbc:
	.space 0x4
data_ov40_0218bbc0:
	.space 0x4
data_ov40_0218bbc4:
	.space 0x4
data_ov40_0218bbc8:
	.space 0x4
data_ov40_0218bbcc:
	.space 0x4
data_ov40_0218bbd0:
	.space 0x4
data_ov40_0218bbd4:
	.space 0x4
data_ov40_0218bbd8:
	.space 0x4
data_ov40_0218bbdc:
	.space 0x4
data_ov40_0218bbe0:
	.space 0x4
data_ov40_0218bbe4:
	.space 0x4
data_ov40_0218bbe8:
	.space 0x4
data_ov40_0218bbec:
	.space 0x4
data_ov40_0218bbf0:
	.space 0x4
data_ov40_0218bbf4:
	.space 0x4
data_ov40_0218bbf8:
	.space 0x4
data_ov40_0218bbfc:
	.space 0x4
data_ov40_0218bc00:
	.space 0x4
data_ov40_0218bc04:
	.space 0x4
data_ov40_0218bc08:
	.space 0x4
data_ov40_0218bc0c:
	.space 0x4
data_ov40_0218bc10:
	.space 0x4
data_ov40_0218bc14:
	.space 0x4
data_ov40_0218bc18:
	.space 0x4
data_ov40_0218bc1c:
	.space 0x4
data_ov40_0218bc20:
	.space 0x4
data_ov40_0218bc24:
	.space 0x4
data_ov40_0218bc28:
	.space 0x4
data_ov40_0218bc2c:
	.space 0x4
data_ov40_0218bc30:
	.space 0x4
data_ov40_0218bc34:
	.space 0x4
data_ov40_0218bc38:
	.space 0x4
data_ov40_0218bc3c:
	.space 0x4
data_ov40_0218bc40:
	.space 0x4
data_ov40_0218bc44:
	.space 0x4
data_ov40_0218bc48:
	.space 0x4
data_ov40_0218bc4c:
	.space 0x4
data_ov40_0218bc50:
	.space 0x4
data_ov40_0218bc54:
	.space 0x4
data_ov40_0218bc58:
	.space 0x4
data_ov40_0218bc5c:
	.space 0x4
data_ov40_0218bc60:
	.space 0x4
data_ov40_0218bc64:
	.space 0x4
data_ov40_0218bc68:
	.space 0x4
data_ov40_0218bc6c:
	.space 0x4
data_ov40_0218bc70:
	.space 0x4
data_ov40_0218bc74:
	.space 0x4
data_ov40_0218bc78:
	.space 0x4
data_ov40_0218bc7c:
	.space 0x4
data_ov40_0218bc80:
	.space 0x4
data_ov40_0218bc84:
	.space 0x4
data_ov40_0218bc88:
	.space 0x4
data_ov40_0218bc8c:
	.space 0x4
data_ov40_0218bc90:
	.space 0x4
data_ov40_0218bc94:
	.space 0x4
data_ov40_0218bc98:
	.space 0x4
data_ov40_0218bc9c:
	.space 0x4
data_ov40_0218bca0:
	.space 0x4
data_ov40_0218bca4:
	.space 0x4
data_ov40_0218bca8:
	.space 0x4
data_ov40_0218bcac:
	.space 0x4
data_ov40_0218bcb0:
	.space 0x4
data_ov40_0218bcb4:
	.space 0x4
data_ov40_0218bcb8:
	.space 0x4
data_ov40_0218bcbc:
	.space 0x4
data_ov40_0218bcc0:
	.space 0x4
data_ov40_0218bcc4:
	.space 0x4
data_ov40_0218bcc8:
	.space 0x4
data_ov40_0218bccc:
	.space 0x4
data_ov40_0218bcd0:
	.space 0x4
data_ov40_0218bcd4:
	.space 0x4
data_ov40_0218bcd8:
	.space 0x4
data_ov40_0218bcdc:
	.space 0x4
data_ov40_0218bce0:
	.space 0x4
data_ov40_0218bce4:
	.space 0x4
data_ov40_0218bce8:
	.space 0x4
data_ov40_0218bcec:
	.space 0x4
data_ov40_0218bcf0:
	.space 0x4
data_ov40_0218bcf4:
	.space 0x4
data_ov40_0218bcf8:
	.space 0x4
data_ov40_0218bcfc:
	.space 0x4
data_ov40_0218bd00:
	.space 0x4
data_ov40_0218bd04:
	.space 0x4
data_ov40_0218bd08:
	.space 0x4
data_ov40_0218bd0c:
	.space 0x4
data_ov40_0218bd10:
	.space 0x4
data_ov40_0218bd14:
	.space 0x4
data_ov40_0218bd18:
	.space 0x4
data_ov40_0218bd1c:
	.space 0x4
data_ov40_0218bd20:
	.space 0x4
data_ov40_0218bd24:
	.space 0x4
data_ov40_0218bd28:
	.space 0x4
data_ov40_0218bd2c:
	.space 0x4
data_ov40_0218bd30:
	.space 0x4
data_ov40_0218bd34:
	.space 0x4
data_ov40_0218bd38:
	.space 0x4
data_ov40_0218bd3c:
	.space 0x4
data_ov40_0218bd40:
	.space 0x4
data_ov40_0218bd44:
	.space 0x4
data_ov40_0218bd48:
	.space 0x4
data_ov40_0218bd4c:
	.space 0x4
data_ov40_0218bd50:
	.space 0x4
data_ov40_0218bd54:
	.space 0x4
data_ov40_0218bd58:
	.space 0x4
data_ov40_0218bd5c:
	.space 0x4
data_ov40_0218bd60:
	.space 0x4
data_ov40_0218bd64:
	.space 0x4
data_ov40_0218bd68:
	.space 0x4
data_ov40_0218bd6c:
	.space 0x4
data_ov40_0218bd70:
	.space 0x4
data_ov40_0218bd74:
	.space 0x4
data_ov40_0218bd78:
	.space 0x4
data_ov40_0218bd7c:
	.space 0x4
data_ov40_0218bd80:
	.space 0x4
data_ov40_0218bd84:
	.space 0x4
data_ov40_0218bd88:
	.space 0x4
data_ov40_0218bd8c:
	.space 0x4
data_ov40_0218bd90:
	.space 0x4
data_ov40_0218bd94:
	.space 0x4
data_ov40_0218bd98:
	.space 0x4
data_ov40_0218bd9c:
	.space 0x4
data_ov40_0218bda0:
	.space 0x4
data_ov40_0218bda4:
	.space 0x4
data_ov40_0218bda8:
	.space 0x4
data_ov40_0218bdac:
	.space 0x4
data_ov40_0218bdb0:
	.space 0x4
data_ov40_0218bdb4:
	.space 0x4
data_ov40_0218bdb8:
	.space 0x4
data_ov40_0218bdbc:
	.space 0x4
data_ov40_0218bdc0:
	.space 0x4
data_ov40_0218bdc4:
	.space 0x4
data_ov40_0218bdc8:
	.space 0x4
data_ov40_0218bdcc:
	.space 0x4
data_ov40_0218bdd0:
	.space 0x4
data_ov40_0218bdd4:
	.space 0x4
data_ov40_0218bdd8:
	.space 0x4
data_ov40_0218bddc:
	.space 0x4
data_ov40_0218bde0:
	.space 0x4
data_ov40_0218bde4:
	.space 0x4
data_ov40_0218bde8:
	.space 0x4
data_ov40_0218bdec:
	.space 0x4
data_ov40_0218bdf0:
	.space 0x4
data_ov40_0218bdf4:
	.space 0x4
data_ov40_0218bdf8:
	.space 0x4
data_ov40_0218bdfc:
	.space 0x4
data_ov40_0218be00:
	.space 0x4
data_ov40_0218be04:
	.space 0x4
data_ov40_0218be08:
	.space 0x4
data_ov40_0218be0c:
	.space 0x4
data_ov40_0218be10:
	.space 0x4
data_ov40_0218be14:
	.space 0x4
data_ov40_0218be18:
	.space 0x4
data_ov40_0218be1c:
	.space 0x4
data_ov40_0218be20:
	.space 0x4
data_ov40_0218be24:
	.space 0x4
data_ov40_0218be28:
	.space 0x4
data_ov40_0218be2c:
	.space 0x4
data_ov40_0218be30:
	.space 0x4
data_ov40_0218be34:
	.space 0x4
data_ov40_0218be38:
	.space 0x4
data_ov40_0218be3c:
	.space 0x4
data_ov40_0218be40:
	.space 0x4
data_ov40_0218be44:
	.space 0x4
data_ov40_0218be48:
	.space 0x4
data_ov40_0218be4c:
	.space 0x4
data_ov40_0218be50:
	.space 0x4
data_ov40_0218be54:
	.space 0x4
data_ov40_0218be58:
	.space 0x4
data_ov40_0218be5c:
	.space 0x4
data_ov40_0218be60:
	.space 0x4
data_ov40_0218be64:
	.space 0x4
data_ov40_0218be68:
	.space 0x4
data_ov40_0218be6c:
	.space 0x4
data_ov40_0218be70:
	.space 0x4
data_ov40_0218be74:
	.space 0x4
data_ov40_0218be78:
	.space 0x4
data_ov40_0218be7c:
	.space 0x4
data_ov40_0218be80:
	.space 0x4
data_ov40_0218be84:
	.space 0x4
data_ov40_0218be88:
	.space 0x4
data_ov40_0218be8c:
	.space 0x4
data_ov40_0218be90:
	.space 0x4
data_ov40_0218be94:
	.space 0x4
data_ov40_0218be98:
	.space 0x4
data_ov40_0218be9c:
	.space 0x4
data_ov40_0218bea0:
	.space 0x4
data_ov40_0218bea4:
	.space 0x4
data_ov40_0218bea8:
	.space 0x4
data_ov40_0218beac:
	.space 0x4
data_ov40_0218beb0:
	.space 0x4
data_ov40_0218beb4:
	.space 0x4
data_ov40_0218beb8:
	.space 0x4
data_ov40_0218bebc:
	.space 0x4
data_ov40_0218bec0:
	.space 0x4
data_ov40_0218bec4:
	.space 0x4
data_ov40_0218bec8:
	.space 0x4
data_ov40_0218becc:
	.space 0x4
data_ov40_0218bed0:
	.space 0x4
data_ov40_0218bed4:
	.space 0x4
data_ov40_0218bed8:
	.space 0x4
data_ov40_0218bedc:
	.space 0x4
data_ov40_0218bee0:
	.space 0x4
data_ov40_0218bee4:
	.space 0x4
data_ov40_0218bee8:
	.space 0x4
data_ov40_0218beec:
	.space 0x4
data_ov40_0218bef0:
	.space 0x4
data_ov40_0218bef4:
	.space 0x4
data_ov40_0218bef8:
	.space 0x4
data_ov40_0218befc:
	.space 0x4
data_ov40_0218bf00:
	.space 0x4
data_ov40_0218bf04:
	.space 0x4
data_ov40_0218bf08:
	.space 0x4
data_ov40_0218bf0c:
	.space 0x4
data_ov40_0218bf10:
	.space 0x4
data_ov40_0218bf14:
	.space 0x4
data_ov40_0218bf18:
	.space 0x4
data_ov40_0218bf1c:
	.space 0x4
data_ov40_0218bf20:
	.space 0x4
data_ov40_0218bf24:
	.space 0x4
data_ov40_0218bf28:
	.space 0x4
data_ov40_0218bf2c:
	.space 0x4
data_ov40_0218bf30:
	.space 0x4
data_ov40_0218bf34:
	.space 0x4
data_ov40_0218bf38:
	.space 0x4
data_ov40_0218bf3c:
	.space 0x4
data_ov40_0218bf40:
	.space 0x4
data_ov40_0218bf44:
	.space 0x4
data_ov40_0218bf48:
	.space 0x4
data_ov40_0218bf4c:
	.space 0x4
data_ov40_0218bf50:
	.space 0x4
data_ov40_0218bf54:
	.space 0x4
data_ov40_0218bf58:
	.space 0x4
data_ov40_0218bf5c:
	.space 0x4
data_ov40_0218bf60:
	.space 0x4
data_ov40_0218bf64:
	.space 0x4
data_ov40_0218bf68:
	.space 0x4
data_ov40_0218bf6c:
	.space 0x4
data_ov40_0218bf70:
	.space 0x4
data_ov40_0218bf74:
	.space 0x4
data_ov40_0218bf78:
	.space 0x4
data_ov40_0218bf7c:
	.space 0x4
data_ov40_0218bf80:
	.space 0x4
data_ov40_0218bf84:
	.space 0x4
data_ov40_0218bf88:
	.space 0x4
data_ov40_0218bf8c:
	.space 0x4
data_ov40_0218bf90:
	.space 0x4
data_ov40_0218bf94:
	.space 0x4
data_ov40_0218bf98:
	.space 0x4
data_ov40_0218bf9c:
	.space 0x4
data_ov40_0218bfa0:
	.space 0x4
data_ov40_0218bfa4:
	.space 0x4
data_ov40_0218bfa8:
	.space 0x4
data_ov40_0218bfac:
	.space 0x4
data_ov40_0218bfb0:
	.space 0x4
data_ov40_0218bfb4:
	.space 0x4
data_ov40_0218bfb8:
	.space 0x4
data_ov40_0218bfbc:
	.space 0x4
data_ov40_0218bfc0:
	.space 0x4
data_ov40_0218bfc4:
	.space 0x4
data_ov40_0218bfc8:
	.space 0x4
data_ov40_0218bfcc:
	.space 0x4
data_ov40_0218bfd0:
	.space 0x4
data_ov40_0218bfd4:
	.space 0x4
data_ov40_0218bfd8:
	.space 0x4
data_ov40_0218bfdc:
	.space 0x4
data_ov40_0218bfe0:
	.space 0x4
data_ov40_0218bfe4:
	.space 0x4
data_ov40_0218bfe8:
	.space 0x4
data_ov40_0218bfec:
	.space 0x4
data_ov40_0218bff0:
	.space 0x4
data_ov40_0218bff4:
	.space 0x4
data_ov40_0218bff8:
	.space 0x4
data_ov40_0218bffc:
	.space 0x4
data_ov40_0218c000:
	.space 0x4
data_ov40_0218c004:
	.space 0x4
data_ov40_0218c008:
	.space 0x4
data_ov40_0218c00c:
	.space 0x4
data_ov40_0218c010:
	.space 0x4
data_ov40_0218c014:
	.space 0x4
data_ov40_0218c018:
	.space 0x4
data_ov40_0218c01c:
	.space 0x4
data_ov40_0218c020:
	.space 0x4
data_ov40_0218c024:
	.space 0x4
data_ov40_0218c028:
	.space 0x4
data_ov40_0218c02c:
	.space 0x4
data_ov40_0218c030:
	.space 0x4
data_ov40_0218c034:
	.space 0x4
data_ov40_0218c038:
	.space 0x4
data_ov40_0218c03c:
	.space 0x4
data_ov40_0218c040:
	.space 0x4
data_ov40_0218c044:
	.space 0x4
data_ov40_0218c048:
	.space 0x4
data_ov40_0218c04c:
	.space 0x4
data_ov40_0218c050:
	.space 0x4
data_ov40_0218c054:
	.space 0x4
data_ov40_0218c058:
	.space 0x4
data_ov40_0218c05c:
	.space 0x4
data_ov40_0218c060:
	.space 0x4
data_ov40_0218c064:
	.space 0x4
data_ov40_0218c068:
	.space 0x4
data_ov40_0218c06c:
	.space 0x4
data_ov40_0218c070:
	.space 0x4
data_ov40_0218c074:
	.space 0x4
data_ov40_0218c078:
	.space 0x4
data_ov40_0218c07c:
	.space 0x4
data_ov40_0218c080:
	.space 0x4
data_ov40_0218c084:
	.space 0x4
data_ov40_0218c088:
	.space 0x4
data_ov40_0218c08c:
	.space 0x4
data_ov40_0218c090:
	.space 0x4
data_ov40_0218c094:
	.space 0x4
data_ov40_0218c098:
	.space 0x4
data_ov40_0218c09c:
	.space 0x4
data_ov40_0218c0a0:
	.space 0x4
data_ov40_0218c0a4:
	.space 0x4
data_ov40_0218c0a8:
	.space 0x4
data_ov40_0218c0ac:
	.space 0x4
data_ov40_0218c0b0:
	.space 0x4
data_ov40_0218c0b4:
	.space 0x4
data_ov40_0218c0b8:
	.space 0x4
data_ov40_0218c0bc:
	.space 0x4
data_ov40_0218c0c0:
	.space 0x4
data_ov40_0218c0c4:
	.space 0x4
data_ov40_0218c0c8:
	.space 0x4
data_ov40_0218c0cc:
	.space 0x4
data_ov40_0218c0d0:
	.space 0x4
data_ov40_0218c0d4:
	.space 0x4
data_ov40_0218c0d8:
	.space 0x4
data_ov40_0218c0dc:
	.space 0x4
data_ov40_0218c0e0:
	.space 0x4
data_ov40_0218c0e4:
	.space 0x4
data_ov40_0218c0e8:
	.space 0x4
data_ov40_0218c0ec:
	.space 0x4
data_ov40_0218c0f0:
	.space 0x4
data_ov40_0218c0f4:
	.space 0x4
data_ov40_0218c0f8:
	.space 0x4
data_ov40_0218c0fc:
	.space 0x4
data_ov40_0218c100:
	.space 0x4
data_ov40_0218c104:
	.space 0x4
data_ov40_0218c108:
	.space 0x4
data_ov40_0218c10c:
	.space 0x4
data_ov40_0218c110:
	.space 0x4
data_ov40_0218c114:
	.space 0x4
data_ov40_0218c118:
	.space 0x4
data_ov40_0218c11c:
	.space 0x4
data_ov40_0218c120:
	.space 0x4
data_ov40_0218c124:
	.space 0x4
data_ov40_0218c128:
	.space 0x4
data_ov40_0218c12c:
	.space 0x4
data_ov40_0218c130:
	.space 0x4
data_ov40_0218c134:
	.space 0x4
data_ov40_0218c138:
	.space 0x4
data_ov40_0218c13c:
	.space 0x4
data_ov40_0218c140:
	.space 0x4
data_ov40_0218c144:
	.space 0x4
data_ov40_0218c148:
	.space 0x4
data_ov40_0218c14c:
	.space 0x4
data_ov40_0218c150:
	.space 0x4
data_ov40_0218c154:
	.space 0x4
data_ov40_0218c158:
	.space 0x4
data_ov40_0218c15c:
	.space 0x4
data_ov40_0218c160:
	.space 0x4
data_ov40_0218c164:
	.space 0x4
data_ov40_0218c168:
	.space 0x4
data_ov40_0218c16c:
	.space 0x4
data_ov40_0218c170:
	.space 0x4
data_ov40_0218c174:
	.space 0x4
data_ov40_0218c178:
	.space 0x4
data_ov40_0218c17c:
	.space 0x4
data_ov40_0218c180:
	.space 0x4
data_ov40_0218c184:
	.space 0x4
data_ov40_0218c188:
	.space 0x4
data_ov40_0218c18c:
	.space 0x4
data_ov40_0218c190:
	.space 0x4
data_ov40_0218c194:
	.space 0x4
data_ov40_0218c198:
	.space 0x4
data_ov40_0218c19c:
	.space 0x4
data_ov40_0218c1a0:
	.space 0x4
data_ov40_0218c1a4:
	.space 0x4
data_ov40_0218c1a8:
	.space 0x4
data_ov40_0218c1ac:
	.space 0x4
data_ov40_0218c1b0:
	.space 0x4
data_ov40_0218c1b4:
	.space 0x4
data_ov40_0218c1b8:
	.space 0x4
data_ov40_0218c1bc:
	.space 0x4
data_ov40_0218c1c0:
	.space 0x4
data_ov40_0218c1c4:
	.space 0x4
data_ov40_0218c1c8:
	.space 0x4
data_ov40_0218c1cc:
	.space 0x4
data_ov40_0218c1d0:
	.space 0x4
data_ov40_0218c1d4:
	.space 0x4
data_ov40_0218c1d8:
	.space 0x4
data_ov40_0218c1dc:
	.space 0x4
data_ov40_0218c1e0:
	.space 0x4
data_ov40_0218c1e4:
	.space 0x4
data_ov40_0218c1e8:
	.space 0x4
data_ov40_0218c1ec:
	.space 0x4
data_ov40_0218c1f0:
	.space 0x4
data_ov40_0218c1f4:
	.space 0x4
data_ov40_0218c1f8:
	.space 0x4
data_ov40_0218c1fc:
	.space 0x4
data_ov40_0218c200:
	.space 0x4
data_ov40_0218c204:
	.space 0x4
data_ov40_0218c208:
	.space 0x4
data_ov40_0218c20c:
	.space 0x4
data_ov40_0218c210:
	.space 0x4
data_ov40_0218c214:
	.space 0x4
data_ov40_0218c218:
	.space 0x4
data_ov40_0218c21c:
	.space 0x4
data_ov40_0218c220:
	.space 0x4
data_ov40_0218c224:
	.space 0x4
data_ov40_0218c228:
	.space 0x4
data_ov40_0218c22c:
	.space 0x4
data_ov40_0218c230:
	.space 0x4
data_ov40_0218c234:
	.space 0x4
data_ov40_0218c238:
	.space 0x4
data_ov40_0218c23c:
	.space 0x4
data_ov40_0218c240:
	.space 0x4
data_ov40_0218c244:
	.space 0x4
data_ov40_0218c248:
	.space 0x4
data_ov40_0218c24c:
	.space 0x4
data_ov40_0218c250:
	.space 0x4
data_ov40_0218c254:
	.space 0x4
data_ov40_0218c258:
	.space 0x4
data_ov40_0218c25c:
	.space 0x4
data_ov40_0218c260:
	.space 0x4
data_ov40_0218c264:
	.space 0x4
data_ov40_0218c268:
	.space 0x4
data_ov40_0218c26c:
	.space 0x4
data_ov40_0218c270:
	.space 0x4
data_ov40_0218c274:
	.space 0x4
data_ov40_0218c278:
	.space 0x4
data_ov40_0218c27c:
	.space 0x4
data_ov40_0218c280:
	.space 0x4
data_ov40_0218c284:
	.space 0x4
data_ov40_0218c288:
	.space 0x4
data_ov40_0218c28c:
	.space 0x4
data_ov40_0218c290:
	.space 0x4
data_ov40_0218c294:
	.space 0x4
data_ov40_0218c298:
	.space 0x4
data_ov40_0218c29c:
	.space 0x4
data_ov40_0218c2a0:
	.space 0x4
data_ov40_0218c2a4:
	.space 0x4
data_ov40_0218c2a8:
	.space 0x4
data_ov40_0218c2ac:
	.space 0x4
data_ov40_0218c2b0:
	.space 0x4
data_ov40_0218c2b4:
	.space 0x4
data_ov40_0218c2b8:
	.space 0x4
data_ov40_0218c2bc:
	.space 0x4
data_ov40_0218c2c0:
	.space 0x4
data_ov40_0218c2c4:
	.space 0x4
data_ov40_0218c2c8:
	.space 0x4
data_ov40_0218c2cc:
	.space 0x4
data_ov40_0218c2d0:
	.space 0x4
data_ov40_0218c2d4:
	.space 0x4
data_ov40_0218c2d8:
	.space 0x4
data_ov40_0218c2dc:
	.space 0x4
data_ov40_0218c2e0:
	.space 0x4
data_ov40_0218c2e4:
	.space 0x4
data_ov40_0218c2e8:
	.space 0x4
data_ov40_0218c2ec:
	.space 0x4
data_ov40_0218c2f0:
	.space 0x4
data_ov40_0218c2f4:
	.space 0x4
data_ov40_0218c2f8:
	.space 0x4
data_ov40_0218c2fc:
	.space 0x4
data_ov40_0218c300:
	.space 0x4
data_ov40_0218c304:
	.space 0x4
data_ov40_0218c308:
	.space 0x4
data_ov40_0218c30c:
	.space 0x4
data_ov40_0218c310:
	.space 0x4
data_ov40_0218c314:
	.space 0x4
data_ov40_0218c318:
	.space 0x4
data_ov40_0218c31c:
	.space 0x4
data_ov40_0218c320:
	.space 0x4
data_ov40_0218c324:
	.space 0x4
data_ov40_0218c328:
	.space 0x4
data_ov40_0218c32c:
	.space 0x4
data_ov40_0218c330:
	.space 0x4
data_ov40_0218c334:
	.space 0x4
data_ov40_0218c338:
	.space 0x4
data_ov40_0218c33c:
	.space 0x4
data_ov40_0218c340:
	.space 0x4
data_ov40_0218c344:
	.space 0x4
data_ov40_0218c348:
	.space 0x4
data_ov40_0218c34c:
	.space 0x4
data_ov40_0218c350:
	.space 0x4
data_ov40_0218c354:
	.space 0x4
data_ov40_0218c358:
	.space 0x4
data_ov40_0218c35c:
	.space 0x4
data_ov40_0218c360:
	.space 0x4
data_ov40_0218c364:
	.space 0x4
data_ov40_0218c368:
	.space 0x4
data_ov40_0218c36c:
	.space 0x4
data_ov40_0218c370:
	.space 0x4
data_ov40_0218c374:
	.space 0x4
data_ov40_0218c378:
	.space 0x4
data_ov40_0218c37c:
	.space 0x4
data_ov40_0218c380:
	.space 0x4
data_ov40_0218c384:
	.space 0x4
data_ov40_0218c388:
	.space 0x4
data_ov40_0218c38c:
	.space 0x4
data_ov40_0218c390:
	.space 0x4
data_ov40_0218c394:
	.space 0x4
data_ov40_0218c398:
	.space 0x4
data_ov40_0218c39c:
	.space 0x4
data_ov40_0218c3a0:
	.space 0x4
data_ov40_0218c3a4:
	.space 0x4
data_ov40_0218c3a8:
	.space 0x4
data_ov40_0218c3ac:
	.space 0x4
data_ov40_0218c3b0:
	.space 0x4
data_ov40_0218c3b4:
	.space 0x4
data_ov40_0218c3b8:
	.space 0x4
data_ov40_0218c3bc:
	.space 0x4
data_ov40_0218c3c0:
	.space 0x4
data_ov40_0218c3c4:
	.space 0x4
data_ov40_0218c3c8:
	.space 0x4
data_ov40_0218c3cc:
	.space 0x4
data_ov40_0218c3d0:
	.space 0x4
data_ov40_0218c3d4:
	.space 0x4
data_ov40_0218c3d8:
	.space 0x4
data_ov40_0218c3dc:
	.space 0x4
data_ov40_0218c3e0:
	.space 0x4
data_ov40_0218c3e4:
	.space 0x4
data_ov40_0218c3e8:
	.space 0x4
data_ov40_0218c3ec:
	.space 0x4
data_ov40_0218c3f0:
	.space 0x4
data_ov40_0218c3f4:
	.space 0x4
data_ov40_0218c3f8:
	.space 0x4
data_ov40_0218c3fc:
	.space 0x4
data_ov40_0218c400:
	.space 0x4
data_ov40_0218c404:
	.space 0x4
data_ov40_0218c408:
	.space 0x4
data_ov40_0218c40c:
	.space 0x4
data_ov40_0218c410:
	.space 0x4
data_ov40_0218c414:
	.space 0x4
data_ov40_0218c418:
	.space 0x4
data_ov40_0218c41c:
	.space 0x4
data_ov40_0218c420:
	.space 0x4
data_ov40_0218c424:
	.space 0x4
data_ov40_0218c428:
	.space 0x4
data_ov40_0218c42c:
	.space 0x4
data_ov40_0218c430:
	.space 0x4
data_ov40_0218c434:
	.space 0x4
data_ov40_0218c438:
	.space 0x4
data_ov40_0218c43c:
	.space 0x4
data_ov40_0218c440:
	.space 0x4
data_ov40_0218c444:
	.space 0x4
data_ov40_0218c448:
	.space 0x4
data_ov40_0218c44c:
	.space 0x4
data_ov40_0218c450:
	.space 0x4
data_ov40_0218c454:
	.space 0x4
data_ov40_0218c458:
	.space 0x4
data_ov40_0218c45c:
	.space 0x4
data_ov40_0218c460:
	.space 0x4
data_ov40_0218c464:
	.space 0x4
data_ov40_0218c468:
	.space 0x4
data_ov40_0218c46c:
	.space 0x4
data_ov40_0218c470:
	.space 0x4
data_ov40_0218c474:
	.space 0x4
data_ov40_0218c478:
	.space 0x4
data_ov40_0218c47c:
	.space 0x4
data_ov40_0218c480:
	.space 0x4
data_ov40_0218c484:
	.space 0x4
data_ov40_0218c488:
	.space 0x4
data_ov40_0218c48c:
	.space 0x4
data_ov40_0218c490:
	.space 0x4
data_ov40_0218c494:
	.space 0x4
data_ov40_0218c498:
	.space 0x4
data_ov40_0218c49c:
	.space 0x4
data_ov40_0218c4a0:
	.space 0x4
data_ov40_0218c4a4:
	.space 0x4
data_ov40_0218c4a8:
	.space 0x4
data_ov40_0218c4ac:
	.space 0x4
data_ov40_0218c4b0:
	.space 0x4
data_ov40_0218c4b4:
	.space 0x4
data_ov40_0218c4b8:
	.space 0x4
data_ov40_0218c4bc:
	.space 0x4
data_ov40_0218c4c0:
	.space 0x4
data_ov40_0218c4c4:
	.space 0x4
data_ov40_0218c4c8:
	.space 0x4
data_ov40_0218c4cc:
	.space 0x4
data_ov40_0218c4d0:
	.space 0x4
data_ov40_0218c4d4:
	.space 0x4
data_ov40_0218c4d8:
	.space 0x4
data_ov40_0218c4dc:
	.space 0x4
data_ov40_0218c4e0:
	.space 0x4
data_ov40_0218c4e4:
	.space 0x4
data_ov40_0218c4e8:
	.space 0x4
data_ov40_0218c4ec:
	.space 0x4
data_ov40_0218c4f0:
	.space 0x4
data_ov40_0218c4f4:
	.space 0x4
data_ov40_0218c4f8:
	.space 0x4
data_ov40_0218c4fc:
	.space 0x4
data_ov40_0218c500:
	.space 0x4
data_ov40_0218c504:
	.space 0x4
data_ov40_0218c508:
	.space 0x4
data_ov40_0218c50c:
	.space 0x4
data_ov40_0218c510:
	.space 0x4
data_ov40_0218c514:
	.space 0x4
data_ov40_0218c518:
	.space 0x4
data_ov40_0218c51c:
	.space 0x4
data_ov40_0218c520:
	.space 0x4
data_ov40_0218c524:
	.space 0x4
data_ov40_0218c528:
	.space 0x4
data_ov40_0218c52c:
	.space 0x4
data_ov40_0218c530:
	.space 0x4
data_ov40_0218c534:
	.space 0x4
data_ov40_0218c538:
	.space 0x4
data_ov40_0218c53c:
	.space 0x4
data_ov40_0218c540:
	.space 0x4
data_ov40_0218c544:
	.space 0x4
data_ov40_0218c548:
	.space 0x4
data_ov40_0218c54c:
	.space 0x4
data_ov40_0218c550:
	.space 0x4
data_ov40_0218c554:
	.space 0x4
data_ov40_0218c558:
	.space 0x4
data_ov40_0218c55c:
	.space 0x4
data_ov40_0218c560:
	.space 0x4
data_ov40_0218c564:
	.space 0x4
data_ov40_0218c568:
	.space 0x4
data_ov40_0218c56c:
	.space 0x4
data_ov40_0218c570:
	.space 0x4
data_ov40_0218c574:
	.space 0x4
data_ov40_0218c578:
	.space 0x4
data_ov40_0218c57c:
	.space 0x4
data_ov40_0218c580:
	.space 0x4
data_ov40_0218c584:
	.space 0x4
data_ov40_0218c588:
	.space 0x4
data_ov40_0218c58c:
	.space 0x4
data_ov40_0218c590:
	.space 0x4
data_ov40_0218c594:
	.space 0x4
data_ov40_0218c598:
	.space 0x4
data_ov40_0218c59c:
	.space 0x4
data_ov40_0218c5a0:
	.space 0x4
data_ov40_0218c5a4:
	.space 0x4
data_ov40_0218c5a8:
	.space 0x4
data_ov40_0218c5ac:
	.space 0x4
data_ov40_0218c5b0:
	.space 0x4
data_ov40_0218c5b4:
	.space 0x4
data_ov40_0218c5b8:
	.space 0x4
data_ov40_0218c5bc:
	.space 0x4
data_ov40_0218c5c0:
	.space 0x4
data_ov40_0218c5c4:
	.space 0x4
data_ov40_0218c5c8:
	.space 0x4
data_ov40_0218c5cc:
	.space 0x4
data_ov40_0218c5d0:
	.space 0x4
data_ov40_0218c5d4:
	.space 0x4
data_ov40_0218c5d8:
	.space 0x4
data_ov40_0218c5dc:
	.space 0x4
data_ov40_0218c5e0:
	.space 0x4
data_ov40_0218c5e4:
	.space 0x4
data_ov40_0218c5e8:
	.space 0x4
data_ov40_0218c5ec:
	.space 0x4
data_ov40_0218c5f0:
	.space 0x4
data_ov40_0218c5f4:
	.space 0x4
data_ov40_0218c5f8:
	.space 0x4
data_ov40_0218c5fc:
	.space 0x4
data_ov40_0218c600:
	.space 0x4
data_ov40_0218c604:
	.space 0x4
data_ov40_0218c608:
	.space 0x4
data_ov40_0218c60c:
	.space 0x4
data_ov40_0218c610:
	.space 0x4
data_ov40_0218c614:
	.space 0x4
data_ov40_0218c618:
	.space 0x4
data_ov40_0218c61c:
	.space 0x4
data_ov40_0218c620:
	.space 0x4
data_ov40_0218c624:
	.space 0x4
data_ov40_0218c628:
	.space 0x4
data_ov40_0218c62c:
	.space 0x4
data_ov40_0218c630:
	.space 0x4
data_ov40_0218c634:
	.space 0x4
data_ov40_0218c638:
	.space 0x4
data_ov40_0218c63c:
	.space 0x4
data_ov40_0218c640:
	.space 0x4
data_ov40_0218c644:
	.space 0x4
data_ov40_0218c648:
	.space 0x4
data_ov40_0218c64c:
	.space 0x4
data_ov40_0218c650:
	.space 0x4
data_ov40_0218c654:
	.space 0x4
data_ov40_0218c658:
	.space 0x4
data_ov40_0218c65c:
	.space 0x4
data_ov40_0218c660:
	.space 0x4
data_ov40_0218c664:
	.space 0x4
data_ov40_0218c668:
	.space 0x4
data_ov40_0218c66c:
	.space 0x4
data_ov40_0218c670:
	.space 0x4
data_ov40_0218c674:
	.space 0x4
data_ov40_0218c678:
	.space 0x4
data_ov40_0218c67c:
	.space 0x4
data_ov40_0218c680:
	.space 0x4
data_ov40_0218c684:
	.space 0x4
data_ov40_0218c688:
	.space 0x4
data_ov40_0218c68c:
	.space 0x4
data_ov40_0218c690:
	.space 0x4
data_ov40_0218c694:
	.space 0x4
data_ov40_0218c698:
	.space 0x4
data_ov40_0218c69c:
	.space 0x4
data_ov40_0218c6a0:
	.space 0x4
data_ov40_0218c6a4:
	.space 0x4
data_ov40_0218c6a8:
	.space 0x4
data_ov40_0218c6ac:
	.space 0x4
data_ov40_0218c6b0:
	.space 0x4
data_ov40_0218c6b4:
	.space 0x4
data_ov40_0218c6b8:
	.space 0x4
data_ov40_0218c6bc:
	.space 0x4
data_ov40_0218c6c0:
	.space 0x4
data_ov40_0218c6c4:
	.space 0x4
data_ov40_0218c6c8:
	.space 0x4
data_ov40_0218c6cc:
	.space 0x4
data_ov40_0218c6d0:
	.space 0x4
data_ov40_0218c6d4:
	.space 0x4
data_ov40_0218c6d8:
	.space 0x4
data_ov40_0218c6dc:
	.space 0x4
data_ov40_0218c6e0:
	.space 0x4
data_ov40_0218c6e4:
	.space 0x4
data_ov40_0218c6e8:
	.space 0x4
data_ov40_0218c6ec:
	.space 0x4
data_ov40_0218c6f0:
	.space 0x4
data_ov40_0218c6f4:
	.space 0x4
data_ov40_0218c6f8:
	.space 0x4
data_ov40_0218c6fc:
	.space 0x4
data_ov40_0218c700:
	.space 0x4
data_ov40_0218c704:
	.space 0x4
data_ov40_0218c708:
	.space 0x4
data_ov40_0218c70c:
	.space 0x4
data_ov40_0218c710:
	.space 0x4
data_ov40_0218c714:
	.space 0x4
data_ov40_0218c718:
	.space 0x4
data_ov40_0218c71c:
	.space 0x4
data_ov40_0218c720:
	.space 0x4
data_ov40_0218c724:
	.space 0x4
data_ov40_0218c728:
	.space 0x4
data_ov40_0218c72c:
	.space 0x4
data_ov40_0218c730:
	.space 0x4
data_ov40_0218c734:
	.space 0x4
data_ov40_0218c738:
	.space 0x4
data_ov40_0218c73c:
	.space 0x4
data_ov40_0218c740:
	.space 0x4
data_ov40_0218c744:
	.space 0x4
data_ov40_0218c748:
	.space 0x4
data_ov40_0218c74c:
	.space 0x4
data_ov40_0218c750:
	.space 0x4
data_ov40_0218c754:
	.space 0x4
data_ov40_0218c758:
	.space 0x4
data_ov40_0218c75c:
	.space 0x4
data_ov40_0218c760:
	.space 0x4
data_ov40_0218c764:
	.space 0x4
data_ov40_0218c768:
	.space 0x4
data_ov40_0218c76c:
	.space 0x4
data_ov40_0218c770:
	.space 0x4
data_ov40_0218c774:
	.space 0x4
data_ov40_0218c778:
	.space 0x4
data_ov40_0218c77c:
	.space 0x4
data_ov40_0218c780:
	.space 0x4
data_ov40_0218c784:
	.space 0x4
data_ov40_0218c788:
	.space 0x4
data_ov40_0218c78c:
	.space 0x4
data_ov40_0218c790:
	.space 0x4
data_ov40_0218c794:
	.space 0x4
data_ov40_0218c798:
	.space 0x4
data_ov40_0218c79c:
	.space 0x4
data_ov40_0218c7a0:
	.space 0x4
data_ov40_0218c7a4:
	.space 0x4
data_ov40_0218c7a8:
	.space 0x4
data_ov40_0218c7ac:
	.space 0x4
data_ov40_0218c7b0:
	.space 0x4
data_ov40_0218c7b4:
	.space 0x4
data_ov40_0218c7b8:
	.space 0x4
data_ov40_0218c7bc:
	.space 0x4
data_ov40_0218c7c0:
	.space 0x4
data_ov40_0218c7c4:
	.space 0x4
data_ov40_0218c7c8:
	.space 0x4
data_ov40_0218c7cc:
	.space 0x4
data_ov40_0218c7d0:
	.space 0x4
data_ov40_0218c7d4:
	.space 0x4
data_ov40_0218c7d8:
	.space 0x4
data_ov40_0218c7dc:
	.space 0x4
data_ov40_0218c7e0:
	.space 0x4
data_ov40_0218c7e4:
	.space 0x4
data_ov40_0218c7e8:
	.space 0x4
data_ov40_0218c7ec:
	.space 0x4
data_ov40_0218c7f0:
	.space 0x4
data_ov40_0218c7f4:
	.space 0x4
data_ov40_0218c7f8:
	.space 0x4
data_ov40_0218c7fc:
	.space 0x4
data_ov40_0218c800:
	.space 0x4
data_ov40_0218c804:
	.space 0x4
data_ov40_0218c808:
	.space 0x4
data_ov40_0218c80c:
	.space 0x4
data_ov40_0218c810:
	.space 0x4
data_ov40_0218c814:
	.space 0x4
data_ov40_0218c818:
	.space 0x4
data_ov40_0218c81c:
	.space 0x4
data_ov40_0218c820:
	.space 0x4
data_ov40_0218c824:
	.space 0x4
data_ov40_0218c828:
	.space 0x4
data_ov40_0218c82c:
	.space 0x4
data_ov40_0218c830:
	.space 0x4
data_ov40_0218c834:
	.space 0x4
data_ov40_0218c838:
	.space 0x4
data_ov40_0218c83c:
	.space 0x4
data_ov40_0218c840:
	.space 0x4
data_ov40_0218c844:
	.space 0x4
data_ov40_0218c848:
	.space 0x4
data_ov40_0218c84c:
	.space 0x4
data_ov40_0218c850:
	.space 0x4
data_ov40_0218c854:
	.space 0x4
data_ov40_0218c858:
	.space 0x4
data_ov40_0218c85c:
	.space 0x4
data_ov40_0218c860:
	.space 0x4
data_ov40_0218c864:
	.space 0x4
data_ov40_0218c868:
	.space 0x4
data_ov40_0218c86c:
	.space 0x4
data_ov40_0218c870:
	.space 0x4
data_ov40_0218c874:
	.space 0x4
data_ov40_0218c878:
	.space 0x4
data_ov40_0218c87c:
	.space 0x4
data_ov40_0218c880:
	.space 0x4
data_ov40_0218c884:
	.space 0x4
data_ov40_0218c888:
	.space 0x4
data_ov40_0218c88c:
	.space 0x4
data_ov40_0218c890:
	.space 0x4
data_ov40_0218c894:
	.space 0x4
data_ov40_0218c898:
	.space 0x4
data_ov40_0218c89c:
	.space 0x4
data_ov40_0218c8a0:
	.space 0x4
data_ov40_0218c8a4:
	.space 0x4
data_ov40_0218c8a8:
	.space 0x4
data_ov40_0218c8ac:
	.space 0x4
data_ov40_0218c8b0:
	.space 0x4
data_ov40_0218c8b4:
	.space 0x4
data_ov40_0218c8b8:
	.space 0x4
data_ov40_0218c8bc:
	.space 0x4
data_ov40_0218c8c0:
	.space 0x4
data_ov40_0218c8c4:
	.space 0x4
data_ov40_0218c8c8:
	.space 0x4
data_ov40_0218c8cc:
	.space 0x4
data_ov40_0218c8d0:
	.space 0x4
data_ov40_0218c8d4:
	.space 0x4
data_ov40_0218c8d8:
	.space 0x4
data_ov40_0218c8dc:
	.space 0x4
data_ov40_0218c8e0:
	.space 0x4
data_ov40_0218c8e4:
	.space 0x4
data_ov40_0218c8e8:
	.space 0x4
data_ov40_0218c8ec:
	.space 0x4
data_ov40_0218c8f0:
	.space 0x4
data_ov40_0218c8f4:
	.space 0x4
data_ov40_0218c8f8:
	.space 0x4
data_ov40_0218c8fc:
	.space 0x4
data_ov40_0218c900:
	.space 0x4
data_ov40_0218c904:
	.space 0x4
data_ov40_0218c908:
	.space 0x4
data_ov40_0218c90c:
	.space 0x4
data_ov40_0218c910:
	.space 0x4
data_ov40_0218c914:
	.space 0x4
data_ov40_0218c918:
	.space 0x4
data_ov40_0218c91c:
	.space 0x4
data_ov40_0218c920:
	.space 0x4
data_ov40_0218c924:
	.space 0x4
data_ov40_0218c928:
	.space 0x4
data_ov40_0218c92c:
	.space 0x4
data_ov40_0218c930:
	.space 0x4
data_ov40_0218c934:
	.space 0x4
data_ov40_0218c938:
	.space 0x4
data_ov40_0218c93c:
	.space 0x4
data_ov40_0218c940:
	.space 0x4
data_ov40_0218c944:
	.space 0x4
data_ov40_0218c948:
	.space 0x4
data_ov40_0218c94c:
	.space 0x4
data_ov40_0218c950:
	.space 0x4
data_ov40_0218c954:
	.space 0x4
data_ov40_0218c958:
	.space 0x4
data_ov40_0218c95c:
	.space 0x4
data_ov40_0218c960:
	.space 0x4
data_ov40_0218c964:
	.space 0x4
data_ov40_0218c968:
	.space 0x4
data_ov40_0218c96c:
	.space 0x4
data_ov40_0218c970:
	.space 0x4
data_ov40_0218c974:
	.space 0x4
data_ov40_0218c978:
	.space 0x4
data_ov40_0218c97c:
	.space 0x4
data_ov40_0218c980:
	.space 0x4
data_ov40_0218c984:
	.space 0x4
data_ov40_0218c988:
	.space 0x4
data_ov40_0218c98c:
	.space 0x4
data_ov40_0218c990:
	.space 0x4
data_ov40_0218c994:
	.space 0x4
data_ov40_0218c998:
	.space 0x4
data_ov40_0218c99c:
	.space 0x4
data_ov40_0218c9a0:
	.space 0x4
data_ov40_0218c9a4:
	.space 0x4
data_ov40_0218c9a8:
	.space 0x4
data_ov40_0218c9ac:
	.space 0x4
data_ov40_0218c9b0:
	.space 0x4
data_ov40_0218c9b4:
	.space 0x4
data_ov40_0218c9b8:
	.space 0x4
data_ov40_0218c9bc:
	.space 0x4
data_ov40_0218c9c0:
	.space 0x4
data_ov40_0218c9c4:
	.space 0x4
data_ov40_0218c9c8:
	.space 0x4
data_ov40_0218c9cc:
	.space 0x4
data_ov40_0218c9d0:
	.space 0x4
data_ov40_0218c9d4:
	.space 0x4
data_ov40_0218c9d8:
	.space 0x4
data_ov40_0218c9dc:
	.space 0x4
data_ov40_0218c9e0:
	.space 0x4
data_ov40_0218c9e4:
	.space 0x4
data_ov40_0218c9e8:
	.space 0x4
data_ov40_0218c9ec:
	.space 0x4
data_ov40_0218c9f0:
	.space 0x4
data_ov40_0218c9f4:
	.space 0x4
data_ov40_0218c9f8:
	.space 0x4
data_ov40_0218c9fc:
	.space 0x4
data_ov40_0218ca00:
	.space 0x4
data_ov40_0218ca04:
	.space 0x4
data_ov40_0218ca08:
	.space 0x4
data_ov40_0218ca0c:
	.space 0x4
data_ov40_0218ca10:
	.space 0x4
data_ov40_0218ca14:
	.space 0x4
data_ov40_0218ca18:
	.space 0x4
data_ov40_0218ca1c:
	.space 0x4
data_ov40_0218ca20:
	.space 0x4
data_ov40_0218ca24:
	.space 0x4
data_ov40_0218ca28:
	.space 0x4
data_ov40_0218ca2c:
	.space 0x4
data_ov40_0218ca30:
	.space 0x4
data_ov40_0218ca34:
	.space 0x4
data_ov40_0218ca38:
	.space 0x4
data_ov40_0218ca3c:
	.space 0x4
data_ov40_0218ca40:
	.space 0x4
data_ov40_0218ca44:
	.space 0x4
data_ov40_0218ca48:
	.space 0x4
data_ov40_0218ca4c:
	.space 0x4
data_ov40_0218ca50:
	.space 0x4
data_ov40_0218ca54:
	.space 0x4
data_ov40_0218ca58:
	.space 0x4
data_ov40_0218ca5c:
	.space 0x4
data_ov40_0218ca60:
	.space 0x4
data_ov40_0218ca64:
	.space 0x4
data_ov40_0218ca68:
	.space 0x4
data_ov40_0218ca6c:
	.space 0x4
data_ov40_0218ca70:
	.space 0x4
data_ov40_0218ca74:
	.space 0x4
data_ov40_0218ca78:
	.space 0x4
data_ov40_0218ca7c:
	.space 0x4
data_ov40_0218ca80:
	.space 0x4
data_ov40_0218ca84:
	.space 0x4
data_ov40_0218ca88:
	.space 0x4
data_ov40_0218ca8c:
	.space 0x4
data_ov40_0218ca90:
	.space 0x4
data_ov40_0218ca94:
	.space 0x4
data_ov40_0218ca98:
	.space 0x4
data_ov40_0218ca9c:
	.space 0x4
data_ov40_0218caa0:
	.space 0x4
data_ov40_0218caa4:
	.space 0x4
data_ov40_0218caa8:
	.space 0x4
data_ov40_0218caac:
	.space 0x4
data_ov40_0218cab0:
	.space 0x4
data_ov40_0218cab4:
	.space 0x4
data_ov40_0218cab8:
	.space 0x4
data_ov40_0218cabc:
	.space 0x4
data_ov40_0218cac0:
	.space 0x4
data_ov40_0218cac4:
	.space 0x4
data_ov40_0218cac8:
	.space 0x4
data_ov40_0218cacc:
	.space 0x4
data_ov40_0218cad0:
	.space 0x4
data_ov40_0218cad4:
	.space 0x4
data_ov40_0218cad8:
	.space 0x4
data_ov40_0218cadc:
	.space 0x4
data_ov40_0218cae0:
	.space 0x4
data_ov40_0218cae4:
	.space 0x4
data_ov40_0218cae8:
	.space 0x4
data_ov40_0218caec:
	.space 0x4
data_ov40_0218caf0:
	.space 0x4
data_ov40_0218caf4:
	.space 0x4
data_ov40_0218caf8:
	.space 0x4
data_ov40_0218cafc:
	.space 0x4
data_ov40_0218cb00:
	.space 0x4
data_ov40_0218cb04:
	.space 0x4
data_ov40_0218cb08:
	.space 0x4
data_ov40_0218cb0c:
	.space 0x4
data_ov40_0218cb10:
	.space 0x4
data_ov40_0218cb14:
	.space 0x4
data_ov40_0218cb18:
	.space 0x4
data_ov40_0218cb1c:
	.space 0x4
data_ov40_0218cb20:
	.space 0x4
data_ov40_0218cb24:
	.space 0x4
data_ov40_0218cb28:
	.space 0x4
data_ov40_0218cb2c:
	.space 0x4
data_ov40_0218cb30:
	.space 0x4
data_ov40_0218cb34:
	.space 0x4
data_ov40_0218cb38:
	.space 0x4
data_ov40_0218cb3c:
	.space 0x4
data_ov40_0218cb40:
	.space 0x4
data_ov40_0218cb44:
	.space 0x4
data_ov40_0218cb48:
	.space 0x4
data_ov40_0218cb4c:
	.space 0x4
data_ov40_0218cb50:
	.space 0x4
data_ov40_0218cb54:
	.space 0x4
data_ov40_0218cb58:
	.space 0x4
data_ov40_0218cb5c:
	.space 0x4
data_ov40_0218cb60:
	.space 0x4
data_ov40_0218cb64:
	.space 0x4
data_ov40_0218cb68:
	.space 0x4
data_ov40_0218cb6c:
	.space 0x4
data_ov40_0218cb70:
	.space 0x4
data_ov40_0218cb74:
	.space 0x4
data_ov40_0218cb78:
	.space 0x4
data_ov40_0218cb7c:
	.space 0x4
data_ov40_0218cb80:
	.space 0x4
data_ov40_0218cb84:
	.space 0x4
data_ov40_0218cb88:
	.space 0x4
data_ov40_0218cb8c:
	.space 0x4
data_ov40_0218cb90:
	.space 0x4
data_ov40_0218cb94:
	.space 0x4
data_ov40_0218cb98:
	.space 0x4
data_ov40_0218cb9c:
	.space 0x4
data_ov40_0218cba0:
	.space 0x4
data_ov40_0218cba4:
	.space 0x4
data_ov40_0218cba8:
	.space 0x4
data_ov40_0218cbac:
	.space 0x4
data_ov40_0218cbb0:
	.space 0x4
data_ov40_0218cbb4:
	.space 0x4
data_ov40_0218cbb8:
	.space 0x4
data_ov40_0218cbbc:
	.space 0x4
data_ov40_0218cbc0:
	.space 0x4
data_ov40_0218cbc4:
	.space 0x4
data_ov40_0218cbc8:
	.space 0x4
data_ov40_0218cbcc:
	.space 0x4
data_ov40_0218cbd0:
	.space 0x4
data_ov40_0218cbd4:
	.space 0x4
data_ov40_0218cbd8:
	.space 0x4
data_ov40_0218cbdc:
	.space 0x4
data_ov40_0218cbe0:
	.space 0x4
data_ov40_0218cbe4:
	.space 0x4
data_ov40_0218cbe8:
	.space 0x4
data_ov40_0218cbec:
	.space 0x4
data_ov40_0218cbf0:
	.space 0x4
data_ov40_0218cbf4:
	.space 0x4
data_ov40_0218cbf8:
	.space 0x4
data_ov40_0218cbfc:
	.space 0x4
data_ov40_0218cc00:
	.space 0x4
data_ov40_0218cc04:
	.space 0x4
data_ov40_0218cc08:
	.space 0x4
data_ov40_0218cc0c:
	.space 0x4
data_ov40_0218cc10:
	.space 0x4
data_ov40_0218cc14:
	.space 0x4
data_ov40_0218cc18:
	.space 0x4
data_ov40_0218cc1c:
	.space 0x4
data_ov40_0218cc20:
	.space 0x4
data_ov40_0218cc24:
	.space 0x4
data_ov40_0218cc28:
	.space 0x4
data_ov40_0218cc2c:
	.space 0x4
data_ov40_0218cc30:
	.space 0x4
data_ov40_0218cc34:
	.space 0x4
data_ov40_0218cc38:
	.space 0x4
data_ov40_0218cc3c:
	.space 0x4
data_ov40_0218cc40:
	.space 0x4
data_ov40_0218cc44:
	.space 0x4
data_ov40_0218cc48:
	.space 0x4
data_ov40_0218cc4c:
	.space 0x4
data_ov40_0218cc50:
	.space 0x4
data_ov40_0218cc54:
	.space 0x4
data_ov40_0218cc58:
	.space 0x4
data_ov40_0218cc5c:
	.space 0x4
data_ov40_0218cc60:
	.space 0x4
data_ov40_0218cc64:
	.space 0x4
data_ov40_0218cc68:
	.space 0x4
data_ov40_0218cc6c:
	.space 0x4
data_ov40_0218cc70:
	.space 0x4
data_ov40_0218cc74:
	.space 0x4
data_ov40_0218cc78:
	.space 0x4
data_ov40_0218cc7c:
	.space 0x4
data_ov40_0218cc80:
	.space 0x4
data_ov40_0218cc84:
	.space 0x4
data_ov40_0218cc88:
	.space 0x4
data_ov40_0218cc8c:
	.space 0x4
data_ov40_0218cc90:
	.space 0x4
data_ov40_0218cc94:
	.space 0x4
data_ov40_0218cc98:
	.space 0x4
data_ov40_0218cc9c:
	.space 0x4
data_ov40_0218cca0:
	.space 0x4
data_ov40_0218cca4:
	.space 0x4
data_ov40_0218cca8:
	.space 0x4
data_ov40_0218ccac:
	.space 0x4
data_ov40_0218ccb0:
	.space 0x4
data_ov40_0218ccb4:
	.space 0x4
data_ov40_0218ccb8:
	.space 0x4
data_ov40_0218ccbc:
	.space 0x4
data_ov40_0218ccc0:
	.space 0x4
data_ov40_0218ccc4:
	.space 0x4
data_ov40_0218ccc8:
	.space 0x4
data_ov40_0218cccc:
	.space 0x4
data_ov40_0218ccd0:
	.space 0x4
data_ov40_0218ccd4:
	.space 0x4
data_ov40_0218ccd8:
	.space 0x4
data_ov40_0218ccdc:
	.space 0x4
data_ov40_0218cce0:
	.space 0x4
data_ov40_0218cce4:
	.space 0x4
data_ov40_0218cce8:
	.space 0x4
data_ov40_0218ccec:
	.space 0x4
data_ov40_0218ccf0:
	.space 0x4
data_ov40_0218ccf4:
	.space 0x4
data_ov40_0218ccf8:
	.space 0x4
data_ov40_0218ccfc:
	.space 0x4
data_ov40_0218cd00:
	.space 0x4
data_ov40_0218cd04:
	.space 0x4
data_ov40_0218cd08:
	.space 0x4
data_ov40_0218cd0c:
	.space 0x4
data_ov40_0218cd10:
	.space 0x4
data_ov40_0218cd14:
	.space 0x4
data_ov40_0218cd18:
	.space 0x4
data_ov40_0218cd1c:
	.space 0x4
data_ov40_0218cd20:
	.space 0x4
data_ov40_0218cd24:
	.space 0x4
data_ov40_0218cd28:
	.space 0x4
data_ov40_0218cd2c:
	.space 0x4
data_ov40_0218cd30:
	.space 0x4
data_ov40_0218cd34:
	.space 0x4
data_ov40_0218cd38:
	.space 0x4
data_ov40_0218cd3c:
	.space 0x4
data_ov40_0218cd40:
	.space 0x4
data_ov40_0218cd44:
	.space 0x4
data_ov40_0218cd48:
	.space 0x4
data_ov40_0218cd4c:
	.space 0x4
data_ov40_0218cd50:
	.space 0x4
data_ov40_0218cd54:
	.space 0x4
data_ov40_0218cd58:
	.space 0x4
data_ov40_0218cd5c:
	.space 0x4
data_ov40_0218cd60:
	.space 0x4
data_ov40_0218cd64:
	.space 0x4
data_ov40_0218cd68:
	.space 0x4
data_ov40_0218cd6c:
	.space 0x4
data_ov40_0218cd70:
	.space 0x4
data_ov40_0218cd74:
	.space 0x4
data_ov40_0218cd78:
	.space 0x4
data_ov40_0218cd7c:
	.space 0x4
data_ov40_0218cd80:
	.space 0x4
data_ov40_0218cd84:
	.space 0x4
data_ov40_0218cd88:
	.space 0x4
data_ov40_0218cd8c:
	.space 0x4
data_ov40_0218cd90:
	.space 0x4
data_ov40_0218cd94:
	.space 0x4
data_ov40_0218cd98:
	.space 0x4
data_ov40_0218cd9c:
	.space 0x4
data_ov40_0218cda0:
	.space 0x4
data_ov40_0218cda4:
	.space 0x4
data_ov40_0218cda8:
	.space 0x4
data_ov40_0218cdac:
	.space 0x4
data_ov40_0218cdb0:
	.space 0x4
data_ov40_0218cdb4:
	.space 0x4
data_ov40_0218cdb8:
	.space 0x4
data_ov40_0218cdbc:
	.space 0x4
data_ov40_0218cdc0:
	.space 0x4
data_ov40_0218cdc4:
	.space 0x4
data_ov40_0218cdc8:
	.space 0x4
data_ov40_0218cdcc:
	.space 0x4
data_ov40_0218cdd0:
	.space 0x4
data_ov40_0218cdd4:
	.space 0x4
data_ov40_0218cdd8:
	.space 0x4
data_ov40_0218cddc:
	.space 0x4
data_ov40_0218cde0:
	.space 0x4
data_ov40_0218cde4:
	.space 0x4
data_ov40_0218cde8:
	.space 0x4
data_ov40_0218cdec:
	.space 0x4
data_ov40_0218cdf0:
	.space 0x4
data_ov40_0218cdf4:
	.space 0x4
data_ov40_0218cdf8:
	.space 0x4
data_ov40_0218cdfc:
	.space 0x4
data_ov40_0218ce00:
	.space 0x4
data_ov40_0218ce04:
	.space 0x4
data_ov40_0218ce08:
	.space 0x4
data_ov40_0218ce0c:
	.space 0x4
data_ov40_0218ce10:
	.space 0x4
data_ov40_0218ce14:
	.space 0x4
data_ov40_0218ce18:
	.space 0x4
data_ov40_0218ce1c:
	.space 0x4
data_ov40_0218ce20:
	.space 0x4
data_ov40_0218ce24:
	.space 0x4
data_ov40_0218ce28:
	.space 0x4
data_ov40_0218ce2c:
	.space 0x4
data_ov40_0218ce30:
	.space 0x4
data_ov40_0218ce34:
	.space 0x4
data_ov40_0218ce38:
	.space 0x4
data_ov40_0218ce3c:
	.space 0x4
data_ov40_0218ce40:
	.space 0x4
data_ov40_0218ce44:
	.space 0x4
data_ov40_0218ce48:
	.space 0x4
data_ov40_0218ce4c:
	.space 0x4
data_ov40_0218ce50:
	.space 0x4
data_ov40_0218ce54:
	.space 0x4
data_ov40_0218ce58:
	.space 0x4
data_ov40_0218ce5c:
	.space 0x4
data_ov40_0218ce60:
	.space 0x4
data_ov40_0218ce64:
	.space 0x4
data_ov40_0218ce68:
	.space 0x4
data_ov40_0218ce6c:
	.space 0x4
data_ov40_0218ce70:
	.space 0x4
data_ov40_0218ce74:
	.space 0x4
data_ov40_0218ce78:
	.space 0x4
data_ov40_0218ce7c:
	.space 0x4
data_ov40_0218ce80:
	.space 0x4
data_ov40_0218ce84:
	.space 0x4
data_ov40_0218ce88:
	.space 0x4
data_ov40_0218ce8c:
	.space 0x4
data_ov40_0218ce90:
	.space 0x4
data_ov40_0218ce94:
	.space 0x4
data_ov40_0218ce98:
	.space 0x4
data_ov40_0218ce9c:
	.space 0x4
data_ov40_0218cea0:
	.space 0x4
data_ov40_0218cea4:
	.space 0x4
data_ov40_0218cea8:
	.space 0x4
data_ov40_0218ceac:
	.space 0x4
data_ov40_0218ceb0:
	.space 0x4
data_ov40_0218ceb4:
	.space 0x4
data_ov40_0218ceb8:
	.space 0x4
data_ov40_0218cebc:
	.space 0x4
data_ov40_0218cec0:
	.space 0x4
data_ov40_0218cec4:
	.space 0x4
data_ov40_0218cec8:
	.space 0x4
data_ov40_0218cecc:
	.space 0x4
data_ov40_0218ced0:
	.space 0x4
data_ov40_0218ced4:
	.space 0x4
data_ov40_0218ced8:
	.space 0x4
data_ov40_0218cedc:
	.space 0x4
data_ov40_0218cee0:
	.space 0x4
data_ov40_0218cee4:
	.space 0x4
data_ov40_0218cee8:
	.space 0x4
data_ov40_0218ceec:
	.space 0x4
data_ov40_0218cef0:
	.space 0x4
data_ov40_0218cef4:
	.space 0x4
data_ov40_0218cef8:
	.space 0x4
data_ov40_0218cefc:
	.space 0x4
data_ov40_0218cf00:
	.space 0x4
data_ov40_0218cf04:
	.space 0x4
data_ov40_0218cf08:
	.space 0x4
data_ov40_0218cf0c:
	.space 0x4
data_ov40_0218cf10:
	.space 0x4
data_ov40_0218cf14:
	.space 0x4
data_ov40_0218cf18:
	.space 0x4
data_ov40_0218cf1c:
	.space 0x4
data_ov40_0218cf20:
	.space 0x4
data_ov40_0218cf24:
	.space 0x4
data_ov40_0218cf28:
	.space 0x4
data_ov40_0218cf2c:
	.space 0x4
data_ov40_0218cf30:
	.space 0x4
data_ov40_0218cf34:
	.space 0x4
data_ov40_0218cf38:
	.space 0x4
data_ov40_0218cf3c:
	.space 0x4
data_ov40_0218cf40:
	.space 0x4
data_ov40_0218cf44:
	.space 0x4
data_ov40_0218cf48:
	.space 0x4
data_ov40_0218cf4c:
	.space 0x4
data_ov40_0218cf50:
	.space 0x4
data_ov40_0218cf54:
	.space 0x4
data_ov40_0218cf58:
	.space 0x4
data_ov40_0218cf5c:
	.space 0x4
data_ov40_0218cf60:
	.space 0x4
data_ov40_0218cf64:
	.space 0x4
data_ov40_0218cf68:
	.space 0x4
data_ov40_0218cf6c:
	.space 0x4
data_ov40_0218cf70:
	.space 0x4
data_ov40_0218cf74:
	.space 0x4
data_ov40_0218cf78:
	.space 0x4
data_ov40_0218cf7c:
	.space 0x4
data_ov40_0218cf80:
	.space 0x4
data_ov40_0218cf84:
	.space 0x4
data_ov40_0218cf88:
	.space 0x4
data_ov40_0218cf8c:
	.space 0x4
data_ov40_0218cf90:
	.space 0x4
data_ov40_0218cf94:
	.space 0x4
data_ov40_0218cf98:
	.space 0x4
data_ov40_0218cf9c:
	.space 0x4
data_ov40_0218cfa0:
	.space 0x4
data_ov40_0218cfa4:
	.space 0x4
data_ov40_0218cfa8:
	.space 0x4
data_ov40_0218cfac:
	.space 0x4
data_ov40_0218cfb0:
	.space 0x4
data_ov40_0218cfb4:
	.space 0x4
data_ov40_0218cfb8:
	.space 0x4
data_ov40_0218cfbc:
	.space 0x4
data_ov40_0218cfc0:
	.space 0x4
data_ov40_0218cfc4:
	.space 0x4
data_ov40_0218cfc8:
	.space 0x4
data_ov40_0218cfcc:
	.space 0x4
data_ov40_0218cfd0:
	.space 0x4
data_ov40_0218cfd4:
	.space 0x4
data_ov40_0218cfd8:
	.space 0x4
data_ov40_0218cfdc:
	.space 0x4
data_ov40_0218cfe0:
	.space 0x4
data_ov40_0218cfe4:
	.space 0x4
data_ov40_0218cfe8:
	.space 0x4
data_ov40_0218cfec:
	.space 0x4
data_ov40_0218cff0:
	.space 0x4
data_ov40_0218cff4:
	.space 0x4
data_ov40_0218cff8:
	.space 0x4
data_ov40_0218cffc:
	.space 0x4
data_ov40_0218d000:
	.space 0x4
data_ov40_0218d004:
	.space 0x4
data_ov40_0218d008:
	.space 0x4
data_ov40_0218d00c:
	.space 0x4
data_ov40_0218d010:
	.space 0x4
data_ov40_0218d014:
	.space 0x4
data_ov40_0218d018:
	.space 0x4
data_ov40_0218d01c:
	.space 0x4
data_ov40_0218d020:
	.space 0x4
data_ov40_0218d024:
	.space 0x4
data_ov40_0218d028:
	.space 0x4
data_ov40_0218d02c:
	.space 0x4
data_ov40_0218d030:
	.space 0x4
data_ov40_0218d034:
	.space 0x4
data_ov40_0218d038:
	.space 0x4
data_ov40_0218d03c:
	.space 0x4
data_ov40_0218d040:
	.space 0x4
data_ov40_0218d044:
	.space 0x4
data_ov40_0218d048:
	.space 0x4
data_ov40_0218d04c:
	.space 0x4
data_ov40_0218d050:
	.space 0x4
data_ov40_0218d054:
	.space 0x4
data_ov40_0218d058:
	.space 0x4
data_ov40_0218d05c:
	.space 0x4
data_ov40_0218d060:
	.space 0x4
data_ov40_0218d064:
	.space 0x4
data_ov40_0218d068:
	.space 0x4
data_ov40_0218d06c:
	.space 0x4
data_ov40_0218d070:
	.space 0x4
data_ov40_0218d074:
	.space 0x4
data_ov40_0218d078:
	.space 0x4
data_ov40_0218d07c:
	.space 0x4
data_ov40_0218d080:
	.space 0x4
data_ov40_0218d084:
	.space 0x4
data_ov40_0218d088:
	.space 0x4
data_ov40_0218d08c:
	.space 0x4
data_ov40_0218d090:
	.space 0x4
data_ov40_0218d094:
	.space 0x4
data_ov40_0218d098:
	.space 0x4
data_ov40_0218d09c:
	.space 0x4
data_ov40_0218d0a0:
	.space 0x4
data_ov40_0218d0a4:
	.space 0x4
data_ov40_0218d0a8:
	.space 0x4
data_ov40_0218d0ac:
	.space 0x4
data_ov40_0218d0b0:
	.space 0x4
data_ov40_0218d0b4:
	.space 0x4
data_ov40_0218d0b8:
	.space 0x4
data_ov40_0218d0bc:
	.space 0x4
data_ov40_0218d0c0:
	.space 0x4
data_ov40_0218d0c4:
	.space 0x4
data_ov40_0218d0c8:
	.space 0x4
data_ov40_0218d0cc:
	.space 0x4
data_ov40_0218d0d0:
	.space 0x4
data_ov40_0218d0d4:
	.space 0x4
data_ov40_0218d0d8:
	.space 0x4
data_ov40_0218d0dc:
	.space 0x4
data_ov40_0218d0e0:
	.space 0x4
data_ov40_0218d0e4:
	.space 0x4
data_ov40_0218d0e8:
	.space 0x4
data_ov40_0218d0ec:
	.space 0x4
data_ov40_0218d0f0:
	.space 0x4
data_ov40_0218d0f4:
	.space 0x4
data_ov40_0218d0f8:
	.space 0x4
data_ov40_0218d0fc:
	.space 0x4
data_ov40_0218d100:
	.space 0x4
data_ov40_0218d104:
	.space 0x4
data_ov40_0218d108:
	.space 0x4
data_ov40_0218d10c:
	.space 0x4
data_ov40_0218d110:
	.space 0x4
data_ov40_0218d114:
	.space 0x4
data_ov40_0218d118:
	.space 0x4
data_ov40_0218d11c:
	.space 0x4
data_ov40_0218d120:
	.space 0x4
data_ov40_0218d124:
	.space 0x4
data_ov40_0218d128:
	.space 0x4
data_ov40_0218d12c:
	.space 0x4
data_ov40_0218d130:
	.space 0x4
data_ov40_0218d134:
	.space 0x4
data_ov40_0218d138:
	.space 0x4
data_ov40_0218d13c:
	.space 0x4
data_ov40_0218d140:
	.space 0x4
data_ov40_0218d144:
	.space 0x4
data_ov40_0218d148:
	.space 0x4
data_ov40_0218d14c:
	.space 0x4
data_ov40_0218d150:
	.space 0x4
data_ov40_0218d154:
	.space 0x4
data_ov40_0218d158:
	.space 0x4
data_ov40_0218d15c:
	.space 0x4
data_ov40_0218d160:
	.space 0x4
data_ov40_0218d164:
	.space 0x4
data_ov40_0218d168:
	.space 0x4
data_ov40_0218d16c:
	.space 0x4
data_ov40_0218d170:
	.space 0x4
data_ov40_0218d174:
	.space 0x4
data_ov40_0218d178:
	.space 0x4
data_ov40_0218d17c:
	.space 0x4
data_ov40_0218d180:
	.space 0x4
data_ov40_0218d184:
	.space 0x4
data_ov40_0218d188:
	.space 0x4
data_ov40_0218d18c:
	.space 0x4
data_ov40_0218d190:
	.space 0x4
data_ov40_0218d194:
	.space 0x4
data_ov40_0218d198:
	.space 0x4
data_ov40_0218d19c:
	.space 0x4
data_ov40_0218d1a0:
	.space 0x4
data_ov40_0218d1a4:
	.space 0x4
data_ov40_0218d1a8:
	.space 0x4
data_ov40_0218d1ac:
	.space 0x4
data_ov40_0218d1b0:
	.space 0x4
data_ov40_0218d1b4:
	.space 0x4
data_ov40_0218d1b8:
	.space 0x4
data_ov40_0218d1bc:
	.space 0x4
data_ov40_0218d1c0:
	.space 0x4
data_ov40_0218d1c4:
	.space 0x4
data_ov40_0218d1c8:
	.space 0x4
data_ov40_0218d1cc:
	.space 0x4
data_ov40_0218d1d0:
	.space 0x4
data_ov40_0218d1d4:
	.space 0x4
data_ov40_0218d1d8:
	.space 0x4
data_ov40_0218d1dc:
	.space 0x4
data_ov40_0218d1e0:
	.space 0x4
data_ov40_0218d1e4:
	.space 0x4
data_ov40_0218d1e8:
	.space 0x4
data_ov40_0218d1ec:
	.space 0x4
data_ov40_0218d1f0:
	.space 0x4
data_ov40_0218d1f4:
	.space 0x4
data_ov40_0218d1f8:
	.space 0x4
data_ov40_0218d1fc:
	.space 0x4
data_ov40_0218d200:
	.space 0x4
data_ov40_0218d204:
	.space 0x4
data_ov40_0218d208:
	.space 0x4
data_ov40_0218d20c:
	.space 0x4
data_ov40_0218d210:
	.space 0x4
data_ov40_0218d214:
	.space 0x4
data_ov40_0218d218:
	.space 0x4
data_ov40_0218d21c:
	.space 0x4
data_ov40_0218d220:
	.space 0x4
data_ov40_0218d224:
	.space 0x4
data_ov40_0218d228:
	.space 0x4
data_ov40_0218d22c:
	.space 0x4
data_ov40_0218d230:
	.space 0x4
data_ov40_0218d234:
	.space 0x4
data_ov40_0218d238:
	.space 0x4
data_ov40_0218d23c:
	.space 0x4
data_ov40_0218d240:
	.space 0x4
data_ov40_0218d244:
	.space 0x4
data_ov40_0218d248:
	.space 0x4
data_ov40_0218d24c:
	.space 0x4
data_ov40_0218d250:
	.space 0x4
data_ov40_0218d254:
	.space 0x4
data_ov40_0218d258:
	.space 0x4
data_ov40_0218d25c:
	.space 0x4
data_ov40_0218d260:
	.space 0x4
data_ov40_0218d264:
	.space 0x4
data_ov40_0218d268:
	.space 0x4
data_ov40_0218d26c:
	.space 0x4
data_ov40_0218d270:
	.space 0x4
data_ov40_0218d274:
	.space 0x4
data_ov40_0218d278:
	.space 0x4
data_ov40_0218d27c:
	.space 0x4
data_ov40_0218d280:
	.space 0x4
data_ov40_0218d284:
	.space 0x4
data_ov40_0218d288:
	.space 0x4
data_ov40_0218d28c:
	.space 0x4
data_ov40_0218d290:
	.space 0x4
data_ov40_0218d294:
	.space 0x4
data_ov40_0218d298:
	.space 0x4
data_ov40_0218d29c:
	.space 0x4
data_ov40_0218d2a0:
	.space 0x4
data_ov40_0218d2a4:
	.space 0x4
data_ov40_0218d2a8:
	.space 0x4
data_ov40_0218d2ac:
	.space 0x4
data_ov40_0218d2b0:
	.space 0x4
data_ov40_0218d2b4:
	.space 0x4
data_ov40_0218d2b8:
	.space 0x4
data_ov40_0218d2bc:
	.space 0x4
data_ov40_0218d2c0:
	.space 0x4
data_ov40_0218d2c4:
	.space 0x4
data_ov40_0218d2c8:
	.space 0x4
data_ov40_0218d2cc:
	.space 0x4
data_ov40_0218d2d0:
	.space 0x4
data_ov40_0218d2d4:
	.space 0x4
data_ov40_0218d2d8:
	.space 0x4
data_ov40_0218d2dc:
	.space 0x4
data_ov40_0218d2e0:
	.space 0x4
data_ov40_0218d2e4:
	.space 0x4
data_ov40_0218d2e8:
	.space 0x4
data_ov40_0218d2ec:
	.space 0x4
data_ov40_0218d2f0:
	.space 0x4
data_ov40_0218d2f4:
	.space 0x4
data_ov40_0218d2f8:
	.space 0x4
data_ov40_0218d2fc:
	.space 0x4
data_ov40_0218d300:
	.space 0x4
data_ov40_0218d304:
	.space 0x4
data_ov40_0218d308:
	.space 0x4
data_ov40_0218d30c:
	.space 0x4
data_ov40_0218d310:
	.space 0x4
data_ov40_0218d314:
	.space 0x4
data_ov40_0218d318:
	.space 0x4
data_ov40_0218d31c:
	.space 0x4
data_ov40_0218d320:
	.space 0x4
data_ov40_0218d324:
	.space 0x4
data_ov40_0218d328:
	.space 0x4
data_ov40_0218d32c:
	.space 0x4
data_ov40_0218d330:
	.space 0x4
data_ov40_0218d334:
	.space 0x4
data_ov40_0218d338:
	.space 0x4
data_ov40_0218d33c:
	.space 0x4
data_ov40_0218d340:
	.space 0x4
data_ov40_0218d344:
	.space 0x4
data_ov40_0218d348:
	.space 0x4
data_ov40_0218d34c:
	.space 0x4
data_ov40_0218d350:
	.space 0x4
data_ov40_0218d354:
	.space 0x4
data_ov40_0218d358:
	.space 0x4
data_ov40_0218d35c:
	.space 0x4
data_ov40_0218d360:
	.space 0x4
data_ov40_0218d364:
	.space 0x4
data_ov40_0218d368:
	.space 0x4
data_ov40_0218d36c:
	.space 0x4
data_ov40_0218d370:
	.space 0x4
data_ov40_0218d374:
	.space 0x4
data_ov40_0218d378:
	.space 0x4
data_ov40_0218d37c:
	.space 0x4
data_ov40_0218d380:
	.space 0x4
data_ov40_0218d384:
	.space 0x4
data_ov40_0218d388:
	.space 0x4
data_ov40_0218d38c:
	.space 0x4
data_ov40_0218d390:
	.space 0x4
data_ov40_0218d394:
	.space 0x4
data_ov40_0218d398:
	.space 0x4
data_ov40_0218d39c:
	.space 0x4
data_ov40_0218d3a0:
	.space 0x4
data_ov40_0218d3a4:
	.space 0x4
data_ov40_0218d3a8:
	.space 0x4
data_ov40_0218d3ac:
	.space 0x4
data_ov40_0218d3b0:
	.space 0x4
data_ov40_0218d3b4:
	.space 0x4
data_ov40_0218d3b8:
	.space 0x4
data_ov40_0218d3bc:
	.space 0x4
data_ov40_0218d3c0:
	.space 0x4
data_ov40_0218d3c4:
	.space 0x4
data_ov40_0218d3c8:
	.space 0x4
data_ov40_0218d3cc:
	.space 0x4
data_ov40_0218d3d0:
	.space 0x4
data_ov40_0218d3d4:
	.space 0x4
data_ov40_0218d3d8:
	.space 0x4
data_ov40_0218d3dc:
	.space 0x4
data_ov40_0218d3e0:
	.space 0x4
data_ov40_0218d3e4:
	.space 0x4
data_ov40_0218d3e8:
	.space 0x4
data_ov40_0218d3ec:
	.space 0x4
data_ov40_0218d3f0:
	.space 0x4
data_ov40_0218d3f4:
	.space 0x4
data_ov40_0218d3f8:
	.space 0x4
data_ov40_0218d3fc:
	.space 0x4
data_ov40_0218d400:
	.space 0x4
data_ov40_0218d404:
	.space 0x4
data_ov40_0218d408:
	.space 0x4
data_ov40_0218d40c:
	.space 0x4
data_ov40_0218d410:
	.space 0x4
data_ov40_0218d414:
	.space 0x4
data_ov40_0218d418:
	.space 0x4
data_ov40_0218d41c:
	.space 0x4
data_ov40_0218d420:
	.space 0x4
data_ov40_0218d424:
	.space 0x4
data_ov40_0218d428:
	.space 0x4
data_ov40_0218d42c:
	.space 0x4
data_ov40_0218d430:
	.space 0x4
data_ov40_0218d434:
	.space 0x4
data_ov40_0218d438:
	.space 0x4
data_ov40_0218d43c:
	.space 0x4
data_ov40_0218d440:
	.space 0x4
data_ov40_0218d444:
	.space 0x4
data_ov40_0218d448:
	.space 0x4
data_ov40_0218d44c:
	.space 0x4
data_ov40_0218d450:
	.space 0x4
data_ov40_0218d454:
	.space 0x4
data_ov40_0218d458:
	.space 0x4
data_ov40_0218d45c:
	.space 0x4
data_ov40_0218d460:
	.space 0x4
data_ov40_0218d464:
	.space 0x4
data_ov40_0218d468:
	.space 0x4
data_ov40_0218d46c:
	.space 0x4
data_ov40_0218d470:
	.space 0x4
data_ov40_0218d474:
	.space 0x4
data_ov40_0218d478:
	.space 0x4
data_ov40_0218d47c:
	.space 0x4
data_ov40_0218d480:
	.space 0x4
data_ov40_0218d484:
	.space 0x4
data_ov40_0218d488:
	.space 0x4
data_ov40_0218d48c:
	.space 0x4
data_ov40_0218d490:
	.space 0x4
data_ov40_0218d494:
	.space 0x4
data_ov40_0218d498:
	.space 0x4
data_ov40_0218d49c:
	.space 0x4
data_ov40_0218d4a0:
	.space 0x4
data_ov40_0218d4a4:
	.space 0x4
data_ov40_0218d4a8:
	.space 0x4
data_ov40_0218d4ac:
	.space 0x4
data_ov40_0218d4b0:
	.space 0x4
data_ov40_0218d4b4:
	.space 0x4
data_ov40_0218d4b8:
	.space 0x4
data_ov40_0218d4bc:
	.space 0x4
data_ov40_0218d4c0:
	.space 0x4
data_ov40_0218d4c4:
	.space 0x4
data_ov40_0218d4c8:
	.space 0x4
data_ov40_0218d4cc:
	.space 0x4
data_ov40_0218d4d0:
	.space 0x4
data_ov40_0218d4d4:
	.space 0x4
data_ov40_0218d4d8:
	.space 0x4
data_ov40_0218d4dc:
	.space 0x4
data_ov40_0218d4e0:
	.space 0x4
data_ov40_0218d4e4:
	.space 0x4
data_ov40_0218d4e8:
	.space 0x4
data_ov40_0218d4ec:
	.space 0x4
data_ov40_0218d4f0:
	.space 0x4
data_ov40_0218d4f4:
	.space 0x4
data_ov40_0218d4f8:
	.space 0x4
data_ov40_0218d4fc:
	.space 0x4
data_ov40_0218d500:
	.space 0x4
data_ov40_0218d504:
	.space 0x4
data_ov40_0218d508:
	.space 0x4
data_ov40_0218d50c:
	.space 0x4
data_ov40_0218d510:
	.space 0x4
data_ov40_0218d514:
	.space 0x4
data_ov40_0218d518:
	.space 0x4
data_ov40_0218d51c:
	.space 0x4
data_ov40_0218d520:
	.space 0x4
data_ov40_0218d524:
	.space 0x4
data_ov40_0218d528:
	.space 0x4
data_ov40_0218d52c:
	.space 0x4
data_ov40_0218d530:
	.space 0x4
data_ov40_0218d534:
	.space 0x4
data_ov40_0218d538:
	.space 0x4
data_ov40_0218d53c:
	.space 0x4
data_ov40_0218d540:
	.space 0x4
data_ov40_0218d544:
	.space 0x4
data_ov40_0218d548:
	.space 0x4
data_ov40_0218d54c:
	.space 0x4
data_ov40_0218d550:
	.space 0x4
data_ov40_0218d554:
	.space 0x4
data_ov40_0218d558:
	.space 0x4
data_ov40_0218d55c:
	.space 0x4
data_ov40_0218d560:
	.space 0x4
data_ov40_0218d564:
	.space 0x4
data_ov40_0218d568:
	.space 0x4
data_ov40_0218d56c:
	.space 0x4
data_ov40_0218d570:
	.space 0x4
data_ov40_0218d574:
	.space 0x4
data_ov40_0218d578:
	.space 0x4
data_ov40_0218d57c:
	.space 0x4
data_ov40_0218d580:
	.space 0x4
data_ov40_0218d584:
	.space 0x4
data_ov40_0218d588:
	.space 0x4
data_ov40_0218d58c:
	.space 0x4
data_ov40_0218d590:
	.space 0x4
data_ov40_0218d594:
	.space 0x4
data_ov40_0218d598:
	.space 0x4
data_ov40_0218d59c:
	.space 0x4
data_ov40_0218d5a0:
	.space 0x4
data_ov40_0218d5a4:
	.space 0x4
data_ov40_0218d5a8:
	.space 0x4
data_ov40_0218d5ac:
	.space 0x4
data_ov40_0218d5b0:
	.space 0x4
data_ov40_0218d5b4:
	.space 0x4
data_ov40_0218d5b8:
	.space 0x4
data_ov40_0218d5bc:
	.space 0x4
data_ov40_0218d5c0:
	.space 0x4
data_ov40_0218d5c4:
	.space 0x4
data_ov40_0218d5c8:
	.space 0x4
data_ov40_0218d5cc:
	.space 0x4
data_ov40_0218d5d0:
	.space 0x4
data_ov40_0218d5d4:
	.space 0x4
data_ov40_0218d5d8:
	.space 0x4
data_ov40_0218d5dc:
	.space 0x4
data_ov40_0218d5e0:
	.space 0x4
data_ov40_0218d5e4:
	.space 0x4
data_ov40_0218d5e8:
	.space 0x4
data_ov40_0218d5ec:
	.space 0x4
data_ov40_0218d5f0:
	.space 0x4
data_ov40_0218d5f4:
	.space 0x4
data_ov40_0218d5f8:
	.space 0x4
data_ov40_0218d5fc:
	.space 0x4
data_ov40_0218d600:
	.space 0x4
data_ov40_0218d604:
	.space 0x4
data_ov40_0218d608:
	.space 0x4
data_ov40_0218d60c:
	.space 0x4
data_ov40_0218d610:
	.space 0x4
data_ov40_0218d614:
	.space 0x4
data_ov40_0218d618:
	.space 0x4
data_ov40_0218d61c:
	.space 0x4
data_ov40_0218d620:
	.space 0x4
data_ov40_0218d624:
	.space 0x4
data_ov40_0218d628:
	.space 0x4
data_ov40_0218d62c:
	.space 0x4
data_ov40_0218d630:
	.space 0x4
data_ov40_0218d634:
	.space 0x4
data_ov40_0218d638:
	.space 0x4
data_ov40_0218d63c:
	.space 0x4
data_ov40_0218d640:
	.space 0x4
data_ov40_0218d644:
	.space 0x4
data_ov40_0218d648:
	.space 0x4
data_ov40_0218d64c:
	.space 0x4
data_ov40_0218d650:
	.space 0x4
data_ov40_0218d654:
	.space 0x4
data_ov40_0218d658:
	.space 0x4
data_ov40_0218d65c:
	.space 0x4
data_ov40_0218d660:
	.space 0x4
data_ov40_0218d664:
	.space 0x4
data_ov40_0218d668:
	.space 0x4
data_ov40_0218d66c:
	.space 0x4
data_ov40_0218d670:
	.space 0x4
data_ov40_0218d674:
	.space 0x4
data_ov40_0218d678:
	.space 0x4
data_ov40_0218d67c:
	.space 0x4
data_ov40_0218d680:
	.space 0x4
data_ov40_0218d684:
	.space 0x4
data_ov40_0218d688:
	.space 0x4
data_ov40_0218d68c:
	.space 0x4
data_ov40_0218d690:
	.space 0x4
data_ov40_0218d694:
	.space 0x4
data_ov40_0218d698:
	.space 0x4
data_ov40_0218d69c:
	.space 0x4
data_ov40_0218d6a0:
	.space 0x4
data_ov40_0218d6a4:
	.space 0x4
data_ov40_0218d6a8:
	.space 0x4
data_ov40_0218d6ac:
	.space 0x4
data_ov40_0218d6b0:
	.space 0x4
data_ov40_0218d6b4:
	.space 0x4
data_ov40_0218d6b8:
	.space 0x4
data_ov40_0218d6bc:
	.space 0x4
data_ov40_0218d6c0:
	.space 0x4
data_ov40_0218d6c4:
	.space 0x4
data_ov40_0218d6c8:
	.space 0x4
data_ov40_0218d6cc:
	.space 0x4
data_ov40_0218d6d0:
	.space 0x4
data_ov40_0218d6d4:
	.space 0x4
data_ov40_0218d6d8:
	.space 0x4
data_ov40_0218d6dc:
	.space 0x4
data_ov40_0218d6e0:
	.space 0x4
data_ov40_0218d6e4:
	.space 0x4
data_ov40_0218d6e8:
	.space 0x4
data_ov40_0218d6ec:
	.space 0x4
data_ov40_0218d6f0:
	.space 0x4
data_ov40_0218d6f4:
	.space 0x4
data_ov40_0218d6f8:
	.space 0x4
data_ov40_0218d6fc:
	.space 0x4
data_ov40_0218d700:
	.space 0x4
data_ov40_0218d704:
	.space 0x4
data_ov40_0218d708:
	.space 0x4
data_ov40_0218d70c:
	.space 0x4
data_ov40_0218d710:
	.space 0x4
data_ov40_0218d714:
	.space 0x4
data_ov40_0218d718:
	.space 0x4
data_ov40_0218d71c:
	.space 0x4
data_ov40_0218d720:
	.space 0x4
data_ov40_0218d724:
	.space 0x4
data_ov40_0218d728:
	.space 0x4
data_ov40_0218d72c:
	.space 0x4
data_ov40_0218d730:
	.space 0x4
data_ov40_0218d734:
	.space 0x4
data_ov40_0218d738:
	.space 0x4
data_ov40_0218d73c:
	.space 0x4
data_ov40_0218d740:
	.space 0x4
data_ov40_0218d744:
	.space 0x4
data_ov40_0218d748:
	.space 0x4
data_ov40_0218d74c:
	.space 0x4
data_ov40_0218d750:
	.space 0x4
data_ov40_0218d754:
	.space 0x4
data_ov40_0218d758:
	.space 0x4
data_ov40_0218d75c:
	.space 0x4
data_ov40_0218d760:
	.space 0x4
data_ov40_0218d764:
	.space 0x4
data_ov40_0218d768:
	.space 0x4
data_ov40_0218d76c:
	.space 0x4
data_ov40_0218d770:
	.space 0x4
data_ov40_0218d774:
	.space 0x4
data_ov40_0218d778:
	.space 0x4
data_ov40_0218d77c:
	.space 0x4
data_ov40_0218d780:
	.space 0x4
data_ov40_0218d784:
	.space 0x4
data_ov40_0218d788:
	.space 0x4
data_ov40_0218d78c:
	.space 0x4
data_ov40_0218d790:
	.space 0x4
data_ov40_0218d794:
	.space 0x4
data_ov40_0218d798:
	.space 0x4
data_ov40_0218d79c:
	.space 0x4
data_ov40_0218d7a0:
	.space 0x4
data_ov40_0218d7a4:
	.space 0x4
data_ov40_0218d7a8:
	.space 0x4
data_ov40_0218d7ac:
	.space 0x4
data_ov40_0218d7b0:
	.space 0x4
data_ov40_0218d7b4:
	.space 0x4
data_ov40_0218d7b8:
	.space 0x4
data_ov40_0218d7bc:
	.space 0x4
data_ov40_0218d7c0:
	.space 0x4
data_ov40_0218d7c4:
	.space 0x4
data_ov40_0218d7c8:
	.space 0x4
data_ov40_0218d7cc:
	.space 0x4
data_ov40_0218d7d0:
	.space 0x4
data_ov40_0218d7d4:
	.space 0x4
data_ov40_0218d7d8:
	.space 0x4
data_ov40_0218d7dc:
	.space 0x4
data_ov40_0218d7e0:
	.space 0x4
data_ov40_0218d7e4:
	.space 0x4
data_ov40_0218d7e8:
	.space 0x4
data_ov40_0218d7ec:
	.space 0x4
data_ov40_0218d7f0:
	.space 0x4
data_ov40_0218d7f4:
	.space 0x4
data_ov40_0218d7f8:
	.space 0x4
data_ov40_0218d7fc:
	.space 0x4
data_ov40_0218d800:
	.space 0x4
data_ov40_0218d804:
	.space 0x4
data_ov40_0218d808:
	.space 0x4
data_ov40_0218d80c:
	.space 0x4
data_ov40_0218d810:
	.space 0x4
data_ov40_0218d814:
	.space 0x4
data_ov40_0218d818:
	.space 0x4
data_ov40_0218d81c:
	.space 0x4
data_ov40_0218d820:
	.space 0x4
data_ov40_0218d824:
	.space 0x4
data_ov40_0218d828:
	.space 0x4
data_ov40_0218d82c:
	.space 0x4
data_ov40_0218d830:
	.space 0x4
data_ov40_0218d834:
	.space 0x4
data_ov40_0218d838:
	.space 0x4
data_ov40_0218d83c:
	.space 0x4
data_ov40_0218d840:
	.space 0x4
data_ov40_0218d844:
	.space 0x4
data_ov40_0218d848:
	.space 0x4
data_ov40_0218d84c:
	.space 0x4
data_ov40_0218d850:
	.space 0x4
data_ov40_0218d854:
	.space 0x4
data_ov40_0218d858:
	.space 0x4
data_ov40_0218d85c:
	.space 0x4
data_ov40_0218d860:
	.space 0x4
data_ov40_0218d864:
	.space 0x4
data_ov40_0218d868:
	.space 0x4
data_ov40_0218d86c:
	.space 0x4
data_ov40_0218d870:
	.space 0x4
data_ov40_0218d874:
	.space 0x4
data_ov40_0218d878:
	.space 0x4
data_ov40_0218d87c:
	.space 0x4
data_ov40_0218d880:
	.space 0x4
data_ov40_0218d884:
	.space 0x4
data_ov40_0218d888:
	.space 0x4
data_ov40_0218d88c:
	.space 0x4
data_ov40_0218d890:
	.space 0x4
data_ov40_0218d894:
	.space 0x4
data_ov40_0218d898:
	.space 0x4
data_ov40_0218d89c:
	.space 0x4
data_ov40_0218d8a0:
	.space 0x4
data_ov40_0218d8a4:
	.space 0x4
data_ov40_0218d8a8:
	.space 0x4
data_ov40_0218d8ac:
	.space 0x4
data_ov40_0218d8b0:
	.space 0x4
data_ov40_0218d8b4:
	.space 0x4
data_ov40_0218d8b8:
	.space 0x4
data_ov40_0218d8bc:
	.space 0x4
data_ov40_0218d8c0:
	.space 0x4
data_ov40_0218d8c4:
	.space 0x4
data_ov40_0218d8c8:
	.space 0x4
data_ov40_0218d8cc:
	.space 0x4
data_ov40_0218d8d0:
	.space 0x4
data_ov40_0218d8d4:
	.space 0x4
data_ov40_0218d8d8:
	.space 0x4
data_ov40_0218d8dc:
	.space 0x4
data_ov40_0218d8e0:
	.space 0x4
data_ov40_0218d8e4:
	.space 0x4
data_ov40_0218d8e8:
	.space 0x4
data_ov40_0218d8ec:
	.space 0x4
data_ov40_0218d8f0:
	.space 0x4
data_ov40_0218d8f4:
	.space 0x4
data_ov40_0218d8f8:
	.space 0x4
data_ov40_0218d8fc:
	.space 0x4
data_ov40_0218d900:
	.space 0x4
data_ov40_0218d904:
	.space 0x4
data_ov40_0218d908:
	.space 0x4
data_ov40_0218d90c:
	.space 0x4
data_ov40_0218d910:
	.space 0x4
data_ov40_0218d914:
	.space 0x4
data_ov40_0218d918:
	.space 0x4
data_ov40_0218d91c:
	.space 0x4
data_ov40_0218d920:
	.space 0x4
data_ov40_0218d924:
	.space 0x4
data_ov40_0218d928:
	.space 0x4
data_ov40_0218d92c:
	.space 0x4
data_ov40_0218d930:
	.space 0x4
data_ov40_0218d934:
	.space 0x4
data_ov40_0218d938:
	.space 0x4
data_ov40_0218d93c:
	.space 0x4
data_ov40_0218d940:
	.space 0x4
data_ov40_0218d944:
	.space 0x4
data_ov40_0218d948:
	.space 0x4
data_ov40_0218d94c:
	.space 0x4
data_ov40_0218d950:
	.space 0x4
data_ov40_0218d954:
	.space 0x4
data_ov40_0218d958:
	.space 0x4
data_ov40_0218d95c:
	.space 0x4
data_ov40_0218d960:
	.space 0x4
data_ov40_0218d964:
	.space 0x4
data_ov40_0218d968:
	.space 0x4
data_ov40_0218d96c:
	.space 0x4
data_ov40_0218d970:
	.space 0x4
data_ov40_0218d974:
	.space 0x4
data_ov40_0218d978:
	.space 0x4
data_ov40_0218d97c:
	.space 0x4
data_ov40_0218d980:
	.space 0x4
data_ov40_0218d984:
	.space 0x4
data_ov40_0218d988:
	.space 0x4
data_ov40_0218d98c:
	.space 0x4
data_ov40_0218d990:
	.space 0x4
data_ov40_0218d994:
	.space 0x4
data_ov40_0218d998:
	.space 0x4
data_ov40_0218d99c:
	.space 0x4
data_ov40_0218d9a0:
	.space 0x4
data_ov40_0218d9a4:
	.space 0x4
data_ov40_0218d9a8:
	.space 0x4
data_ov40_0218d9ac:
	.space 0x4
data_ov40_0218d9b0:
	.space 0x4
data_ov40_0218d9b4:
	.space 0x4
data_ov40_0218d9b8:
	.space 0x4
data_ov40_0218d9bc:
	.space 0x4
data_ov40_0218d9c0:
	.space 0x4
data_ov40_0218d9c4:
	.space 0x4
data_ov40_0218d9c8:
	.space 0x4
data_ov40_0218d9cc:
	.space 0x4
data_ov40_0218d9d0:
	.space 0x4
data_ov40_0218d9d4:
	.space 0x4
data_ov40_0218d9d8:
	.space 0x4
data_ov40_0218d9dc:
	.space 0x4
data_ov40_0218d9e0:
	.space 0x4
data_ov40_0218d9e4:
	.space 0x4
data_ov40_0218d9e8:
	.space 0x4
data_ov40_0218d9ec:
	.space 0x4
data_ov40_0218d9f0:
	.space 0x4
data_ov40_0218d9f4:
	.space 0x4
data_ov40_0218d9f8:
	.space 0x4
data_ov40_0218d9fc:
	.space 0x4
data_ov40_0218da00:
	.space 0x4
data_ov40_0218da04:
	.space 0x4
data_ov40_0218da08:
	.space 0x4
data_ov40_0218da0c:
	.space 0x4
data_ov40_0218da10:
	.space 0x4
data_ov40_0218da14:
	.space 0x4
data_ov40_0218da18:
	.space 0x4
data_ov40_0218da1c:
	.space 0x4
data_ov40_0218da20:
	.space 0x4
data_ov40_0218da24:
	.space 0x4
data_ov40_0218da28:
	.space 0x4
data_ov40_0218da2c:
	.space 0x4
data_ov40_0218da30:
	.space 0x4
data_ov40_0218da34:
	.space 0x4
data_ov40_0218da38:
	.space 0x4
data_ov40_0218da3c:
	.space 0x4
data_ov40_0218da40:
	.space 0x4
data_ov40_0218da44:
	.space 0x4
data_ov40_0218da48:
	.space 0x4
data_ov40_0218da4c:
	.space 0x4
data_ov40_0218da50:
	.space 0x4
data_ov40_0218da54:
	.space 0x4
data_ov40_0218da58:
	.space 0x4
data_ov40_0218da5c:
	.space 0x4
data_ov40_0218da60:
	.space 0x4
data_ov40_0218da64:
	.space 0x4
data_ov40_0218da68:
	.space 0x4
data_ov40_0218da6c:
	.space 0x4
data_ov40_0218da70:
	.space 0x4
data_ov40_0218da74:
	.space 0x4
data_ov40_0218da78:
	.space 0x4
data_ov40_0218da7c:
	.space 0x4
data_ov40_0218da80:
	.space 0x4
data_ov40_0218da84:
	.space 0x4
data_ov40_0218da88:
	.space 0x4
data_ov40_0218da8c:
	.space 0x4
data_ov40_0218da90:
	.space 0x4
data_ov40_0218da94:
	.space 0x4
data_ov40_0218da98:
	.space 0x4
data_ov40_0218da9c:
	.space 0x4
data_ov40_0218daa0:
	.space 0x4
data_ov40_0218daa4:
	.space 0x4
data_ov40_0218daa8:
	.space 0x4
data_ov40_0218daac:
	.space 0x4
data_ov40_0218dab0:
	.space 0x4
data_ov40_0218dab4:
	.space 0x4
data_ov40_0218dab8:
	.space 0x4
data_ov40_0218dabc:
	.space 0x4
data_ov40_0218dac0:
	.space 0x4
data_ov40_0218dac4:
	.space 0x4
data_ov40_0218dac8:
	.space 0x4
data_ov40_0218dacc:
	.space 0x4
data_ov40_0218dad0:
	.space 0x4
data_ov40_0218dad4:
	.space 0x4
data_ov40_0218dad8:
	.space 0x4
data_ov40_0218dadc:
	.space 0x4
data_ov40_0218dae0:
	.space 0x4
data_ov40_0218dae4:
	.space 0x4
data_ov40_0218dae8:
	.space 0x4
data_ov40_0218daec:
	.space 0x4
data_ov40_0218daf0:
	.space 0x4
data_ov40_0218daf4:
	.space 0x4
data_ov40_0218daf8:
	.space 0x4
data_ov40_0218dafc:
	.space 0x4
data_ov40_0218db00:
	.space 0x4
data_ov40_0218db04:
	.space 0x4
data_ov40_0218db08:
	.space 0x4
data_ov40_0218db0c:
	.space 0x4
data_ov40_0218db10:
	.space 0x4
data_ov40_0218db14:
	.space 0x4
data_ov40_0218db18:
	.space 0x4
data_ov40_0218db1c:
	.space 0x4
data_ov40_0218db20:
	.space 0x4
data_ov40_0218db24:
	.space 0x4
data_ov40_0218db28:
	.space 0x4
data_ov40_0218db2c:
	.space 0x4
data_ov40_0218db30:
	.space 0x4
data_ov40_0218db34:
	.space 0x4
data_ov40_0218db38:
	.space 0x4
data_ov40_0218db3c:
	.space 0x4
data_ov40_0218db40:
	.space 0x4
data_ov40_0218db44:
	.space 0x4
data_ov40_0218db48:
	.space 0x4
data_ov40_0218db4c:
	.space 0x4
data_ov40_0218db50:
	.space 0x4
data_ov40_0218db54:
	.space 0x4
data_ov40_0218db58:
	.space 0x4
data_ov40_0218db5c:
	.space 0x4
data_ov40_0218db60:
	.space 0x4
data_ov40_0218db64:
	.space 0x4
data_ov40_0218db68:
	.space 0x4
data_ov40_0218db6c:
	.space 0x4
data_ov40_0218db70:
	.space 0x4
data_ov40_0218db74:
	.space 0x4
data_ov40_0218db78:
	.space 0x4
data_ov40_0218db7c:
	.space 0x4
data_ov40_0218db80:
	.space 0x4
data_ov40_0218db84:
	.space 0x4
data_ov40_0218db88:
	.space 0x4
data_ov40_0218db8c:
	.space 0x4
data_ov40_0218db90:
	.space 0x4
data_ov40_0218db94:
	.space 0x4
data_ov40_0218db98:
	.space 0x4
data_ov40_0218db9c:
	.space 0x4
data_ov40_0218dba0:
	.space 0x4
data_ov40_0218dba4:
	.space 0x4
data_ov40_0218dba8:
	.space 0x4
data_ov40_0218dbac:
	.space 0x4
data_ov40_0218dbb0:
	.space 0x4
data_ov40_0218dbb4:
	.space 0x4
data_ov40_0218dbb8:
	.space 0x4
data_ov40_0218dbbc:
	.space 0x4
data_ov40_0218dbc0:
	.space 0x4
data_ov40_0218dbc4:
	.space 0x4
data_ov40_0218dbc8:
	.space 0x4
data_ov40_0218dbcc:
	.space 0x4
data_ov40_0218dbd0:
	.space 0x4
data_ov40_0218dbd4:
	.space 0x4
data_ov40_0218dbd8:
	.space 0x4
data_ov40_0218dbdc:
	.space 0x4
data_ov40_0218dbe0:
	.space 0x4
data_ov40_0218dbe4:
	.space 0x4
data_ov40_0218dbe8:
	.space 0x4
data_ov40_0218dbec:
	.space 0x4
data_ov40_0218dbf0:
	.space 0x4
data_ov40_0218dbf4:
	.space 0x4
data_ov40_0218dbf8:
	.space 0x4
data_ov40_0218dbfc:
	.space 0x4
data_ov40_0218dc00:
	.space 0x4
data_ov40_0218dc04:
	.space 0x4
data_ov40_0218dc08:
	.space 0x4
data_ov40_0218dc0c:
	.space 0x4
data_ov40_0218dc10:
	.space 0x4
data_ov40_0218dc14:
	.space 0x4
data_ov40_0218dc18:
	.space 0x4
data_ov40_0218dc1c:
	.space 0x4
data_ov40_0218dc20:
	.space 0x4
data_ov40_0218dc24:
	.space 0x4
data_ov40_0218dc28:
	.space 0x4
data_ov40_0218dc2c:
	.space 0x4
data_ov40_0218dc30:
	.space 0x4
data_ov40_0218dc34:
	.space 0x4
data_ov40_0218dc38:
	.space 0x4
data_ov40_0218dc3c:
	.space 0x4
data_ov40_0218dc40:
	.space 0x4
data_ov40_0218dc44:
	.space 0x4
data_ov40_0218dc48:
	.space 0x4
data_ov40_0218dc4c:
	.space 0x4
data_ov40_0218dc50:
	.space 0x4
data_ov40_0218dc54:
	.space 0x4
data_ov40_0218dc58:
	.space 0x4
data_ov40_0218dc5c:
	.space 0x4
data_ov40_0218dc60:
	.space 0x4
data_ov40_0218dc64:
	.space 0x4
data_ov40_0218dc68:
	.space 0x4
data_ov40_0218dc6c:
	.space 0x4
data_ov40_0218dc70:
	.space 0x4
data_ov40_0218dc74:
	.space 0x4
data_ov40_0218dc78:
	.space 0x4
data_ov40_0218dc7c:
	.space 0x4
data_ov40_0218dc80:
	.space 0x4
data_ov40_0218dc84:
	.space 0x4
data_ov40_0218dc88:
	.space 0x4
data_ov40_0218dc8c:
	.space 0x4
data_ov40_0218dc90:
	.space 0x4
data_ov40_0218dc94:
	.space 0x4
data_ov40_0218dc98:
	.space 0x4
data_ov40_0218dc9c:
	.space 0x4
data_ov40_0218dca0:
	.space 0x4
data_ov40_0218dca4:
	.space 0x4
data_ov40_0218dca8:
	.space 0x4
data_ov40_0218dcac:
	.space 0x4
data_ov40_0218dcb0:
	.space 0x4
data_ov40_0218dcb4:
	.space 0x4
data_ov40_0218dcb8:
	.space 0x4
data_ov40_0218dcbc:
	.space 0x4
data_ov40_0218dcc0:
	.space 0x4
data_ov40_0218dcc4:
	.space 0x4
data_ov40_0218dcc8:
	.space 0x4
data_ov40_0218dccc:
	.space 0x4
data_ov40_0218dcd0:
	.space 0x4
data_ov40_0218dcd4:
	.space 0x4
data_ov40_0218dcd8:
	.space 0x4
data_ov40_0218dcdc:
	.space 0x4
data_ov40_0218dce0:
	.space 0x4
data_ov40_0218dce4:
	.space 0x4
data_ov40_0218dce8:
	.space 0x4
data_ov40_0218dcec:
	.space 0x4
data_ov40_0218dcf0:
	.space 0x4
data_ov40_0218dcf4:
	.space 0x4
data_ov40_0218dcf8:
	.space 0x4
data_ov40_0218dcfc:
	.space 0x4
data_ov40_0218dd00:
	.space 0x4
data_ov40_0218dd04:
	.space 0x4
data_ov40_0218dd08:
	.space 0x4
data_ov40_0218dd0c:
	.space 0x4
data_ov40_0218dd10:
	.space 0x4
data_ov40_0218dd14:
	.space 0x4
data_ov40_0218dd18:
	.space 0x4
data_ov40_0218dd1c:
	.space 0x4
data_ov40_0218dd20:
	.space 0x4
data_ov40_0218dd24:
	.space 0x4
data_ov40_0218dd28:
	.space 0x4
data_ov40_0218dd2c:
	.space 0x4
data_ov40_0218dd30:
	.space 0x4
data_ov40_0218dd34:
	.space 0x4
data_ov40_0218dd38:
	.space 0x4
data_ov40_0218dd3c:
	.space 0x4
data_ov40_0218dd40:
	.space 0x4
data_ov40_0218dd44:
	.space 0x4
data_ov40_0218dd48:
	.space 0x4
data_ov40_0218dd4c:
	.space 0x4
data_ov40_0218dd50:
	.space 0x4
data_ov40_0218dd54:
	.space 0x4
data_ov40_0218dd58:
	.space 0x4
data_ov40_0218dd5c:
	.space 0x4
data_ov40_0218dd60:
	.space 0x4
data_ov40_0218dd64:
	.space 0x4
data_ov40_0218dd68:
	.space 0x4
data_ov40_0218dd6c:
	.space 0x4
data_ov40_0218dd70:
	.space 0x4
data_ov40_0218dd74:
	.space 0x4
data_ov40_0218dd78:
	.space 0x4
data_ov40_0218dd7c:
	.space 0x4
data_ov40_0218dd80:
	.space 0x4
data_ov40_0218dd84:
	.space 0x4
data_ov40_0218dd88:
	.space 0x4
data_ov40_0218dd8c:
	.space 0x4
data_ov40_0218dd90:
	.space 0x4
data_ov40_0218dd94:
	.space 0x4
data_ov40_0218dd98:
	.space 0x4
data_ov40_0218dd9c:
	.space 0x4
data_ov40_0218dda0:
	.space 0x4
data_ov40_0218dda4:
	.space 0x4
data_ov40_0218dda8:
	.space 0x4
data_ov40_0218ddac:
	.space 0x4
data_ov40_0218ddb0:
	.space 0x4
data_ov40_0218ddb4:
	.space 0x4
data_ov40_0218ddb8:
	.space 0x4
data_ov40_0218ddbc:
	.space 0x4
data_ov40_0218ddc0:
	.space 0x4
data_ov40_0218ddc4:
	.space 0x4
data_ov40_0218ddc8:
	.space 0x4
data_ov40_0218ddcc:
	.space 0x4
data_ov40_0218ddd0:
	.space 0x4
data_ov40_0218ddd4:
	.space 0x4
data_ov40_0218ddd8:
	.space 0x4
data_ov40_0218dddc:
	.space 0x4
data_ov40_0218dde0:
	.space 0x4
data_ov40_0218dde4:
	.space 0x4
data_ov40_0218dde8:
	.space 0x4
data_ov40_0218ddec:
	.space 0x4
data_ov40_0218ddf0:
	.space 0x4
data_ov40_0218ddf4:
	.space 0x4
data_ov40_0218ddf8:
	.space 0x4
data_ov40_0218ddfc:
	.space 0x4
data_ov40_0218de00:
	.space 0x4
data_ov40_0218de04:
	.space 0x4
data_ov40_0218de08:
	.space 0x4
data_ov40_0218de0c:
	.space 0x4
data_ov40_0218de10:
	.space 0x4
data_ov40_0218de14:
	.space 0x4
data_ov40_0218de18:
	.space 0x4
data_ov40_0218de1c:
	.space 0x4
data_ov40_0218de20:
	.space 0x4
data_ov40_0218de24:
	.space 0x4
data_ov40_0218de28:
	.space 0x4
data_ov40_0218de2c:
	.space 0x4
data_ov40_0218de30:
	.space 0x4
data_ov40_0218de34:
	.space 0x4
data_ov40_0218de38:
	.space 0x4
data_ov40_0218de3c:
	.space 0x4
data_ov40_0218de40:
	.space 0x4
data_ov40_0218de44:
	.space 0x4
data_ov40_0218de48:
	.space 0x4
data_ov40_0218de4c:
	.space 0x4
data_ov40_0218de50:
	.space 0x4
data_ov40_0218de54:
	.space 0x4
data_ov40_0218de58:
	.space 0x4
data_ov40_0218de5c:
	.space 0x4
data_ov40_0218de60:
	.space 0x4
data_ov40_0218de64:
	.space 0x4
data_ov40_0218de68:
	.space 0x4
data_ov40_0218de6c:
	.space 0x4
data_ov40_0218de70:
	.space 0x4
data_ov40_0218de74:
	.space 0x4
data_ov40_0218de78:
	.space 0x4
data_ov40_0218de7c:
	.space 0x4
data_ov40_0218de80:
	.space 0x4
data_ov40_0218de84:
	.space 0x4
data_ov40_0218de88:
	.space 0x4
data_ov40_0218de8c:
	.space 0x4
data_ov40_0218de90:
	.space 0x4
data_ov40_0218de94:
	.space 0x4
data_ov40_0218de98:
	.space 0x4
data_ov40_0218de9c:
	.space 0x4
data_ov40_0218dea0:
	.space 0x4
data_ov40_0218dea4:
	.space 0x4
data_ov40_0218dea8:
	.space 0x4
data_ov40_0218deac:
	.space 0x4
data_ov40_0218deb0:
	.space 0x4
data_ov40_0218deb4:
	.space 0x4
data_ov40_0218deb8:
	.space 0x4
data_ov40_0218debc:
	.space 0x4
data_ov40_0218dec0:
	.space 0x4
data_ov40_0218dec4:
	.space 0x4
data_ov40_0218dec8:
	.space 0x4
data_ov40_0218decc:
	.space 0x4
data_ov40_0218ded0:
	.space 0x4
data_ov40_0218ded4:
	.space 0x4
data_ov40_0218ded8:
	.space 0x4
data_ov40_0218dedc:
	.space 0x4
data_ov40_0218dee0:
	.space 0x4
data_ov40_0218dee4:
	.space 0x4
data_ov40_0218dee8:
	.space 0x4
data_ov40_0218deec:
	.space 0x4
data_ov40_0218def0:
	.space 0x4
data_ov40_0218def4:
	.space 0x4
data_ov40_0218def8:
	.space 0x4
data_ov40_0218defc:
	.space 0x4
data_ov40_0218df00:
	.space 0x4
data_ov40_0218df04:
	.space 0x4
data_ov40_0218df08:
	.space 0x4
data_ov40_0218df0c:
	.space 0x4
data_ov40_0218df10:
	.space 0x4
data_ov40_0218df14:
	.space 0x4
data_ov40_0218df18:
	.space 0x4
data_ov40_0218df1c:
	.space 0x4
data_ov40_0218df20:
	.space 0x4
data_ov40_0218df24:
	.space 0x4
data_ov40_0218df28:
	.space 0x4
data_ov40_0218df2c:
	.space 0x4
data_ov40_0218df30:
	.space 0x4
data_ov40_0218df34:
	.space 0x4
data_ov40_0218df38:
	.space 0x4
data_ov40_0218df3c:
	.space 0x4
data_ov40_0218df40:
	.space 0x4
data_ov40_0218df44:
	.space 0x4
data_ov40_0218df48:
	.space 0x4
data_ov40_0218df4c:
	.space 0x4
data_ov40_0218df50:
	.space 0x4
data_ov40_0218df54:
	.space 0x4
data_ov40_0218df58:
	.space 0x4
data_ov40_0218df5c:
	.space 0x4
data_ov40_0218df60:
	.space 0x4
data_ov40_0218df64:
	.space 0x4
data_ov40_0218df68:
	.space 0x4
data_ov40_0218df6c:
	.space 0x4
data_ov40_0218df70:
	.space 0x4
data_ov40_0218df74:
	.space 0x4
data_ov40_0218df78:
	.space 0x4
data_ov40_0218df7c:
	.space 0x4
data_ov40_0218df80:
	.space 0x4
data_ov40_0218df84:
	.space 0x4
data_ov40_0218df88:
	.space 0x4
data_ov40_0218df8c:
	.space 0x4
data_ov40_0218df90:
	.space 0x4
data_ov40_0218df94:
	.space 0x4
data_ov40_0218df98:
	.space 0x4
data_ov40_0218df9c:
	.space 0x4
data_ov40_0218dfa0:
	.space 0x4
data_ov40_0218dfa4:
	.space 0x4
data_ov40_0218dfa8:
	.space 0x4
data_ov40_0218dfac:
	.space 0x4
data_ov40_0218dfb0:
	.space 0x4
data_ov40_0218dfb4:
	.space 0x4
data_ov40_0218dfb8:
	.space 0x4
data_ov40_0218dfbc:
	.space 0x4
data_ov40_0218dfc0:
	.space 0x4
data_ov40_0218dfc4:
	.space 0x4
data_ov40_0218dfc8:
	.space 0x4
data_ov40_0218dfcc:
	.space 0x4
data_ov40_0218dfd0:
	.space 0x4
data_ov40_0218dfd4:
	.space 0x4
data_ov40_0218dfd8:
	.space 0x4
data_ov40_0218dfdc:
	.space 0x4
data_ov40_0218dfe0:
	.space 0x4
data_ov40_0218dfe4:
	.space 0x4
data_ov40_0218dfe8:
	.space 0x4
data_ov40_0218dfec:
	.space 0x4
data_ov40_0218dff0:
	.space 0x4
data_ov40_0218dff4:
	.space 0x4
data_ov40_0218dff8:
	.space 0x4
data_ov40_0218dffc:
	.space 0x4
data_ov40_0218e000:
	.space 0x4
data_ov40_0218e004:
	.space 0x4
data_ov40_0218e008:
	.space 0x4
data_ov40_0218e00c:
	.space 0x4
data_ov40_0218e010:
	.space 0x4
data_ov40_0218e014:
	.space 0x4
data_ov40_0218e018:
	.space 0x4
data_ov40_0218e01c:
	.space 0x4
data_ov40_0218e020:
	.space 0x4
data_ov40_0218e024:
	.space 0x4
data_ov40_0218e028:
	.space 0x4
data_ov40_0218e02c:
	.space 0x4
data_ov40_0218e030:
	.space 0x4
data_ov40_0218e034:
	.space 0x4
data_ov40_0218e038:
	.space 0x4
data_ov40_0218e03c:
	.space 0x4
data_ov40_0218e040:
	.space 0x4
data_ov40_0218e044:
	.space 0x4
data_ov40_0218e048:
	.space 0x4
data_ov40_0218e04c:
	.space 0x4
data_ov40_0218e050:
	.space 0x4
data_ov40_0218e054:
	.space 0x4
data_ov40_0218e058:
	.space 0x4
data_ov40_0218e05c:
	.space 0x4
data_ov40_0218e060:
	.space 0x4
data_ov40_0218e064:
	.space 0x4
data_ov40_0218e068:
	.space 0x4
data_ov40_0218e06c:
	.space 0x4
data_ov40_0218e070:
	.space 0x4
data_ov40_0218e074:
	.space 0x4
data_ov40_0218e078:
	.space 0x4
data_ov40_0218e07c:
	.space 0x4
data_ov40_0218e080:
	.space 0x4
data_ov40_0218e084:
	.space 0x4
data_ov40_0218e088:
	.space 0x4
data_ov40_0218e08c:
	.space 0x4
data_ov40_0218e090:
	.space 0x4
data_ov40_0218e094:
	.space 0x4
data_ov40_0218e098:
	.space 0x4
data_ov40_0218e09c:
	.space 0x4
data_ov40_0218e0a0:
	.space 0x4
data_ov40_0218e0a4:
	.space 0x4
data_ov40_0218e0a8:
	.space 0x4
data_ov40_0218e0ac:
	.space 0x4
data_ov40_0218e0b0:
	.space 0x4
data_ov40_0218e0b4:
	.space 0x4
data_ov40_0218e0b8:
	.space 0x4
data_ov40_0218e0bc:
	.space 0x4
data_ov40_0218e0c0:
	.space 0x4
data_ov40_0218e0c4:
	.space 0x4
data_ov40_0218e0c8:
	.space 0x4
data_ov40_0218e0cc:
	.space 0x4
data_ov40_0218e0d0:
	.space 0x4
data_ov40_0218e0d4:
	.space 0x4
data_ov40_0218e0d8:
	.space 0x4
data_ov40_0218e0dc:
	.space 0x4
data_ov40_0218e0e0:
	.space 0x4
data_ov40_0218e0e4:
	.space 0x4
data_ov40_0218e0e8:
	.space 0x4
data_ov40_0218e0ec:
	.space 0x4
data_ov40_0218e0f0:
	.space 0x4
data_ov40_0218e0f4:
	.space 0x4
data_ov40_0218e0f8:
	.space 0x4
data_ov40_0218e0fc:
	.space 0x4
data_ov40_0218e100:
	.space 0x4
data_ov40_0218e104:
	.space 0x4
data_ov40_0218e108:
	.space 0x4
data_ov40_0218e10c:
	.space 0x4
data_ov40_0218e110:
	.space 0x4
data_ov40_0218e114:
	.space 0x4
data_ov40_0218e118:
	.space 0x4
data_ov40_0218e11c:
	.space 0x4
data_ov40_0218e120:
	.space 0x4
data_ov40_0218e124:
	.space 0x4
data_ov40_0218e128:
	.space 0x4
data_ov40_0218e12c:
	.space 0x4
data_ov40_0218e130:
	.space 0x4
data_ov40_0218e134:
	.space 0x4
data_ov40_0218e138:
	.space 0x4
data_ov40_0218e13c:
	.space 0x4
data_ov40_0218e140:
	.space 0x4
data_ov40_0218e144:
	.space 0x4
data_ov40_0218e148:
	.space 0x4
data_ov40_0218e14c:
	.space 0x4
data_ov40_0218e150:
	.space 0x4
data_ov40_0218e154:
	.space 0x4
data_ov40_0218e158:
	.space 0x4
data_ov40_0218e15c:
	.space 0x4
data_ov40_0218e160:
	.space 0x4
data_ov40_0218e164:
	.space 0x4
data_ov40_0218e168:
	.space 0x4
data_ov40_0218e16c:
	.space 0x4
data_ov40_0218e170:
	.space 0x4
data_ov40_0218e174:
	.space 0x4
data_ov40_0218e178:
	.space 0x4
data_ov40_0218e17c:
	.space 0x4
data_ov40_0218e180:
	.space 0x4
data_ov40_0218e184:
	.space 0x4
data_ov40_0218e188:
	.space 0x4
data_ov40_0218e18c:
	.space 0x4
data_ov40_0218e190:
	.space 0x4
data_ov40_0218e194:
	.space 0x4
data_ov40_0218e198:
	.space 0x4
data_ov40_0218e19c:
	.space 0x4
data_ov40_0218e1a0:
	.space 0x4
data_ov40_0218e1a4:
	.space 0x4
data_ov40_0218e1a8:
	.space 0x4
data_ov40_0218e1ac:
	.space 0x4
data_ov40_0218e1b0:
	.space 0x4
data_ov40_0218e1b4:
	.space 0x4
data_ov40_0218e1b8:
	.space 0x4
data_ov40_0218e1bc:
	.space 0x4
data_ov40_0218e1c0:
	.space 0x4
data_ov40_0218e1c4:
	.space 0x4
data_ov40_0218e1c8:
	.space 0x4
data_ov40_0218e1cc:
	.space 0x4
data_ov40_0218e1d0:
	.space 0x4
data_ov40_0218e1d4:
	.space 0x4
data_ov40_0218e1d8:
	.space 0x4
data_ov40_0218e1dc:
	.space 0x4
data_ov40_0218e1e0:
	.space 0x4
data_ov40_0218e1e4:
	.space 0x4
data_ov40_0218e1e8:
	.space 0x4
data_ov40_0218e1ec:
	.space 0x4
data_ov40_0218e1f0:
	.space 0x4
data_ov40_0218e1f4:
	.space 0x4
data_ov40_0218e1f8:
	.space 0x4
data_ov40_0218e1fc:
	.space 0x4
data_ov40_0218e200:
	.space 0x4
data_ov40_0218e204:
	.space 0x4
data_ov40_0218e208:
	.space 0x4
data_ov40_0218e20c:
	.space 0x4
data_ov40_0218e210:
	.space 0x4
data_ov40_0218e214:
	.space 0x4
data_ov40_0218e218:
	.space 0x4
data_ov40_0218e21c:
	.space 0x4
data_ov40_0218e220:
	.space 0x4
data_ov40_0218e224:
	.space 0x4
data_ov40_0218e228:
	.space 0x4
data_ov40_0218e22c:
	.space 0x4
data_ov40_0218e230:
	.space 0x4
data_ov40_0218e234:
	.space 0x4
data_ov40_0218e238:
	.space 0x4
data_ov40_0218e23c:
	.space 0x4
data_ov40_0218e240:
	.space 0x4
data_ov40_0218e244:
	.space 0x4
data_ov40_0218e248:
	.space 0x4
data_ov40_0218e24c:
	.space 0x4
data_ov40_0218e250:
	.space 0x4
data_ov40_0218e254:
	.space 0x4
data_ov40_0218e258:
	.space 0x4
data_ov40_0218e25c:
	.space 0x4
data_ov40_0218e260:
	.space 0x4
data_ov40_0218e264:
	.space 0x4
data_ov40_0218e268:
	.space 0x4
data_ov40_0218e26c:
	.space 0x4
data_ov40_0218e270:
	.space 0x4
data_ov40_0218e274:
	.space 0x4
data_ov40_0218e278:
	.space 0x4
data_ov40_0218e27c:
	.space 0x4
data_ov40_0218e280:
	.space 0x4
data_ov40_0218e284:
	.space 0x4
data_ov40_0218e288:
	.space 0x4
data_ov40_0218e28c:
	.space 0x4
data_ov40_0218e290:
	.space 0x4
data_ov40_0218e294:
	.space 0x4
data_ov40_0218e298:
	.space 0x4
data_ov40_0218e29c:
	.space 0x4
data_ov40_0218e2a0:
	.space 0x4
data_ov40_0218e2a4:
	.space 0x4
data_ov40_0218e2a8:
	.space 0x4
data_ov40_0218e2ac:
	.space 0x4
data_ov40_0218e2b0:
	.space 0x4
data_ov40_0218e2b4:
	.space 0x4
data_ov40_0218e2b8:
	.space 0x4
data_ov40_0218e2bc:
	.space 0x4
data_ov40_0218e2c0:
	.space 0x4
data_ov40_0218e2c4:
	.space 0x4
data_ov40_0218e2c8:
	.space 0x4
data_ov40_0218e2cc:
	.space 0x4
data_ov40_0218e2d0:
	.space 0x4
data_ov40_0218e2d4:
	.space 0x4
data_ov40_0218e2d8:
	.space 0x4
data_ov40_0218e2dc:
	.space 0x4
data_ov40_0218e2e0:
	.space 0x4
data_ov40_0218e2e4:
	.space 0x4
data_ov40_0218e2e8:
	.space 0x4
data_ov40_0218e2ec:
	.space 0x4
data_ov40_0218e2f0:
	.space 0x4
data_ov40_0218e2f4:
	.space 0x4
data_ov40_0218e2f8:
	.space 0x4
data_ov40_0218e2fc:
	.space 0x4
data_ov40_0218e300:
	.space 0x4
data_ov40_0218e304:
	.space 0x4
data_ov40_0218e308:
	.space 0x4
data_ov40_0218e30c:
	.space 0x4
data_ov40_0218e310:
	.space 0x4
data_ov40_0218e314:
	.space 0x4
data_ov40_0218e318:
	.space 0x4
data_ov40_0218e31c:
	.space 0x4
data_ov40_0218e320:
	.space 0x4
data_ov40_0218e324:
	.space 0x4
data_ov40_0218e328:
	.space 0x4
data_ov40_0218e32c:
	.space 0x4
data_ov40_0218e330:
	.space 0x4
data_ov40_0218e334:
	.space 0x4
data_ov40_0218e338:
	.space 0x4
data_ov40_0218e33c:
	.space 0x4
data_ov40_0218e340:
	.space 0x4
data_ov40_0218e344:
	.space 0x4
data_ov40_0218e348:
	.space 0x4
data_ov40_0218e34c:
	.space 0x4
data_ov40_0218e350:
	.space 0x4
data_ov40_0218e354:
	.space 0x4
data_ov40_0218e358:
	.space 0x4
data_ov40_0218e35c:
	.space 0x4
data_ov40_0218e360:
	.space 0x4
data_ov40_0218e364:
	.space 0x4
data_ov40_0218e368:
	.space 0x4
data_ov40_0218e36c:
	.space 0x4
data_ov40_0218e370:
	.space 0x4
data_ov40_0218e374:
	.space 0x4
data_ov40_0218e378:
	.space 0x4
data_ov40_0218e37c:
	.space 0x4
data_ov40_0218e380:
	.space 0x4
data_ov40_0218e384:
	.space 0x4
data_ov40_0218e388:
	.space 0x4
data_ov40_0218e38c:
	.space 0x4
data_ov40_0218e390:
	.space 0x4
data_ov40_0218e394:
	.space 0x4
data_ov40_0218e398:
	.space 0x4
data_ov40_0218e39c:
	.space 0x4
data_ov40_0218e3a0:
	.space 0x4
data_ov40_0218e3a4:
	.space 0x4
data_ov40_0218e3a8:
	.space 0x4
data_ov40_0218e3ac:
	.space 0x4
data_ov40_0218e3b0:
	.space 0x4
data_ov40_0218e3b4:
	.space 0x4
data_ov40_0218e3b8:
	.space 0x4
data_ov40_0218e3bc:
	.space 0x4
data_ov40_0218e3c0:
	.space 0x4
data_ov40_0218e3c4:
	.space 0x4
data_ov40_0218e3c8:
	.space 0x4
data_ov40_0218e3cc:
	.space 0x4
data_ov40_0218e3d0:
	.space 0x4
data_ov40_0218e3d4:
	.space 0x4
data_ov40_0218e3d8:
	.space 0x4
data_ov40_0218e3dc:
	.space 0x4
data_ov40_0218e3e0:
	.space 0x4
data_ov40_0218e3e4:
	.space 0x4
data_ov40_0218e3e8:
	.space 0x4
data_ov40_0218e3ec:
	.space 0x4
data_ov40_0218e3f0:
	.space 0x4
data_ov40_0218e3f4:
	.space 0x4
data_ov40_0218e3f8:
	.space 0x4
data_ov40_0218e3fc:
	.space 0x4
data_ov40_0218e400:
	.space 0x4
data_ov40_0218e404:
	.space 0x4
data_ov40_0218e408:
	.space 0x4
data_ov40_0218e40c:
	.space 0x4
data_ov40_0218e410:
	.space 0x4
data_ov40_0218e414:
	.space 0x4
data_ov40_0218e418:
	.space 0x4
data_ov40_0218e41c:
	.space 0x4
data_ov40_0218e420:
	.space 0x4
data_ov40_0218e424:
	.space 0x4
data_ov40_0218e428:
	.space 0x4
data_ov40_0218e42c:
	.space 0x4
data_ov40_0218e430:
	.space 0x4
data_ov40_0218e434:
	.space 0x4
data_ov40_0218e438:
	.space 0x4
data_ov40_0218e43c:
	.space 0x4
data_ov40_0218e440:
	.space 0x4
data_ov40_0218e444:
	.space 0x4
data_ov40_0218e448:
	.space 0x4
data_ov40_0218e44c:
	.space 0x4
data_ov40_0218e450:
	.space 0x4
data_ov40_0218e454:
	.space 0x4
data_ov40_0218e458:
	.space 0x4
data_ov40_0218e45c:
	.space 0x4
data_ov40_0218e460:
	.space 0x4
data_ov40_0218e464:
	.space 0x4
data_ov40_0218e468:
	.space 0x4
data_ov40_0218e46c:
	.space 0x4
data_ov40_0218e470:
	.space 0x4
data_ov40_0218e474:
	.space 0x4
data_ov40_0218e478:
	.space 0x4
data_ov40_0218e47c:
	.space 0x4
data_ov40_0218e480:
	.space 0x4
data_ov40_0218e484:
	.space 0x4
data_ov40_0218e488:
	.space 0x4
data_ov40_0218e48c:
	.space 0x4
data_ov40_0218e490:
	.space 0x4
data_ov40_0218e494:
	.space 0x4
data_ov40_0218e498:
	.space 0x4
data_ov40_0218e49c:
	.space 0x4
data_ov40_0218e4a0:
	.space 0x4
data_ov40_0218e4a4:
	.space 0x4
data_ov40_0218e4a8:
	.space 0x4
data_ov40_0218e4ac:
	.space 0x4
data_ov40_0218e4b0:
	.space 0x4
data_ov40_0218e4b4:
	.space 0x4
data_ov40_0218e4b8:
	.space 0x4
data_ov40_0218e4bc:
	.space 0x4
data_ov40_0218e4c0:
	.space 0x4
data_ov40_0218e4c4:
	.space 0x4
data_ov40_0218e4c8:
	.space 0x4
data_ov40_0218e4cc:
	.space 0x4
data_ov40_0218e4d0:
	.space 0x4
data_ov40_0218e4d4:
	.space 0x4
data_ov40_0218e4d8:
	.space 0x4
data_ov40_0218e4dc:
	.space 0x4
data_ov40_0218e4e0:
	.space 0x4
data_ov40_0218e4e4:
	.space 0x4
data_ov40_0218e4e8:
	.space 0x4
data_ov40_0218e4ec:
	.space 0x4
data_ov40_0218e4f0:
	.space 0x4
data_ov40_0218e4f4:
	.space 0x4
data_ov40_0218e4f8:
	.space 0x4
data_ov40_0218e4fc:
	.space 0x4
data_ov40_0218e500:
	.space 0x4
data_ov40_0218e504:
	.space 0x4
data_ov40_0218e508:
	.space 0x4
data_ov40_0218e50c:
	.space 0x4
data_ov40_0218e510:
	.space 0x4
data_ov40_0218e514:
	.space 0x4
data_ov40_0218e518:
	.space 0x4
data_ov40_0218e51c:
	.space 0x4
data_ov40_0218e520:
	.space 0x4
data_ov40_0218e524:
	.space 0x4
data_ov40_0218e528:
	.space 0x4
data_ov40_0218e52c:
	.space 0x4
data_ov40_0218e530:
	.space 0x4
data_ov40_0218e534:
	.space 0x4
data_ov40_0218e538:
	.space 0x4
data_ov40_0218e53c:
	.space 0x4
data_ov40_0218e540:
	.space 0x4
data_ov40_0218e544:
	.space 0x4
data_ov40_0218e548:
	.space 0x4
data_ov40_0218e54c:
	.space 0x4
data_ov40_0218e550:
	.space 0x4
data_ov40_0218e554:
	.space 0x4
data_ov40_0218e558:
	.space 0x4
data_ov40_0218e55c:
	.space 0x4
data_ov40_0218e560:
	.space 0x4
data_ov40_0218e564:
	.space 0x4
data_ov40_0218e568:
	.space 0x4
data_ov40_0218e56c:
	.space 0x4
data_ov40_0218e570:
	.space 0x4
data_ov40_0218e574:
	.space 0x4
data_ov40_0218e578:
	.space 0x4
data_ov40_0218e57c:
	.space 0x4
data_ov40_0218e580:
	.space 0x4
data_ov40_0218e584:
	.space 0x4
data_ov40_0218e588:
	.space 0x4
data_ov40_0218e58c:
	.space 0x4
data_ov40_0218e590:
	.space 0x4
data_ov40_0218e594:
	.space 0x4
data_ov40_0218e598:
	.space 0x4
data_ov40_0218e59c:
	.space 0x4
data_ov40_0218e5a0:
	.space 0x4
data_ov40_0218e5a4:
	.space 0x4
data_ov40_0218e5a8:
	.space 0x4
data_ov40_0218e5ac:
	.space 0x4
data_ov40_0218e5b0:
	.space 0x4
data_ov40_0218e5b4:
	.space 0x4
data_ov40_0218e5b8:
	.space 0x4
data_ov40_0218e5bc:
	.space 0x4
data_ov40_0218e5c0:
	.space 0x4
data_ov40_0218e5c4:
	.space 0x4
data_ov40_0218e5c8:
	.space 0x4
data_ov40_0218e5cc:
	.space 0x4
data_ov40_0218e5d0:
	.space 0x4
data_ov40_0218e5d4:
	.space 0x4
data_ov40_0218e5d8:
	.space 0x4
data_ov40_0218e5dc:
	.space 0x4
data_ov40_0218e5e0:
	.space 0x4
data_ov40_0218e5e4:
	.space 0x4
data_ov40_0218e5e8:
	.space 0x4
data_ov40_0218e5ec:
	.space 0x4
data_ov40_0218e5f0:
	.space 0x4
data_ov40_0218e5f4:
	.space 0x4
data_ov40_0218e5f8:
	.space 0x4
data_ov40_0218e5fc:
	.space 0x4
data_ov40_0218e600:
	.space 0x4
data_ov40_0218e604:
	.space 0x4
data_ov40_0218e608:
	.space 0x4
data_ov40_0218e60c:
	.space 0x4
data_ov40_0218e610:
	.space 0x4
data_ov40_0218e614:
	.space 0x4
data_ov40_0218e618:
	.space 0x4
data_ov40_0218e61c:
	.space 0x4
data_ov40_0218e620:
	.space 0x4
data_ov40_0218e624:
	.space 0x4
data_ov40_0218e628:
	.space 0x4
data_ov40_0218e62c:
	.space 0x4
data_ov40_0218e630:
	.space 0x4
data_ov40_0218e634:
	.space 0x4
data_ov40_0218e638:
	.space 0x4
data_ov40_0218e63c:
	.space 0x4
data_ov40_0218e640:
	.space 0x4
data_ov40_0218e644:
	.space 0x4
data_ov40_0218e648:
	.space 0x4
data_ov40_0218e64c:
	.space 0x4
data_ov40_0218e650:
	.space 0x4
data_ov40_0218e654:
	.space 0x4
data_ov40_0218e658:
	.space 0x4
data_ov40_0218e65c:
	.space 0x4
data_ov40_0218e660:
	.space 0x4
data_ov40_0218e664:
	.space 0x4
data_ov40_0218e668:
	.space 0x4
data_ov40_0218e66c:
	.space 0x4
data_ov40_0218e670:
	.space 0x4
data_ov40_0218e674:
	.space 0x4
data_ov40_0218e678:
	.space 0x4
data_ov40_0218e67c:
	.space 0x4
data_ov40_0218e680:
	.space 0x4
data_ov40_0218e684:
	.space 0x4
data_ov40_0218e688:
	.space 0x4
data_ov40_0218e68c:
	.space 0x4
data_ov40_0218e690:
	.space 0x4
data_ov40_0218e694:
	.space 0x4
data_ov40_0218e698:
	.space 0x4
data_ov40_0218e69c:
	.space 0x4
data_ov40_0218e6a0:
	.space 0x4
data_ov40_0218e6a4:
	.space 0x4
data_ov40_0218e6a8:
	.space 0x4
data_ov40_0218e6ac:
	.space 0x4
data_ov40_0218e6b0:
	.space 0x4
data_ov40_0218e6b4:
	.space 0x4
data_ov40_0218e6b8:
	.space 0x4
data_ov40_0218e6bc:
	.space 0x4
data_ov40_0218e6c0:
	.space 0x4
data_ov40_0218e6c4:
	.space 0x4
data_ov40_0218e6c8:
	.space 0x4
data_ov40_0218e6cc:
	.space 0x4
data_ov40_0218e6d0:
	.space 0x4
data_ov40_0218e6d4:
	.space 0x4
data_ov40_0218e6d8:
	.space 0x4
data_ov40_0218e6dc:
	.space 0x4
data_ov40_0218e6e0:
	.space 0x4
data_ov40_0218e6e4:
	.space 0x4
data_ov40_0218e6e8:
	.space 0x4
data_ov40_0218e6ec:
	.space 0x4
data_ov40_0218e6f0:
	.space 0x4
data_ov40_0218e6f4:
	.space 0x4
data_ov40_0218e6f8:
	.space 0x4
data_ov40_0218e6fc:
	.space 0x4
data_ov40_0218e700:
	.space 0x4
data_ov40_0218e704:
	.space 0x4
data_ov40_0218e708:
	.space 0x4
data_ov40_0218e70c:
	.space 0x4
data_ov40_0218e710:
	.space 0x4
data_ov40_0218e714:
	.space 0x4
data_ov40_0218e718:
	.space 0x4
data_ov40_0218e71c:
	.space 0x4
data_ov40_0218e720:
	.space 0x4
data_ov40_0218e724:
	.space 0x4
data_ov40_0218e728:
	.space 0x4
data_ov40_0218e72c:
	.space 0x4
data_ov40_0218e730:
	.space 0x4
data_ov40_0218e734:
	.space 0x4
data_ov40_0218e738:
	.space 0x4
data_ov40_0218e73c:
	.space 0x4
data_ov40_0218e740:
	.space 0x4
data_ov40_0218e744:
	.space 0x4
data_ov40_0218e748:
	.space 0x4
data_ov40_0218e74c:
	.space 0x4
data_ov40_0218e750:
	.space 0x4
data_ov40_0218e754:
	.space 0x4
data_ov40_0218e758:
	.space 0x4
data_ov40_0218e75c:
	.space 0x4
data_ov40_0218e760:
	.space 0x4
data_ov40_0218e764:
	.space 0x4
data_ov40_0218e768:
	.space 0x4
data_ov40_0218e76c:
	.space 0x4
data_ov40_0218e770:
	.space 0x4
data_ov40_0218e774:
	.space 0x4
data_ov40_0218e778:
	.space 0x4
data_ov40_0218e77c:
	.space 0x4
data_ov40_0218e780:
	.space 0x4
data_ov40_0218e784:
	.space 0x4
data_ov40_0218e788:
	.space 0x4
data_ov40_0218e78c:
	.space 0x4
data_ov40_0218e790:
	.space 0x4
data_ov40_0218e794:
	.space 0x4
data_ov40_0218e798:
	.space 0x4
data_ov40_0218e79c:
	.space 0x4
data_ov40_0218e7a0:
	.space 0x4
data_ov40_0218e7a4:
	.space 0x4
data_ov40_0218e7a8:
	.space 0x4
data_ov40_0218e7ac:
	.space 0x4
data_ov40_0218e7b0:
	.space 0x4
data_ov40_0218e7b4:
	.space 0x4
data_ov40_0218e7b8:
	.space 0x4
data_ov40_0218e7bc:
	.space 0x4
data_ov40_0218e7c0:
	.space 0x4
data_ov40_0218e7c4:
	.space 0x4
data_ov40_0218e7c8:
	.space 0x4
data_ov40_0218e7cc:
	.space 0x4
data_ov40_0218e7d0:
	.space 0x4
data_ov40_0218e7d4:
	.space 0x4
data_ov40_0218e7d8:
	.space 0x4
data_ov40_0218e7dc:
	.space 0x4
data_ov40_0218e7e0:
	.space 0x4
data_ov40_0218e7e4:
	.space 0x4
data_ov40_0218e7e8:
	.space 0x4
data_ov40_0218e7ec:
	.space 0x4
data_ov40_0218e7f0:
	.space 0x4
data_ov40_0218e7f4:
	.space 0x4
data_ov40_0218e7f8:
	.space 0x4
data_ov40_0218e7fc:
	.space 0x4
data_ov40_0218e800:
	.space 0x4
data_ov40_0218e804:
	.space 0x4
data_ov40_0218e808:
	.space 0x4
data_ov40_0218e80c:
	.space 0x4
data_ov40_0218e810:
	.space 0x4
data_ov40_0218e814:
	.space 0x4
data_ov40_0218e818:
	.space 0x4
data_ov40_0218e81c:
	.space 0x4
data_ov40_0218e820:
	.space 0x4
data_ov40_0218e824:
	.space 0x4
data_ov40_0218e828:
	.space 0x4
data_ov40_0218e82c:
	.space 0x4
data_ov40_0218e830:
	.space 0x4
data_ov40_0218e834:
	.space 0x4
data_ov40_0218e838:
	.space 0x4
data_ov40_0218e83c:
	.space 0x4
data_ov40_0218e840:
	.space 0x4
data_ov40_0218e844:
	.space 0x4
data_ov40_0218e848:
	.space 0x4
data_ov40_0218e84c:
	.space 0x4
data_ov40_0218e850:
	.space 0x4
data_ov40_0218e854:
	.space 0x4
data_ov40_0218e858:
	.space 0x4
data_ov40_0218e85c:
	.space 0x4
data_ov40_0218e860:
	.space 0x4
data_ov40_0218e864:
	.space 0x4
data_ov40_0218e868:
	.space 0x4
data_ov40_0218e86c:
	.space 0x4
data_ov40_0218e870:
	.space 0x4
data_ov40_0218e874:
	.space 0x4
data_ov40_0218e878:
	.space 0x4
data_ov40_0218e87c:
	.space 0x4
data_ov40_0218e880:
	.space 0x4
data_ov40_0218e884:
	.space 0x4
data_ov40_0218e888:
	.space 0x4
data_ov40_0218e88c:
	.space 0x4
data_ov40_0218e890:
	.space 0x4
data_ov40_0218e894:
	.space 0x4
data_ov40_0218e898:
	.space 0x4
data_ov40_0218e89c:
	.space 0x4
data_ov40_0218e8a0:
	.space 0x4
data_ov40_0218e8a4:
	.space 0x4
data_ov40_0218e8a8:
	.space 0x4
data_ov40_0218e8ac:
	.space 0x4
data_ov40_0218e8b0:
	.space 0x4
data_ov40_0218e8b4:
	.space 0x4
data_ov40_0218e8b8:
	.space 0x4
data_ov40_0218e8bc:
	.space 0x4
data_ov40_0218e8c0:
	.space 0x4
data_ov40_0218e8c4:
	.space 0x4
data_ov40_0218e8c8:
	.space 0x4
data_ov40_0218e8cc:
	.space 0x4
data_ov40_0218e8d0:
	.space 0x4
data_ov40_0218e8d4:
	.space 0x4
data_ov40_0218e8d8:
	.space 0x4
data_ov40_0218e8dc:
	.space 0x4
data_ov40_0218e8e0:
	.space 0x4
data_ov40_0218e8e4:
	.space 0x4
data_ov40_0218e8e8:
	.space 0x4
data_ov40_0218e8ec:
	.space 0x4
data_ov40_0218e8f0:
	.space 0x4
data_ov40_0218e8f4:
	.space 0x4
data_ov40_0218e8f8:
	.space 0x4
data_ov40_0218e8fc:
	.space 0x4
data_ov40_0218e900:
	.space 0x4
data_ov40_0218e904:
	.space 0x4
data_ov40_0218e908:
	.space 0x4
data_ov40_0218e90c:
	.space 0x4
data_ov40_0218e910:
	.space 0x4
data_ov40_0218e914:
	.space 0x4
data_ov40_0218e918:
	.space 0x4
data_ov40_0218e91c:
	.space 0x4
data_ov40_0218e920:
	.space 0x4
data_ov40_0218e924:
	.space 0x4
data_ov40_0218e928:
	.space 0x4
data_ov40_0218e92c:
	.space 0x4
data_ov40_0218e930:
	.space 0x4
data_ov40_0218e934:
	.space 0x4
data_ov40_0218e938:
	.space 0x4
data_ov40_0218e93c:
	.space 0x4
data_ov40_0218e940:
	.space 0x4
data_ov40_0218e944:
	.space 0x4
data_ov40_0218e948:
	.space 0x4
data_ov40_0218e94c:
	.space 0x4
data_ov40_0218e950:
	.space 0x4
data_ov40_0218e954:
	.space 0x4
data_ov40_0218e958:
	.space 0x4
data_ov40_0218e95c:
	.space 0x4
data_ov40_0218e960:
	.space 0x4
data_ov40_0218e964:
	.space 0x4
data_ov40_0218e968:
	.space 0x4
data_ov40_0218e96c:
	.space 0x4
data_ov40_0218e970:
	.space 0x4
data_ov40_0218e974:
	.space 0x4
data_ov40_0218e978:
	.space 0x4
data_ov40_0218e97c:
	.space 0x4
data_ov40_0218e980:
	.space 0x4
data_ov40_0218e984:
	.space 0x4
data_ov40_0218e988:
	.space 0x4
data_ov40_0218e98c:
	.space 0x4
data_ov40_0218e990:
	.space 0x4
data_ov40_0218e994:
	.space 0x4
data_ov40_0218e998:
	.space 0x4
data_ov40_0218e99c:
	.space 0x4
data_ov40_0218e9a0:
	.space 0x4
data_ov40_0218e9a4:
	.space 0x4
data_ov40_0218e9a8:
	.space 0x4
data_ov40_0218e9ac:
	.space 0x4
data_ov40_0218e9b0:
	.space 0x4
data_ov40_0218e9b4:
	.space 0x4
data_ov40_0218e9b8:
	.space 0x4
data_ov40_0218e9bc:
	.space 0x4
data_ov40_0218e9c0:
	.space 0x4
data_ov40_0218e9c4:
	.space 0x4
data_ov40_0218e9c8:
	.space 0x4
data_ov40_0218e9cc:
	.space 0x4
data_ov40_0218e9d0:
	.space 0x4
data_ov40_0218e9d4:
	.space 0x4
data_ov40_0218e9d8:
	.space 0x4
data_ov40_0218e9dc:
	.space 0x4
data_ov40_0218e9e0:
	.space 0x4
data_ov40_0218e9e4:
	.space 0x4
data_ov40_0218e9e8:
	.space 0x4
data_ov40_0218e9ec:
	.space 0x4
data_ov40_0218e9f0:
	.space 0x4
data_ov40_0218e9f4:
	.space 0x4
data_ov40_0218e9f8:
	.space 0x4
data_ov40_0218e9fc:
	.space 0x4
data_ov40_0218ea00:
	.space 0x4
data_ov40_0218ea04:
	.space 0x4
data_ov40_0218ea08:
	.space 0x4
data_ov40_0218ea0c:
	.space 0x4
data_ov40_0218ea10:
	.space 0x4
data_ov40_0218ea14:
	.space 0x4
data_ov40_0218ea18:
	.space 0x4
data_ov40_0218ea1c:
	.space 0x4
data_ov40_0218ea20:
	.space 0x4
data_ov40_0218ea24:
	.space 0x4
data_ov40_0218ea28:
	.space 0x4
data_ov40_0218ea2c:
	.space 0x4
data_ov40_0218ea30:
	.space 0x4
data_ov40_0218ea34:
	.space 0x4
data_ov40_0218ea38:
	.space 0x4
data_ov40_0218ea3c:
	.space 0x4
data_ov40_0218ea40:
	.space 0x4
data_ov40_0218ea44:
	.space 0x4
data_ov40_0218ea48:
	.space 0x4
data_ov40_0218ea4c:
	.space 0x4
data_ov40_0218ea50:
	.space 0x4
data_ov40_0218ea54:
	.space 0x4
data_ov40_0218ea58:
	.space 0x4
data_ov40_0218ea5c:
	.space 0x4
data_ov40_0218ea60:
	.space 0x4
data_ov40_0218ea64:
	.space 0x4
data_ov40_0218ea68:
	.space 0x4
data_ov40_0218ea6c:
	.space 0x4
data_ov40_0218ea70:
	.space 0x4
data_ov40_0218ea74:
	.space 0x4
data_ov40_0218ea78:
	.space 0x4
data_ov40_0218ea7c:
	.space 0x4
data_ov40_0218ea80:
	.space 0x4
data_ov40_0218ea84:
	.space 0x4
data_ov40_0218ea88:
	.space 0x4
data_ov40_0218ea8c:
	.space 0x4
data_ov40_0218ea90:
	.space 0x4
data_ov40_0218ea94:
	.space 0x4
data_ov40_0218ea98:
	.space 0x4
data_ov40_0218ea9c:
	.space 0x4
data_ov40_0218eaa0:
	.space 0x4
data_ov40_0218eaa4:
	.space 0x4
data_ov40_0218eaa8:
	.space 0x4
data_ov40_0218eaac:
	.space 0x4
data_ov40_0218eab0:
	.space 0x4
data_ov40_0218eab4:
	.space 0x4
data_ov40_0218eab8:
	.space 0x4
data_ov40_0218eabc:
	.space 0x4
data_ov40_0218eac0:
	.space 0x4
data_ov40_0218eac4:
	.space 0x4
data_ov40_0218eac8:
	.space 0x4
data_ov40_0218eacc:
	.space 0x4
data_ov40_0218ead0:
	.space 0x4
data_ov40_0218ead4:
	.space 0x4
data_ov40_0218ead8:
	.space 0x4
data_ov40_0218eadc:
	.space 0x4
data_ov40_0218eae0:
	.space 0x4
data_ov40_0218eae4:
	.space 0x4
data_ov40_0218eae8:
	.space 0x4
data_ov40_0218eaec:
	.space 0x4
data_ov40_0218eaf0:
	.space 0x4
data_ov40_0218eaf4:
	.space 0x4
data_ov40_0218eaf8:
	.space 0x4
data_ov40_0218eafc:
	.space 0x4
data_ov40_0218eb00:
	.space 0x4
data_ov40_0218eb04:
	.space 0x4
data_ov40_0218eb08:
	.space 0x4
data_ov40_0218eb0c:
	.space 0x4
data_ov40_0218eb10:
	.space 0x4
data_ov40_0218eb14:
	.space 0x4
data_ov40_0218eb18:
	.space 0x4
data_ov40_0218eb1c:
	.space 0x4
data_ov40_0218eb20:
	.space 0x4
data_ov40_0218eb24:
	.space 0x4
data_ov40_0218eb28:
	.space 0x4
data_ov40_0218eb2c:
	.space 0x4
data_ov40_0218eb30:
	.space 0x4
data_ov40_0218eb34:
	.space 0x4
data_ov40_0218eb38:
	.space 0x4
data_ov40_0218eb3c:
	.space 0x4
data_ov40_0218eb40:
	.space 0x4
data_ov40_0218eb44:
	.space 0x4
data_ov40_0218eb48:
	.space 0x4
data_ov40_0218eb4c:
	.space 0x4
data_ov40_0218eb50:
	.space 0x4
data_ov40_0218eb54:
	.space 0x4
data_ov40_0218eb58:
	.space 0x4
data_ov40_0218eb5c:
	.space 0x4
data_ov40_0218eb60:
	.space 0x4
data_ov40_0218eb64:
	.space 0x4
data_ov40_0218eb68:
	.space 0x4
data_ov40_0218eb6c:
	.space 0x4
data_ov40_0218eb70:
	.space 0x4
data_ov40_0218eb74:
	.space 0x4
data_ov40_0218eb78:
	.space 0x4
data_ov40_0218eb7c:
	.space 0x4
data_ov40_0218eb80:
	.space 0x4
data_ov40_0218eb84:
	.space 0x4
data_ov40_0218eb88:
	.space 0x4
data_ov40_0218eb8c:
	.space 0x4
data_ov40_0218eb90:
	.space 0x4
data_ov40_0218eb94:
	.space 0x4
data_ov40_0218eb98:
	.space 0x4
data_ov40_0218eb9c:
	.space 0x4
data_ov40_0218eba0:
	.space 0x4
data_ov40_0218eba4:
	.space 0x4
data_ov40_0218eba8:
	.space 0x4
data_ov40_0218ebac:
	.space 0x4
data_ov40_0218ebb0:
	.space 0x4
data_ov40_0218ebb4:
	.space 0x4
data_ov40_0218ebb8:
	.space 0x4
data_ov40_0218ebbc:
	.space 0x4
data_ov40_0218ebc0:
	.space 0x4
data_ov40_0218ebc4:
	.space 0x4
data_ov40_0218ebc8:
	.space 0x4
data_ov40_0218ebcc:
	.space 0x4
data_ov40_0218ebd0:
	.space 0x4
data_ov40_0218ebd4:
	.space 0x4
data_ov40_0218ebd8:
	.space 0x4
data_ov40_0218ebdc:
	.space 0x4
data_ov40_0218ebe0:
	.space 0x4
data_ov40_0218ebe4:
	.space 0x4
data_ov40_0218ebe8:
	.space 0x4
data_ov40_0218ebec:
	.space 0x4
data_ov40_0218ebf0:
	.space 0x4
data_ov40_0218ebf4:
	.space 0x4
data_ov40_0218ebf8:
	.space 0x4
data_ov40_0218ebfc:
	.space 0x4
data_ov40_0218ec00:
	.space 0x4
data_ov40_0218ec04:
	.space 0x4
data_ov40_0218ec08:
	.space 0x4
data_ov40_0218ec0c:
	.space 0x4
data_ov40_0218ec10:
	.space 0x4
data_ov40_0218ec14:
	.space 0x4
data_ov40_0218ec18:
	.space 0x4
data_ov40_0218ec1c:
	.space 0x4
data_ov40_0218ec20:
	.space 0x4
data_ov40_0218ec24:
	.space 0x4
data_ov40_0218ec28:
	.space 0x4
data_ov40_0218ec2c:
	.space 0x4
data_ov40_0218ec30:
	.space 0x4
data_ov40_0218ec34:
	.space 0x4
data_ov40_0218ec38:
	.space 0x4
data_ov40_0218ec3c:
	.space 0x4
data_ov40_0218ec40:
	.space 0x4
data_ov40_0218ec44:
	.space 0x4
data_ov40_0218ec48:
	.space 0x4
data_ov40_0218ec4c:
	.space 0x4
data_ov40_0218ec50:
	.space 0x4
data_ov40_0218ec54:
	.space 0x4
data_ov40_0218ec58:
	.space 0x4
data_ov40_0218ec5c:
	.space 0x4
data_ov40_0218ec60:
	.space 0x4
data_ov40_0218ec64:
	.space 0x4
data_ov40_0218ec68:
	.space 0x4
data_ov40_0218ec6c:
	.space 0x4
data_ov40_0218ec70:
	.space 0x4
data_ov40_0218ec74:
	.space 0x4
data_ov40_0218ec78:
	.space 0x4
data_ov40_0218ec7c:
	.space 0x4
data_ov40_0218ec80:
	.space 0x4
data_ov40_0218ec84:
	.space 0x4
data_ov40_0218ec88:
	.space 0x4
data_ov40_0218ec8c:
	.space 0x4
data_ov40_0218ec90:
	.space 0x4
data_ov40_0218ec94:
	.space 0x4
data_ov40_0218ec98:
	.space 0x4
data_ov40_0218ec9c:
	.space 0x4
data_ov40_0218eca0:
	.space 0x4
data_ov40_0218eca4:
	.space 0x4
data_ov40_0218eca8:
	.space 0x4
data_ov40_0218ecac:
	.space 0x4
data_ov40_0218ecb0:
	.space 0x4
data_ov40_0218ecb4:
	.space 0x4
data_ov40_0218ecb8:
	.space 0x4
data_ov40_0218ecbc:
	.space 0x4
data_ov40_0218ecc0:
	.space 0x4
data_ov40_0218ecc4:
	.space 0x4
data_ov40_0218ecc8:
	.space 0x4
data_ov40_0218eccc:
	.space 0x4
data_ov40_0218ecd0:
	.space 0x4
data_ov40_0218ecd4:
	.space 0x4
data_ov40_0218ecd8:
	.space 0x4
data_ov40_0218ecdc:
	.space 0x4
data_ov40_0218ece0:
	.space 0x4
data_ov40_0218ece4:
	.space 0x4
data_ov40_0218ece8:
	.space 0x4
data_ov40_0218ecec:
	.space 0x4
data_ov40_0218ecf0:
	.space 0x4
data_ov40_0218ecf4:
	.space 0x4
data_ov40_0218ecf8:
	.space 0x4
data_ov40_0218ecfc:
	.space 0x4
data_ov40_0218ed00:
	.space 0x4
data_ov40_0218ed04:
	.space 0x4
data_ov40_0218ed08:
	.space 0x4
data_ov40_0218ed0c:
	.space 0x4
data_ov40_0218ed10:
	.space 0x4
data_ov40_0218ed14:
	.space 0x4
data_ov40_0218ed18:
	.space 0x4
data_ov40_0218ed1c:
	.space 0x4
data_ov40_0218ed20:
	.space 0x4
data_ov40_0218ed24:
	.space 0x4
data_ov40_0218ed28:
	.space 0x4
data_ov40_0218ed2c:
	.space 0x4
data_ov40_0218ed30:
	.space 0x4
data_ov40_0218ed34:
	.space 0x4
data_ov40_0218ed38:
	.space 0x4
data_ov40_0218ed3c:
	.space 0x4
data_ov40_0218ed40:
	.space 0x4
data_ov40_0218ed44:
	.space 0x4
data_ov40_0218ed48:
	.space 0x4
data_ov40_0218ed4c:
	.space 0x4
data_ov40_0218ed50:
	.space 0x4
data_ov40_0218ed54:
	.space 0x4
data_ov40_0218ed58:
	.space 0x4
data_ov40_0218ed5c:
	.space 0x4
data_ov40_0218ed60:
	.space 0x4
data_ov40_0218ed64:
	.space 0x4
data_ov40_0218ed68:
	.space 0x4
data_ov40_0218ed6c:
	.space 0x4
data_ov40_0218ed70:
	.space 0x4
data_ov40_0218ed74:
	.space 0x4
data_ov40_0218ed78:
	.space 0x4
data_ov40_0218ed7c:
	.space 0x4
data_ov40_0218ed80:
	.space 0x4
data_ov40_0218ed84:
	.space 0x4
data_ov40_0218ed88:
	.space 0x4
data_ov40_0218ed8c:
	.space 0x4
data_ov40_0218ed90:
	.space 0x4
data_ov40_0218ed94:
	.space 0x4
data_ov40_0218ed98:
	.space 0x4
data_ov40_0218ed9c:
	.space 0x4
data_ov40_0218eda0:
	.space 0x4
data_ov40_0218eda4:
	.space 0x4
data_ov40_0218eda8:
	.space 0x4
data_ov40_0218edac:
	.space 0x4
data_ov40_0218edb0:
	.space 0x4
data_ov40_0218edb4:
	.space 0x4
data_ov40_0218edb8:
	.space 0x4
data_ov40_0218edbc:
	.space 0x4
data_ov40_0218edc0:
	.space 0x4
data_ov40_0218edc4:
	.space 0x4
data_ov40_0218edc8:
	.space 0x4
data_ov40_0218edcc:
	.space 0x4
data_ov40_0218edd0:
	.space 0x4
data_ov40_0218edd4:
	.space 0x4
data_ov40_0218edd8:
	.space 0x4
data_ov40_0218eddc:
	.space 0x4
data_ov40_0218ede0:
	.space 0x4
data_ov40_0218ede4:
	.space 0x4
data_ov40_0218ede8:
	.space 0x4
data_ov40_0218edec:
	.space 0x4
data_ov40_0218edf0:
	.space 0x4
data_ov40_0218edf4:
	.space 0x4
data_ov40_0218edf8:
	.space 0x4
data_ov40_0218edfc:
	.space 0x4
data_ov40_0218ee00:
	.space 0x4
data_ov40_0218ee04:
	.space 0x4
data_ov40_0218ee08:
	.space 0x4
data_ov40_0218ee0c:
	.space 0x4
data_ov40_0218ee10:
	.space 0x4
data_ov40_0218ee14:
	.space 0x4
data_ov40_0218ee18:
	.space 0x4
data_ov40_0218ee1c:
	.space 0x4
data_ov40_0218ee20:
	.space 0x4
data_ov40_0218ee24:
	.space 0x4
data_ov40_0218ee28:
	.space 0x4
data_ov40_0218ee2c:
	.space 0x4
data_ov40_0218ee30:
	.space 0x4
data_ov40_0218ee34:
	.space 0x4
data_ov40_0218ee38:
	.space 0x4
data_ov40_0218ee3c:
	.space 0x4
data_ov40_0218ee40:
	.space 0x4
data_ov40_0218ee44:
	.space 0x4
data_ov40_0218ee48:
	.space 0x4
data_ov40_0218ee4c:
	.space 0x4
data_ov40_0218ee50:
	.space 0x4
data_ov40_0218ee54:
	.space 0x4
data_ov40_0218ee58:
	.space 0x4
data_ov40_0218ee5c:
	.space 0x4
data_ov40_0218ee60:
	.space 0x4
data_ov40_0218ee64:
	.space 0x4
data_ov40_0218ee68:
	.space 0x4
data_ov40_0218ee6c:
	.space 0x4
data_ov40_0218ee70:
	.space 0x4
data_ov40_0218ee74:
	.space 0x4
data_ov40_0218ee78:
	.space 0x4
data_ov40_0218ee7c:
	.space 0x4
data_ov40_0218ee80:
	.space 0x4
data_ov40_0218ee84:
	.space 0x4
data_ov40_0218ee88:
	.space 0x4
data_ov40_0218ee8c:
	.space 0x4
data_ov40_0218ee90:
	.space 0x4
data_ov40_0218ee94:
	.space 0x4
data_ov40_0218ee98:
	.space 0x4
data_ov40_0218ee9c:
	.space 0x4
data_ov40_0218eea0:
	.space 0x4
data_ov40_0218eea4:
	.space 0x4
data_ov40_0218eea8:
	.space 0x4
data_ov40_0218eeac:
	.space 0x4
data_ov40_0218eeb0:
	.space 0x4
data_ov40_0218eeb4:
	.space 0x4
data_ov40_0218eeb8:
	.space 0x4
data_ov40_0218eebc:
	.space 0x4
data_ov40_0218eec0:
	.space 0x4
data_ov40_0218eec4:
	.space 0x4
data_ov40_0218eec8:
	.space 0x4
data_ov40_0218eecc:
	.space 0x4
data_ov40_0218eed0:
	.space 0x4
data_ov40_0218eed4:
	.space 0x4
data_ov40_0218eed8:
	.space 0x4
data_ov40_0218eedc:
	.space 0x4
data_ov40_0218eee0:
	.space 0x4
data_ov40_0218eee4:
	.space 0x4
data_ov40_0218eee8:
	.space 0x4
data_ov40_0218eeec:
	.space 0x4
data_ov40_0218eef0:
	.space 0x4
data_ov40_0218eef4:
	.space 0x4
data_ov40_0218eef8:
	.space 0x4
data_ov40_0218eefc:
	.space 0x4
data_ov40_0218ef00:
	.space 0x4
data_ov40_0218ef04:
	.space 0x4
data_ov40_0218ef08:
	.space 0x4
data_ov40_0218ef0c:
	.space 0x4
data_ov40_0218ef10:
	.space 0x4
data_ov40_0218ef14:
	.space 0x4
data_ov40_0218ef18:
	.space 0x4
data_ov40_0218ef1c:
	.space 0x4
data_ov40_0218ef20:
	.space 0x4
data_ov40_0218ef24:
	.space 0x4
data_ov40_0218ef28:
	.space 0x4
data_ov40_0218ef2c:
	.space 0x4
data_ov40_0218ef30:
	.space 0x4
data_ov40_0218ef34:
	.space 0x4
data_ov40_0218ef38:
	.space 0x4
data_ov40_0218ef3c:
	.space 0x4
data_ov40_0218ef40:
	.space 0x4
data_ov40_0218ef44:
	.space 0x4
data_ov40_0218ef48:
	.space 0x4
data_ov40_0218ef4c:
	.space 0x4
data_ov40_0218ef50:
	.space 0x4
data_ov40_0218ef54:
	.space 0x4
data_ov40_0218ef58:
	.space 0x4
data_ov40_0218ef5c:
	.space 0x4
data_ov40_0218ef60:
	.space 0x4
data_ov40_0218ef64:
	.space 0x4
data_ov40_0218ef68:
	.space 0x4
data_ov40_0218ef6c:
	.space 0x4
data_ov40_0218ef70:
	.space 0x4
data_ov40_0218ef74:
	.space 0x4
data_ov40_0218ef78:
	.space 0x4
data_ov40_0218ef7c:
	.space 0x4
data_ov40_0218ef80:
	.space 0x4
data_ov40_0218ef84:
	.space 0x4
data_ov40_0218ef88:
	.space 0x4
data_ov40_0218ef8c:
	.space 0x4
data_ov40_0218ef90:
	.space 0x4
data_ov40_0218ef94:
	.space 0x4
data_ov40_0218ef98:
	.space 0x4
data_ov40_0218ef9c:
	.space 0x4
data_ov40_0218efa0:
	.space 0x4
data_ov40_0218efa4:
	.space 0x4
data_ov40_0218efa8:
	.space 0x4
data_ov40_0218efac:
	.space 0x4
data_ov40_0218efb0:
	.space 0x4
data_ov40_0218efb4:
	.space 0x4
data_ov40_0218efb8:
	.space 0x4
data_ov40_0218efbc:
	.space 0x4
data_ov40_0218efc0:
	.space 0x4
data_ov40_0218efc4:
	.space 0x4
data_ov40_0218efc8:
	.space 0x4
data_ov40_0218efcc:
	.space 0x4
data_ov40_0218efd0:
	.space 0x4
data_ov40_0218efd4:
	.space 0x4
data_ov40_0218efd8:
	.space 0x4
data_ov40_0218efdc:
	.space 0x4
data_ov40_0218efe0:
	.space 0x4
data_ov40_0218efe4:
	.space 0x4
data_ov40_0218efe8:
	.space 0x4
data_ov40_0218efec:
	.space 0x4
data_ov40_0218eff0:
	.space 0x4
data_ov40_0218eff4:
	.space 0x4
data_ov40_0218eff8:
	.space 0x4
data_ov40_0218effc:
	.space 0x4
data_ov40_0218f000:
	.space 0x4
data_ov40_0218f004:
	.space 0x4
data_ov40_0218f008:
	.space 0x4
data_ov40_0218f00c:
	.space 0x4
data_ov40_0218f010:
	.space 0x4
data_ov40_0218f014:
	.space 0x4
data_ov40_0218f018:
	.space 0x4
data_ov40_0218f01c:
	.space 0x4
data_ov40_0218f020:
	.space 0x4
data_ov40_0218f024:
	.space 0x4
data_ov40_0218f028:
	.space 0x4
data_ov40_0218f02c:
	.space 0x4
data_ov40_0218f030:
	.space 0x4
data_ov40_0218f034:
	.space 0x4
data_ov40_0218f038:
	.space 0x4
data_ov40_0218f03c:
	.space 0x4
data_ov40_0218f040:
	.space 0x4
data_ov40_0218f044:
	.space 0x4
data_ov40_0218f048:
	.space 0x4
data_ov40_0218f04c:
	.space 0x4
data_ov40_0218f050:
	.space 0x4
data_ov40_0218f054:
	.space 0x4
data_ov40_0218f058:
	.space 0x4
data_ov40_0218f05c:
	.space 0x4
data_ov40_0218f060:
	.space 0x4
data_ov40_0218f064:
	.space 0x4
data_ov40_0218f068:
	.space 0x4
data_ov40_0218f06c:
	.space 0x4
data_ov40_0218f070:
	.space 0x4
data_ov40_0218f074:
	.space 0x4
data_ov40_0218f078:
	.space 0x4
data_ov40_0218f07c:
	.space 0x4
data_ov40_0218f080:
	.space 0x4
data_ov40_0218f084:
	.space 0x4
data_ov40_0218f088:
	.space 0x4
data_ov40_0218f08c:
	.space 0x4
data_ov40_0218f090:
	.space 0x4
data_ov40_0218f094:
	.space 0x4
data_ov40_0218f098:
	.space 0x4
data_ov40_0218f09c:
	.space 0x4
data_ov40_0218f0a0:
	.space 0x4
data_ov40_0218f0a4:
	.space 0x4
data_ov40_0218f0a8:
	.space 0x4
data_ov40_0218f0ac:
	.space 0x4
data_ov40_0218f0b0:
	.space 0x4
data_ov40_0218f0b4:
	.space 0x4
data_ov40_0218f0b8:
	.space 0x4
data_ov40_0218f0bc:
	.space 0x4
data_ov40_0218f0c0:
	.space 0x4
data_ov40_0218f0c4:
	.space 0x4
data_ov40_0218f0c8:
	.space 0x4
data_ov40_0218f0cc:
	.space 0x4
data_ov40_0218f0d0:
	.space 0x4
data_ov40_0218f0d4:
	.space 0x4
data_ov40_0218f0d8:
	.space 0x4
data_ov40_0218f0dc:
	.space 0x4
data_ov40_0218f0e0:
	.space 0x4
data_ov40_0218f0e4:
	.space 0x4
data_ov40_0218f0e8:
	.space 0x4
data_ov40_0218f0ec:
	.space 0x4
data_ov40_0218f0f0:
	.space 0x4
data_ov40_0218f0f4:
	.space 0x4
data_ov40_0218f0f8:
	.space 0x4
data_ov40_0218f0fc:
	.space 0x4
data_ov40_0218f100:
	.space 0x4
data_ov40_0218f104:
	.space 0x4
data_ov40_0218f108:
	.space 0x4
data_ov40_0218f10c:
	.space 0x4
data_ov40_0218f110:
	.space 0x4
data_ov40_0218f114:
	.space 0x4
data_ov40_0218f118:
	.space 0x4
data_ov40_0218f11c:
	.space 0x4
data_ov40_0218f120:
	.space 0x4
data_ov40_0218f124:
	.space 0x4
data_ov40_0218f128:
	.space 0x4
data_ov40_0218f12c:
	.space 0x4
data_ov40_0218f130:
	.space 0x4
data_ov40_0218f134:
	.space 0x4
data_ov40_0218f138:
	.space 0x4
data_ov40_0218f13c:
	.space 0x4
data_ov40_0218f140:
	.space 0x4
data_ov40_0218f144:
	.space 0x4
data_ov40_0218f148:
	.space 0x4
data_ov40_0218f14c:
	.space 0x4
data_ov40_0218f150:
	.space 0x4
data_ov40_0218f154:
	.space 0x4
data_ov40_0218f158:
	.space 0x4
data_ov40_0218f15c:
	.space 0x4
data_ov40_0218f160:
	.space 0x4
data_ov40_0218f164:
	.space 0x4
data_ov40_0218f168:
	.space 0x4
data_ov40_0218f16c:
	.space 0x4
data_ov40_0218f170:
	.space 0x4
data_ov40_0218f174:
	.space 0x4
data_ov40_0218f178:
	.space 0x4
data_ov40_0218f17c:
	.space 0x4
data_ov40_0218f180:
	.space 0x4
data_ov40_0218f184:
	.space 0x4
data_ov40_0218f188:
	.space 0x4
data_ov40_0218f18c:
	.space 0x4
data_ov40_0218f190:
	.space 0x4
data_ov40_0218f194:
	.space 0x4
data_ov40_0218f198:
	.space 0x4
data_ov40_0218f19c:
	.space 0x4
data_ov40_0218f1a0:
	.space 0x4
data_ov40_0218f1a4:
	.space 0x4
data_ov40_0218f1a8:
	.space 0x4
data_ov40_0218f1ac:
	.space 0x4
data_ov40_0218f1b0:
	.space 0x4
data_ov40_0218f1b4:
	.space 0x4
data_ov40_0218f1b8:
	.space 0x4
data_ov40_0218f1bc:
	.space 0x4
data_ov40_0218f1c0:
	.space 0x4
data_ov40_0218f1c4:
	.space 0x4
data_ov40_0218f1c8:
	.space 0x4
data_ov40_0218f1cc:
	.space 0x4
data_ov40_0218f1d0:
	.space 0x4
data_ov40_0218f1d4:
	.space 0x4
data_ov40_0218f1d8:
	.space 0x4
data_ov40_0218f1dc:
	.space 0x4
data_ov40_0218f1e0:
	.space 0x4
data_ov40_0218f1e4:
	.space 0x4
data_ov40_0218f1e8:
	.space 0x4
data_ov40_0218f1ec:
	.space 0x4
data_ov40_0218f1f0:
	.space 0x4
data_ov40_0218f1f4:
	.space 0x4
data_ov40_0218f1f8:
	.space 0x4
data_ov40_0218f1fc:
	.space 0x4
data_ov40_0218f200:
	.space 0x4
data_ov40_0218f204:
	.space 0x4
data_ov40_0218f208:
	.space 0x4
data_ov40_0218f20c:
	.space 0x4
data_ov40_0218f210:
	.space 0x4
data_ov40_0218f214:
	.space 0x4
data_ov40_0218f218:
	.space 0x4
data_ov40_0218f21c:
	.space 0x4
data_ov40_0218f220:
	.space 0x4
data_ov40_0218f224:
	.space 0x4
data_ov40_0218f228:
	.space 0x4
data_ov40_0218f22c:
	.space 0x4
data_ov40_0218f230:
	.space 0x4
data_ov40_0218f234:
	.space 0x4
data_ov40_0218f238:
	.space 0x4
data_ov40_0218f23c:
	.space 0x4
data_ov40_0218f240:
	.space 0x4
data_ov40_0218f244:
	.space 0x4
data_ov40_0218f248:
	.space 0x4
data_ov40_0218f24c:
	.space 0x4
data_ov40_0218f250:
	.space 0x4
data_ov40_0218f254:
	.space 0x4
data_ov40_0218f258:
	.space 0x4
data_ov40_0218f25c:
	.space 0x4
data_ov40_0218f260:
	.space 0x4
data_ov40_0218f264:
	.space 0x4
data_ov40_0218f268:
	.space 0x4
data_ov40_0218f26c:
	.space 0x4
data_ov40_0218f270:
	.space 0x4
data_ov40_0218f274:
	.space 0x4
data_ov40_0218f278:
	.space 0x4
data_ov40_0218f27c:
	.space 0x4
data_ov40_0218f280:
	.space 0x4
data_ov40_0218f284:
	.space 0x4
data_ov40_0218f288:
	.space 0x4
data_ov40_0218f28c:
	.space 0x4
data_ov40_0218f290:
	.space 0x4
data_ov40_0218f294:
	.space 0x4
data_ov40_0218f298:
	.space 0x4
data_ov40_0218f29c:
	.space 0x4
data_ov40_0218f2a0:
	.space 0x4
data_ov40_0218f2a4:
	.space 0x4
data_ov40_0218f2a8:
	.space 0x4
data_ov40_0218f2ac:
	.space 0x4
data_ov40_0218f2b0:
	.space 0x4
data_ov40_0218f2b4:
	.space 0x4
data_ov40_0218f2b8:
	.space 0x4
data_ov40_0218f2bc:
	.space 0x4
data_ov40_0218f2c0:
	.space 0x4
data_ov40_0218f2c4:
	.space 0x4
data_ov40_0218f2c8:
	.space 0x4
data_ov40_0218f2cc:
	.space 0x4
data_ov40_0218f2d0:
	.space 0x4
data_ov40_0218f2d4:
	.space 0x4
data_ov40_0218f2d8:
	.space 0x4
data_ov40_0218f2dc:
	.space 0x4
data_ov40_0218f2e0:
	.space 0x4
data_ov40_0218f2e4:
	.space 0x4
data_ov40_0218f2e8:
	.space 0x4
data_ov40_0218f2ec:
	.space 0x4
data_ov40_0218f2f0:
	.space 0x4
data_ov40_0218f2f4:
	.space 0x4
data_ov40_0218f2f8:
	.space 0x4
data_ov40_0218f2fc:
	.space 0x4
data_ov40_0218f300:
	.space 0x4
data_ov40_0218f304:
	.space 0x4
data_ov40_0218f308:
	.space 0x4
data_ov40_0218f30c:
	.space 0x4
data_ov40_0218f310:
	.space 0x4
data_ov40_0218f314:
	.space 0x4
data_ov40_0218f318:
	.space 0x4
data_ov40_0218f31c:
	.space 0x4
data_ov40_0218f320:
	.space 0x4
data_ov40_0218f324:
	.space 0x4
data_ov40_0218f328:
	.space 0x4
data_ov40_0218f32c:
	.space 0x4
data_ov40_0218f330:
	.space 0x4
data_ov40_0218f334:
	.space 0x4
data_ov40_0218f338:
	.space 0x4
data_ov40_0218f33c:
	.space 0x4
data_ov40_0218f340:
	.space 0x4
data_ov40_0218f344:
	.space 0x4
data_ov40_0218f348:
	.space 0x4
data_ov40_0218f34c:
	.space 0x4
data_ov40_0218f350:
	.space 0x4
data_ov40_0218f354:
	.space 0x4
data_ov40_0218f358:
	.space 0x4
data_ov40_0218f35c:
	.space 0x4
data_ov40_0218f360:
	.space 0x4
data_ov40_0218f364:
	.space 0x4
data_ov40_0218f368:
	.space 0x4
data_ov40_0218f36c:
	.space 0x4
data_ov40_0218f370:
	.space 0x4
data_ov40_0218f374:
	.space 0x4
data_ov40_0218f378:
	.space 0x4
data_ov40_0218f37c:
	.space 0x4
data_ov40_0218f380:
	.space 0x4
data_ov40_0218f384:
	.space 0x4
data_ov40_0218f388:
	.space 0x4
data_ov40_0218f38c:
	.space 0x4
data_ov40_0218f390:
	.space 0x4
data_ov40_0218f394:
	.space 0x4
data_ov40_0218f398:
	.space 0x4
data_ov40_0218f39c:
	.space 0x4
data_ov40_0218f3a0:
	.space 0x4
data_ov40_0218f3a4:
	.space 0x4
data_ov40_0218f3a8:
	.space 0x4
data_ov40_0218f3ac:
	.space 0x4
data_ov40_0218f3b0:
	.space 0x4
data_ov40_0218f3b4:
	.space 0x4
data_ov40_0218f3b8:
	.space 0x4
data_ov40_0218f3bc:
	.space 0x4
data_ov40_0218f3c0:
	.space 0x4
data_ov40_0218f3c4:
	.space 0x4
data_ov40_0218f3c8:
	.space 0x4
data_ov40_0218f3cc:
	.space 0x4
data_ov40_0218f3d0:
	.space 0x4
data_ov40_0218f3d4:
	.space 0x4
data_ov40_0218f3d8:
	.space 0x4
data_ov40_0218f3dc:
	.space 0x4
data_ov40_0218f3e0:
	.space 0x4
data_ov40_0218f3e4:
	.space 0x4
data_ov40_0218f3e8:
	.space 0x4
data_ov40_0218f3ec:
	.space 0x4
data_ov40_0218f3f0:
	.space 0x4
data_ov40_0218f3f4:
	.space 0x4
data_ov40_0218f3f8:
	.space 0x4
data_ov40_0218f3fc:
	.space 0x4
data_ov40_0218f400:
	.space 0x4
data_ov40_0218f404:
	.space 0x4
data_ov40_0218f408:
	.space 0x4
data_ov40_0218f40c:
	.space 0x4
data_ov40_0218f410:
	.space 0x4
data_ov40_0218f414:
	.space 0x4
data_ov40_0218f418:
	.space 0x4
data_ov40_0218f41c:
	.space 0x4
data_ov40_0218f420:
	.space 0x4
data_ov40_0218f424:
	.space 0x4
data_ov40_0218f428:
	.space 0x4
data_ov40_0218f42c:
	.space 0x4
data_ov40_0218f430:
	.space 0x4
data_ov40_0218f434:
	.space 0x4
data_ov40_0218f438:
	.space 0x4
data_ov40_0218f43c:
	.space 0x4
data_ov40_0218f440:
	.space 0x4
data_ov40_0218f444:
	.space 0x4
data_ov40_0218f448:
	.space 0x4
data_ov40_0218f44c:
	.space 0x4
data_ov40_0218f450:
	.space 0x4
data_ov40_0218f454:
	.space 0x4
data_ov40_0218f458:
	.space 0x4
data_ov40_0218f45c:
	.space 0x4
data_ov40_0218f460:
	.space 0x4
data_ov40_0218f464:
	.space 0x4
data_ov40_0218f468:
	.space 0x4
data_ov40_0218f46c:
	.space 0x4
data_ov40_0218f470:
	.space 0x4
data_ov40_0218f474:
	.space 0x4
data_ov40_0218f478:
	.space 0x4
data_ov40_0218f47c:
	.space 0x4
data_ov40_0218f480:
	.space 0x4
data_ov40_0218f484:
	.space 0x4
data_ov40_0218f488:
	.space 0x4
data_ov40_0218f48c:
	.space 0x4
data_ov40_0218f490:
	.space 0x4
data_ov40_0218f494:
	.space 0x4
data_ov40_0218f498:
	.space 0x4
data_ov40_0218f49c:
	.space 0x4
data_ov40_0218f4a0:
	.space 0x4
data_ov40_0218f4a4:
	.space 0x4
data_ov40_0218f4a8:
	.space 0x4
data_ov40_0218f4ac:
	.space 0x4
data_ov40_0218f4b0:
	.space 0x4
data_ov40_0218f4b4:
	.space 0x4
data_ov40_0218f4b8:
	.space 0x4
data_ov40_0218f4bc:
	.space 0x4
data_ov40_0218f4c0:
	.space 0x4
data_ov40_0218f4c4:
	.space 0x4
data_ov40_0218f4c8:
	.space 0x4
data_ov40_0218f4cc:
	.space 0x4
data_ov40_0218f4d0:
	.space 0x4
data_ov40_0218f4d4:
	.space 0x4
data_ov40_0218f4d8:
	.space 0x4
data_ov40_0218f4dc:
	.space 0x4
data_ov40_0218f4e0:
	.space 0x4
data_ov40_0218f4e4:
	.space 0x4
data_ov40_0218f4e8:
	.space 0x4
data_ov40_0218f4ec:
	.space 0x4
data_ov40_0218f4f0:
	.space 0x4
data_ov40_0218f4f4:
	.space 0x4
data_ov40_0218f4f8:
	.space 0x4
data_ov40_0218f4fc:
	.space 0x4
data_ov40_0218f500:
	.space 0x4
data_ov40_0218f504:
	.space 0x4
data_ov40_0218f508:
	.space 0x4
data_ov40_0218f50c:
	.space 0x4
data_ov40_0218f510:
	.space 0x4
data_ov40_0218f514:
	.space 0x4
data_ov40_0218f518:
	.space 0x4
data_ov40_0218f51c:
	.space 0x4
data_ov40_0218f520:
	.space 0x4
data_ov40_0218f524:
	.space 0x4
data_ov40_0218f528:
	.space 0x4
data_ov40_0218f52c:
	.space 0x4
data_ov40_0218f530:
	.space 0x4
data_ov40_0218f534:
	.space 0x4
data_ov40_0218f538:
	.space 0x4
data_ov40_0218f53c:
	.space 0x4
data_ov40_0218f540:
	.space 0x4
data_ov40_0218f544:
	.space 0x4
data_ov40_0218f548:
	.space 0x4
data_ov40_0218f54c:
	.space 0x4
data_ov40_0218f550:
	.space 0x4
data_ov40_0218f554:
	.space 0x4
data_ov40_0218f558:
	.space 0x4
data_ov40_0218f55c:
	.space 0x4
data_ov40_0218f560:
	.space 0x4
data_ov40_0218f564:
	.space 0x4
data_ov40_0218f568:
	.space 0x4
data_ov40_0218f56c:
	.space 0x4
data_ov40_0218f570:
	.space 0x4
data_ov40_0218f574:
	.space 0x4
data_ov40_0218f578:
	.space 0x4
data_ov40_0218f57c:
	.space 0x4
data_ov40_0218f580:
	.space 0x4
data_ov40_0218f584:
	.space 0x4
data_ov40_0218f588:
	.space 0x4
data_ov40_0218f58c:
	.space 0x4
data_ov40_0218f590:
	.space 0x4
data_ov40_0218f594:
	.space 0x4
data_ov40_0218f598:
	.space 0x4
data_ov40_0218f59c:
	.space 0x4
data_ov40_0218f5a0:
	.space 0x4
data_ov40_0218f5a4:
	.space 0x4
data_ov40_0218f5a8:
	.space 0x4
data_ov40_0218f5ac:
	.space 0x4
data_ov40_0218f5b0:
	.space 0x4
data_ov40_0218f5b4:
	.space 0x4
data_ov40_0218f5b8:
	.space 0x4
data_ov40_0218f5bc:
	.space 0x4
data_ov40_0218f5c0:
	.space 0x4
data_ov40_0218f5c4:
	.space 0x4
data_ov40_0218f5c8:
	.space 0x4
data_ov40_0218f5cc:
	.space 0x4
data_ov40_0218f5d0:
	.space 0x4
data_ov40_0218f5d4:
	.space 0x4
data_ov40_0218f5d8:
	.space 0x4
data_ov40_0218f5dc:
	.space 0x4
data_ov40_0218f5e0:
	.space 0x4
data_ov40_0218f5e4:
	.space 0x4
data_ov40_0218f5e8:
	.space 0x4
data_ov40_0218f5ec:
	.space 0x4
data_ov40_0218f5f0:
	.space 0x4
data_ov40_0218f5f4:
	.space 0x4
data_ov40_0218f5f8:
	.space 0x4
data_ov40_0218f5fc:
	.space 0x4
data_ov40_0218f600:
	.space 0x4
data_ov40_0218f604:
	.space 0x4
data_ov40_0218f608:
	.space 0x4
data_ov40_0218f60c:
	.space 0x4
data_ov40_0218f610:
	.space 0x4
data_ov40_0218f614:
	.space 0x4
data_ov40_0218f618:
	.space 0x4
data_ov40_0218f61c:
	.space 0x4
data_ov40_0218f620:
	.space 0x4
data_ov40_0218f624:
	.space 0x4
data_ov40_0218f628:
	.space 0x4
data_ov40_0218f62c:
	.space 0x4
data_ov40_0218f630:
	.space 0x4
data_ov40_0218f634:
	.space 0x4
data_ov40_0218f638:
	.space 0x4
data_ov40_0218f63c:
	.space 0x4
data_ov40_0218f640:
	.space 0x4
data_ov40_0218f644:
	.space 0x4
data_ov40_0218f648:
	.space 0x4
data_ov40_0218f64c:
	.space 0x4
data_ov40_0218f650:
	.space 0x4
data_ov40_0218f654:
	.space 0x4
data_ov40_0218f658:
	.space 0x4
data_ov40_0218f65c:
	.space 0x4
data_ov40_0218f660:
	.space 0x4
data_ov40_0218f664:
	.space 0x4
data_ov40_0218f668:
	.space 0x4
data_ov40_0218f66c:
	.space 0x4
data_ov40_0218f670:
	.space 0x4
data_ov40_0218f674:
	.space 0x4
data_ov40_0218f678:
	.space 0x4
data_ov40_0218f67c:
	.space 0x4
data_ov40_0218f680:
	.space 0x4
data_ov40_0218f684:
	.space 0x4
data_ov40_0218f688:
	.space 0x4
data_ov40_0218f68c:
	.space 0x4
data_ov40_0218f690:
	.space 0x4
data_ov40_0218f694:
	.space 0x4
data_ov40_0218f698:
	.space 0x4
data_ov40_0218f69c:
	.space 0x4
data_ov40_0218f6a0:
	.space 0x4
data_ov40_0218f6a4:
	.space 0x4
data_ov40_0218f6a8:
	.space 0x4
data_ov40_0218f6ac:
	.space 0x4
data_ov40_0218f6b0:
	.space 0x4
data_ov40_0218f6b4:
	.space 0x4
data_ov40_0218f6b8:
	.space 0x4
data_ov40_0218f6bc:
	.space 0x4
data_ov40_0218f6c0:
	.space 0x4
data_ov40_0218f6c4:
	.space 0x4
data_ov40_0218f6c8:
	.space 0x4
data_ov40_0218f6cc:
	.space 0x4
data_ov40_0218f6d0:
	.space 0x4
data_ov40_0218f6d4:
	.space 0x4
data_ov40_0218f6d8:
	.space 0x4
data_ov40_0218f6dc:
	.space 0x4
data_ov40_0218f6e0:
	.space 0x4
data_ov40_0218f6e4:
	.space 0x4
data_ov40_0218f6e8:
	.space 0x4
data_ov40_0218f6ec:
	.space 0x4
data_ov40_0218f6f0:
	.space 0x4
data_ov40_0218f6f4:
	.space 0x4
data_ov40_0218f6f8:
	.space 0x4
data_ov40_0218f6fc:
	.space 0x4
data_ov40_0218f700:
	.space 0x4
data_ov40_0218f704:
	.space 0x4
data_ov40_0218f708:
	.space 0x4
data_ov40_0218f70c:
	.space 0x4
data_ov40_0218f710:
	.space 0x4
data_ov40_0218f714:
	.space 0x4
data_ov40_0218f718:
	.space 0x4
data_ov40_0218f71c:
	.space 0x4
data_ov40_0218f720:
	.space 0x4
data_ov40_0218f724:
	.space 0x4
data_ov40_0218f728:
	.space 0x4
data_ov40_0218f72c:
	.space 0x4
data_ov40_0218f730:
	.space 0x4
data_ov40_0218f734:
	.space 0x4
data_ov40_0218f738:
	.space 0x4
data_ov40_0218f73c:
	.space 0x4
data_ov40_0218f740:
	.space 0x4
data_ov40_0218f744:
	.space 0x4
data_ov40_0218f748:
	.space 0x4
data_ov40_0218f74c:
	.space 0x4
data_ov40_0218f750:
	.space 0x4
data_ov40_0218f754:
	.space 0x4
data_ov40_0218f758:
	.space 0x4
data_ov40_0218f75c:
	.space 0x4
data_ov40_0218f760:
	.space 0x4
data_ov40_0218f764:
	.space 0x4
data_ov40_0218f768:
	.space 0x4
data_ov40_0218f76c:
	.space 0x4
data_ov40_0218f770:
	.space 0x4
data_ov40_0218f774:
	.space 0x4
data_ov40_0218f778:
	.space 0x4
data_ov40_0218f77c:
	.space 0x4
data_ov40_0218f780:
	.space 0x4
data_ov40_0218f784:
	.space 0x4
data_ov40_0218f788:
	.space 0x4
data_ov40_0218f78c:
	.space 0x4
data_ov40_0218f790:
	.space 0x4
data_ov40_0218f794:
	.space 0x4
data_ov40_0218f798:
	.space 0x4
data_ov40_0218f79c:
	.space 0x4
data_ov40_0218f7a0:
	.space 0x4
data_ov40_0218f7a4:
	.space 0x4
data_ov40_0218f7a8:
	.space 0x4
data_ov40_0218f7ac:
	.space 0x4
data_ov40_0218f7b0:
	.space 0x4
data_ov40_0218f7b4:
	.space 0x4
data_ov40_0218f7b8:
	.space 0x4
data_ov40_0218f7bc:
	.space 0x4
data_ov40_0218f7c0:
	.space 0x4
data_ov40_0218f7c4:
	.space 0x4
data_ov40_0218f7c8:
	.space 0x4
data_ov40_0218f7cc:
	.space 0x4
data_ov40_0218f7d0:
	.space 0x4
data_ov40_0218f7d4:
	.space 0x4
data_ov40_0218f7d8:
	.space 0x4
data_ov40_0218f7dc:
	.space 0x4
data_ov40_0218f7e0:
	.space 0x4
data_ov40_0218f7e4:
	.space 0x4
data_ov40_0218f7e8:
	.space 0x4
data_ov40_0218f7ec:
	.space 0x4
data_ov40_0218f7f0:
	.space 0x4
data_ov40_0218f7f4:
	.space 0x4
data_ov40_0218f7f8:
	.space 0x4
data_ov40_0218f7fc:
	.space 0x4
data_ov40_0218f800:
	.space 0x4
data_ov40_0218f804:
	.space 0x4
data_ov40_0218f808:
	.space 0x4
data_ov40_0218f80c:
	.space 0x4
data_ov40_0218f810:
	.space 0x4
data_ov40_0218f814:
	.space 0x4
data_ov40_0218f818:
	.space 0x4
data_ov40_0218f81c:
	.space 0x4
data_ov40_0218f820:
	.space 0x4
data_ov40_0218f824:
	.space 0x4
data_ov40_0218f828:
	.space 0x4
data_ov40_0218f82c:
	.space 0x4
data_ov40_0218f830:
	.space 0x4
data_ov40_0218f834:
	.space 0x4
data_ov40_0218f838:
	.space 0x4
data_ov40_0218f83c:
	.space 0x4
data_ov40_0218f840:
	.space 0x4
data_ov40_0218f844:
	.space 0x4
data_ov40_0218f848:
	.space 0x4
data_ov40_0218f84c:
	.space 0x4
data_ov40_0218f850:
	.space 0x4
data_ov40_0218f854:
	.space 0x4
data_ov40_0218f858:
	.space 0x4
data_ov40_0218f85c:
	.space 0x4
data_ov40_0218f860:
	.space 0x4
data_ov40_0218f864:
	.space 0x4
data_ov40_0218f868:
	.space 0x4
data_ov40_0218f86c:
	.space 0x4
data_ov40_0218f870:
	.space 0x4
data_ov40_0218f874:
	.space 0x4
data_ov40_0218f878:
	.space 0x4
data_ov40_0218f87c:
	.space 0x4
data_ov40_0218f880:
	.space 0x4
data_ov40_0218f884:
	.space 0x4
data_ov40_0218f888:
	.space 0x4
data_ov40_0218f88c:
	.space 0x4
data_ov40_0218f890:
	.space 0x4
data_ov40_0218f894:
	.space 0x4
data_ov40_0218f898:
	.space 0x4
data_ov40_0218f89c:
	.space 0x4
data_ov40_0218f8a0:
	.space 0x4
data_ov40_0218f8a4:
	.space 0x4
data_ov40_0218f8a8:
	.space 0x4
data_ov40_0218f8ac:
	.space 0x4
data_ov40_0218f8b0:
	.space 0x4
data_ov40_0218f8b4:
	.space 0x4
data_ov40_0218f8b8:
	.space 0x4
data_ov40_0218f8bc:
	.space 0x4
data_ov40_0218f8c0:
	.space 0x4
data_ov40_0218f8c4:
	.space 0x4
data_ov40_0218f8c8:
	.space 0x4
data_ov40_0218f8cc:
	.space 0x4
data_ov40_0218f8d0:
	.space 0x4
data_ov40_0218f8d4:
	.space 0x4
data_ov40_0218f8d8:
	.space 0x4
data_ov40_0218f8dc:
	.space 0x4
data_ov40_0218f8e0:
	.space 0x4
data_ov40_0218f8e4:
	.space 0x4
data_ov40_0218f8e8:
	.space 0x4
data_ov40_0218f8ec:
	.space 0x4
data_ov40_0218f8f0:
	.space 0x4
data_ov40_0218f8f4:
	.space 0x4
data_ov40_0218f8f8:
	.space 0x4
data_ov40_0218f8fc:
	.space 0x4
data_ov40_0218f900:
	.space 0x4
data_ov40_0218f904:
	.space 0x4
data_ov40_0218f908:
	.space 0x4
data_ov40_0218f90c:
	.space 0x4
data_ov40_0218f910:
	.space 0x4
data_ov40_0218f914:
	.space 0x4
data_ov40_0218f918:
	.space 0x4
data_ov40_0218f91c:
	.space 0x4
data_ov40_0218f920:
	.space 0x4
data_ov40_0218f924:
	.space 0x4
data_ov40_0218f928:
	.space 0x4
data_ov40_0218f92c:
	.space 0x4
data_ov40_0218f930:
	.space 0x4
data_ov40_0218f934:
	.space 0x4
data_ov40_0218f938:
	.space 0x4
data_ov40_0218f93c:
	.space 0x4
data_ov40_0218f940:
	.space 0x4
data_ov40_0218f944:
	.space 0x4
data_ov40_0218f948:
	.space 0x4
data_ov40_0218f94c:
	.space 0x4
data_ov40_0218f950:
	.space 0x4
data_ov40_0218f954:
	.space 0x4
data_ov40_0218f958:
	.space 0x4
data_ov40_0218f95c:
	.space 0x4
data_ov40_0218f960:
	.space 0x4
data_ov40_0218f964:
	.space 0x4
data_ov40_0218f968:
	.space 0x4
data_ov40_0218f96c:
	.space 0x4
data_ov40_0218f970:
	.space 0x4
data_ov40_0218f974:
	.space 0x4
data_ov40_0218f978:
	.space 0x4
data_ov40_0218f97c:
	.space 0x4
data_ov40_0218f980:
	.space 0x4
data_ov40_0218f984:
	.space 0x4
data_ov40_0218f988:
	.space 0x4
data_ov40_0218f98c:
	.space 0x4
data_ov40_0218f990:
	.space 0x4
data_ov40_0218f994:
	.space 0x4
data_ov40_0218f998:
	.space 0x4
data_ov40_0218f99c:
	.space 0x4
data_ov40_0218f9a0:
	.space 0x4
data_ov40_0218f9a4:
	.space 0x4
data_ov40_0218f9a8:
	.space 0x4
data_ov40_0218f9ac:
	.space 0x4
data_ov40_0218f9b0:
	.space 0x4
data_ov40_0218f9b4:
	.space 0x4
data_ov40_0218f9b8:
	.space 0x4
data_ov40_0218f9bc:
	.space 0x4
data_ov40_0218f9c0:
	.space 0x4
data_ov40_0218f9c4:
	.space 0x4
data_ov40_0218f9c8:
	.space 0x4
data_ov40_0218f9cc:
	.space 0x4
data_ov40_0218f9d0:
	.space 0x4
data_ov40_0218f9d4:
	.space 0x4
data_ov40_0218f9d8:
	.space 0x4
data_ov40_0218f9dc:
	.space 0x4
data_ov40_0218f9e0:
	.space 0x4
data_ov40_0218f9e4:
	.space 0x4
data_ov40_0218f9e8:
	.space 0x4
data_ov40_0218f9ec:
	.space 0x4
data_ov40_0218f9f0:
	.space 0x4
data_ov40_0218f9f4:
	.space 0x4
data_ov40_0218f9f8:
	.space 0x4
data_ov40_0218f9fc:
	.space 0x4
data_ov40_0218fa00:
	.space 0x4
data_ov40_0218fa04:
	.space 0x4
data_ov40_0218fa08:
	.space 0x4
data_ov40_0218fa0c:
	.space 0x4
data_ov40_0218fa10:
	.space 0x4
data_ov40_0218fa14:
	.space 0x4
data_ov40_0218fa18:
	.space 0x4
data_ov40_0218fa1c:
	.space 0x4
data_ov40_0218fa20:
	.space 0x4
data_ov40_0218fa24:
	.space 0x4
data_ov40_0218fa28:
	.space 0x4
data_ov40_0218fa2c:
	.space 0x4
data_ov40_0218fa30:
	.space 0x4
data_ov40_0218fa34:
	.space 0x4
data_ov40_0218fa38:
	.space 0x4
data_ov40_0218fa3c:
	.space 0x4
data_ov40_0218fa40:
	.space 0x4
data_ov40_0218fa44:
	.space 0x4
data_ov40_0218fa48:
	.space 0x4
data_ov40_0218fa4c:
	.space 0x4
data_ov40_0218fa50:
	.space 0x4
data_ov40_0218fa54:
	.space 0x4
data_ov40_0218fa58:
	.space 0x4
data_ov40_0218fa5c:
	.space 0x4
data_ov40_0218fa60:
	.space 0x4
data_ov40_0218fa64:
	.space 0x4
data_ov40_0218fa68:
	.space 0x4
data_ov40_0218fa6c:
	.space 0x4
data_ov40_0218fa70:
	.space 0x4
data_ov40_0218fa74:
	.space 0x4
data_ov40_0218fa78:
	.space 0x4
data_ov40_0218fa7c:
	.space 0x4
data_ov40_0218fa80:
	.space 0x4
data_ov40_0218fa84:
	.space 0x4
data_ov40_0218fa88:
	.space 0x4
data_ov40_0218fa8c:
	.space 0x4
data_ov40_0218fa90:
	.space 0x4
data_ov40_0218fa94:
	.space 0x4
data_ov40_0218fa98:
	.space 0x4
data_ov40_0218fa9c:
	.space 0x4
data_ov40_0218faa0:
	.space 0x4
data_ov40_0218faa4:
	.space 0x4
data_ov40_0218faa8:
	.space 0x4
data_ov40_0218faac:
	.space 0x4
data_ov40_0218fab0:
	.space 0x4
data_ov40_0218fab4:
	.space 0x4
data_ov40_0218fab8:
	.space 0x4
data_ov40_0218fabc:
	.space 0x4
data_ov40_0218fac0:
	.space 0x4
data_ov40_0218fac4:
	.space 0x4
data_ov40_0218fac8:
	.space 0x4
data_ov40_0218facc:
	.space 0x4
data_ov40_0218fad0:
	.space 0x4
data_ov40_0218fad4:
	.space 0x4
data_ov40_0218fad8:
	.space 0x4
data_ov40_0218fadc:
	.space 0x4
data_ov40_0218fae0:
	.space 0x4
data_ov40_0218fae4:
	.space 0x4
data_ov40_0218fae8:
	.space 0x4
data_ov40_0218faec:
	.space 0x4
data_ov40_0218faf0:
	.space 0x4
data_ov40_0218faf4:
	.space 0x4
data_ov40_0218faf8:
	.space 0x4
data_ov40_0218fafc:
	.space 0x4
data_ov40_0218fb00:
	.space 0x4
data_ov40_0218fb04:
	.space 0x4
data_ov40_0218fb08:
	.space 0x4
data_ov40_0218fb0c:
	.space 0x4
data_ov40_0218fb10:
	.space 0x4
data_ov40_0218fb14:
	.space 0x4
data_ov40_0218fb18:
	.space 0x4
data_ov40_0218fb1c:
	.space 0x4
data_ov40_0218fb20:
	.space 0x4
data_ov40_0218fb24:
	.space 0x4
data_ov40_0218fb28:
	.space 0x4
data_ov40_0218fb2c:
	.space 0x4
data_ov40_0218fb30:
	.space 0x4
data_ov40_0218fb34:
	.space 0x4
data_ov40_0218fb38:
	.space 0x4
data_ov40_0218fb3c:
	.space 0x4
data_ov40_0218fb40:
	.space 0x4
data_ov40_0218fb44:
	.space 0x4
data_ov40_0218fb48:
	.space 0x4
data_ov40_0218fb4c:
	.space 0x4
data_ov40_0218fb50:
	.space 0x4
data_ov40_0218fb54:
	.space 0x4
data_ov40_0218fb58:
	.space 0x4
data_ov40_0218fb5c:
	.space 0x4
data_ov40_0218fb60:
	.space 0x4
data_ov40_0218fb64:
	.space 0x4
data_ov40_0218fb68:
	.space 0x4
data_ov40_0218fb6c:
	.space 0x4
data_ov40_0218fb70:
	.space 0x4
data_ov40_0218fb74:
	.space 0x4
data_ov40_0218fb78:
	.space 0x4
data_ov40_0218fb7c:
	.space 0x4
data_ov40_0218fb80:
	.space 0x4
data_ov40_0218fb84:
	.space 0x4
data_ov40_0218fb88:
	.space 0x4
data_ov40_0218fb8c:
	.space 0x4
data_ov40_0218fb90:
	.space 0x4
data_ov40_0218fb94:
	.space 0x4
data_ov40_0218fb98:
	.space 0x4
data_ov40_0218fb9c:
	.space 0x4
data_ov40_0218fba0:
	.space 0x4
data_ov40_0218fba4:
	.space 0x4
data_ov40_0218fba8:
	.space 0x4
data_ov40_0218fbac:
	.space 0x4
data_ov40_0218fbb0:
	.space 0x4
data_ov40_0218fbb4:
	.space 0x4
data_ov40_0218fbb8:
	.space 0x4
data_ov40_0218fbbc:
	.space 0x4
data_ov40_0218fbc0:
	.space 0x4
data_ov40_0218fbc4:
	.space 0x4
data_ov40_0218fbc8:
	.space 0x4
data_ov40_0218fbcc:
	.space 0x4
data_ov40_0218fbd0:
	.space 0x4
data_ov40_0218fbd4:
	.space 0x4
data_ov40_0218fbd8:
	.space 0x4
data_ov40_0218fbdc:
	.space 0x4
data_ov40_0218fbe0:
	.space 0x4
data_ov40_0218fbe4:
	.space 0x4
data_ov40_0218fbe8:
	.space 0x4
data_ov40_0218fbec:
	.space 0x4
data_ov40_0218fbf0:
	.space 0x4
data_ov40_0218fbf4:
	.space 0x4
data_ov40_0218fbf8:
	.space 0x4
data_ov40_0218fbfc:
	.space 0x4
data_ov40_0218fc00:
	.space 0x4
data_ov40_0218fc04:
	.space 0x4
data_ov40_0218fc08:
	.space 0x4
data_ov40_0218fc0c:
	.space 0x4
data_ov40_0218fc10:
	.space 0x4
data_ov40_0218fc14:
	.space 0x4
data_ov40_0218fc18:
	.space 0x4
data_ov40_0218fc1c:
	.space 0x4
data_ov40_0218fc20:
	.space 0x4
data_ov40_0218fc24:
	.space 0x4
data_ov40_0218fc28:
	.space 0x4
data_ov40_0218fc2c:
	.space 0x4
data_ov40_0218fc30:
	.space 0x4
data_ov40_0218fc34:
	.space 0x4
data_ov40_0218fc38:
	.space 0x4
data_ov40_0218fc3c:
	.space 0x4
data_ov40_0218fc40:
	.space 0x4
data_ov40_0218fc44:
	.space 0x4
data_ov40_0218fc48:
	.space 0x4
data_ov40_0218fc4c:
	.space 0x4
data_ov40_0218fc50:
	.space 0x4
data_ov40_0218fc54:
	.space 0x4
data_ov40_0218fc58:
	.space 0x4
data_ov40_0218fc5c:
	.space 0x4
data_ov40_0218fc60:
	.space 0x4
data_ov40_0218fc64:
	.space 0x4
data_ov40_0218fc68:
	.space 0x4
data_ov40_0218fc6c:
	.space 0x4
data_ov40_0218fc70:
	.space 0x4
data_ov40_0218fc74:
	.space 0x4
data_ov40_0218fc78:
	.space 0x4
data_ov40_0218fc7c:
	.space 0x4
data_ov40_0218fc80:
	.space 0x4
data_ov40_0218fc84:
	.space 0x4
data_ov40_0218fc88:
	.space 0x4
data_ov40_0218fc8c:
	.space 0x4
data_ov40_0218fc90:
	.space 0x4
data_ov40_0218fc94:
	.space 0x4
data_ov40_0218fc98:
	.space 0x4
data_ov40_0218fc9c:
	.space 0x4
data_ov40_0218fca0:
	.space 0x4
data_ov40_0218fca4:
	.space 0x4
data_ov40_0218fca8:
	.space 0x4
data_ov40_0218fcac:
	.space 0x4
data_ov40_0218fcb0:
	.space 0x4
data_ov40_0218fcb4:
	.space 0x4
data_ov40_0218fcb8:
	.space 0x4
data_ov40_0218fcbc:
	.space 0x4
data_ov40_0218fcc0:
	.space 0x4
data_ov40_0218fcc4:
	.space 0x4
data_ov40_0218fcc8:
	.space 0x4
data_ov40_0218fccc:
	.space 0x4
data_ov40_0218fcd0:
	.space 0x4
data_ov40_0218fcd4:
	.space 0x4
data_ov40_0218fcd8:
	.space 0x4
data_ov40_0218fcdc:
	.space 0x4
data_ov40_0218fce0:
	.space 0x4
data_ov40_0218fce4:
	.space 0x4
data_ov40_0218fce8:
	.space 0x4
data_ov40_0218fcec:
	.space 0x4
data_ov40_0218fcf0:
	.space 0x4
data_ov40_0218fcf4:
	.space 0x4
data_ov40_0218fcf8:
	.space 0x4
data_ov40_0218fcfc:
	.space 0x4
data_ov40_0218fd00:
	.space 0x4
data_ov40_0218fd04:
	.space 0x4
data_ov40_0218fd08:
	.space 0x4
data_ov40_0218fd0c:
	.space 0x4
data_ov40_0218fd10:
	.space 0x4
data_ov40_0218fd14:
	.space 0x4
data_ov40_0218fd18:
	.space 0x4
data_ov40_0218fd1c:
	.space 0x4
data_ov40_0218fd20:
	.space 0x4
data_ov40_0218fd24:
	.space 0x4
data_ov40_0218fd28:
	.space 0x4
data_ov40_0218fd2c:
	.space 0x4
data_ov40_0218fd30:
	.space 0x4
data_ov40_0218fd34:
	.space 0x4
data_ov40_0218fd38:
	.space 0x4
data_ov40_0218fd3c:
	.space 0x4
data_ov40_0218fd40:
	.space 0x4
data_ov40_0218fd44:
	.space 0x4
data_ov40_0218fd48:
	.space 0x4
data_ov40_0218fd4c:
	.space 0x4
data_ov40_0218fd50:
	.space 0x4
data_ov40_0218fd54:
	.space 0x4
data_ov40_0218fd58:
	.space 0x4
data_ov40_0218fd5c:
	.space 0x4
data_ov40_0218fd60:
	.space 0x4
data_ov40_0218fd64:
	.space 0x4
data_ov40_0218fd68:
	.space 0x4
data_ov40_0218fd6c:
	.space 0x4
data_ov40_0218fd70:
	.space 0x4
data_ov40_0218fd74:
	.space 0x4
data_ov40_0218fd78:
	.space 0x4
data_ov40_0218fd7c:
	.space 0x4
data_ov40_0218fd80:
	.space 0x4
data_ov40_0218fd84:
	.space 0x4
data_ov40_0218fd88:
	.space 0x4
data_ov40_0218fd8c:
	.space 0x4
data_ov40_0218fd90:
	.space 0x4
data_ov40_0218fd94:
	.space 0x4
data_ov40_0218fd98:
	.space 0x4
data_ov40_0218fd9c:
	.space 0x4
data_ov40_0218fda0:
	.space 0x4
data_ov40_0218fda4:
	.space 0x4
data_ov40_0218fda8:
	.space 0x4
data_ov40_0218fdac:
	.space 0x4
data_ov40_0218fdb0:
	.space 0x4
data_ov40_0218fdb4:
	.space 0x4
data_ov40_0218fdb8:
	.space 0x4
data_ov40_0218fdbc:
	.space 0x4
data_ov40_0218fdc0:
	.space 0x4
data_ov40_0218fdc4:
	.space 0x4
data_ov40_0218fdc8:
	.space 0x4
data_ov40_0218fdcc:
	.space 0x4
data_ov40_0218fdd0:
	.space 0x4
data_ov40_0218fdd4:
	.space 0x4
data_ov40_0218fdd8:
	.space 0x4
data_ov40_0218fddc:
	.space 0x4
data_ov40_0218fde0:
	.space 0x4
data_ov40_0218fde4:
	.space 0x4
data_ov40_0218fde8:
	.space 0x4
data_ov40_0218fdec:
	.space 0x4
data_ov40_0218fdf0:
	.space 0x4
data_ov40_0218fdf4:
	.space 0x4
data_ov40_0218fdf8:
	.space 0x4
data_ov40_0218fdfc:
	.space 0x4
data_ov40_0218fe00:
	.space 0x4
data_ov40_0218fe04:
	.space 0x4
data_ov40_0218fe08:
	.space 0x4
data_ov40_0218fe0c:
	.space 0x4
data_ov40_0218fe10:
	.space 0x4
data_ov40_0218fe14:
	.space 0x4
data_ov40_0218fe18:
	.space 0x4
data_ov40_0218fe1c:
	.space 0x4
data_ov40_0218fe20:
	.space 0x4
data_ov40_0218fe24:
	.space 0x4
data_ov40_0218fe28:
	.space 0x4
data_ov40_0218fe2c:
	.space 0x4
data_ov40_0218fe30:
	.space 0x4
data_ov40_0218fe34:
	.space 0x4
data_ov40_0218fe38:
	.space 0x4
data_ov40_0218fe3c:
	.space 0x4
data_ov40_0218fe40:
	.space 0x4
data_ov40_0218fe44:
	.space 0x4
data_ov40_0218fe48:
	.space 0x4
data_ov40_0218fe4c:
	.space 0x4
data_ov40_0218fe50:
	.space 0x4
data_ov40_0218fe54:
	.space 0x4
data_ov40_0218fe58:
	.space 0x4
data_ov40_0218fe5c:
	.space 0x4
data_ov40_0218fe60:
	.space 0x4
data_ov40_0218fe64:
	.space 0x4
data_ov40_0218fe68:
	.space 0x4
data_ov40_0218fe6c:
	.space 0x4
data_ov40_0218fe70:
	.space 0x4
data_ov40_0218fe74:
	.space 0x4
data_ov40_0218fe78:
	.space 0x4
data_ov40_0218fe7c:
	.space 0x4
data_ov40_0218fe80:
	.space 0x4
data_ov40_0218fe84:
	.space 0x4
data_ov40_0218fe88:
	.space 0x4
data_ov40_0218fe8c:
	.space 0x4
data_ov40_0218fe90:
	.space 0x4
data_ov40_0218fe94:
	.space 0x4
data_ov40_0218fe98:
	.space 0x4
data_ov40_0218fe9c:
	.space 0x4
data_ov40_0218fea0:
	.space 0x4
data_ov40_0218fea4:
	.space 0x4
data_ov40_0218fea8:
	.space 0x4
data_ov40_0218feac:
	.space 0x4
data_ov40_0218feb0:
	.space 0x4
data_ov40_0218feb4:
	.space 0x4
data_ov40_0218feb8:
	.space 0x4
data_ov40_0218febc:
	.space 0x4
data_ov40_0218fec0:
	.space 0x4
data_ov40_0218fec4:
	.space 0x4
data_ov40_0218fec8:
	.space 0x4
data_ov40_0218fecc:
	.space 0x4
data_ov40_0218fed0:
	.space 0x4
data_ov40_0218fed4:
	.space 0x4
data_ov40_0218fed8:
	.space 0x4
data_ov40_0218fedc:
	.space 0x4
data_ov40_0218fee0:
	.space 0x4
data_ov40_0218fee4:
	.space 0x4
data_ov40_0218fee8:
	.space 0x4
data_ov40_0218feec:
	.space 0x4
data_ov40_0218fef0:
	.space 0x4
data_ov40_0218fef4:
	.space 0x4
data_ov40_0218fef8:
	.space 0x4
data_ov40_0218fefc:
	.space 0x4
data_ov40_0218ff00:
	.space 0x4
data_ov40_0218ff04:
	.space 0x4
data_ov40_0218ff08:
	.space 0x4
data_ov40_0218ff0c:
	.space 0x4
data_ov40_0218ff10:
	.space 0x4
data_ov40_0218ff14:
	.space 0x4
data_ov40_0218ff18:
	.space 0x4
data_ov40_0218ff1c:
	.space 0x4
data_ov40_0218ff20:
	.space 0x4
data_ov40_0218ff24:
	.space 0x4
data_ov40_0218ff28:
	.space 0x4
data_ov40_0218ff2c:
	.space 0x4
data_ov40_0218ff30:
	.space 0x4
data_ov40_0218ff34:
	.space 0x4
data_ov40_0218ff38:
	.space 0x4
data_ov40_0218ff3c:
	.space 0x4
data_ov40_0218ff40:
	.space 0x4
data_ov40_0218ff44:
	.space 0x4
data_ov40_0218ff48:
	.space 0x4
data_ov40_0218ff4c:
	.space 0x4
data_ov40_0218ff50:
	.space 0x4
data_ov40_0218ff54:
	.space 0x4
data_ov40_0218ff58:
	.space 0x4
data_ov40_0218ff5c:
	.space 0x4
data_ov40_0218ff60:
	.space 0x4
data_ov40_0218ff64:
	.space 0x4
data_ov40_0218ff68:
	.space 0x4
data_ov40_0218ff6c:
	.space 0x4
data_ov40_0218ff70:
	.space 0x4
data_ov40_0218ff74:
	.space 0x4
data_ov40_0218ff78:
	.space 0x4
data_ov40_0218ff7c:
	.space 0x4
data_ov40_0218ff80:
	.space 0x4
data_ov40_0218ff84:
	.space 0x4
data_ov40_0218ff88:
	.space 0x4
data_ov40_0218ff8c:
	.space 0x4
data_ov40_0218ff90:
	.space 0x4
data_ov40_0218ff94:
	.space 0x4
data_ov40_0218ff98:
	.space 0x4
data_ov40_0218ff9c:
	.space 0x4
data_ov40_0218ffa0:
	.space 0x4
data_ov40_0218ffa4:
	.space 0x4
data_ov40_0218ffa8:
	.space 0x4
data_ov40_0218ffac:
	.space 0x4
data_ov40_0218ffb0:
	.space 0x4
data_ov40_0218ffb4:
	.space 0x4
data_ov40_0218ffb8:
	.space 0x4
data_ov40_0218ffbc:
	.space 0x4
data_ov40_0218ffc0:
	.space 0x4
data_ov40_0218ffc4:
	.space 0x4
data_ov40_0218ffc8:
	.space 0x4
data_ov40_0218ffcc:
	.space 0x4
data_ov40_0218ffd0:
	.space 0x4
data_ov40_0218ffd4:
	.space 0x4
data_ov40_0218ffd8:
	.space 0x4
data_ov40_0218ffdc:
	.space 0x4
data_ov40_0218ffe0:
	.space 0x4
data_ov40_0218ffe4:
	.space 0x4
data_ov40_0218ffe8:
	.space 0x4
data_ov40_0218ffec:
	.space 0x4
data_ov40_0218fff0:
	.space 0x4
data_ov40_0218fff4:
	.space 0x4
data_ov40_0218fff8:
	.space 0x4
data_ov40_0218fffc:
	.space 0x4
data_ov40_02190000:
	.space 0x4
data_ov40_02190004:
	.space 0x4
data_ov40_02190008:
	.space 0x4
data_ov40_0219000c:
	.space 0x4
data_ov40_02190010:
	.space 0x4
data_ov40_02190014:
	.space 0x4
data_ov40_02190018:
	.space 0x4
data_ov40_0219001c:
	.space 0x4
data_ov40_02190020:
	.space 0x4
data_ov40_02190024:
	.space 0x4
data_ov40_02190028:
	.space 0x4
data_ov40_0219002c:
	.space 0x4
data_ov40_02190030:
	.space 0x4
data_ov40_02190034:
	.space 0x4
data_ov40_02190038:
	.space 0x4
data_ov40_0219003c:
	.space 0x4
data_ov40_02190040:
	.space 0x4
data_ov40_02190044:
	.space 0x4
data_ov40_02190048:
	.space 0x4
data_ov40_0219004c:
	.space 0x4
data_ov40_02190050:
	.space 0x4
data_ov40_02190054:
	.space 0x4
data_ov40_02190058:
	.space 0x4
data_ov40_0219005c:
	.space 0x4
data_ov40_02190060:
	.space 0x4
data_ov40_02190064:
	.space 0x4
data_ov40_02190068:
	.space 0x4
data_ov40_0219006c:
	.space 0x4
data_ov40_02190070:
	.space 0x4
data_ov40_02190074:
	.space 0x4
data_ov40_02190078:
	.space 0x4
data_ov40_0219007c:
	.space 0x4
data_ov40_02190080:
	.space 0x4
data_ov40_02190084:
	.space 0x4
data_ov40_02190088:
	.space 0x4
data_ov40_0219008c:
	.space 0x4
data_ov40_02190090:
	.space 0x4
data_ov40_02190094:
	.space 0x4
data_ov40_02190098:
	.space 0x4
data_ov40_0219009c:
	.space 0x4
data_ov40_021900a0:
	.space 0x4
data_ov40_021900a4:
	.space 0x4
data_ov40_021900a8:
	.space 0x4
data_ov40_021900ac:
	.space 0x4
data_ov40_021900b0:
	.space 0x4
data_ov40_021900b4:
	.space 0x4
data_ov40_021900b8:
	.space 0x4
data_ov40_021900bc:
	.space 0x4
data_ov40_021900c0:
	.space 0x4
data_ov40_021900c4:
	.space 0x4
data_ov40_021900c8:
	.space 0x4
data_ov40_021900cc:
	.space 0x4
data_ov40_021900d0:
	.space 0x4
data_ov40_021900d4:
	.space 0x4
data_ov40_021900d8:
	.space 0x4
data_ov40_021900dc:
	.space 0x4
data_ov40_021900e0:
	.space 0x4
data_ov40_021900e4:
	.space 0x4
data_ov40_021900e8:
	.space 0x4
data_ov40_021900ec:
	.space 0x4
data_ov40_021900f0:
	.space 0x4
data_ov40_021900f4:
	.space 0x4
data_ov40_021900f8:
	.space 0x4
data_ov40_021900fc:
	.space 0x4
data_ov40_02190100:
	.space 0x4
data_ov40_02190104:
	.space 0x4
data_ov40_02190108:
	.space 0x4
data_ov40_0219010c:
	.space 0x4
data_ov40_02190110:
	.space 0x4
data_ov40_02190114:
	.space 0x4
data_ov40_02190118:
	.space 0x4
data_ov40_0219011c:
	.space 0x4
data_ov40_02190120:
	.space 0x4
data_ov40_02190124:
	.space 0x4
data_ov40_02190128:
	.space 0x4
data_ov40_0219012c:
	.space 0x4
data_ov40_02190130:
	.space 0x4
data_ov40_02190134:
	.space 0x4
data_ov40_02190138:
	.space 0x4
data_ov40_0219013c:
	.space 0x4
data_ov40_02190140:
	.space 0x4
data_ov40_02190144:
	.space 0x4
data_ov40_02190148:
	.space 0x4
data_ov40_0219014c:
	.space 0x4
data_ov40_02190150:
	.space 0x4
data_ov40_02190154:
	.space 0x4
data_ov40_02190158:
	.space 0x4
data_ov40_0219015c:
	.space 0x4
data_ov40_02190160:
	.space 0x4
data_ov40_02190164:
	.space 0x4
data_ov40_02190168:
	.space 0x4
data_ov40_0219016c:
	.space 0x4
data_ov40_02190170:
	.space 0x4
data_ov40_02190174:
	.space 0x4
data_ov40_02190178:
	.space 0x4
data_ov40_0219017c:
	.space 0x4
data_ov40_02190180:
	.space 0x4
data_ov40_02190184:
	.space 0x4
data_ov40_02190188:
	.space 0x4
data_ov40_0219018c:
	.space 0x4
data_ov40_02190190:
	.space 0x4
data_ov40_02190194:
	.space 0x4
data_ov40_02190198:
	.space 0x4
data_ov40_0219019c:
	.space 0x4
data_ov40_021901a0:
	.space 0x4
data_ov40_021901a4:
	.space 0x4
data_ov40_021901a8:
	.space 0x4
data_ov40_021901ac:
	.space 0x4
data_ov40_021901b0:
	.space 0x4
data_ov40_021901b4:
	.space 0x4
data_ov40_021901b8:
	.space 0x4
data_ov40_021901bc:
	.space 0x4
data_ov40_021901c0:
	.space 0x4
data_ov40_021901c4:
	.space 0x4
data_ov40_021901c8:
	.space 0x4
data_ov40_021901cc:
	.space 0x4
data_ov40_021901d0:
	.space 0x4
data_ov40_021901d4:
	.space 0x4
data_ov40_021901d8:
	.space 0x4
data_ov40_021901dc:
	.space 0x4
data_ov40_021901e0:
	.space 0x4
data_ov40_021901e4:
	.space 0x4
data_ov40_021901e8:
	.space 0x4
data_ov40_021901ec:
	.space 0x4
data_ov40_021901f0:
	.space 0x4
data_ov40_021901f4:
	.space 0x4
data_ov40_021901f8:
	.space 0x4
data_ov40_021901fc:
	.space 0x4
data_ov40_02190200:
	.space 0x4
data_ov40_02190204:
	.space 0x4
data_ov40_02190208:
	.space 0x4
data_ov40_0219020c:
	.space 0x4
data_ov40_02190210:
	.space 0x4
data_ov40_02190214:
	.space 0x4
data_ov40_02190218:
	.space 0x4
data_ov40_0219021c:
	.space 0x4
data_ov40_02190220:
	.space 0x4
data_ov40_02190224:
	.space 0x4
data_ov40_02190228:
	.space 0x4
data_ov40_0219022c:
	.space 0x4
data_ov40_02190230:
	.space 0x4
data_ov40_02190234:
	.space 0x4
data_ov40_02190238:
	.space 0x4
data_ov40_0219023c:
	.space 0x4
data_ov40_02190240:
	.space 0x4
data_ov40_02190244:
	.space 0x4
data_ov40_02190248:
	.space 0x4
data_ov40_0219024c:
	.space 0x4
data_ov40_02190250:
	.space 0x4
data_ov40_02190254:
	.space 0x4
data_ov40_02190258:
	.space 0x4
data_ov40_0219025c:
	.space 0x4
data_ov40_02190260:
	.space 0x4
data_ov40_02190264:
	.space 0x4
data_ov40_02190268:
	.space 0x4
data_ov40_0219026c:
	.space 0x4
data_ov40_02190270:
	.space 0x4
data_ov40_02190274:
	.space 0x4
data_ov40_02190278:
	.space 0x4
data_ov40_0219027c:
	.space 0x4
data_ov40_02190280:
	.space 0x4
data_ov40_02190284:
	.space 0x4
data_ov40_02190288:
	.space 0x4
data_ov40_0219028c:
	.space 0x4
data_ov40_02190290:
	.space 0x4
data_ov40_02190294:
	.space 0x4
data_ov40_02190298:
	.space 0x4
data_ov40_0219029c:
	.space 0x4
data_ov40_021902a0:
	.space 0x4
data_ov40_021902a4:
	.space 0x4
data_ov40_021902a8:
	.space 0x4
data_ov40_021902ac:
	.space 0x4
data_ov40_021902b0:
	.space 0x4
data_ov40_021902b4:
	.space 0x4
data_ov40_021902b8:
	.space 0x4
data_ov40_021902bc:
	.space 0x4
data_ov40_021902c0:
	.space 0x4
data_ov40_021902c4:
	.space 0x4
data_ov40_021902c8:
	.space 0x4
data_ov40_021902cc:
	.space 0x4
data_ov40_021902d0:
	.space 0x4
data_ov40_021902d4:
	.space 0x4
data_ov40_021902d8:
	.space 0x4
data_ov40_021902dc:
	.space 0x4
data_ov40_021902e0:
	.space 0x4
data_ov40_021902e4:
	.space 0x4
data_ov40_021902e8:
	.space 0x4
data_ov40_021902ec:
	.space 0x4
data_ov40_021902f0:
	.space 0x4
data_ov40_021902f4:
	.space 0x4
data_ov40_021902f8:
	.space 0x4
data_ov40_021902fc:
	.space 0x4
data_ov40_02190300:
	.space 0x4
data_ov40_02190304:
	.space 0x4
data_ov40_02190308:
	.space 0x4
data_ov40_0219030c:
	.space 0x4
data_ov40_02190310:
	.space 0x4
data_ov40_02190314:
	.space 0x4
data_ov40_02190318:
	.space 0x4
data_ov40_0219031c:
	.space 0x4
data_ov40_02190320:
	.space 0x4
data_ov40_02190324:
	.space 0x4
data_ov40_02190328:
	.space 0x4
data_ov40_0219032c:
	.space 0x4
data_ov40_02190330:
	.space 0x4
data_ov40_02190334:
	.space 0x4
data_ov40_02190338:
	.space 0x4
data_ov40_0219033c:
	.space 0x4
data_ov40_02190340:
	.space 0x4
data_ov40_02190344:
	.space 0x4
data_ov40_02190348:
	.space 0x4
data_ov40_0219034c:
	.space 0x4
data_ov40_02190350:
	.space 0x4
data_ov40_02190354:
	.space 0x4
data_ov40_02190358:
	.space 0x4
data_ov40_0219035c:
	.space 0x4
data_ov40_02190360:
	.space 0x4
data_ov40_02190364:
	.space 0x4
data_ov40_02190368:
	.space 0x4
data_ov40_0219036c:
	.space 0x4
data_ov40_02190370:
	.space 0x4
data_ov40_02190374:
	.space 0x4
data_ov40_02190378:
	.space 0x4
data_ov40_0219037c:
	.space 0x4
data_ov40_02190380:
	.space 0x4
data_ov40_02190384:
	.space 0x4
data_ov40_02190388:
	.space 0x4
data_ov40_0219038c:
	.space 0x4
data_ov40_02190390:
	.space 0x4
data_ov40_02190394:
	.space 0x4
data_ov40_02190398:
	.space 0x4
data_ov40_0219039c:
	.space 0x4
data_ov40_021903a0:
	.space 0x4
data_ov40_021903a4:
	.space 0x4
data_ov40_021903a8:
	.space 0x4
data_ov40_021903ac:
	.space 0x4
data_ov40_021903b0:
	.space 0x4
data_ov40_021903b4:
	.space 0x4
data_ov40_021903b8:
	.space 0x4
data_ov40_021903bc:
	.space 0x4
data_ov40_021903c0:
	.space 0x4
data_ov40_021903c4:
	.space 0x4
data_ov40_021903c8:
	.space 0x4
data_ov40_021903cc:
	.space 0x4
data_ov40_021903d0:
	.space 0x4
data_ov40_021903d4:
	.space 0x4
data_ov40_021903d8:
	.space 0x4
data_ov40_021903dc:
	.space 0x4
data_ov40_021903e0:
	.space 0x4
data_ov40_021903e4:
	.space 0x4
data_ov40_021903e8:
	.space 0x4
data_ov40_021903ec:
	.space 0x4
data_ov40_021903f0:
	.space 0x4
data_ov40_021903f4:
	.space 0x4
data_ov40_021903f8:
	.space 0x4
data_ov40_021903fc:
	.space 0x4
data_ov40_02190400:
	.space 0x4
data_ov40_02190404:
	.space 0x4
data_ov40_02190408:
	.space 0x4
data_ov40_0219040c:
	.space 0x4
data_ov40_02190410:
	.space 0x4
data_ov40_02190414:
	.space 0x4
data_ov40_02190418:
	.space 0x4
data_ov40_0219041c:
	.space 0x4
data_ov40_02190420:
	.space 0x4
data_ov40_02190424:
	.space 0x4
data_ov40_02190428:
	.space 0x4
data_ov40_0219042c:
	.space 0x4
data_ov40_02190430:
	.space 0x4
data_ov40_02190434:
	.space 0x4
data_ov40_02190438:
	.space 0x4
data_ov40_0219043c:
	.space 0x4
data_ov40_02190440:
	.space 0x4
data_ov40_02190444:
	.space 0x4
data_ov40_02190448:
	.space 0x4
data_ov40_0219044c:
	.space 0x4
data_ov40_02190450:
	.space 0x4
data_ov40_02190454:
	.space 0x4
data_ov40_02190458:
	.space 0x4
data_ov40_0219045c:
	.space 0x4
data_ov40_02190460:
	.space 0x4
data_ov40_02190464:
	.space 0x4
data_ov40_02190468:
	.space 0x4
data_ov40_0219046c:
	.space 0x4
data_ov40_02190470:
	.space 0x4
data_ov40_02190474:
	.space 0x4
data_ov40_02190478:
	.space 0x4
data_ov40_0219047c:
	.space 0x4
data_ov40_02190480:
	.space 0x4
data_ov40_02190484:
	.space 0x4
data_ov40_02190488:
	.space 0x4
data_ov40_0219048c:
	.space 0x4
data_ov40_02190490:
	.space 0x4
data_ov40_02190494:
	.space 0x4
data_ov40_02190498:
	.space 0x4
data_ov40_0219049c:
	.space 0x4
data_ov40_021904a0:
	.space 0x4
data_ov40_021904a4:
	.space 0x4
data_ov40_021904a8:
	.space 0x4
data_ov40_021904ac:
	.space 0x4
data_ov40_021904b0:
	.space 0x4
data_ov40_021904b4:
	.space 0x4
data_ov40_021904b8:
	.space 0x4
data_ov40_021904bc:
	.space 0x4
data_ov40_021904c0:
	.space 0x4
data_ov40_021904c4:
	.space 0x4
data_ov40_021904c8:
	.space 0x4
data_ov40_021904cc:
	.space 0x4
data_ov40_021904d0:
	.space 0x4
data_ov40_021904d4:
	.space 0x4
data_ov40_021904d8:
	.space 0x4
data_ov40_021904dc:
	.space 0x4
data_ov40_021904e0:
	.space 0x4
data_ov40_021904e4:
	.space 0x4
data_ov40_021904e8:
	.space 0x4
data_ov40_021904ec:
	.space 0x4
data_ov40_021904f0:
	.space 0x4
data_ov40_021904f4:
	.space 0x4
data_ov40_021904f8:
	.space 0x4
data_ov40_021904fc:
	.space 0x4
data_ov40_02190500:
	.space 0x4
data_ov40_02190504:
	.space 0x4
data_ov40_02190508:
	.space 0x4
data_ov40_0219050c:
	.space 0x4
data_ov40_02190510:
	.space 0x4
data_ov40_02190514:
	.space 0x4
data_ov40_02190518:
	.space 0x4
data_ov40_0219051c:
	.space 0x4
data_ov40_02190520:
	.space 0x4
data_ov40_02190524:
	.space 0x4
data_ov40_02190528:
	.space 0x4
data_ov40_0219052c:
	.space 0x4
data_ov40_02190530:
	.space 0x4
data_ov40_02190534:
	.space 0x4
data_ov40_02190538:
	.space 0x4
data_ov40_0219053c:
	.space 0x4
data_ov40_02190540:
	.space 0x4
data_ov40_02190544:
	.space 0x4
data_ov40_02190548:
	.space 0x4
data_ov40_0219054c:
	.space 0x4
data_ov40_02190550:
	.space 0x4
data_ov40_02190554:
	.space 0x4
data_ov40_02190558:
	.space 0x4
data_ov40_0219055c:
	.space 0x4
data_ov40_02190560:
	.space 0x4
data_ov40_02190564:
	.space 0x4
data_ov40_02190568:
	.space 0x4
data_ov40_0219056c:
	.space 0x4
data_ov40_02190570:
	.space 0x4
data_ov40_02190574:
	.space 0x4
data_ov40_02190578:
	.space 0x4
data_ov40_0219057c:
	.space 0x4
data_ov40_02190580:
	.space 0x4
data_ov40_02190584:
	.space 0x4
data_ov40_02190588:
	.space 0x4
data_ov40_0219058c:
	.space 0x4
data_ov40_02190590:
	.space 0x4
data_ov40_02190594:
	.space 0x4
data_ov40_02190598:
	.space 0x4
data_ov40_0219059c:
	.space 0x4
data_ov40_021905a0:
	.space 0x4
data_ov40_021905a4:
	.space 0x4
data_ov40_021905a8:
	.space 0x4
data_ov40_021905ac:
	.space 0x4
data_ov40_021905b0:
	.space 0x4
data_ov40_021905b4:
	.space 0x4
data_ov40_021905b8:
	.space 0x4
data_ov40_021905bc:
	.space 0x4
data_ov40_021905c0:
	.space 0x4
data_ov40_021905c4:
	.space 0x4
data_ov40_021905c8:
	.space 0x4
data_ov40_021905cc:
	.space 0x4
data_ov40_021905d0:
	.space 0x4
data_ov40_021905d4:
	.space 0x4
data_ov40_021905d8:
	.space 0x4
data_ov40_021905dc:
	.space 0x4
data_ov40_021905e0:
	.space 0x4
data_ov40_021905e4:
	.space 0x4
data_ov40_021905e8:
	.space 0x4
data_ov40_021905ec:
	.space 0x4
data_ov40_021905f0:
	.space 0x4
data_ov40_021905f4:
	.space 0x4
data_ov40_021905f8:
	.space 0x4
data_ov40_021905fc:
	.space 0x4
data_ov40_02190600:
	.space 0x4
data_ov40_02190604:
	.space 0x4
data_ov40_02190608:
	.space 0x4
data_ov40_0219060c:
	.space 0x4
data_ov40_02190610:
	.space 0x4
data_ov40_02190614:
	.space 0x4
data_ov40_02190618:
	.space 0x4
data_ov40_0219061c:
	.space 0x4
data_ov40_02190620:
	.space 0x4
data_ov40_02190624:
	.space 0x4
data_ov40_02190628:
	.space 0x4
data_ov40_0219062c:
	.space 0x4
data_ov40_02190630:
	.space 0x4
data_ov40_02190634:
	.space 0x4
data_ov40_02190638:
	.space 0x4
data_ov40_0219063c:
	.space 0x4
data_ov40_02190640:
	.space 0x4
data_ov40_02190644:
	.space 0x4
data_ov40_02190648:
	.space 0x4
data_ov40_0219064c:
	.space 0x4
data_ov40_02190650:
	.space 0x4
data_ov40_02190654:
	.space 0x4
data_ov40_02190658:
	.space 0x4
data_ov40_0219065c:
	.space 0x4
data_ov40_02190660:
	.space 0x4
data_ov40_02190664:
	.space 0x4
data_ov40_02190668:
	.space 0x4
data_ov40_0219066c:
	.space 0x4
data_ov40_02190670:
	.space 0x4
data_ov40_02190674:
	.space 0x4
data_ov40_02190678:
	.space 0x4
data_ov40_0219067c:
	.space 0x4
data_ov40_02190680:
	.space 0x4
data_ov40_02190684:
	.space 0x4
data_ov40_02190688:
	.space 0x4
data_ov40_0219068c:
	.space 0x4
data_ov40_02190690:
	.space 0x4
data_ov40_02190694:
	.space 0x4
data_ov40_02190698:
	.space 0x4
data_ov40_0219069c:
	.space 0x4
data_ov40_021906a0:
	.space 0x4
data_ov40_021906a4:
	.space 0x4
data_ov40_021906a8:
	.space 0x4
data_ov40_021906ac:
	.space 0x4
data_ov40_021906b0:
	.space 0x4
data_ov40_021906b4:
	.space 0x4
data_ov40_021906b8:
	.space 0x4
data_ov40_021906bc:
	.space 0x4
data_ov40_021906c0:
	.space 0x4
data_ov40_021906c4:
	.space 0x4
data_ov40_021906c8:
	.space 0x4
data_ov40_021906cc:
	.space 0x4
data_ov40_021906d0:
	.space 0x4
data_ov40_021906d4:
	.space 0x4
data_ov40_021906d8:
	.space 0x4
data_ov40_021906dc:
	.space 0x4
data_ov40_021906e0:
	.space 0x4
data_ov40_021906e4:
	.space 0x4
data_ov40_021906e8:
	.space 0x4
data_ov40_021906ec:
	.space 0x4
data_ov40_021906f0:
	.space 0x4
data_ov40_021906f4:
	.space 0x4
data_ov40_021906f8:
	.space 0x4
data_ov40_021906fc:
	.space 0x4
data_ov40_02190700:
	.space 0x4
data_ov40_02190704:
	.space 0x4
data_ov40_02190708:
	.space 0x4
data_ov40_0219070c:
	.space 0x4
data_ov40_02190710:
	.space 0x4
data_ov40_02190714:
	.space 0x4
data_ov40_02190718:
	.space 0x4
data_ov40_0219071c:
	.space 0x4
data_ov40_02190720:
	.space 0x4
data_ov40_02190724:
	.space 0x4
data_ov40_02190728:
	.space 0x4
data_ov40_0219072c:
	.space 0x4
data_ov40_02190730:
	.space 0x4
data_ov40_02190734:
	.space 0x4
data_ov40_02190738:
	.space 0x4
data_ov40_0219073c:
	.space 0x4
data_ov40_02190740:
	.space 0x4
data_ov40_02190744:
	.space 0x4
data_ov40_02190748:
	.space 0x4
data_ov40_0219074c:
	.space 0x4
data_ov40_02190750:
	.space 0x4
data_ov40_02190754:
	.space 0x4
data_ov40_02190758:
	.space 0x4
data_ov40_0219075c:
	.space 0x4
data_ov40_02190760:
	.space 0x4
data_ov40_02190764:
	.space 0x4
data_ov40_02190768:
	.space 0x4
data_ov40_0219076c:
	.space 0x4
data_ov40_02190770:
	.space 0x4
data_ov40_02190774:
	.space 0x4
data_ov40_02190778:
	.space 0x4
data_ov40_0219077c:
	.space 0x4
data_ov40_02190780:
	.space 0x4
data_ov40_02190784:
	.space 0x4
data_ov40_02190788:
	.space 0x4
data_ov40_0219078c:
	.space 0x4
data_ov40_02190790:
	.space 0x4
data_ov40_02190794:
	.space 0x4
data_ov40_02190798:
	.space 0x4
data_ov40_0219079c:
	.space 0x4
data_ov40_021907a0:
	.space 0x4
data_ov40_021907a4:
	.space 0x4
data_ov40_021907a8:
	.space 0x4
data_ov40_021907ac:
	.space 0x4
data_ov40_021907b0:
	.space 0x4
data_ov40_021907b4:
	.space 0x4
data_ov40_021907b8:
	.space 0x4
data_ov40_021907bc:
	.space 0x4
data_ov40_021907c0:
	.space 0x4
data_ov40_021907c4:
	.space 0x4
data_ov40_021907c8:
	.space 0x4
data_ov40_021907cc:
	.space 0x4
data_ov40_021907d0:
	.space 0x4
data_ov40_021907d4:
	.space 0x4
data_ov40_021907d8:
	.space 0x4
data_ov40_021907dc:
	.space 0x4
data_ov40_021907e0:
	.space 0x4
data_ov40_021907e4:
	.space 0x4
data_ov40_021907e8:
	.space 0x4
data_ov40_021907ec:
	.space 0x4
data_ov40_021907f0:
	.space 0x4
data_ov40_021907f4:
	.space 0x4
data_ov40_021907f8:
	.space 0x4
data_ov40_021907fc:
	.space 0x4
data_ov40_02190800:
	.space 0x4
data_ov40_02190804:
	.space 0x4
data_ov40_02190808:
	.space 0x4
data_ov40_0219080c:
	.space 0x4
data_ov40_02190810:
	.space 0x4
data_ov40_02190814:
	.space 0x4
data_ov40_02190818:
	.space 0x4
data_ov40_0219081c:
	.space 0x4
data_ov40_02190820:
	.space 0x4
data_ov40_02190824:
	.space 0x4
data_ov40_02190828:
	.space 0x4
data_ov40_0219082c:
	.space 0x4
data_ov40_02190830:
	.space 0x4
data_ov40_02190834:
	.space 0x4
data_ov40_02190838:
	.space 0x4
data_ov40_0219083c:
	.space 0x4
data_ov40_02190840:
	.space 0x4
data_ov40_02190844:
	.space 0x4
data_ov40_02190848:
	.space 0x4
data_ov40_0219084c:
	.space 0x4
data_ov40_02190850:
	.space 0x4
data_ov40_02190854:
	.space 0x4
data_ov40_02190858:
	.space 0x4
data_ov40_0219085c:
	.space 0x4
data_ov40_02190860:
	.space 0x4
data_ov40_02190864:
	.space 0x4
data_ov40_02190868:
	.space 0x4
data_ov40_0219086c:
	.space 0x4
data_ov40_02190870:
	.space 0x4
data_ov40_02190874:
	.space 0x4
data_ov40_02190878:
	.space 0x4
data_ov40_0219087c:
	.space 0x4
data_ov40_02190880:
	.space 0x4
data_ov40_02190884:
	.space 0x4
data_ov40_02190888:
	.space 0x4
data_ov40_0219088c:
	.space 0x4
data_ov40_02190890:
	.space 0x4
data_ov40_02190894:
	.space 0x4
data_ov40_02190898:
	.space 0x4
data_ov40_0219089c:
	.space 0x4
data_ov40_021908a0:
	.space 0x4
data_ov40_021908a4:
	.space 0x4
data_ov40_021908a8:
	.space 0x4
data_ov40_021908ac:
	.space 0x4
data_ov40_021908b0:
	.space 0x4
data_ov40_021908b4:
	.space 0x4
data_ov40_021908b8:
	.space 0x4
data_ov40_021908bc:
	.space 0x4
data_ov40_021908c0:
	.space 0x4
data_ov40_021908c4:
	.space 0x4
data_ov40_021908c8:
	.space 0x4
data_ov40_021908cc:
	.space 0x4
data_ov40_021908d0:
	.space 0x4
data_ov40_021908d4:
	.space 0x4
data_ov40_021908d8:
	.space 0x4
data_ov40_021908dc:
	.space 0x4
data_ov40_021908e0:
	.space 0x4
data_ov40_021908e4:
	.space 0x4
data_ov40_021908e8:
	.space 0x4
data_ov40_021908ec:
	.space 0x4
data_ov40_021908f0:
	.space 0x4
data_ov40_021908f4:
	.space 0x4
data_ov40_021908f8:
	.space 0x4
data_ov40_021908fc:
	.space 0x4
data_ov40_02190900:
	.space 0x4
data_ov40_02190904:
	.space 0x4
data_ov40_02190908:
	.space 0x4
data_ov40_0219090c:
	.space 0x4
data_ov40_02190910:
	.space 0x4
data_ov40_02190914:
	.space 0x4
data_ov40_02190918:
	.space 0x4
data_ov40_0219091c:
	.space 0x4
data_ov40_02190920:
	.space 0x4
data_ov40_02190924:
	.space 0x4
data_ov40_02190928:
	.space 0x4
data_ov40_0219092c:
	.space 0x4
data_ov40_02190930:
	.space 0x4
data_ov40_02190934:
	.space 0x4
data_ov40_02190938:
	.space 0x4
data_ov40_0219093c:
	.space 0x4
data_ov40_02190940:
	.space 0x4
data_ov40_02190944:
	.space 0x4
data_ov40_02190948:
	.space 0x4
data_ov40_0219094c:
	.space 0x4
data_ov40_02190950:
	.space 0x4
data_ov40_02190954:
	.space 0x4
data_ov40_02190958:
	.space 0x4
data_ov40_0219095c:
	.space 0x4
data_ov40_02190960:
	.space 0x4
data_ov40_02190964:
	.space 0x4
data_ov40_02190968:
	.space 0x4
data_ov40_0219096c:
	.space 0x4
data_ov40_02190970:
	.space 0x4
data_ov40_02190974:
	.space 0x4
data_ov40_02190978:
	.space 0x4
data_ov40_0219097c:
	.space 0x4
data_ov40_02190980:
	.space 0x4
data_ov40_02190984:
	.space 0x4
data_ov40_02190988:
	.space 0x4
data_ov40_0219098c:
	.space 0x4
data_ov40_02190990:
	.space 0x4
data_ov40_02190994:
	.space 0x4
data_ov40_02190998:
	.space 0x4
data_ov40_0219099c:
	.space 0x4
data_ov40_021909a0:
	.space 0x4
data_ov40_021909a4:
	.space 0x4
data_ov40_021909a8:
	.space 0x4
data_ov40_021909ac:
	.space 0x4
data_ov40_021909b0:
	.space 0x4
data_ov40_021909b4:
	.space 0x4
data_ov40_021909b8:
	.space 0x4
data_ov40_021909bc:
	.space 0x4
data_ov40_021909c0:
	.space 0x4
data_ov40_021909c4:
	.space 0x4
data_ov40_021909c8:
	.space 0x4
data_ov40_021909cc:
	.space 0x4
data_ov40_021909d0:
	.space 0x4
data_ov40_021909d4:
	.space 0x4
data_ov40_021909d8:
	.space 0x4
data_ov40_021909dc:
	.space 0x4
data_ov40_021909e0:
	.space 0x4
data_ov40_021909e4:
	.space 0x4
data_ov40_021909e8:
	.space 0x4
data_ov40_021909ec:
	.space 0x4
data_ov40_021909f0:
	.space 0x4
data_ov40_021909f4:
	.space 0x4
data_ov40_021909f8:
	.space 0x4
data_ov40_021909fc:
	.space 0x4
data_ov40_02190a00:
	.space 0x4
data_ov40_02190a04:
	.space 0x4
data_ov40_02190a08:
	.space 0x4
data_ov40_02190a0c:
	.space 0x4
data_ov40_02190a10:
	.space 0x4
data_ov40_02190a14:
	.space 0x4
data_ov40_02190a18:
	.space 0x4
data_ov40_02190a1c:
	.space 0x4
data_ov40_02190a20:
	.space 0x4
data_ov40_02190a24:
	.space 0x4
data_ov40_02190a28:
	.space 0x4
data_ov40_02190a2c:
	.space 0x4
data_ov40_02190a30:
	.space 0x4
data_ov40_02190a34:
	.space 0x4
data_ov40_02190a38:
	.space 0x4
data_ov40_02190a3c:
	.space 0x4
data_ov40_02190a40:
	.space 0x4
data_ov40_02190a44:
	.space 0x4
data_ov40_02190a48:
	.space 0x4
data_ov40_02190a4c:
	.space 0x4
data_ov40_02190a50:
	.space 0x4
data_ov40_02190a54:
	.space 0x4
data_ov40_02190a58:
	.space 0x4
data_ov40_02190a5c:
	.space 0x4
data_ov40_02190a60:
	.space 0x4
data_ov40_02190a64:
	.space 0x4
data_ov40_02190a68:
	.space 0x4
data_ov40_02190a6c:
	.space 0x4
data_ov40_02190a70:
	.space 0x4
data_ov40_02190a74:
	.space 0x4
data_ov40_02190a78:
	.space 0x4
data_ov40_02190a7c:
	.space 0x4
data_ov40_02190a80:
	.space 0x4
data_ov40_02190a84:
	.space 0x4
data_ov40_02190a88:
	.space 0x4
data_ov40_02190a8c:
	.space 0x4
data_ov40_02190a90:
	.space 0x4
data_ov40_02190a94:
	.space 0x4
data_ov40_02190a98:
	.space 0x4
data_ov40_02190a9c:
	.space 0x4
data_ov40_02190aa0:
	.space 0x4
data_ov40_02190aa4:
	.space 0x4
data_ov40_02190aa8:
	.space 0x4
data_ov40_02190aac:
	.space 0x4
data_ov40_02190ab0:
	.space 0x4
data_ov40_02190ab4:
	.space 0x4
data_ov40_02190ab8:
	.space 0x4
data_ov40_02190abc:
	.space 0x4
data_ov40_02190ac0:
	.space 0x4
data_ov40_02190ac4:
	.space 0x4
data_ov40_02190ac8:
	.space 0x4
data_ov40_02190acc:
	.space 0x4
data_ov40_02190ad0:
	.space 0x4
data_ov40_02190ad4:
	.space 0x4
data_ov40_02190ad8:
	.space 0x4
data_ov40_02190adc:
	.space 0x4
data_ov40_02190ae0:
	.space 0x4
data_ov40_02190ae4:
	.space 0x4
data_ov40_02190ae8:
	.space 0x4
data_ov40_02190aec:
	.space 0x4
data_ov40_02190af0:
	.space 0x4
data_ov40_02190af4:
	.space 0x4
data_ov40_02190af8:
	.space 0x4
data_ov40_02190afc:
	.space 0x4
data_ov40_02190b00:
	.space 0x4
data_ov40_02190b04:
	.space 0x4
data_ov40_02190b08:
	.space 0x4
data_ov40_02190b0c:
	.space 0x4
data_ov40_02190b10:
	.space 0x4
data_ov40_02190b14:
	.space 0x4
data_ov40_02190b18:
	.space 0x4
data_ov40_02190b1c:
	.space 0x4
data_ov40_02190b20:
	.space 0x4
data_ov40_02190b24:
	.space 0x4
data_ov40_02190b28:
	.space 0x4
data_ov40_02190b2c:
	.space 0x4
data_ov40_02190b30:
	.space 0x4
data_ov40_02190b34:
	.space 0x4
data_ov40_02190b38:
	.space 0x4
data_ov40_02190b3c:
	.space 0x4
data_ov40_02190b40:
	.space 0x4
data_ov40_02190b44:
	.space 0x4
data_ov40_02190b48:
	.space 0x4
data_ov40_02190b4c:
	.space 0x4
data_ov40_02190b50:
	.space 0x4
data_ov40_02190b54:
	.space 0x4
data_ov40_02190b58:
	.space 0x4
data_ov40_02190b5c:
	.space 0x4
data_ov40_02190b60:
	.space 0x4
data_ov40_02190b64:
	.space 0x4
data_ov40_02190b68:
	.space 0x4
data_ov40_02190b6c:
	.space 0x4
data_ov40_02190b70:
	.space 0x4
data_ov40_02190b74:
	.space 0x4
data_ov40_02190b78:
	.space 0x4
data_ov40_02190b7c:
	.space 0x4
data_ov40_02190b80:
	.space 0x4
data_ov40_02190b84:
	.space 0x4
data_ov40_02190b88:
	.space 0x4
data_ov40_02190b8c:
	.space 0x4
data_ov40_02190b90:
	.space 0x4
data_ov40_02190b94:
	.space 0x4
data_ov40_02190b98:
	.space 0x4
data_ov40_02190b9c:
	.space 0x4
data_ov40_02190ba0:
	.space 0x4
data_ov40_02190ba4:
	.space 0x4
data_ov40_02190ba8:
	.space 0x4
data_ov40_02190bac:
	.space 0x4
data_ov40_02190bb0:
	.space 0x4
data_ov40_02190bb4:
	.space 0x4
data_ov40_02190bb8:
	.space 0x4
data_ov40_02190bbc:
	.space 0x4
data_ov40_02190bc0:
	.space 0x4
data_ov40_02190bc4:
	.space 0x4
data_ov40_02190bc8:
	.space 0x4
data_ov40_02190bcc:
	.space 0x4
data_ov40_02190bd0:
	.space 0x4
data_ov40_02190bd4:
	.space 0x4
data_ov40_02190bd8:
	.space 0x4
data_ov40_02190bdc:
	.space 0x4
data_ov40_02190be0:
	.space 0x4
data_ov40_02190be4:
	.space 0x4
data_ov40_02190be8:
	.space 0x4
data_ov40_02190bec:
	.space 0x4
data_ov40_02190bf0:
	.space 0x4
data_ov40_02190bf4:
	.space 0x4
data_ov40_02190bf8:
	.space 0x4
data_ov40_02190bfc:
	.space 0x4
data_ov40_02190c00:
	.space 0x4
data_ov40_02190c04:
	.space 0x4
data_ov40_02190c08:
	.space 0x4
data_ov40_02190c0c:
	.space 0x4
data_ov40_02190c10:
	.space 0x4
data_ov40_02190c14:
	.space 0x4
data_ov40_02190c18:
	.space 0x4
data_ov40_02190c1c:
	.space 0x4
data_ov40_02190c20:
	.space 0x4
data_ov40_02190c24:
	.space 0x4
data_ov40_02190c28:
	.space 0x4
data_ov40_02190c2c:
	.space 0x4
data_ov40_02190c30:
	.space 0x4
data_ov40_02190c34:
	.space 0x4
data_ov40_02190c38:
	.space 0x4
data_ov40_02190c3c:
	.space 0x4
data_ov40_02190c40:
	.space 0x4
data_ov40_02190c44:
	.space 0x4
data_ov40_02190c48:
	.space 0x4
data_ov40_02190c4c:
	.space 0x4
data_ov40_02190c50:
	.space 0x4
data_ov40_02190c54:
	.space 0x4
data_ov40_02190c58:
	.space 0x4
data_ov40_02190c5c:
	.space 0x4
data_ov40_02190c60:
	.space 0x4
data_ov40_02190c64:
	.space 0x4
data_ov40_02190c68:
	.space 0x4
data_ov40_02190c6c:
	.space 0x4
data_ov40_02190c70:
	.space 0x4
data_ov40_02190c74:
	.space 0x4
data_ov40_02190c78:
	.space 0x4
data_ov40_02190c7c:
	.space 0x4
data_ov40_02190c80:
	.space 0x4
data_ov40_02190c84:
	.space 0x4
data_ov40_02190c88:
	.space 0x4
data_ov40_02190c8c:
	.space 0x4
data_ov40_02190c90:
	.space 0x4
data_ov40_02190c94:
	.space 0x4
data_ov40_02190c98:
	.space 0x4
data_ov40_02190c9c:
	.space 0x4
data_ov40_02190ca0:
	.space 0x4
data_ov40_02190ca4:
	.space 0x4
data_ov40_02190ca8:
	.space 0x4
data_ov40_02190cac:
	.space 0x4
data_ov40_02190cb0:
	.space 0x4
data_ov40_02190cb4:
	.space 0x4
data_ov40_02190cb8:
	.space 0x4
data_ov40_02190cbc:
	.space 0x4
data_ov40_02190cc0:
	.space 0x4
data_ov40_02190cc4:
	.space 0x4
data_ov40_02190cc8:
	.space 0x4
data_ov40_02190ccc:
	.space 0x4
data_ov40_02190cd0:
	.space 0x4
data_ov40_02190cd4:
	.space 0x4
data_ov40_02190cd8:
	.space 0x4
data_ov40_02190cdc:
	.space 0x4
data_ov40_02190ce0:
	.space 0x4
data_ov40_02190ce4:
	.space 0x4
data_ov40_02190ce8:
	.space 0x4
data_ov40_02190cec:
	.space 0x4
data_ov40_02190cf0:
	.space 0x4
data_ov40_02190cf4:
	.space 0x4
data_ov40_02190cf8:
	.space 0x4
data_ov40_02190cfc:
	.space 0x4
data_ov40_02190d00:
	.space 0x4
data_ov40_02190d04:
	.space 0x4
data_ov40_02190d08:
	.space 0x4
data_ov40_02190d0c:
	.space 0x4
data_ov40_02190d10:
	.space 0x4
data_ov40_02190d14:
	.space 0x4
data_ov40_02190d18:
	.space 0x4
data_ov40_02190d1c:
	.space 0x4
data_ov40_02190d20:
	.space 0x4
data_ov40_02190d24:
	.space 0x4
data_ov40_02190d28:
	.space 0x4
data_ov40_02190d2c:
	.space 0x4
data_ov40_02190d30:
	.space 0x4
data_ov40_02190d34:
	.space 0x4
data_ov40_02190d38:
	.space 0x4
data_ov40_02190d3c:
	.space 0x4
data_ov40_02190d40:
	.space 0x4
data_ov40_02190d44:
	.space 0x4
data_ov40_02190d48:
	.space 0x4
data_ov40_02190d4c:
	.space 0x4
data_ov40_02190d50:
	.space 0x4
data_ov40_02190d54:
	.space 0x4
data_ov40_02190d58:
	.space 0x4
data_ov40_02190d5c:
	.space 0x4
data_ov40_02190d60:
	.space 0x4
data_ov40_02190d64:
	.space 0x4
data_ov40_02190d68:
	.space 0x4
data_ov40_02190d6c:
	.space 0x4
data_ov40_02190d70:
	.space 0x4
data_ov40_02190d74:
	.space 0x4
data_ov40_02190d78:
	.space 0x4
data_ov40_02190d7c:
	.space 0x4
data_ov40_02190d80:
	.space 0x4
data_ov40_02190d84:
	.space 0x4
data_ov40_02190d88:
	.space 0x4
data_ov40_02190d8c:
	.space 0x4
data_ov40_02190d90:
	.space 0x4
data_ov40_02190d94:
	.space 0x4
data_ov40_02190d98:
	.space 0x4
data_ov40_02190d9c:
	.space 0x4
data_ov40_02190da0:
	.space 0x4
data_ov40_02190da4:
	.space 0x4
data_ov40_02190da8:
	.space 0x4
data_ov40_02190dac:
	.space 0x4
data_ov40_02190db0:
	.space 0x4
data_ov40_02190db4:
	.space 0x4
data_ov40_02190db8:
	.space 0x4
data_ov40_02190dbc:
	.space 0x4
data_ov40_02190dc0:
	.space 0x4
data_ov40_02190dc4:
	.space 0x4
data_ov40_02190dc8:
	.space 0x4
data_ov40_02190dcc:
	.space 0x4
data_ov40_02190dd0:
	.space 0x4
data_ov40_02190dd4:
	.space 0x4
data_ov40_02190dd8:
	.space 0x4
data_ov40_02190ddc:
	.space 0x4
data_ov40_02190de0:
	.space 0x4
data_ov40_02190de4:
	.space 0x4
data_ov40_02190de8:
	.space 0x4
data_ov40_02190dec:
	.space 0x4
data_ov40_02190df0:
	.space 0x4
data_ov40_02190df4:
	.space 0x4
data_ov40_02190df8:
	.space 0x4
data_ov40_02190dfc:
	.space 0x4
data_ov40_02190e00:
	.space 0x4
data_ov40_02190e04:
	.space 0x4
data_ov40_02190e08:
	.space 0x4
data_ov40_02190e0c:
	.space 0x4
data_ov40_02190e10:
	.space 0x4
data_ov40_02190e14:
	.space 0x4
data_ov40_02190e18:
	.space 0x4
data_ov40_02190e1c:
	.space 0x4
data_ov40_02190e20:
	.space 0x4
data_ov40_02190e24:
	.space 0x4
data_ov40_02190e28:
	.space 0x4
data_ov40_02190e2c:
	.space 0x4
data_ov40_02190e30:
	.space 0x4
data_ov40_02190e34:
	.space 0x4
data_ov40_02190e38:
	.space 0x4
data_ov40_02190e3c:
	.space 0x4
data_ov40_02190e40:
	.space 0x4
data_ov40_02190e44:
	.space 0x4
data_ov40_02190e48:
	.space 0x4
data_ov40_02190e4c:
	.space 0x4
data_ov40_02190e50:
	.space 0x4
data_ov40_02190e54:
	.space 0x4
data_ov40_02190e58:
	.space 0x4
data_ov40_02190e5c:
	.space 0x4
data_ov40_02190e60:
	.space 0x4
data_ov40_02190e64:
	.space 0x4
data_ov40_02190e68:
	.space 0x4
data_ov40_02190e6c:
	.space 0x4
data_ov40_02190e70:
	.space 0x4
data_ov40_02190e74:
	.space 0x4
data_ov40_02190e78:
	.space 0x4
data_ov40_02190e7c:
	.space 0x4
data_ov40_02190e80:
	.space 0x4
data_ov40_02190e84:
	.space 0x4
data_ov40_02190e88:
	.space 0x4
data_ov40_02190e8c:
	.space 0x4
data_ov40_02190e90:
	.space 0x4
data_ov40_02190e94:
	.space 0x4
data_ov40_02190e98:
	.space 0x4
data_ov40_02190e9c:
	.space 0x4
data_ov40_02190ea0:
	.space 0x4
data_ov40_02190ea4:
	.space 0x4
data_ov40_02190ea8:
	.space 0x4
data_ov40_02190eac:
	.space 0x4
data_ov40_02190eb0:
	.space 0x4
data_ov40_02190eb4:
	.space 0x4
data_ov40_02190eb8:
	.space 0x4
data_ov40_02190ebc:
	.space 0x4
data_ov40_02190ec0:
	.space 0x4
data_ov40_02190ec4:
	.space 0x4
data_ov40_02190ec8:
	.space 0x4
data_ov40_02190ecc:
	.space 0x4
data_ov40_02190ed0:
	.space 0x4
data_ov40_02190ed4:
	.space 0x4
data_ov40_02190ed8:
	.space 0x4
data_ov40_02190edc:
	.space 0x4
data_ov40_02190ee0:
	.space 0x4
data_ov40_02190ee4:
	.space 0x4
data_ov40_02190ee8:
	.space 0x4
data_ov40_02190eec:
	.space 0x4
data_ov40_02190ef0:
	.space 0x4
data_ov40_02190ef4:
	.space 0x4
data_ov40_02190ef8:
	.space 0x4
data_ov40_02190efc:
	.space 0x4
data_ov40_02190f00:
	.space 0x4
data_ov40_02190f04:
	.space 0x4
data_ov40_02190f08:
	.space 0x4
data_ov40_02190f0c:
	.space 0x4
data_ov40_02190f10:
	.space 0x4
data_ov40_02190f14:
	.space 0x4
data_ov40_02190f18:
	.space 0x4
data_ov40_02190f1c:
	.space 0x4
data_ov40_02190f20:
	.space 0x4
data_ov40_02190f24:
	.space 0x4
data_ov40_02190f28:
	.space 0x4
data_ov40_02190f2c:
	.space 0x4
data_ov40_02190f30:
	.space 0x4
data_ov40_02190f34:
	.space 0x4
data_ov40_02190f38:
	.space 0x4
data_ov40_02190f3c:
	.space 0x4
data_ov40_02190f40:
	.space 0x4
data_ov40_02190f44:
	.space 0x4
data_ov40_02190f48:
	.space 0x4
data_ov40_02190f4c:
	.space 0x4
data_ov40_02190f50:
	.space 0x4
data_ov40_02190f54:
	.space 0x4
data_ov40_02190f58:
	.space 0x4
data_ov40_02190f5c:
	.space 0x4
data_ov40_02190f60:
	.space 0x4
data_ov40_02190f64:
	.space 0x4
data_ov40_02190f68:
	.space 0x4
data_ov40_02190f6c:
	.space 0x4
data_ov40_02190f70:
	.space 0x4
data_ov40_02190f74:
	.space 0x4
data_ov40_02190f78:
	.space 0x4
data_ov40_02190f7c:
	.space 0x4
data_ov40_02190f80:
	.space 0x4
data_ov40_02190f84:
	.space 0x4
data_ov40_02190f88:
	.space 0x4
data_ov40_02190f8c:
	.space 0x4
data_ov40_02190f90:
	.space 0x4
data_ov40_02190f94:
	.space 0x4
data_ov40_02190f98:
	.space 0x4
data_ov40_02190f9c:
	.space 0x4
data_ov40_02190fa0:
	.space 0x4
data_ov40_02190fa4:
	.space 0x4
data_ov40_02190fa8:
	.space 0x4
data_ov40_02190fac:
	.space 0x4
data_ov40_02190fb0:
	.space 0x4
data_ov40_02190fb4:
	.space 0x4
data_ov40_02190fb8:
	.space 0x4
data_ov40_02190fbc:
	.space 0x4
data_ov40_02190fc0:
	.space 0x4
data_ov40_02190fc4:
	.space 0x4
data_ov40_02190fc8:
	.space 0x4
data_ov40_02190fcc:
	.space 0x4
data_ov40_02190fd0:
	.space 0x4
data_ov40_02190fd4:
	.space 0x4
data_ov40_02190fd8:
	.space 0x4
data_ov40_02190fdc:
	.space 0x4
data_ov40_02190fe0:
	.space 0x4
data_ov40_02190fe4:
	.space 0x4
data_ov40_02190fe8:
	.space 0x4
data_ov40_02190fec:
	.space 0x4
data_ov40_02190ff0:
	.space 0x4
data_ov40_02190ff4:
	.space 0x4
data_ov40_02190ff8:
	.space 0x4
data_ov40_02190ffc:
	.space 0x4
data_ov40_02191000:
	.space 0x4
data_ov40_02191004:
	.space 0x4
data_ov40_02191008:
	.space 0x4
data_ov40_0219100c:
	.space 0x4
data_ov40_02191010:
	.space 0x4
data_ov40_02191014:
	.space 0x4
data_ov40_02191018:
	.space 0x4
data_ov40_0219101c:
	.space 0x4
data_ov40_02191020:
	.space 0x4
data_ov40_02191024:
	.space 0x4
data_ov40_02191028:
	.space 0x4
data_ov40_0219102c:
	.space 0x4
data_ov40_02191030:
	.space 0x4
data_ov40_02191034:
	.space 0x4
data_ov40_02191038:
	.space 0x4
data_ov40_0219103c:
	.space 0x4
data_ov40_02191040:
	.space 0x4
data_ov40_02191044:
	.space 0x4
data_ov40_02191048:
	.space 0x4
data_ov40_0219104c:
	.space 0x4
data_ov40_02191050:
	.space 0x4
data_ov40_02191054:
	.space 0x4
data_ov40_02191058:
	.space 0x4
data_ov40_0219105c:
	.space 0x4
data_ov40_02191060:
	.space 0x4
data_ov40_02191064:
	.space 0x4
data_ov40_02191068:
	.space 0x4
data_ov40_0219106c:
	.space 0x4
data_ov40_02191070:
	.space 0x4
data_ov40_02191074:
	.space 0x4
data_ov40_02191078:
	.space 0x4
data_ov40_0219107c:
	.space 0x4
data_ov40_02191080:
	.space 0x4
data_ov40_02191084:
	.space 0x4
data_ov40_02191088:
	.space 0x4
data_ov40_0219108c:
	.space 0x4
data_ov40_02191090:
	.space 0x4
data_ov40_02191094:
	.space 0x4
data_ov40_02191098:
	.space 0x4
data_ov40_0219109c:
	.space 0x4
data_ov40_021910a0:
	.space 0x4
data_ov40_021910a4:
	.space 0x4
data_ov40_021910a8:
	.space 0x4
data_ov40_021910ac:
	.space 0x4
data_ov40_021910b0:
	.space 0x4
data_ov40_021910b4:
	.space 0x4
data_ov40_021910b8:
	.space 0x4
data_ov40_021910bc:
	.space 0x4
data_ov40_021910c0:
	.space 0x4
data_ov40_021910c4:
	.space 0x4
data_ov40_021910c8:
	.space 0x4
data_ov40_021910cc:
	.space 0x4
data_ov40_021910d0:
	.space 0x4
data_ov40_021910d4:
	.space 0x4
data_ov40_021910d8:
	.space 0x4
data_ov40_021910dc:
	.space 0x4
data_ov40_021910e0:
	.space 0x4
data_ov40_021910e4:
	.space 0x4
data_ov40_021910e8:
	.space 0x4
data_ov40_021910ec:
	.space 0x4
data_ov40_021910f0:
	.space 0x4
data_ov40_021910f4:
	.space 0x4
data_ov40_021910f8:
	.space 0x4
data_ov40_021910fc:
	.space 0x4
data_ov40_02191100:
	.space 0x4
data_ov40_02191104:
	.space 0x4
data_ov40_02191108:
	.space 0x4
data_ov40_0219110c:
	.space 0x4
data_ov40_02191110:
	.space 0x4
data_ov40_02191114:
	.space 0x4
data_ov40_02191118:
	.space 0x4
data_ov40_0219111c:
	.space 0x4
data_ov40_02191120:
	.space 0x4
data_ov40_02191124:
	.space 0x4
data_ov40_02191128:
	.space 0x4
data_ov40_0219112c:
	.space 0x4
data_ov40_02191130:
	.space 0x4
data_ov40_02191134:
	.space 0x4
data_ov40_02191138:
	.space 0x4
data_ov40_0219113c:
	.space 0x4
data_ov40_02191140:
	.space 0x4
data_ov40_02191144:
	.space 0x4
data_ov40_02191148:
	.space 0x4
data_ov40_0219114c:
	.space 0x4
data_ov40_02191150:
	.space 0x4
data_ov40_02191154:
	.space 0x4
data_ov40_02191158:
	.space 0x4
data_ov40_0219115c:
	.space 0x4
data_ov40_02191160:
	.space 0x4
data_ov40_02191164:
	.space 0x4
data_ov40_02191168:
	.space 0x4
data_ov40_0219116c:
	.space 0x4
data_ov40_02191170:
	.space 0x4
data_ov40_02191174:
	.space 0x4
data_ov40_02191178:
	.space 0x4
data_ov40_0219117c:
	.space 0x4
data_ov40_02191180:
	.space 0x4
data_ov40_02191184:
	.space 0x4
data_ov40_02191188:
	.space 0x4
data_ov40_0219118c:
	.space 0x4
data_ov40_02191190:
	.space 0x4
data_ov40_02191194:
	.space 0x4
data_ov40_02191198:
	.space 0x4
data_ov40_0219119c:
	.space 0x4
data_ov40_021911a0:
	.space 0x4
data_ov40_021911a4:
	.space 0x4
data_ov40_021911a8:
	.space 0x4
data_ov40_021911ac:
	.space 0x4
data_ov40_021911b0:
	.space 0x4
data_ov40_021911b4:
	.space 0x4
data_ov40_021911b8:
	.space 0x4
data_ov40_021911bc:
	.space 0x4
data_ov40_021911c0:
	.space 0x4
data_ov40_021911c4:
	.space 0x4
data_ov40_021911c8:
	.space 0x4
data_ov40_021911cc:
	.space 0x4
data_ov40_021911d0:
	.space 0x4
data_ov40_021911d4:
	.space 0x4
data_ov40_021911d8:
	.space 0x4
data_ov40_021911dc:
	.space 0x4
data_ov40_021911e0:
	.space 0x4
data_ov40_021911e4:
	.space 0x4
data_ov40_021911e8:
	.space 0x4
data_ov40_021911ec:
	.space 0x4
data_ov40_021911f0:
	.space 0x4
data_ov40_021911f4:
	.space 0x4
data_ov40_021911f8:
	.space 0x4
data_ov40_021911fc:
	.space 0x4
data_ov40_02191200:
	.space 0x4
data_ov40_02191204:
	.space 0x4
data_ov40_02191208:
	.space 0x4
data_ov40_0219120c:
	.space 0x4
data_ov40_02191210:
	.space 0x4
data_ov40_02191214:
	.space 0x4
data_ov40_02191218:
	.space 0x4
data_ov40_0219121c:
	.space 0x4
data_ov40_02191220:
	.space 0x4
data_ov40_02191224:
	.space 0x4
data_ov40_02191228:
	.space 0x4
data_ov40_0219122c:
	.space 0x4
data_ov40_02191230:
	.space 0x4
data_ov40_02191234:
	.space 0x4
data_ov40_02191238:
	.space 0x4
data_ov40_0219123c:
	.space 0x4
data_ov40_02191240:
	.space 0x4
data_ov40_02191244:
	.space 0x4
data_ov40_02191248:
	.space 0x4
data_ov40_0219124c:
	.space 0x4
data_ov40_02191250:
	.space 0x4
data_ov40_02191254:
	.space 0x4
data_ov40_02191258:
	.space 0x4
data_ov40_0219125c:
	.space 0x4
data_ov40_02191260:
	.space 0x4
data_ov40_02191264:
	.space 0x4
data_ov40_02191268:
	.space 0x4
data_ov40_0219126c:
	.space 0x4
data_ov40_02191270:
	.space 0x4
data_ov40_02191274:
	.space 0x4
data_ov40_02191278:
	.space 0x4
data_ov40_0219127c:
	.space 0x4
data_ov40_02191280:
	.space 0x4
data_ov40_02191284:
	.space 0x4
data_ov40_02191288:
	.space 0x4
data_ov40_0219128c:
	.space 0x4
data_ov40_02191290:
	.space 0x4
data_ov40_02191294:
	.space 0x4
data_ov40_02191298:
	.space 0x4
data_ov40_0219129c:
	.space 0x4
data_ov40_021912a0:
	.space 0x4
data_ov40_021912a4:
	.space 0x4
data_ov40_021912a8:
	.space 0x4
data_ov40_021912ac:
	.space 0x4
data_ov40_021912b0:
	.space 0x4
data_ov40_021912b4:
	.space 0x4
data_ov40_021912b8:
	.space 0x4
data_ov40_021912bc:
	.space 0x4
data_ov40_021912c0:
	.space 0x4
data_ov40_021912c4:
	.space 0x4
data_ov40_021912c8:
	.space 0x4
data_ov40_021912cc:
	.space 0x4
data_ov40_021912d0:
	.space 0x4
data_ov40_021912d4:
	.space 0x4
data_ov40_021912d8:
	.space 0x4
data_ov40_021912dc:
	.space 0x4
data_ov40_021912e0:
	.space 0x4
data_ov40_021912e4:
	.space 0x4
data_ov40_021912e8:
	.space 0x4
data_ov40_021912ec:
	.space 0x4
data_ov40_021912f0:
	.space 0x4
data_ov40_021912f4:
	.space 0x4
data_ov40_021912f8:
	.space 0x4
data_ov40_021912fc:
	.space 0x4
data_ov40_02191300:
	.space 0x4
data_ov40_02191304:
	.space 0x4
data_ov40_02191308:
	.space 0x4
data_ov40_0219130c:
	.space 0x4
data_ov40_02191310:
	.space 0x4
data_ov40_02191314:
	.space 0x4
data_ov40_02191318:
	.space 0x4
data_ov40_0219131c:
	.space 0x4
data_ov40_02191320:
	.space 0x4
data_ov40_02191324:
	.space 0x4
data_ov40_02191328:
	.space 0x4
data_ov40_0219132c:
	.space 0x4
data_ov40_02191330:
	.space 0x4
data_ov40_02191334:
	.space 0x4
data_ov40_02191338:
	.space 0x4
data_ov40_0219133c:
	.space 0x4
data_ov40_02191340:
	.space 0x4
data_ov40_02191344:
	.space 0x4
data_ov40_02191348:
	.space 0x4
data_ov40_0219134c:
	.space 0x4
data_ov40_02191350:
	.space 0x4
data_ov40_02191354:
	.space 0x4
data_ov40_02191358:
	.space 0x4
data_ov40_0219135c:
	.space 0x4
data_ov40_02191360:
	.space 0x4
data_ov40_02191364:
	.space 0x4
data_ov40_02191368:
	.space 0x4
data_ov40_0219136c:
	.space 0x4
data_ov40_02191370:
	.space 0x4
data_ov40_02191374:
	.space 0x4
data_ov40_02191378:
	.space 0x4
data_ov40_0219137c:
	.space 0x4
data_ov40_02191380:
	.space 0x4
data_ov40_02191384:
	.space 0x4
data_ov40_02191388:
	.space 0x4
data_ov40_0219138c:
	.space 0x4
data_ov40_02191390:
	.space 0x4
data_ov40_02191394:
	.space 0x4
data_ov40_02191398:
	.space 0x4
data_ov40_0219139c:
	.space 0x4
data_ov40_021913a0:
	.space 0x4
data_ov40_021913a4:
	.space 0x4
data_ov40_021913a8:
	.space 0x4
data_ov40_021913ac:
	.space 0x4
data_ov40_021913b0:
	.space 0x4
data_ov40_021913b4:
	.space 0x4
data_ov40_021913b8:
	.space 0x4
data_ov40_021913bc:
	.space 0x4
data_ov40_021913c0:
	.space 0x4
data_ov40_021913c4:
	.space 0x4
data_ov40_021913c8:
	.space 0x4
data_ov40_021913cc:
	.space 0x4
data_ov40_021913d0:
	.space 0x4
data_ov40_021913d4:
	.space 0x4
data_ov40_021913d8:
	.space 0x4
data_ov40_021913dc:
	.space 0x4
data_ov40_021913e0:
	.space 0x4
data_ov40_021913e4:
	.space 0x4
data_ov40_021913e8:
	.space 0x4
data_ov40_021913ec:
	.space 0x4
data_ov40_021913f0:
	.space 0x4
data_ov40_021913f4:
	.space 0x4
data_ov40_021913f8:
	.space 0x4
data_ov40_021913fc:
	.space 0x4
data_ov40_02191400:
	.space 0x4
data_ov40_02191404:
	.space 0x4
data_ov40_02191408:
	.space 0x4
data_ov40_0219140c:
	.space 0x4
data_ov40_02191410:
	.space 0x4
data_ov40_02191414:
	.space 0x4
data_ov40_02191418:
	.space 0x4
data_ov40_0219141c:
	.space 0x4
data_ov40_02191420:
	.space 0x4
data_ov40_02191424:
	.space 0x4
data_ov40_02191428:
	.space 0x4
data_ov40_0219142c:
	.space 0x4
data_ov40_02191430:
	.space 0x4
data_ov40_02191434:
	.space 0x4
data_ov40_02191438:
	.space 0x4
data_ov40_0219143c:
	.space 0x4
data_ov40_02191440:
	.space 0x4
data_ov40_02191444:
	.space 0x4
data_ov40_02191448:
	.space 0x4
data_ov40_0219144c:
	.space 0x4
data_ov40_02191450:
	.space 0x4
data_ov40_02191454:
	.space 0x4
data_ov40_02191458:
	.space 0x4
data_ov40_0219145c:
	.space 0x4
data_ov40_02191460:
	.space 0x4
data_ov40_02191464:
	.space 0x4
data_ov40_02191468:
	.space 0x4
data_ov40_0219146c:
	.space 0x4
data_ov40_02191470:
	.space 0x4
data_ov40_02191474:
	.space 0x4
data_ov40_02191478:
	.space 0x4
data_ov40_0219147c:
	.space 0x4
data_ov40_02191480:
	.space 0x4
data_ov40_02191484:
	.space 0x4
data_ov40_02191488:
	.space 0x4
data_ov40_0219148c:
	.space 0x4
data_ov40_02191490:
	.space 0x4
data_ov40_02191494:
	.space 0x4
data_ov40_02191498:
	.space 0x4
data_ov40_0219149c:
	.space 0x4
data_ov40_021914a0:
	.space 0x4
data_ov40_021914a4:
	.space 0x4
data_ov40_021914a8:
	.space 0x4
data_ov40_021914ac:
	.space 0x4
data_ov40_021914b0:
	.space 0x4
data_ov40_021914b4:
	.space 0x4
data_ov40_021914b8:
	.space 0x4
data_ov40_021914bc:
	.space 0x4
data_ov40_021914c0:
	.space 0x4
data_ov40_021914c4:
	.space 0x4
data_ov40_021914c8:
	.space 0x4
data_ov40_021914cc:
	.space 0x4
data_ov40_021914d0:
	.space 0x4
data_ov40_021914d4:
	.space 0x4
data_ov40_021914d8:
	.space 0x4
data_ov40_021914dc:
	.space 0x4
data_ov40_021914e0:
	.space 0x4
data_ov40_021914e4:
	.space 0x4
data_ov40_021914e8:
	.space 0x4
data_ov40_021914ec:
	.space 0x4
data_ov40_021914f0:
	.space 0x4
data_ov40_021914f4:
	.space 0x4
data_ov40_021914f8:
	.space 0x4
data_ov40_021914fc:
	.space 0x4
data_ov40_02191500:
	.space 0x4
data_ov40_02191504:
	.space 0x4
data_ov40_02191508:
	.space 0x4
data_ov40_0219150c:
	.space 0x4
data_ov40_02191510:
	.space 0x4
data_ov40_02191514:
	.space 0x4
data_ov40_02191518:
	.space 0x4
data_ov40_0219151c:
	.space 0x4
data_ov40_02191520:
	.space 0x4
data_ov40_02191524:
	.space 0x4
data_ov40_02191528:
	.space 0x4
data_ov40_0219152c:
	.space 0x4
data_ov40_02191530:
	.space 0x4
data_ov40_02191534:
	.space 0x4
data_ov40_02191538:
	.space 0x4
data_ov40_0219153c:
	.space 0x4
data_ov40_02191540:
	.space 0x4
data_ov40_02191544:
	.space 0x4
data_ov40_02191548:
	.space 0x4
data_ov40_0219154c:
	.space 0x4
data_ov40_02191550:
	.space 0x4
data_ov40_02191554:
	.space 0x4
data_ov40_02191558:
	.space 0x4
data_ov40_0219155c:
	.space 0x4
data_ov40_02191560:
	.space 0x4
data_ov40_02191564:
	.space 0x4
data_ov40_02191568:
	.space 0x4
data_ov40_0219156c:
	.space 0x4
data_ov40_02191570:
	.space 0x4
data_ov40_02191574:
	.space 0x4
data_ov40_02191578:
	.space 0x4
data_ov40_0219157c:
	.space 0x4
data_ov40_02191580:
	.space 0x4
data_ov40_02191584:
	.space 0x4
data_ov40_02191588:
	.space 0x4
data_ov40_0219158c:
	.space 0x4
data_ov40_02191590:
	.space 0x4
data_ov40_02191594:
	.space 0x4
data_ov40_02191598:
	.space 0x4
data_ov40_0219159c:
	.space 0x4
data_ov40_021915a0:
	.space 0x4
data_ov40_021915a4:
	.space 0x4
data_ov40_021915a8:
	.space 0x4
data_ov40_021915ac:
	.space 0x4
data_ov40_021915b0:
	.space 0x4
data_ov40_021915b4:
	.space 0x4
data_ov40_021915b8:
	.space 0x4
data_ov40_021915bc:
	.space 0x4
data_ov40_021915c0:
	.space 0x4
data_ov40_021915c4:
	.space 0x4
data_ov40_021915c8:
	.space 0x4
data_ov40_021915cc:
	.space 0x4
data_ov40_021915d0:
	.space 0x4
data_ov40_021915d4:
	.space 0x4
data_ov40_021915d8:
	.space 0x4
data_ov40_021915dc:
	.space 0x4
data_ov40_021915e0:
	.space 0x4
data_ov40_021915e4:
	.space 0x4
data_ov40_021915e8:
	.space 0x4
data_ov40_021915ec:
	.space 0x4
data_ov40_021915f0:
	.space 0x4
data_ov40_021915f4:
	.space 0x4
data_ov40_021915f8:
	.space 0x4
data_ov40_021915fc:
	.space 0x4
data_ov40_02191600:
	.space 0x4
data_ov40_02191604:
	.space 0x4
data_ov40_02191608:
	.space 0x4
data_ov40_0219160c:
	.space 0x4
data_ov40_02191610:
	.space 0x4
data_ov40_02191614:
	.space 0x4
data_ov40_02191618:
	.space 0x4
data_ov40_0219161c:
	.space 0x4
data_ov40_02191620:
	.space 0x4
data_ov40_02191624:
	.space 0x4
data_ov40_02191628:
	.space 0x4
data_ov40_0219162c:
	.space 0x4
data_ov40_02191630:
	.space 0x4
data_ov40_02191634:
	.space 0x4
data_ov40_02191638:
	.space 0x4
data_ov40_0219163c:
	.space 0x4
data_ov40_02191640:
	.space 0x4
data_ov40_02191644:
	.space 0x4
data_ov40_02191648:
	.space 0x4
data_ov40_0219164c:
	.space 0x4
data_ov40_02191650:
	.space 0x4
data_ov40_02191654:
	.space 0x4
data_ov40_02191658:
	.space 0x4
data_ov40_0219165c:
	.space 0x4
data_ov40_02191660:
	.space 0x4
data_ov40_02191664:
	.space 0x4
data_ov40_02191668:
	.space 0x4
data_ov40_0219166c:
	.space 0x4
data_ov40_02191670:
	.space 0x4
data_ov40_02191674:
	.space 0x4
data_ov40_02191678:
	.space 0x4
data_ov40_0219167c:
	.space 0x4
data_ov40_02191680:
	.space 0x4
data_ov40_02191684:
	.space 0x4
data_ov40_02191688:
	.space 0x4
data_ov40_0219168c:
	.space 0x4
data_ov40_02191690:
	.space 0x4
data_ov40_02191694:
	.space 0x4
data_ov40_02191698:
	.space 0x4
data_ov40_0219169c:
	.space 0x4
data_ov40_021916a0:
	.space 0x4
data_ov40_021916a4:
	.space 0x4
data_ov40_021916a8:
	.space 0x4
data_ov40_021916ac:
	.space 0x4
data_ov40_021916b0:
	.space 0x4
data_ov40_021916b4:
	.space 0x4
data_ov40_021916b8:
	.space 0x4
data_ov40_021916bc:
	.space 0x4
data_ov40_021916c0:
	.space 0x4
data_ov40_021916c4:
	.space 0x4
data_ov40_021916c8:
	.space 0x4
data_ov40_021916cc:
	.space 0x4
data_ov40_021916d0:
	.space 0x4
data_ov40_021916d4:
	.space 0x4
data_ov40_021916d8:
	.space 0x4
data_ov40_021916dc:
	.space 0x4
data_ov40_021916e0:
	.space 0x4
data_ov40_021916e4:
	.space 0x4
data_ov40_021916e8:
	.space 0x4
data_ov40_021916ec:
	.space 0x4
data_ov40_021916f0:
	.space 0x4
data_ov40_021916f4:
	.space 0x4
data_ov40_021916f8:
	.space 0x4
data_ov40_021916fc:
	.space 0x4
data_ov40_02191700:
	.space 0x4
data_ov40_02191704:
	.space 0x4
data_ov40_02191708:
	.space 0x4
data_ov40_0219170c:
	.space 0x4
data_ov40_02191710:
	.space 0x4
data_ov40_02191714:
	.space 0x4
data_ov40_02191718:
	.space 0x4
data_ov40_0219171c:
	.space 0x4
data_ov40_02191720:
	.space 0x4
data_ov40_02191724:
	.space 0x4
data_ov40_02191728:
	.space 0x4
data_ov40_0219172c:
	.space 0x4
data_ov40_02191730:
	.space 0x4
data_ov40_02191734:
	.space 0x4
data_ov40_02191738:
	.space 0x4
data_ov40_0219173c:
	.space 0x4
data_ov40_02191740:
	.space 0x4
data_ov40_02191744:
	.space 0x4
data_ov40_02191748:
	.space 0x4
data_ov40_0219174c:
	.space 0x4
data_ov40_02191750:
	.space 0x4
data_ov40_02191754:
	.space 0x4
data_ov40_02191758:
	.space 0x4
data_ov40_0219175c:
	.space 0x4
data_ov40_02191760:
	.space 0x4
data_ov40_02191764:
	.space 0x4
data_ov40_02191768:
	.space 0x4
data_ov40_0219176c:
	.space 0x4
data_ov40_02191770:
	.space 0x4
data_ov40_02191774:
	.space 0x4
data_ov40_02191778:
	.space 0x4
data_ov40_0219177c:
	.space 0x4
data_ov40_02191780:
	.space 0x4
data_ov40_02191784:
	.space 0x4
data_ov40_02191788:
	.space 0x4
data_ov40_0219178c:
	.space 0x4
data_ov40_02191790:
	.space 0x4
data_ov40_02191794:
	.space 0x4
data_ov40_02191798:
	.space 0x4
data_ov40_0219179c:
	.space 0x4
data_ov40_021917a0:
	.space 0x4
data_ov40_021917a4:
	.space 0x4
data_ov40_021917a8:
	.space 0x4
data_ov40_021917ac:
	.space 0x4
data_ov40_021917b0:
	.space 0x4
data_ov40_021917b4:
	.space 0x4
data_ov40_021917b8:
	.space 0x4
data_ov40_021917bc:
	.space 0x4
data_ov40_021917c0:
	.space 0x4
data_ov40_021917c4:
	.space 0x4
data_ov40_021917c8:
	.space 0x4
data_ov40_021917cc:
	.space 0x4
data_ov40_021917d0:
	.space 0x4
data_ov40_021917d4:
	.space 0x4
data_ov40_021917d8:
	.space 0x4
data_ov40_021917dc:
	.space 0x4
data_ov40_021917e0:
	.space 0x4
data_ov40_021917e4:
	.space 0x4
data_ov40_021917e8:
	.space 0x4
data_ov40_021917ec:
	.space 0x4
data_ov40_021917f0:
	.space 0x4
data_ov40_021917f4:
	.space 0x4
data_ov40_021917f8:
	.space 0x4
data_ov40_021917fc:
	.space 0x4
data_ov40_02191800:
	.space 0x4
data_ov40_02191804:
	.space 0x4
data_ov40_02191808:
	.space 0x4
data_ov40_0219180c:
	.space 0x4
data_ov40_02191810:
	.space 0x4
data_ov40_02191814:
	.space 0x4
data_ov40_02191818:
	.space 0x4
data_ov40_0219181c:
	.space 0x4
data_ov40_02191820:
	.space 0x4
data_ov40_02191824:
	.space 0x4
data_ov40_02191828:
	.space 0x4
data_ov40_0219182c:
	.space 0x4
data_ov40_02191830:
	.space 0x4
data_ov40_02191834:
	.space 0x4
data_ov40_02191838:
	.space 0x4
data_ov40_0219183c:
	.space 0x4
data_ov40_02191840:
	.space 0x4
data_ov40_02191844:
	.space 0x4
data_ov40_02191848:
	.space 0x4
data_ov40_0219184c:
	.space 0x4
data_ov40_02191850:
	.space 0x4
data_ov40_02191854:
	.space 0x4
data_ov40_02191858:
	.space 0x4
data_ov40_0219185c:
	.space 0x4
data_ov40_02191860:
	.space 0x4
data_ov40_02191864:
	.space 0x4
data_ov40_02191868:
	.space 0x4
data_ov40_0219186c:
	.space 0x4
data_ov40_02191870:
	.space 0x4
data_ov40_02191874:
	.space 0x4
data_ov40_02191878:
	.space 0x4
data_ov40_0219187c:
	.space 0x4
data_ov40_02191880:
	.space 0x4
data_ov40_02191884:
	.space 0x4
data_ov40_02191888:
	.space 0x4
data_ov40_0219188c:
	.space 0x4
data_ov40_02191890:
	.space 0x4
data_ov40_02191894:
	.space 0x4
data_ov40_02191898:
	.space 0x4
data_ov40_0219189c:
	.space 0x4
data_ov40_021918a0:
	.space 0x4
data_ov40_021918a4:
	.space 0x4
data_ov40_021918a8:
	.space 0x4
data_ov40_021918ac:
	.space 0x4
data_ov40_021918b0:
	.space 0x4
data_ov40_021918b4:
	.space 0x4
data_ov40_021918b8:
	.space 0x4
data_ov40_021918bc:
	.space 0x4
data_ov40_021918c0:
	.space 0x4
data_ov40_021918c4:
	.space 0x4
data_ov40_021918c8:
	.space 0x4
data_ov40_021918cc:
	.space 0x4
data_ov40_021918d0:
	.space 0x4
data_ov40_021918d4:
	.space 0x4
data_ov40_021918d8:
	.space 0x4
data_ov40_021918dc:
	.space 0x4
data_ov40_021918e0:
	.space 0x4
data_ov40_021918e4:
	.space 0x4
data_ov40_021918e8:
	.space 0x4
data_ov40_021918ec:
	.space 0x4
data_ov40_021918f0:
	.space 0x4
data_ov40_021918f4:
	.space 0x4
data_ov40_021918f8:
	.space 0x4
data_ov40_021918fc:
	.space 0x4
data_ov40_02191900:
	.space 0x4
data_ov40_02191904:
	.space 0x4
data_ov40_02191908:
	.space 0x4
data_ov40_0219190c:
	.space 0x4
data_ov40_02191910:
	.space 0x4
data_ov40_02191914:
	.space 0x4
data_ov40_02191918:
	.space 0x4
data_ov40_0219191c:
	.space 0x4
data_ov40_02191920:
	.space 0x4
data_ov40_02191924:
	.space 0x4
data_ov40_02191928:
	.space 0x4
data_ov40_0219192c:
	.space 0x4
data_ov40_02191930:
	.space 0x4
data_ov40_02191934:
	.space 0x4
data_ov40_02191938:
	.space 0x4
data_ov40_0219193c:
	.space 0x4
data_ov40_02191940:
	.space 0x4
data_ov40_02191944:
	.space 0x4
data_ov40_02191948:
	.space 0x4
data_ov40_0219194c:
	.space 0x4
data_ov40_02191950:
	.space 0x4
data_ov40_02191954:
	.space 0x4
data_ov40_02191958:
	.space 0x4
data_ov40_0219195c:
	.space 0x4
data_ov40_02191960:
	.space 0x4
data_ov40_02191964:
	.space 0x4
data_ov40_02191968:
	.space 0x4
data_ov40_0219196c:
	.space 0x4
data_ov40_02191970:
	.space 0x4
data_ov40_02191974:
	.space 0x4
data_ov40_02191978:
	.space 0x4
data_ov40_0219197c:
	.space 0x4
data_ov40_02191980:
	.space 0x4
data_ov40_02191984:
	.space 0x4
data_ov40_02191988:
	.space 0x4
data_ov40_0219198c:
	.space 0x4
data_ov40_02191990:
	.space 0x4
data_ov40_02191994:
	.space 0x4
data_ov40_02191998:
	.space 0x4
data_ov40_0219199c:
	.space 0x4
data_ov40_021919a0:
	.space 0x4
data_ov40_021919a4:
	.space 0x4
data_ov40_021919a8:
	.space 0x4
data_ov40_021919ac:
	.space 0x4
data_ov40_021919b0:
	.space 0x4
data_ov40_021919b4:
	.space 0x4
data_ov40_021919b8:
	.space 0x4
data_ov40_021919bc:
	.space 0x4
data_ov40_021919c0:
	.space 0x4
data_ov40_021919c4:
	.space 0x4
data_ov40_021919c8:
	.space 0x4
data_ov40_021919cc:
	.space 0x4
data_ov40_021919d0:
	.space 0x4
data_ov40_021919d4:
	.space 0x4
data_ov40_021919d8:
	.space 0x4
data_ov40_021919dc:
	.space 0x4
data_ov40_021919e0:
	.space 0x4
data_ov40_021919e4:
	.space 0x4
data_ov40_021919e8:
	.space 0x4
data_ov40_021919ec:
	.space 0x4
data_ov40_021919f0:
	.space 0x4
data_ov40_021919f4:
	.space 0x4
data_ov40_021919f8:
	.space 0x4
data_ov40_021919fc:
	.space 0x4
data_ov40_02191a00:
	.space 0x4
data_ov40_02191a04:
	.space 0x4
data_ov40_02191a08:
	.space 0x4
data_ov40_02191a0c:
	.space 0x4
data_ov40_02191a10:
	.space 0x4
data_ov40_02191a14:
	.space 0x4
data_ov40_02191a18:
	.space 0x4
data_ov40_02191a1c:
	.space 0x4
data_ov40_02191a20:
	.space 0x4
data_ov40_02191a24:
	.space 0x4
data_ov40_02191a28:
	.space 0x4
data_ov40_02191a2c:
	.space 0x4
data_ov40_02191a30:
	.space 0x4
data_ov40_02191a34:
	.space 0x4
data_ov40_02191a38:
	.space 0x4
data_ov40_02191a3c:
	.space 0x4
data_ov40_02191a40:
	.space 0x4
data_ov40_02191a44:
	.space 0x4
data_ov40_02191a48:
	.space 0x4
data_ov40_02191a4c:
	.space 0x4
data_ov40_02191a50:
	.space 0x4
data_ov40_02191a54:
	.space 0x4
data_ov40_02191a58:
	.space 0x4
data_ov40_02191a5c:
	.space 0x4
data_ov40_02191a60:
	.space 0x4
data_ov40_02191a64:
	.space 0x4
data_ov40_02191a68:
	.space 0x4
data_ov40_02191a6c:
	.space 0x4
data_ov40_02191a70:
	.space 0x4
data_ov40_02191a74:
	.space 0x4
data_ov40_02191a78:
	.space 0x4
data_ov40_02191a7c:
	.space 0x4
data_ov40_02191a80:
	.space 0x4
data_ov40_02191a84:
	.space 0x4
data_ov40_02191a88:
	.space 0x4
data_ov40_02191a8c:
	.space 0x4
data_ov40_02191a90:
	.space 0x4
data_ov40_02191a94:
	.space 0x4
data_ov40_02191a98:
	.space 0x4
data_ov40_02191a9c:
	.space 0x4
data_ov40_02191aa0:
	.space 0x4
data_ov40_02191aa4:
	.space 0x4
data_ov40_02191aa8:
	.space 0x4
data_ov40_02191aac:
	.space 0x4
data_ov40_02191ab0:
	.space 0x4
data_ov40_02191ab4:
	.space 0x4
data_ov40_02191ab8:
	.space 0x4
data_ov40_02191abc:
	.space 0x4
data_ov40_02191ac0:
	.space 0x4
data_ov40_02191ac4:
	.space 0x4
data_ov40_02191ac8:
	.space 0x4
data_ov40_02191acc:
	.space 0x4
data_ov40_02191ad0:
	.space 0x4
data_ov40_02191ad4:
	.space 0x4
data_ov40_02191ad8:
	.space 0x4
data_ov40_02191adc:
	.space 0x4
data_ov40_02191ae0:
	.space 0x4
data_ov40_02191ae4:
	.space 0x4
data_ov40_02191ae8:
	.space 0x4
data_ov40_02191aec:
	.space 0x4
data_ov40_02191af0:
	.space 0x4
data_ov40_02191af4:
	.space 0x4
data_ov40_02191af8:
	.space 0x4
data_ov40_02191afc:
	.space 0x4
data_ov40_02191b00:
	.space 0x4
data_ov40_02191b04:
	.space 0x4
data_ov40_02191b08:
	.space 0x4
data_ov40_02191b0c:
	.space 0x4
data_ov40_02191b10:
	.space 0x4
data_ov40_02191b14:
	.space 0x4
data_ov40_02191b18:
	.space 0x4
data_ov40_02191b1c:
	.space 0x4
data_ov40_02191b20:
	.space 0x4
data_ov40_02191b24:
	.space 0x4
data_ov40_02191b28:
	.space 0x4
data_ov40_02191b2c:
	.space 0x4
data_ov40_02191b30:
	.space 0x4
data_ov40_02191b34:
	.space 0x4
data_ov40_02191b38:
	.space 0x4
data_ov40_02191b3c:
	.space 0x4
data_ov40_02191b40:
	.space 0x4
data_ov40_02191b44:
	.space 0x4
data_ov40_02191b48:
	.space 0x4
data_ov40_02191b4c:
	.space 0x4
data_ov40_02191b50:
	.space 0x4
data_ov40_02191b54:
	.space 0x4
data_ov40_02191b58:
	.space 0x4
data_ov40_02191b5c:
	.space 0x4
data_ov40_02191b60:
	.space 0x4
data_ov40_02191b64:
	.space 0x4
data_ov40_02191b68:
	.space 0x4
data_ov40_02191b6c:
	.space 0x4
data_ov40_02191b70:
	.space 0x4
data_ov40_02191b74:
	.space 0x4
data_ov40_02191b78:
	.space 0x4
data_ov40_02191b7c:
	.space 0x4
data_ov40_02191b80:
	.space 0x4
data_ov40_02191b84:
	.space 0x4
data_ov40_02191b88:
	.space 0x4
data_ov40_02191b8c:
	.space 0x4
data_ov40_02191b90:
	.space 0x4
data_ov40_02191b94:
	.space 0x4
data_ov40_02191b98:
	.space 0x4
data_ov40_02191b9c:
	.space 0x4
data_ov40_02191ba0:
	.space 0x4
data_ov40_02191ba4:
	.space 0x4
data_ov40_02191ba8:
	.space 0x4
data_ov40_02191bac:
	.space 0x4
data_ov40_02191bb0:
	.space 0x4
data_ov40_02191bb4:
	.space 0x4
data_ov40_02191bb8:
	.space 0x4
data_ov40_02191bbc:
	.space 0x4
data_ov40_02191bc0:
	.space 0x4
data_ov40_02191bc4:
	.space 0x4
data_ov40_02191bc8:
	.space 0x4
data_ov40_02191bcc:
	.space 0x4
data_ov40_02191bd0:
	.space 0x4
data_ov40_02191bd4:
	.space 0x4
data_ov40_02191bd8:
	.space 0x4
data_ov40_02191bdc:
	.space 0x4
data_ov40_02191be0:
	.space 0x4
data_ov40_02191be4:
	.space 0x4
data_ov40_02191be8:
	.space 0x4
data_ov40_02191bec:
	.space 0x4
data_ov40_02191bf0:
	.space 0x4
data_ov40_02191bf4:
	.space 0x4
data_ov40_02191bf8:
	.space 0x4
data_ov40_02191bfc:
	.space 0x4
data_ov40_02191c00:
	.space 0x4
data_ov40_02191c04:
	.space 0x4
data_ov40_02191c08:
	.space 0x4
data_ov40_02191c0c:
	.space 0x4
data_ov40_02191c10:
	.space 0x4
data_ov40_02191c14:
	.space 0x4
data_ov40_02191c18:
	.space 0x4
data_ov40_02191c1c:
	.space 0x4
data_ov40_02191c20:
	.space 0x4
data_ov40_02191c24:
	.space 0x4
data_ov40_02191c28:
	.space 0x4
data_ov40_02191c2c:
	.space 0x4
data_ov40_02191c30:
	.space 0x4
data_ov40_02191c34:
	.space 0x4
data_ov40_02191c38:
	.space 0x4
data_ov40_02191c3c:
	.space 0x4
data_ov40_02191c40:
	.space 0x4
data_ov40_02191c44:
	.space 0x4
data_ov40_02191c48:
	.space 0x4
data_ov40_02191c4c:
	.space 0x4
data_ov40_02191c50:
	.space 0x4
data_ov40_02191c54:
	.space 0x4
data_ov40_02191c58:
	.space 0x4
data_ov40_02191c5c:
	.space 0x4
data_ov40_02191c60:
	.space 0x4
data_ov40_02191c64:
	.space 0x4
data_ov40_02191c68:
	.space 0x4
data_ov40_02191c6c:
	.space 0x4
data_ov40_02191c70:
	.space 0x4
data_ov40_02191c74:
	.space 0x4
data_ov40_02191c78:
	.space 0x4
data_ov40_02191c7c:
	.space 0x4
data_ov40_02191c80:
	.space 0x4
data_ov40_02191c84:
	.space 0x4
data_ov40_02191c88:
	.space 0x4
data_ov40_02191c8c:
	.space 0x4
data_ov40_02191c90:
	.space 0x4
data_ov40_02191c94:
	.space 0x4
data_ov40_02191c98:
	.space 0x4
data_ov40_02191c9c:
	.space 0x4
data_ov40_02191ca0:
	.space 0x4
data_ov40_02191ca4:
	.space 0x4
data_ov40_02191ca8:
	.space 0x4
data_ov40_02191cac:
	.space 0x4
data_ov40_02191cb0:
	.space 0x4
data_ov40_02191cb4:
	.space 0x4
data_ov40_02191cb8:
	.space 0x4
data_ov40_02191cbc:
	.space 0x4
data_ov40_02191cc0:
	.space 0x4
data_ov40_02191cc4:
	.space 0x4
data_ov40_02191cc8:
	.space 0x4
data_ov40_02191ccc:
	.space 0x4
data_ov40_02191cd0:
	.space 0x4
data_ov40_02191cd4:
	.space 0x4
data_ov40_02191cd8:
	.space 0x4
data_ov40_02191cdc:
	.space 0x4
data_ov40_02191ce0:
	.space 0x4
data_ov40_02191ce4:
	.space 0x4
data_ov40_02191ce8:
	.space 0x4
data_ov40_02191cec:
	.space 0x4
data_ov40_02191cf0:
	.space 0x4
data_ov40_02191cf4:
	.space 0x4
data_ov40_02191cf8:
	.space 0x4
data_ov40_02191cfc:
	.space 0x4
data_ov40_02191d00:
	.space 0x4
data_ov40_02191d04:
	.space 0x4
data_ov40_02191d08:
	.space 0x4
data_ov40_02191d0c:
	.space 0x4
data_ov40_02191d10:
	.space 0x4
data_ov40_02191d14:
	.space 0x4
data_ov40_02191d18:
	.space 0x4
data_ov40_02191d1c:
	.space 0x4
data_ov40_02191d20:
	.space 0x4
data_ov40_02191d24:
	.space 0x4
data_ov40_02191d28:
	.space 0x4
data_ov40_02191d2c:
	.space 0x4
data_ov40_02191d30:
	.space 0x4
data_ov40_02191d34:
	.space 0x4
data_ov40_02191d38:
	.space 0x4
data_ov40_02191d3c:
	.space 0x4
data_ov40_02191d40:
	.space 0x4
data_ov40_02191d44:
	.space 0x4
data_ov40_02191d48:
	.space 0x4
data_ov40_02191d4c:
	.space 0x4
data_ov40_02191d50:
	.space 0x4
data_ov40_02191d54:
	.space 0x4
data_ov40_02191d58:
	.space 0x4
data_ov40_02191d5c:
	.space 0x4
data_ov40_02191d60:
	.space 0x4
data_ov40_02191d64:
	.space 0x4
data_ov40_02191d68:
	.space 0x4
data_ov40_02191d6c:
	.space 0x4
data_ov40_02191d70:
	.space 0x4
data_ov40_02191d74:
	.space 0x4
data_ov40_02191d78:
	.space 0x4
data_ov40_02191d7c:
	.space 0x4
data_ov40_02191d80:
	.space 0x4
data_ov40_02191d84:
	.space 0x4
data_ov40_02191d88:
	.space 0x4
data_ov40_02191d8c:
	.space 0x4
data_ov40_02191d90:
	.space 0x4
data_ov40_02191d94:
	.space 0x4
data_ov40_02191d98:
	.space 0x4
data_ov40_02191d9c:
	.space 0x4
data_ov40_02191da0:
	.space 0x4
data_ov40_02191da4:
	.space 0x4
data_ov40_02191da8:
	.space 0x4
data_ov40_02191dac:
	.space 0x4
data_ov40_02191db0:
	.space 0x4
data_ov40_02191db4:
	.space 0x4
data_ov40_02191db8:
	.space 0x4
data_ov40_02191dbc:
	.space 0x4
data_ov40_02191dc0:
	.space 0x4
data_ov40_02191dc4:
	.space 0x4
data_ov40_02191dc8:
	.space 0x4
data_ov40_02191dcc:
	.space 0x4
data_ov40_02191dd0:
	.space 0x4
data_ov40_02191dd4:
	.space 0x4
data_ov40_02191dd8:
	.space 0x4
data_ov40_02191ddc:
	.space 0x4
data_ov40_02191de0:
	.space 0x4
data_ov40_02191de4:
	.space 0x4
data_ov40_02191de8:
	.space 0x4
data_ov40_02191dec:
	.space 0x4
data_ov40_02191df0:
	.space 0x4
data_ov40_02191df4:
	.space 0x4
data_ov40_02191df8:
	.space 0x4
data_ov40_02191dfc:
	.space 0x4
data_ov40_02191e00:
	.space 0x4
data_ov40_02191e04:
	.space 0x4
data_ov40_02191e08:
	.space 0x4
data_ov40_02191e0c:
	.space 0x4
data_ov40_02191e10:
	.space 0x4
data_ov40_02191e14:
	.space 0x4
data_ov40_02191e18:
	.space 0x4
data_ov40_02191e1c:
	.space 0x4
data_ov40_02191e20:
	.space 0x4
data_ov40_02191e24:
	.space 0x4
data_ov40_02191e28:
	.space 0x4
data_ov40_02191e2c:
	.space 0x4
data_ov40_02191e30:
	.space 0x4
data_ov40_02191e34:
	.space 0x4
data_ov40_02191e38:
	.space 0x4
data_ov40_02191e3c:
	.space 0x4
data_ov40_02191e40:
	.space 0x4
data_ov40_02191e44:
	.space 0x4
data_ov40_02191e48:
	.space 0x4
data_ov40_02191e4c:
	.space 0x4
data_ov40_02191e50:
	.space 0x4
data_ov40_02191e54:
	.space 0x4
data_ov40_02191e58:
	.space 0x4
data_ov40_02191e5c:
	.space 0x4
data_ov40_02191e60:
	.space 0x4
data_ov40_02191e64:
	.space 0x4
data_ov40_02191e68:
	.space 0x4
data_ov40_02191e6c:
	.space 0x4
data_ov40_02191e70:
	.space 0x4
data_ov40_02191e74:
	.space 0x4
data_ov40_02191e78:
	.space 0x4
data_ov40_02191e7c:
	.space 0x4
data_ov40_02191e80:
	.space 0x4
data_ov40_02191e84:
	.space 0x4
data_ov40_02191e88:
	.space 0x4
data_ov40_02191e8c:
	.space 0x4
data_ov40_02191e90:
	.space 0x4
data_ov40_02191e94:
	.space 0x4
data_ov40_02191e98:
	.space 0x4
data_ov40_02191e9c:
	.space 0x4
data_ov40_02191ea0:
	.space 0x4
data_ov40_02191ea4:
	.space 0x4
data_ov40_02191ea8:
	.space 0x4
data_ov40_02191eac:
	.space 0x4
data_ov40_02191eb0:
	.space 0x4
data_ov40_02191eb4:
	.space 0x4
data_ov40_02191eb8:
	.space 0x4
data_ov40_02191ebc:
	.space 0x4
data_ov40_02191ec0:
	.space 0x4
data_ov40_02191ec4:
	.space 0x4
data_ov40_02191ec8:
	.space 0x4
data_ov40_02191ecc:
	.space 0x4
data_ov40_02191ed0:
	.space 0x4
data_ov40_02191ed4:
	.space 0x4
data_ov40_02191ed8:
	.space 0x4
data_ov40_02191edc:
	.space 0x4
data_ov40_02191ee0:
	.space 0x4
data_ov40_02191ee4:
	.space 0x4
data_ov40_02191ee8:
	.space 0x4
data_ov40_02191eec:
	.space 0x4
data_ov40_02191ef0:
	.space 0x4
data_ov40_02191ef4:
	.space 0x4
data_ov40_02191ef8:
	.space 0x4
data_ov40_02191efc:
	.space 0x4
data_ov40_02191f00:
	.space 0x4
data_ov40_02191f04:
	.space 0x4
data_ov40_02191f08:
	.space 0x4
data_ov40_02191f0c:
	.space 0x4
data_ov40_02191f10:
	.space 0x4
data_ov40_02191f14:
	.space 0x4
data_ov40_02191f18:
	.space 0x4
data_ov40_02191f1c:
	.space 0x4
data_ov40_02191f20:
	.space 0x4
data_ov40_02191f24:
	.space 0x4
data_ov40_02191f28:
	.space 0x4
data_ov40_02191f2c:
	.space 0x4
data_ov40_02191f30:
	.space 0x4
data_ov40_02191f34:
	.space 0x4
data_ov40_02191f38:
	.space 0x4
data_ov40_02191f3c:
	.space 0x4
data_ov40_02191f40:
	.space 0x4
data_ov40_02191f44:
	.space 0x4
data_ov40_02191f48:
	.space 0x4
data_ov40_02191f4c:
	.space 0x4
data_ov40_02191f50:
	.space 0x4
data_ov40_02191f54:
	.space 0x4
data_ov40_02191f58:
	.space 0x4
data_ov40_02191f5c:
	.space 0x4
data_ov40_02191f60:
	.space 0x4
data_ov40_02191f64:
	.space 0x4
data_ov40_02191f68:
	.space 0x4
data_ov40_02191f6c:
	.space 0x4
data_ov40_02191f70:
	.space 0x4
data_ov40_02191f74:
	.space 0x4
data_ov40_02191f78:
	.space 0x4
data_ov40_02191f7c:
	.space 0x4
data_ov40_02191f80:
	.space 0x4
data_ov40_02191f84:
	.space 0x4
data_ov40_02191f88:
	.space 0x4
data_ov40_02191f8c:
	.space 0x4
data_ov40_02191f90:
	.space 0x4
data_ov40_02191f94:
	.space 0x4
data_ov40_02191f98:
	.space 0x4
data_ov40_02191f9c:
	.space 0x4
data_ov40_02191fa0:
	.space 0x4
data_ov40_02191fa4:
	.space 0x4
data_ov40_02191fa8:
	.space 0x4
data_ov40_02191fac:
	.space 0x4
data_ov40_02191fb0:
	.space 0x4
data_ov40_02191fb4:
	.space 0x4
data_ov40_02191fb8:
	.space 0x4
data_ov40_02191fbc:
	.space 0x4
data_ov40_02191fc0:
	.space 0x4
data_ov40_02191fc4:
	.space 0x4
data_ov40_02191fc8:
	.space 0x4
data_ov40_02191fcc:
	.space 0x4
data_ov40_02191fd0:
	.space 0x4
data_ov40_02191fd4:
	.space 0x4
data_ov40_02191fd8:
	.space 0x4
data_ov40_02191fdc:
	.space 0x4
data_ov40_02191fe0:
	.space 0x4
data_ov40_02191fe4:
	.space 0x4
data_ov40_02191fe8:
	.space 0x4
data_ov40_02191fec:
	.space 0x4
data_ov40_02191ff0:
	.space 0x4
data_ov40_02191ff4:
	.space 0x4
data_ov40_02191ff8:
	.space 0x4
data_ov40_02191ffc:
	.space 0x4
data_ov40_02192000:
	.space 0x4
data_ov40_02192004:
	.space 0x4
data_ov40_02192008:
	.space 0x4
data_ov40_0219200c:
	.space 0x4
data_ov40_02192010:
	.space 0x4
data_ov40_02192014:
	.space 0x4
data_ov40_02192018:
	.space 0x4
data_ov40_0219201c:
	.space 0x4
data_ov40_02192020:
	.space 0x4
data_ov40_02192024:
	.space 0x4
data_ov40_02192028:
	.space 0x4
data_ov40_0219202c:
	.space 0x4
data_ov40_02192030:
	.space 0x4
data_ov40_02192034:
	.space 0x4
data_ov40_02192038:
	.space 0x4
data_ov40_0219203c:
	.space 0x4
data_ov40_02192040:
	.space 0x4
data_ov40_02192044:
	.space 0x4
data_ov40_02192048:
	.space 0x4
data_ov40_0219204c:
	.space 0x4
data_ov40_02192050:
	.space 0x4
data_ov40_02192054:
	.space 0x4
data_ov40_02192058:
	.space 0x4
data_ov40_0219205c:
	.space 0x4
data_ov40_02192060:
	.space 0x4
data_ov40_02192064:
	.space 0x4
data_ov40_02192068:
	.space 0x4
data_ov40_0219206c:
	.space 0x4
data_ov40_02192070:
	.space 0x4
data_ov40_02192074:
	.space 0x4
data_ov40_02192078:
	.space 0x4
data_ov40_0219207c:
	.space 0x4
data_ov40_02192080:
	.space 0x4
data_ov40_02192084:
	.space 0x4
data_ov40_02192088:
	.space 0x4
data_ov40_0219208c:
	.space 0x4
data_ov40_02192090:
	.space 0x4
data_ov40_02192094:
	.space 0x4
data_ov40_02192098:
	.space 0x4
data_ov40_0219209c:
	.space 0x4
data_ov40_021920a0:
	.space 0x4
data_ov40_021920a4:
	.space 0x4
data_ov40_021920a8:
	.space 0x4
data_ov40_021920ac:
	.space 0x4
data_ov40_021920b0:
	.space 0x4
data_ov40_021920b4:
	.space 0x4
data_ov40_021920b8:
	.space 0x4
data_ov40_021920bc:
	.space 0x4
data_ov40_021920c0:
	.space 0x4
data_ov40_021920c4:
	.space 0x4
data_ov40_021920c8:
	.space 0x4
data_ov40_021920cc:
	.space 0x4
data_ov40_021920d0:
	.space 0x4
data_ov40_021920d4:
	.space 0x4
data_ov40_021920d8:
	.space 0x4
data_ov40_021920dc:
	.space 0x4
data_ov40_021920e0:
	.space 0x4
data_ov40_021920e4:
	.space 0x4
data_ov40_021920e8:
	.space 0x4
data_ov40_021920ec:
	.space 0x4
data_ov40_021920f0:
	.space 0x4
data_ov40_021920f4:
	.space 0x4
data_ov40_021920f8:
	.space 0x4
data_ov40_021920fc:
	.space 0x4
data_ov40_02192100:
	.space 0x4
data_ov40_02192104:
	.space 0x4
data_ov40_02192108:
	.space 0x4
data_ov40_0219210c:
	.space 0x4
data_ov40_02192110:
	.space 0x4
data_ov40_02192114:
	.space 0x4
data_ov40_02192118:
	.space 0x4
data_ov40_0219211c:
	.space 0x4
data_ov40_02192120:
	.space 0x4
data_ov40_02192124:
	.space 0x4
data_ov40_02192128:
	.space 0x4
data_ov40_0219212c:
	.space 0x4
data_ov40_02192130:
	.space 0x4
data_ov40_02192134:
	.space 0x4
data_ov40_02192138:
	.space 0x4
data_ov40_0219213c:
	.space 0x4
data_ov40_02192140:
	.space 0x4
data_ov40_02192144:
	.space 0x4
data_ov40_02192148:
	.space 0x4
data_ov40_0219214c:
	.space 0x4
data_ov40_02192150:
	.space 0x4
data_ov40_02192154:
	.space 0x4
data_ov40_02192158:
	.space 0x4
data_ov40_0219215c:
	.space 0x4
data_ov40_02192160:
	.space 0x4
data_ov40_02192164:
	.space 0x4
data_ov40_02192168:
	.space 0x4
data_ov40_0219216c:
	.space 0x4
data_ov40_02192170:
	.space 0x4
data_ov40_02192174:
	.space 0x4
data_ov40_02192178:
	.space 0x4
data_ov40_0219217c:
	.space 0x4
data_ov40_02192180:
	.space 0x4
data_ov40_02192184:
	.space 0x4
data_ov40_02192188:
	.space 0x4
data_ov40_0219218c:
	.space 0x4
data_ov40_02192190:
	.space 0x4
data_ov40_02192194:
	.space 0x4
data_ov40_02192198:
	.space 0x4
data_ov40_0219219c:
	.space 0x4
data_ov40_021921a0:
	.space 0x4
data_ov40_021921a4:
	.space 0x4
data_ov40_021921a8:
	.space 0x4
data_ov40_021921ac:
	.space 0x4
data_ov40_021921b0:
	.space 0x4
data_ov40_021921b4:
	.space 0x4
data_ov40_021921b8:
	.space 0x4
data_ov40_021921bc:
	.space 0x4
data_ov40_021921c0:
	.space 0x4
data_ov40_021921c4:
	.space 0x4
data_ov40_021921c8:
	.space 0x4
data_ov40_021921cc:
	.space 0x4
data_ov40_021921d0:
	.space 0x4
data_ov40_021921d4:
	.space 0x4
data_ov40_021921d8:
	.space 0x4
data_ov40_021921dc:
	.space 0x4
data_ov40_021921e0:
	.space 0x4
data_ov40_021921e4:
	.space 0x4
data_ov40_021921e8:
	.space 0x4
data_ov40_021921ec:
	.space 0x4
data_ov40_021921f0:
	.space 0x4
data_ov40_021921f4:
	.space 0x4
data_ov40_021921f8:
	.space 0x4
data_ov40_021921fc:
	.space 0x4
data_ov40_02192200:
	.space 0x4
data_ov40_02192204:
	.space 0x4
data_ov40_02192208:
	.space 0x4
data_ov40_0219220c:
	.space 0x4
data_ov40_02192210:
	.space 0x4
data_ov40_02192214:
	.space 0x4
data_ov40_02192218:
	.space 0x4
data_ov40_0219221c:
	.space 0x4
data_ov40_02192220:
	.space 0x4
data_ov40_02192224:
	.space 0x4
data_ov40_02192228:
	.space 0x4
data_ov40_0219222c:
	.space 0x4
data_ov40_02192230:
	.space 0x4
data_ov40_02192234:
	.space 0x4
data_ov40_02192238:
	.space 0x4
data_ov40_0219223c:
	.space 0x4
data_ov40_02192240:
	.space 0x4
data_ov40_02192244:
	.space 0x4
data_ov40_02192248:
	.space 0x4
data_ov40_0219224c:
	.space 0x4
data_ov40_02192250:
	.space 0x4
data_ov40_02192254:
	.space 0x4
data_ov40_02192258:
	.space 0x4
data_ov40_0219225c:
	.space 0x4
data_ov40_02192260:
	.space 0x4
data_ov40_02192264:
	.space 0x4
data_ov40_02192268:
	.space 0x4
data_ov40_0219226c:
	.space 0x4
data_ov40_02192270:
	.space 0x4
data_ov40_02192274:
	.space 0x4
data_ov40_02192278:
	.space 0x4
data_ov40_0219227c:
	.space 0x4
data_ov40_02192280:
	.space 0x4
data_ov40_02192284:
	.space 0x4
data_ov40_02192288:
	.space 0x4
data_ov40_0219228c:
	.space 0x4
data_ov40_02192290:
	.space 0x4
data_ov40_02192294:
	.space 0x4
data_ov40_02192298:
	.space 0x4
data_ov40_0219229c:
	.space 0x4
data_ov40_021922a0:
	.space 0x4
data_ov40_021922a4:
	.space 0x4
data_ov40_021922a8:
	.space 0x4
data_ov40_021922ac:
	.space 0x4
data_ov40_021922b0:
	.space 0x4
data_ov40_021922b4:
	.space 0x4
data_ov40_021922b8:
	.space 0x4
data_ov40_021922bc:
	.space 0x4
data_ov40_021922c0:
	.space 0x4
data_ov40_021922c4:
	.space 0x4
data_ov40_021922c8:
	.space 0x4
data_ov40_021922cc:
	.space 0x4
data_ov40_021922d0:
	.space 0x4
data_ov40_021922d4:
	.space 0x4
data_ov40_021922d8:
	.space 0x4
data_ov40_021922dc:
	.space 0x4
data_ov40_021922e0:
	.space 0x4
data_ov40_021922e4:
	.space 0x4
data_ov40_021922e8:
	.space 0x4
data_ov40_021922ec:
	.space 0x4
data_ov40_021922f0:
	.space 0x4
data_ov40_021922f4:
	.space 0x4
data_ov40_021922f8:
	.space 0x4
data_ov40_021922fc:
	.space 0x4
data_ov40_02192300:
	.space 0x4
data_ov40_02192304:
	.space 0x4
data_ov40_02192308:
	.space 0x4
data_ov40_0219230c:
	.space 0x4
data_ov40_02192310:
	.space 0x4
data_ov40_02192314:
	.space 0x4
data_ov40_02192318:
	.space 0x4
data_ov40_0219231c:
	.space 0x4
data_ov40_02192320:
	.space 0x4
data_ov40_02192324:
	.space 0x4
data_ov40_02192328:
	.space 0x4
data_ov40_0219232c:
	.space 0x4
data_ov40_02192330:
	.space 0x4
data_ov40_02192334:
	.space 0x4
data_ov40_02192338:
	.space 0x4
data_ov40_0219233c:
	.space 0x4
data_ov40_02192340:
	.space 0x4
data_ov40_02192344:
	.space 0x4
data_ov40_02192348:
	.space 0x4
data_ov40_0219234c:
	.space 0x4
data_ov40_02192350:
	.space 0x4
data_ov40_02192354:
	.space 0x4
data_ov40_02192358:
	.space 0x4
data_ov40_0219235c:
	.space 0x4
data_ov40_02192360:
	.space 0x4
data_ov40_02192364:
	.space 0x4
data_ov40_02192368:
	.space 0x4
data_ov40_0219236c:
	.space 0x4
data_ov40_02192370:
	.space 0x4
data_ov40_02192374:
	.space 0x4
data_ov40_02192378:
	.space 0x4
data_ov40_0219237c:
	.space 0x4
data_ov40_02192380:
	.space 0x4
data_ov40_02192384:
	.space 0x4
data_ov40_02192388:
	.space 0x4
data_ov40_0219238c:
	.space 0x4
data_ov40_02192390:
	.space 0x4
data_ov40_02192394:
	.space 0x4
data_ov40_02192398:
	.space 0x4
data_ov40_0219239c:
	.space 0x4
data_ov40_021923a0:
	.space 0x4
data_ov40_021923a4:
	.space 0x4
data_ov40_021923a8:
	.space 0x4
data_ov40_021923ac:
	.space 0x4
data_ov40_021923b0:
	.space 0x4
data_ov40_021923b4:
	.space 0x4
data_ov40_021923b8:
	.space 0x4
data_ov40_021923bc:
	.space 0x4
data_ov40_021923c0:
	.space 0x4
data_ov40_021923c4:
	.space 0x4
data_ov40_021923c8:
	.space 0x4
data_ov40_021923cc:
	.space 0x4
data_ov40_021923d0:
	.space 0x4
data_ov40_021923d4:
	.space 0x4
data_ov40_021923d8:
	.space 0x4
data_ov40_021923dc:
	.space 0x4
data_ov40_021923e0:
	.space 0x4
data_ov40_021923e4:
	.space 0x4
data_ov40_021923e8:
	.space 0x4
data_ov40_021923ec:
	.space 0x4
data_ov40_021923f0:
	.space 0x4
data_ov40_021923f4:
	.space 0x4
data_ov40_021923f8:
	.space 0x4
data_ov40_021923fc:
	.space 0x4
data_ov40_02192400:
	.space 0x4
data_ov40_02192404:
	.space 0x4
data_ov40_02192408:
	.space 0x4
data_ov40_0219240c:
	.space 0x4
data_ov40_02192410:
	.space 0x4
data_ov40_02192414:
	.space 0x4
data_ov40_02192418:
	.space 0x4
data_ov40_0219241c:
	.space 0x4
data_ov40_02192420:
	.space 0x4
data_ov40_02192424:
	.space 0x4
data_ov40_02192428:
	.space 0x4
data_ov40_0219242c:
	.space 0x4
data_ov40_02192430:
	.space 0x4
data_ov40_02192434:
	.space 0x4
data_ov40_02192438:
	.space 0x4
data_ov40_0219243c:
	.space 0x4
data_ov40_02192440:
	.space 0x4
data_ov40_02192444:
	.space 0x4
data_ov40_02192448:
	.space 0x4
data_ov40_0219244c:
	.space 0x4
data_ov40_02192450:
	.space 0x4
data_ov40_02192454:
	.space 0x4
data_ov40_02192458:
	.space 0x4
data_ov40_0219245c:
	.space 0x4
data_ov40_02192460:
	.space 0x4
data_ov40_02192464:
	.space 0x4
data_ov40_02192468:
	.space 0x4
data_ov40_0219246c:
	.space 0x4
data_ov40_02192470:
	.space 0x4
data_ov40_02192474:
	.space 0x4
data_ov40_02192478:
	.space 0x4
data_ov40_0219247c:
	.space 0x4
data_ov40_02192480:
	.space 0x4
data_ov40_02192484:
	.space 0x4
data_ov40_02192488:
	.space 0x4
data_ov40_0219248c:
	.space 0x4
data_ov40_02192490:
	.space 0x4
data_ov40_02192494:
	.space 0x4
data_ov40_02192498:
	.space 0x4
data_ov40_0219249c:
	.space 0x4
data_ov40_021924a0:
	.space 0x4
data_ov40_021924a4:
	.space 0x4
data_ov40_021924a8:
	.space 0x4
data_ov40_021924ac:
	.space 0x4
data_ov40_021924b0:
	.space 0x4
data_ov40_021924b4:
	.space 0x4
data_ov40_021924b8:
	.space 0x4
data_ov40_021924bc:
	.space 0x4
data_ov40_021924c0:
	.space 0x4
data_ov40_021924c4:
	.space 0x4
data_ov40_021924c8:
	.space 0x4
data_ov40_021924cc:
	.space 0x4
data_ov40_021924d0:
	.space 0x4
data_ov40_021924d4:
	.space 0x4
data_ov40_021924d8:
	.space 0x4
data_ov40_021924dc:
	.space 0x4
data_ov40_021924e0:
	.space 0x4
data_ov40_021924e4:
	.space 0x4
data_ov40_021924e8:
	.space 0x4
data_ov40_021924ec:
	.space 0x4
data_ov40_021924f0:
	.space 0x4
data_ov40_021924f4:
	.space 0x4
data_ov40_021924f8:
	.space 0x4
data_ov40_021924fc:
	.space 0x4
data_ov40_02192500:
	.space 0x4
data_ov40_02192504:
	.space 0x4
data_ov40_02192508:
	.space 0x4
data_ov40_0219250c:
	.space 0x4
data_ov40_02192510:
	.space 0x4
data_ov40_02192514:
	.space 0x4
data_ov40_02192518:
	.space 0x4
data_ov40_0219251c:
	.space 0x4
data_ov40_02192520:
	.space 0x4
data_ov40_02192524:
	.space 0x4
data_ov40_02192528:
	.space 0x4
data_ov40_0219252c:
	.space 0x4
data_ov40_02192530:
	.space 0x4
data_ov40_02192534:
	.space 0x4
data_ov40_02192538:
	.space 0x4
data_ov40_0219253c:
	.space 0x4
data_ov40_02192540:
	.space 0x4
data_ov40_02192544:
	.space 0x4
data_ov40_02192548:
	.space 0x4
data_ov40_0219254c:
	.space 0x4
data_ov40_02192550:
	.space 0x4
data_ov40_02192554:
	.space 0x4
data_ov40_02192558:
	.space 0x4
data_ov40_0219255c:
	.space 0x4
data_ov40_02192560:
	.space 0x4
data_ov40_02192564:
	.space 0x4
data_ov40_02192568:
	.space 0x4
data_ov40_0219256c:
	.space 0x4
data_ov40_02192570:
	.space 0x4
data_ov40_02192574:
	.space 0x4
data_ov40_02192578:
	.space 0x4
data_ov40_0219257c:
	.space 0x4
data_ov40_02192580:
	.space 0x4
data_ov40_02192584:
	.space 0x4
data_ov40_02192588:
	.space 0x4
data_ov40_0219258c:
	.space 0x4
data_ov40_02192590:
	.space 0x4
data_ov40_02192594:
	.space 0x4
data_ov40_02192598:
	.space 0x4
data_ov40_0219259c:
	.space 0x4
data_ov40_021925a0:
	.space 0x4
data_ov40_021925a4:
	.space 0x4
data_ov40_021925a8:
	.space 0x4
data_ov40_021925ac:
	.space 0x4
data_ov40_021925b0:
	.space 0x4
data_ov40_021925b4:
	.space 0x4
data_ov40_021925b8:
	.space 0x4
data_ov40_021925bc:
	.space 0x4
data_ov40_021925c0:
	.space 0x4
data_ov40_021925c4:
	.space 0x4
data_ov40_021925c8:
	.space 0x4
data_ov40_021925cc:
	.space 0x4
data_ov40_021925d0:
	.space 0x4
data_ov40_021925d4:
	.space 0x4
data_ov40_021925d8:
	.space 0x4
data_ov40_021925dc:
	.space 0x4
data_ov40_021925e0:
	.space 0x4
data_ov40_021925e4:
	.space 0x4
data_ov40_021925e8:
	.space 0x4
data_ov40_021925ec:
	.space 0x4
data_ov40_021925f0:
	.space 0x4
data_ov40_021925f4:
	.space 0x4
data_ov40_021925f8:
	.space 0x4
data_ov40_021925fc:
	.space 0x4
data_ov40_02192600:
	.space 0x4
data_ov40_02192604:
	.space 0x4
data_ov40_02192608:
	.space 0x4
data_ov40_0219260c:
	.space 0x4
data_ov40_02192610:
	.space 0x4
data_ov40_02192614:
	.space 0x4
data_ov40_02192618:
	.space 0x4
data_ov40_0219261c:
	.space 0x4
data_ov40_02192620:
	.space 0x4
data_ov40_02192624:
	.space 0x4
data_ov40_02192628:
	.space 0x4
data_ov40_0219262c:
	.space 0x4
data_ov40_02192630:
	.space 0x4
data_ov40_02192634:
	.space 0x4
data_ov40_02192638:
	.space 0x4
data_ov40_0219263c:
	.space 0x4
data_ov40_02192640:
	.space 0x4
data_ov40_02192644:
	.space 0x4
data_ov40_02192648:
	.space 0x4
data_ov40_0219264c:
	.space 0x4
data_ov40_02192650:
	.space 0x4
data_ov40_02192654:
	.space 0x4
data_ov40_02192658:
	.space 0x4
data_ov40_0219265c:
	.space 0x4
data_ov40_02192660:
	.space 0x4
data_ov40_02192664:
	.space 0x4
data_ov40_02192668:
	.space 0x4
data_ov40_0219266c:
	.space 0x4
data_ov40_02192670:
	.space 0x4
data_ov40_02192674:
	.space 0x4
data_ov40_02192678:
	.space 0x4
data_ov40_0219267c:
	.space 0x4
data_ov40_02192680:
	.space 0x4
data_ov40_02192684:
	.space 0x4
data_ov40_02192688:
	.space 0x4
data_ov40_0219268c:
	.space 0x4
data_ov40_02192690:
	.space 0x4
data_ov40_02192694:
	.space 0x4
data_ov40_02192698:
	.space 0x4
data_ov40_0219269c:
	.space 0x4
data_ov40_021926a0:
	.space 0x4
data_ov40_021926a4:
	.space 0x4
data_ov40_021926a8:
	.space 0x4
data_ov40_021926ac:
	.space 0x4
data_ov40_021926b0:
	.space 0x4
data_ov40_021926b4:
	.space 0x4
data_ov40_021926b8:
	.space 0x4
data_ov40_021926bc:
	.space 0x4
data_ov40_021926c0:
	.space 0x4
data_ov40_021926c4:
	.space 0x4
data_ov40_021926c8:
	.space 0x4
data_ov40_021926cc:
	.space 0x4
data_ov40_021926d0:
	.space 0x4
data_ov40_021926d4:
	.space 0x4
data_ov40_021926d8:
	.space 0x4
data_ov40_021926dc:
	.space 0x4
data_ov40_021926e0:
	.space 0x4
data_ov40_021926e4:
	.space 0x4
data_ov40_021926e8:
	.space 0x4
data_ov40_021926ec:
	.space 0x4
data_ov40_021926f0:
	.space 0x4
data_ov40_021926f4:
	.space 0x4
data_ov40_021926f8:
	.space 0x4
data_ov40_021926fc:
	.space 0x4
data_ov40_02192700:
	.space 0x4
data_ov40_02192704:
	.space 0x4
data_ov40_02192708:
	.space 0x4
data_ov40_0219270c:
	.space 0x4
data_ov40_02192710:
	.space 0x4
data_ov40_02192714:
	.space 0x4
data_ov40_02192718:
	.space 0x4
data_ov40_0219271c:
	.space 0x4
data_ov40_02192720:
	.space 0x4
data_ov40_02192724:
	.space 0x4
data_ov40_02192728:
	.space 0x4
data_ov40_0219272c:
	.space 0x4
data_ov40_02192730:
	.space 0x4
data_ov40_02192734:
	.space 0x4
data_ov40_02192738:
	.space 0x4
data_ov40_0219273c:
	.space 0x4
data_ov40_02192740:
	.space 0x4
data_ov40_02192744:
	.space 0x4
data_ov40_02192748:
	.space 0x4
data_ov40_0219274c:
	.space 0x4
data_ov40_02192750:
	.space 0x4
data_ov40_02192754:
	.space 0x4
data_ov40_02192758:
	.space 0x4
data_ov40_0219275c:
	.space 0x4
data_ov40_02192760:
	.space 0x4
data_ov40_02192764:
	.space 0x4
data_ov40_02192768:
	.space 0x4
data_ov40_0219276c:
	.space 0x4
data_ov40_02192770:
	.space 0x4
data_ov40_02192774:
	.space 0x4
data_ov40_02192778:
	.space 0x4
data_ov40_0219277c:
	.space 0x4
data_ov40_02192780:
	.space 0x4
data_ov40_02192784:
	.space 0x4
data_ov40_02192788:
	.space 0x4
data_ov40_0219278c:
	.space 0x4
data_ov40_02192790:
	.space 0x4
data_ov40_02192794:
	.space 0x4
data_ov40_02192798:
	.space 0x4
data_ov40_0219279c:
	.space 0x4
data_ov40_021927a0:
	.space 0x4
data_ov40_021927a4:
	.space 0x4
data_ov40_021927a8:
	.space 0x4
data_ov40_021927ac:
	.space 0x4
data_ov40_021927b0:
	.space 0x4
data_ov40_021927b4:
	.space 0x4
data_ov40_021927b8:
	.space 0x4
data_ov40_021927bc:
	.space 0x4
data_ov40_021927c0:
	.space 0x4
data_ov40_021927c4:
	.space 0x4
data_ov40_021927c8:
	.space 0x4
data_ov40_021927cc:
	.space 0x4
data_ov40_021927d0:
	.space 0x4
data_ov40_021927d4:
	.space 0x4
data_ov40_021927d8:
	.space 0x4
data_ov40_021927dc:
	.space 0x4
data_ov40_021927e0:
	.space 0x4
data_ov40_021927e4:
	.space 0x4
data_ov40_021927e8:
	.space 0x4
data_ov40_021927ec:
	.space 0x4
data_ov40_021927f0:
	.space 0x4
data_ov40_021927f4:
	.space 0x4
data_ov40_021927f8:
	.space 0x4
data_ov40_021927fc:
	.space 0x4
data_ov40_02192800:
	.space 0x4
data_ov40_02192804:
	.space 0x4
data_ov40_02192808:
	.space 0x4
data_ov40_0219280c:
	.space 0x4
data_ov40_02192810:
	.space 0x4
data_ov40_02192814:
	.space 0x4
data_ov40_02192818:
	.space 0x4
data_ov40_0219281c:
	.space 0x4
data_ov40_02192820:
	.space 0x4
data_ov40_02192824:
	.space 0x4
data_ov40_02192828:
	.space 0x4
data_ov40_0219282c:
	.space 0x4
data_ov40_02192830:
	.space 0x4
data_ov40_02192834:
	.space 0x4
data_ov40_02192838:
	.space 0x4
data_ov40_0219283c:
	.space 0x4
data_ov40_02192840:
	.space 0x4
data_ov40_02192844:
	.space 0x4
data_ov40_02192848:
	.space 0x4
data_ov40_0219284c:
	.space 0x4
data_ov40_02192850:
	.space 0x4
data_ov40_02192854:
	.space 0x4
data_ov40_02192858:
	.space 0x4
data_ov40_0219285c:
	.space 0x4
data_ov40_02192860:
	.space 0x4
data_ov40_02192864:
	.space 0x4
data_ov40_02192868:
	.space 0x4
data_ov40_0219286c:
	.space 0x4
data_ov40_02192870:
	.space 0x4
data_ov40_02192874:
	.space 0x4
data_ov40_02192878:
	.space 0x4
data_ov40_0219287c:
	.space 0x4
data_ov40_02192880:
	.space 0x4
data_ov40_02192884:
	.space 0x4
data_ov40_02192888:
	.space 0x4
data_ov40_0219288c:
	.space 0x4
data_ov40_02192890:
	.space 0x4
data_ov40_02192894:
	.space 0x4
data_ov40_02192898:
	.space 0x4
data_ov40_0219289c:
	.space 0x4
data_ov40_021928a0:
	.space 0x4
data_ov40_021928a4:
	.space 0x4
data_ov40_021928a8:
	.space 0x4
data_ov40_021928ac:
	.space 0x4
data_ov40_021928b0:
	.space 0x4
data_ov40_021928b4:
	.space 0x4
data_ov40_021928b8:
	.space 0x4
data_ov40_021928bc:
	.space 0x4
data_ov40_021928c0:
	.space 0x4
data_ov40_021928c4:
	.space 0x4
data_ov40_021928c8:
	.space 0x4
data_ov40_021928cc:
	.space 0x4
data_ov40_021928d0:
	.space 0x4
data_ov40_021928d4:
	.space 0x4
data_ov40_021928d8:
	.space 0x4
data_ov40_021928dc:
	.space 0x4
data_ov40_021928e0:
	.space 0x4
data_ov40_021928e4:
	.space 0x4
data_ov40_021928e8:
	.space 0x4
data_ov40_021928ec:
	.space 0x4
data_ov40_021928f0:
	.space 0x4
data_ov40_021928f4:
	.space 0x4
data_ov40_021928f8:
	.space 0x4
data_ov40_021928fc:
	.space 0x4
data_ov40_02192900:
	.space 0x4
data_ov40_02192904:
	.space 0x4
data_ov40_02192908:
	.space 0x4
data_ov40_0219290c:
	.space 0x4
data_ov40_02192910:
	.space 0x4
data_ov40_02192914:
	.space 0x4
data_ov40_02192918:
	.space 0x4
data_ov40_0219291c:
	.space 0x4
data_ov40_02192920:
	.space 0x4
data_ov40_02192924:
	.space 0x4
data_ov40_02192928:
	.space 0x4
data_ov40_0219292c:
	.space 0x4
data_ov40_02192930:
	.space 0x4
data_ov40_02192934:
	.space 0x4
data_ov40_02192938:
	.space 0x4
data_ov40_0219293c:
	.space 0x4
data_ov40_02192940:
	.space 0x4
data_ov40_02192944:
	.space 0x4
data_ov40_02192948:
	.space 0x4
data_ov40_0219294c:
	.space 0x4
data_ov40_02192950:
	.space 0x4
data_ov40_02192954:
	.space 0x4
data_ov40_02192958:
	.space 0x4
data_ov40_0219295c:
	.space 0x4
data_ov40_02192960:
	.space 0x4
data_ov40_02192964:
	.space 0x4
data_ov40_02192968:
	.space 0x4
data_ov40_0219296c:
	.space 0x4
data_ov40_02192970:
	.space 0x4
data_ov40_02192974:
	.space 0x4
data_ov40_02192978:
	.space 0x4
data_ov40_0219297c:
	.space 0x4
data_ov40_02192980:
	.space 0x4
data_ov40_02192984:
	.space 0x4
data_ov40_02192988:
	.space 0x4
data_ov40_0219298c:
	.space 0x4
data_ov40_02192990:
	.space 0x4
data_ov40_02192994:
	.space 0x4
data_ov40_02192998:
	.space 0x4
data_ov40_0219299c:
	.space 0x4
data_ov40_021929a0:
	.space 0x4
data_ov40_021929a4:
	.space 0x4
data_ov40_021929a8:
	.space 0x4
data_ov40_021929ac:
	.space 0x4
data_ov40_021929b0:
	.space 0x4
data_ov40_021929b4:
	.space 0x4
data_ov40_021929b8:
	.space 0x4
data_ov40_021929bc:
	.space 0x4
data_ov40_021929c0:
	.space 0x4
data_ov40_021929c4:
	.space 0x4
data_ov40_021929c8:
	.space 0x4
data_ov40_021929cc:
	.space 0x4
data_ov40_021929d0:
	.space 0x4
data_ov40_021929d4:
	.space 0x4
data_ov40_021929d8:
	.space 0x4
data_ov40_021929dc:
	.space 0x4
data_ov40_021929e0:
	.space 0x4
data_ov40_021929e4:
	.space 0x4
data_ov40_021929e8:
	.space 0x4
data_ov40_021929ec:
	.space 0x4
data_ov40_021929f0:
	.space 0x4
data_ov40_021929f4:
	.space 0x4
data_ov40_021929f8:
	.space 0x4
data_ov40_021929fc:
	.space 0x4
data_ov40_02192a00:
	.space 0x4
data_ov40_02192a04:
	.space 0x4
data_ov40_02192a08:
	.space 0x4
data_ov40_02192a0c:
	.space 0x4
data_ov40_02192a10:
	.space 0x4
data_ov40_02192a14:
	.space 0x4
data_ov40_02192a18:
	.space 0x4
data_ov40_02192a1c:
	.space 0x4
data_ov40_02192a20:
	.space 0x4
data_ov40_02192a24:
	.space 0x4
data_ov40_02192a28:
	.space 0x4
data_ov40_02192a2c:
	.space 0x4
data_ov40_02192a30:
	.space 0x4
data_ov40_02192a34:
	.space 0x4
data_ov40_02192a38:
	.space 0x4
data_ov40_02192a3c:
	.space 0x4
data_ov40_02192a40:
	.space 0x4
data_ov40_02192a44:
	.space 0x4
data_ov40_02192a48:
	.space 0x4
data_ov40_02192a4c:
	.space 0x4
data_ov40_02192a50:
	.space 0x4
data_ov40_02192a54:
	.space 0x4
data_ov40_02192a58:
	.space 0x4
data_ov40_02192a5c:
	.space 0x4
data_ov40_02192a60:
	.space 0x4
data_ov40_02192a64:
	.space 0x4
data_ov40_02192a68:
	.space 0x4
data_ov40_02192a6c:
	.space 0x4
data_ov40_02192a70:
	.space 0x4
data_ov40_02192a74:
	.space 0x4
data_ov40_02192a78:
	.space 0x4
data_ov40_02192a7c:
	.space 0x4
data_ov40_02192a80:
	.space 0x4
data_ov40_02192a84:
	.space 0x4
data_ov40_02192a88:
	.space 0x4
data_ov40_02192a8c:
	.space 0x4
data_ov40_02192a90:
	.space 0x4
data_ov40_02192a94:
	.space 0x4
data_ov40_02192a98:
	.space 0x4
data_ov40_02192a9c:
	.space 0x4
data_ov40_02192aa0:
	.space 0x4
data_ov40_02192aa4:
	.space 0x4
data_ov40_02192aa8:
	.space 0x4
data_ov40_02192aac:
	.space 0x4
data_ov40_02192ab0:
	.space 0x4
data_ov40_02192ab4:
	.space 0x4
data_ov40_02192ab8:
	.space 0x4
data_ov40_02192abc:
	.space 0x4
data_ov40_02192ac0:
	.space 0x4
data_ov40_02192ac4:
	.space 0x4
data_ov40_02192ac8:
	.space 0x4
data_ov40_02192acc:
	.space 0x4
data_ov40_02192ad0:
	.space 0x4
data_ov40_02192ad4:
	.space 0x4
data_ov40_02192ad8:
	.space 0x4
data_ov40_02192adc:
	.space 0x4
data_ov40_02192ae0:
	.space 0x4
data_ov40_02192ae4:
	.space 0x4
data_ov40_02192ae8:
	.space 0x4
data_ov40_02192aec:
	.space 0x4
data_ov40_02192af0:
	.space 0x4
data_ov40_02192af4:
	.space 0x4
data_ov40_02192af8:
	.space 0x4
data_ov40_02192afc:
	.space 0x4
data_ov40_02192b00:
	.space 0x4
data_ov40_02192b04:
	.space 0x4
data_ov40_02192b08:
	.space 0x4
data_ov40_02192b0c:
	.space 0x4
data_ov40_02192b10:
	.space 0x4
data_ov40_02192b14:
	.space 0x4
data_ov40_02192b18:
	.space 0x4
data_ov40_02192b1c:
	.space 0x4
data_ov40_02192b20:
	.space 0x4
data_ov40_02192b24:
	.space 0x4
data_ov40_02192b28:
	.space 0x4
data_ov40_02192b2c:
	.space 0x4
data_ov40_02192b30:
	.space 0x4
data_ov40_02192b34:
	.space 0x4
data_ov40_02192b38:
	.space 0x4
data_ov40_02192b3c:
	.space 0x4
data_ov40_02192b40:
	.space 0x4
data_ov40_02192b44:
	.space 0x4
data_ov40_02192b48:
	.space 0x4
data_ov40_02192b4c:
	.space 0x4
data_ov40_02192b50:
	.space 0x4
data_ov40_02192b54:
	.space 0x4
data_ov40_02192b58:
	.space 0x4
data_ov40_02192b5c:
	.space 0x4
data_ov40_02192b60:
	.space 0x4
data_ov40_02192b64:
	.space 0x4
data_ov40_02192b68:
	.space 0x4
data_ov40_02192b6c:
	.space 0x4
data_ov40_02192b70:
	.space 0x4
data_ov40_02192b74:
	.space 0x4
data_ov40_02192b78:
	.space 0x4
data_ov40_02192b7c:
	.space 0x4
data_ov40_02192b80:
	.space 0x4
data_ov40_02192b84:
	.space 0x4
data_ov40_02192b88:
	.space 0x4
data_ov40_02192b8c:
	.space 0x4
data_ov40_02192b90:
	.space 0x4
data_ov40_02192b94:
	.space 0x4
data_ov40_02192b98:
	.space 0x4
data_ov40_02192b9c:
	.space 0x4
data_ov40_02192ba0:
	.space 0x4
data_ov40_02192ba4:
	.space 0x4
data_ov40_02192ba8:
	.space 0x4
data_ov40_02192bac:
	.space 0x4
data_ov40_02192bb0:
	.space 0x4
data_ov40_02192bb4:
	.space 0x4
data_ov40_02192bb8:
	.space 0x4
data_ov40_02192bbc:
	.space 0x4
data_ov40_02192bc0:
	.space 0x4
data_ov40_02192bc4:
	.space 0x4
data_ov40_02192bc8:
	.space 0x4
data_ov40_02192bcc:
	.space 0x4
data_ov40_02192bd0:
	.space 0x4
data_ov40_02192bd4:
	.space 0x4
data_ov40_02192bd8:
	.space 0x4
data_ov40_02192bdc:
	.space 0x4
data_ov40_02192be0:
	.space 0x4
data_ov40_02192be4:
	.space 0x4
data_ov40_02192be8:
	.space 0x4
data_ov40_02192bec:
	.space 0x4
data_ov40_02192bf0:
	.space 0x4
data_ov40_02192bf4:
	.space 0x4
data_ov40_02192bf8:
	.space 0x4
data_ov40_02192bfc:
	.space 0x4
data_ov40_02192c00:
	.space 0x4
data_ov40_02192c04:
	.space 0x4
data_ov40_02192c08:
	.space 0x4
data_ov40_02192c0c:
	.space 0x4
data_ov40_02192c10:
	.space 0x4
data_ov40_02192c14:
	.space 0x4
data_ov40_02192c18:
	.space 0x4
data_ov40_02192c1c:
	.space 0x4
data_ov40_02192c20:
	.space 0x4
data_ov40_02192c24:
	.space 0x4
data_ov40_02192c28:
	.space 0x4
data_ov40_02192c2c:
	.space 0x4
data_ov40_02192c30:
	.space 0x4
data_ov40_02192c34:
	.space 0x4
data_ov40_02192c38:
	.space 0x4
data_ov40_02192c3c:
	.space 0x4
data_ov40_02192c40:
	.space 0x4
data_ov40_02192c44:
	.space 0x4
data_ov40_02192c48:
	.space 0x4
data_ov40_02192c4c:
	.space 0x4
data_ov40_02192c50:
	.space 0x4
data_ov40_02192c54:
	.space 0x4
data_ov40_02192c58:
	.space 0x4
data_ov40_02192c5c:
	.space 0x4
data_ov40_02192c60:
	.space 0x4
data_ov40_02192c64:
	.space 0x4
data_ov40_02192c68:
	.space 0x4
data_ov40_02192c6c:
	.space 0x4
data_ov40_02192c70:
	.space 0x4
data_ov40_02192c74:
	.space 0x4
data_ov40_02192c78:
	.space 0x4
data_ov40_02192c7c:
	.space 0x4
data_ov40_02192c80:
	.space 0x4
data_ov40_02192c84:
	.space 0x4
data_ov40_02192c88:
	.space 0x4
data_ov40_02192c8c:
	.space 0x4
data_ov40_02192c90:
	.space 0x4
data_ov40_02192c94:
	.space 0x4
data_ov40_02192c98:
	.space 0x4
data_ov40_02192c9c:
	.space 0x4
data_ov40_02192ca0:
	.space 0x4
data_ov40_02192ca4:
	.space 0x4
data_ov40_02192ca8:
	.space 0x4
data_ov40_02192cac:
	.space 0x4
data_ov40_02192cb0:
	.space 0x4
data_ov40_02192cb4:
	.space 0x4
data_ov40_02192cb8:
	.space 0x4
data_ov40_02192cbc:
	.space 0x4
data_ov40_02192cc0:
	.space 0x4
data_ov40_02192cc4:
	.space 0x4
data_ov40_02192cc8:
	.space 0x4
data_ov40_02192ccc:
	.space 0x4
data_ov40_02192cd0:
	.space 0x4
data_ov40_02192cd4:
	.space 0x4
data_ov40_02192cd8:
	.space 0x4
data_ov40_02192cdc:
	.space 0x4
data_ov40_02192ce0:
	.space 0x4
data_ov40_02192ce4:
	.space 0x4
data_ov40_02192ce8:
	.space 0x4
data_ov40_02192cec:
	.space 0x4
data_ov40_02192cf0:
	.space 0x4
data_ov40_02192cf4:
	.space 0x4
data_ov40_02192cf8:
	.space 0x4
data_ov40_02192cfc:
	.space 0x4
data_ov40_02192d00:
	.space 0x4
data_ov40_02192d04:
	.space 0x4
data_ov40_02192d08:
	.space 0x4
data_ov40_02192d0c:
	.space 0x4
data_ov40_02192d10:
	.space 0x4
data_ov40_02192d14:
	.space 0x4
data_ov40_02192d18:
	.space 0x4
data_ov40_02192d1c:
	.space 0x4
data_ov40_02192d20:
	.space 0x4
data_ov40_02192d24:
	.space 0x4
data_ov40_02192d28:
	.space 0x4
data_ov40_02192d2c:
	.space 0x4
data_ov40_02192d30:
	.space 0x4
data_ov40_02192d34:
	.space 0x4
data_ov40_02192d38:
	.space 0x4
data_ov40_02192d3c:
	.space 0x4
data_ov40_02192d40:
	.space 0x4
data_ov40_02192d44:
	.space 0x4
data_ov40_02192d48:
	.space 0x4
data_ov40_02192d4c:
	.space 0x4
data_ov40_02192d50:
	.space 0x4
data_ov40_02192d54:
	.space 0x4
data_ov40_02192d58:
	.space 0x4
data_ov40_02192d5c:
	.space 0x4
data_ov40_02192d60:
	.space 0x4
data_ov40_02192d64:
	.space 0x4
data_ov40_02192d68:
	.space 0x4
data_ov40_02192d6c:
	.space 0x4
data_ov40_02192d70:
	.space 0x4
data_ov40_02192d74:
	.space 0x4
data_ov40_02192d78:
	.space 0x4
data_ov40_02192d7c:
	.space 0x4
data_ov40_02192d80:
	.space 0x4
data_ov40_02192d84:
	.space 0x4
data_ov40_02192d88:
	.space 0x4
data_ov40_02192d8c:
	.space 0x4
data_ov40_02192d90:
	.space 0x4
data_ov40_02192d94:
	.space 0x4
data_ov40_02192d98:
	.space 0x4
data_ov40_02192d9c:
	.space 0x4
data_ov40_02192da0:
	.space 0x4
data_ov40_02192da4:
	.space 0x4
data_ov40_02192da8:
	.space 0x4
data_ov40_02192dac:
	.space 0x4
data_ov40_02192db0:
	.space 0x4
data_ov40_02192db4:
	.space 0x4
data_ov40_02192db8:
	.space 0x4
data_ov40_02192dbc:
	.space 0x4
data_ov40_02192dc0:
	.space 0x4
data_ov40_02192dc4:
	.space 0x4
data_ov40_02192dc8:
	.space 0x4
data_ov40_02192dcc:
	.space 0x4
data_ov40_02192dd0:
	.space 0x4
data_ov40_02192dd4:
	.space 0x4
data_ov40_02192dd8:
	.space 0x4
data_ov40_02192ddc:
	.space 0x4
data_ov40_02192de0:
	.space 0x4
data_ov40_02192de4:
	.space 0x4
data_ov40_02192de8:
	.space 0x4
data_ov40_02192dec:
	.space 0x4
data_ov40_02192df0:
	.space 0x4
data_ov40_02192df4:
	.space 0x4
data_ov40_02192df8:
	.space 0x4
data_ov40_02192dfc:
	.space 0x4
data_ov40_02192e00:
	.space 0x4
data_ov40_02192e04:
	.space 0x4
data_ov40_02192e08:
	.space 0x4
data_ov40_02192e0c:
	.space 0x4
data_ov40_02192e10:
	.space 0x4
data_ov40_02192e14:
	.space 0x4
data_ov40_02192e18:
	.space 0x4
data_ov40_02192e1c:
	.space 0x4
data_ov40_02192e20:
	.space 0x4
data_ov40_02192e24:
	.space 0x4
data_ov40_02192e28:
	.space 0x4
data_ov40_02192e2c:
	.space 0x4
data_ov40_02192e30:
	.space 0x4
data_ov40_02192e34:
	.space 0x4
data_ov40_02192e38:
	.space 0x4
data_ov40_02192e3c:
	.space 0x4
data_ov40_02192e40:
	.space 0x4
data_ov40_02192e44:
	.space 0x4
data_ov40_02192e48:
	.space 0x4
data_ov40_02192e4c:
	.space 0x4
data_ov40_02192e50:
	.space 0x4
data_ov40_02192e54:
	.space 0x4
data_ov40_02192e58:
	.space 0x4
data_ov40_02192e5c:
	.space 0x4
data_ov40_02192e60:
	.space 0x4
data_ov40_02192e64:
	.space 0x4
data_ov40_02192e68:
	.space 0x4
data_ov40_02192e6c:
	.space 0x4
data_ov40_02192e70:
	.space 0x4
data_ov40_02192e74:
	.space 0x4
data_ov40_02192e78:
	.space 0x4
data_ov40_02192e7c:
	.space 0x4
data_ov40_02192e80:
	.space 0x4
data_ov40_02192e84:
	.space 0x4
data_ov40_02192e88:
	.space 0x4
data_ov40_02192e8c:
	.space 0x4
data_ov40_02192e90:
	.space 0x4
data_ov40_02192e94:
	.space 0x4
data_ov40_02192e98:
	.space 0x4
data_ov40_02192e9c:
	.space 0x4
data_ov40_02192ea0:
	.space 0x4
data_ov40_02192ea4:
	.space 0x4
data_ov40_02192ea8:
	.space 0x4
data_ov40_02192eac:
	.space 0x4
data_ov40_02192eb0:
	.space 0x4
data_ov40_02192eb4:
	.space 0x4
data_ov40_02192eb8:
	.space 0x4
data_ov40_02192ebc:
	.space 0x4
data_ov40_02192ec0:
	.space 0x4
data_ov40_02192ec4:
	.space 0x4
data_ov40_02192ec8:
	.space 0x4
data_ov40_02192ecc:
	.space 0x4
data_ov40_02192ed0:
	.space 0x4
data_ov40_02192ed4:
	.space 0x4
data_ov40_02192ed8:
	.space 0x4
data_ov40_02192edc:
	.space 0x4
data_ov40_02192ee0:
	.space 0x4
data_ov40_02192ee4:
	.space 0x4
data_ov40_02192ee8:
	.space 0x4
data_ov40_02192eec:
	.space 0x4
data_ov40_02192ef0:
	.space 0x4
data_ov40_02192ef4:
	.space 0x4
data_ov40_02192ef8:
	.space 0x4
data_ov40_02192efc:
	.space 0x4
data_ov40_02192f00:
	.space 0x4
data_ov40_02192f04:
	.space 0x4
data_ov40_02192f08:
	.space 0x4
data_ov40_02192f0c:
	.space 0x4
data_ov40_02192f10:
	.space 0x4
data_ov40_02192f14:
	.space 0x4
data_ov40_02192f18:
	.space 0x4
data_ov40_02192f1c:
	.space 0x4
data_ov40_02192f20:
	.space 0x4
data_ov40_02192f24:
	.space 0x4
data_ov40_02192f28:
	.space 0x4
data_ov40_02192f2c:
	.space 0x4
data_ov40_02192f30:
	.space 0x4
data_ov40_02192f34:
	.space 0x4
data_ov40_02192f38:
	.space 0x4
data_ov40_02192f3c:
	.space 0x4
data_ov40_02192f40:
	.space 0x4
data_ov40_02192f44:
	.space 0x4
data_ov40_02192f48:
	.space 0x4
data_ov40_02192f4c:
	.space 0x4
data_ov40_02192f50:
	.space 0x4
data_ov40_02192f54:
	.space 0x4
data_ov40_02192f58:
	.space 0x4
data_ov40_02192f5c:
	.space 0x4
data_ov40_02192f60:
	.space 0x4
data_ov40_02192f64:
	.space 0x4
data_ov40_02192f68:
	.space 0x4
data_ov40_02192f6c:
	.space 0x4
data_ov40_02192f70:
	.space 0x4
data_ov40_02192f74:
	.space 0x4
data_ov40_02192f78:
	.space 0x4
data_ov40_02192f7c:
	.space 0x4
data_ov40_02192f80:
	.space 0x4
data_ov40_02192f84:
	.space 0x4
data_ov40_02192f88:
	.space 0x4
data_ov40_02192f8c:
	.space 0x4
data_ov40_02192f90:
	.space 0x4
data_ov40_02192f94:
	.space 0x4
data_ov40_02192f98:
	.space 0x4
data_ov40_02192f9c:
	.space 0x4
data_ov40_02192fa0:
	.space 0x4
data_ov40_02192fa4:
	.space 0x4
data_ov40_02192fa8:
	.space 0x4
data_ov40_02192fac:
	.space 0x4
data_ov40_02192fb0:
	.space 0x4
data_ov40_02192fb4:
	.space 0x4
data_ov40_02192fb8:
	.space 0x4
data_ov40_02192fbc:
	.space 0x4
data_ov40_02192fc0:
	.space 0x4
data_ov40_02192fc4:
	.space 0x4
data_ov40_02192fc8:
	.space 0x4
data_ov40_02192fcc:
	.space 0x4
data_ov40_02192fd0:
	.space 0x4
data_ov40_02192fd4:
	.space 0x4
data_ov40_02192fd8:
	.space 0x4
data_ov40_02192fdc:
	.space 0x4
data_ov40_02192fe0:
	.space 0x4
data_ov40_02192fe4:
	.space 0x4
data_ov40_02192fe8:
	.space 0x4
data_ov40_02192fec:
	.space 0x4
data_ov40_02192ff0:
	.space 0x4
data_ov40_02192ff4:
	.space 0x4
data_ov40_02192ff8:
	.space 0x4
data_ov40_02192ffc:
	.space 0x4
data_ov40_02193000:
	.space 0x4
data_ov40_02193004:
	.space 0x4
data_ov40_02193008:
	.space 0x4
data_ov40_0219300c:
	.space 0x4
data_ov40_02193010:
	.space 0x4
data_ov40_02193014:
	.space 0x4
data_ov40_02193018:
	.space 0x4
data_ov40_0219301c:
	.space 0x4
data_ov40_02193020:
	.space 0x4
data_ov40_02193024:
	.space 0x4
data_ov40_02193028:
	.space 0x4
data_ov40_0219302c:
	.space 0x4
data_ov40_02193030:
	.space 0x4
data_ov40_02193034:
	.space 0x4
data_ov40_02193038:
	.space 0x4
data_ov40_0219303c:
	.space 0x4
data_ov40_02193040:
	.space 0x4
data_ov40_02193044:
	.space 0x4
data_ov40_02193048:
	.space 0x4
data_ov40_0219304c:
	.space 0x4
data_ov40_02193050:
	.space 0x4
data_ov40_02193054:
	.space 0x4
data_ov40_02193058:
	.space 0x4
data_ov40_0219305c:
	.space 0x4
data_ov40_02193060:
	.space 0x4
data_ov40_02193064:
	.space 0x4
data_ov40_02193068:
	.space 0x4
data_ov40_0219306c:
	.space 0x4
data_ov40_02193070:
	.space 0x4
data_ov40_02193074:
	.space 0x4
data_ov40_02193078:
	.space 0x4
data_ov40_0219307c:
	.space 0x4
data_ov40_02193080:
	.space 0x4
data_ov40_02193084:
	.space 0x4
data_ov40_02193088:
	.space 0x4
data_ov40_0219308c:
	.space 0x4
data_ov40_02193090:
	.space 0x4
data_ov40_02193094:
	.space 0x4
data_ov40_02193098:
	.space 0x4
data_ov40_0219309c:
	.space 0x4
data_ov40_021930a0:
	.space 0x4
data_ov40_021930a4:
	.space 0x4
data_ov40_021930a8:
	.space 0x4
data_ov40_021930ac:
	.space 0x4
data_ov40_021930b0:
	.space 0x4
data_ov40_021930b4:
	.space 0x4
data_ov40_021930b8:
	.space 0x4
data_ov40_021930bc:
	.space 0x4
data_ov40_021930c0:
	.space 0x4
data_ov40_021930c4:
	.space 0x4
data_ov40_021930c8:
	.space 0x4
data_ov40_021930cc:
	.space 0x4
data_ov40_021930d0:
	.space 0x4
data_ov40_021930d4:
	.space 0x4
data_ov40_021930d8:
	.space 0x4
data_ov40_021930dc:
	.space 0x4
data_ov40_021930e0:
	.space 0x4
data_ov40_021930e4:
	.space 0x4
data_ov40_021930e8:
	.space 0x4
data_ov40_021930ec:
	.space 0x4
data_ov40_021930f0:
	.space 0x4
data_ov40_021930f4:
	.space 0x4
data_ov40_021930f8:
	.space 0x4
data_ov40_021930fc:
	.space 0x4
data_ov40_02193100:
	.space 0x4
data_ov40_02193104:
	.space 0x4
data_ov40_02193108:
	.space 0x4
data_ov40_0219310c:
	.space 0x4
data_ov40_02193110:
	.space 0x4
data_ov40_02193114:
	.space 0x4
data_ov40_02193118:
	.space 0x4
data_ov40_0219311c:
	.space 0x4
data_ov40_02193120:
	.space 0x4
data_ov40_02193124:
	.space 0x4
data_ov40_02193128:
	.space 0x4
data_ov40_0219312c:
	.space 0x4
data_ov40_02193130:
	.space 0x4
data_ov40_02193134:
	.space 0x4
data_ov40_02193138:
	.space 0x4
data_ov40_0219313c:
	.space 0x4
data_ov40_02193140:
	.space 0x4
data_ov40_02193144:
	.space 0x4
data_ov40_02193148:
	.space 0x4
data_ov40_0219314c:
	.space 0x4
data_ov40_02193150:
	.space 0x4
data_ov40_02193154:
	.space 0x4
data_ov40_02193158:
	.space 0x4
data_ov40_0219315c:
	.space 0x4
data_ov40_02193160:
	.space 0x4
data_ov40_02193164:
	.space 0x4
data_ov40_02193168:
	.space 0x4
data_ov40_0219316c:
	.space 0x4
data_ov40_02193170:
	.space 0x4
data_ov40_02193174:
	.space 0x4
data_ov40_02193178:
	.space 0x4
data_ov40_0219317c:
	.space 0x4
data_ov40_02193180:
	.space 0x4
data_ov40_02193184:
	.space 0x4
data_ov40_02193188:
	.space 0x4
data_ov40_0219318c:
	.space 0x4
data_ov40_02193190:
	.space 0x4
data_ov40_02193194:
	.space 0x4
data_ov40_02193198:
	.space 0x4
data_ov40_0219319c:
	.space 0x4
data_ov40_021931a0:
	.space 0x4
data_ov40_021931a4:
	.space 0x4
data_ov40_021931a8:
	.space 0x4
data_ov40_021931ac:
	.space 0x4
data_ov40_021931b0:
	.space 0x4
data_ov40_021931b4:
	.space 0x4
data_ov40_021931b8:
	.space 0x4
data_ov40_021931bc:
	.space 0x4
data_ov40_021931c0:
	.space 0x4
data_ov40_021931c4:
	.space 0x4
data_ov40_021931c8:
	.space 0x4
data_ov40_021931cc:
	.space 0x4
data_ov40_021931d0:
	.space 0x4
data_ov40_021931d4:
	.space 0x4
data_ov40_021931d8:
	.space 0x4
data_ov40_021931dc:
	.space 0x4
data_ov40_021931e0:
	.space 0x4
data_ov40_021931e4:
	.space 0x4
data_ov40_021931e8:
	.space 0x4
data_ov40_021931ec:
	.space 0x4
data_ov40_021931f0:
	.space 0x4
data_ov40_021931f4:
	.space 0x4
data_ov40_021931f8:
	.space 0x4
data_ov40_021931fc:
	.space 0x4
data_ov40_02193200:
	.space 0x4
data_ov40_02193204:
	.space 0x4
data_ov40_02193208:
	.space 0x4
data_ov40_0219320c:
	.space 0x4
data_ov40_02193210:
	.space 0x4
data_ov40_02193214:
	.space 0x4
data_ov40_02193218:
	.space 0x4
data_ov40_0219321c:
	.space 0x4
data_ov40_02193220:
	.space 0x4
data_ov40_02193224:
	.space 0x4
data_ov40_02193228:
	.space 0x4
data_ov40_0219322c:
	.space 0x4
data_ov40_02193230:
	.space 0x4
data_ov40_02193234:
	.space 0x4
data_ov40_02193238:
	.space 0x4
data_ov40_0219323c:
	.space 0x4
data_ov40_02193240:
	.space 0x4
data_ov40_02193244:
	.space 0x4
data_ov40_02193248:
	.space 0x4
data_ov40_0219324c:
	.space 0x4
data_ov40_02193250:
	.space 0x4
data_ov40_02193254:
	.space 0x4
data_ov40_02193258:
	.space 0x4
data_ov40_0219325c:
	.space 0x4
data_ov40_02193260:
	.space 0x4
data_ov40_02193264:
	.space 0x4
data_ov40_02193268:
	.space 0x4
data_ov40_0219326c:
	.space 0x4
data_ov40_02193270:
	.space 0x4
data_ov40_02193274:
	.space 0x4
data_ov40_02193278:
	.space 0x4
data_ov40_0219327c:
	.space 0x4
data_ov40_02193280:
	.space 0x4
data_ov40_02193284:
	.space 0x4
data_ov40_02193288:
	.space 0x4
data_ov40_0219328c:
	.space 0x4
data_ov40_02193290:
	.space 0x4
data_ov40_02193294:
	.space 0x4
data_ov40_02193298:
	.space 0x4
data_ov40_0219329c:
	.space 0x4
data_ov40_021932a0:
	.space 0x4
data_ov40_021932a4:
	.space 0x4
data_ov40_021932a8:
	.space 0x4
data_ov40_021932ac:
	.space 0x4
data_ov40_021932b0:
	.space 0x4
data_ov40_021932b4:
	.space 0x4
data_ov40_021932b8:
	.space 0x4
data_ov40_021932bc:
	.space 0x4
data_ov40_021932c0:
	.space 0x4
data_ov40_021932c4:
	.space 0x4
data_ov40_021932c8:
	.space 0x4
data_ov40_021932cc:
	.space 0x4
data_ov40_021932d0:
	.space 0x4
data_ov40_021932d4:
	.space 0x4
data_ov40_021932d8:
	.space 0x4
data_ov40_021932dc:
	.space 0x4
data_ov40_021932e0:
	.space 0x4
data_ov40_021932e4:
	.space 0x4
data_ov40_021932e8:
	.space 0x4
data_ov40_021932ec:
	.space 0x4
data_ov40_021932f0:
	.space 0x4
data_ov40_021932f4:
	.space 0x4
data_ov40_021932f8:
	.space 0x4
data_ov40_021932fc:
	.space 0x4
data_ov40_02193300:
	.space 0x4
data_ov40_02193304:
	.space 0x4
data_ov40_02193308:
	.space 0x4
data_ov40_0219330c:
	.space 0x4
data_ov40_02193310:
	.space 0x4
data_ov40_02193314:
	.space 0x4
data_ov40_02193318:
	.space 0x4
data_ov40_0219331c:
	.space 0x4
data_ov40_02193320:
	.space 0x4
data_ov40_02193324:
	.space 0x4
data_ov40_02193328:
	.space 0x4
data_ov40_0219332c:
	.space 0x4
data_ov40_02193330:
	.space 0x4
data_ov40_02193334:
	.space 0x4
data_ov40_02193338:
	.space 0x4
data_ov40_0219333c:
	.space 0x4
data_ov40_02193340:
	.space 0x4
data_ov40_02193344:
	.space 0x4
data_ov40_02193348:
	.space 0x4
data_ov40_0219334c:
	.space 0x4
data_ov40_02193350:
	.space 0x4
data_ov40_02193354:
	.space 0x4
data_ov40_02193358:
	.space 0x4
data_ov40_0219335c:
	.space 0x4
data_ov40_02193360:
	.space 0x4
data_ov40_02193364:
	.space 0x4
data_ov40_02193368:
	.space 0x4
data_ov40_0219336c:
	.space 0x4
data_ov40_02193370:
	.space 0x4
data_ov40_02193374:
	.space 0x4
data_ov40_02193378:
	.space 0x4
data_ov40_0219337c:
	.space 0x4
data_ov40_02193380:
	.space 0x4
data_ov40_02193384:
	.space 0x4
data_ov40_02193388:
	.space 0x4
data_ov40_0219338c:
	.space 0x4
data_ov40_02193390:
	.space 0x4
data_ov40_02193394:
	.space 0x4
data_ov40_02193398:
	.space 0x4
data_ov40_0219339c:
	.space 0x4
data_ov40_021933a0:
	.space 0x4
data_ov40_021933a4:
	.space 0x4
data_ov40_021933a8:
	.space 0x4
data_ov40_021933ac:
	.space 0x4
data_ov40_021933b0:
	.space 0x4
data_ov40_021933b4:
	.space 0x4
data_ov40_021933b8:
	.space 0x4
data_ov40_021933bc:
	.space 0x4
data_ov40_021933c0:
	.space 0x4
data_ov40_021933c4:
	.space 0x4
data_ov40_021933c8:
	.space 0x4
data_ov40_021933cc:
	.space 0x4
data_ov40_021933d0:
	.space 0x4
data_ov40_021933d4:
	.space 0x4
data_ov40_021933d8:
	.space 0x4
data_ov40_021933dc:
	.space 0x4
data_ov40_021933e0:
	.space 0x4
data_ov40_021933e4:
	.space 0x4
data_ov40_021933e8:
	.space 0x4
data_ov40_021933ec:
	.space 0x4
data_ov40_021933f0:
	.space 0x4
data_ov40_021933f4:
	.space 0x4
data_ov40_021933f8:
	.space 0x4
data_ov40_021933fc:
	.space 0x4
data_ov40_02193400:
	.space 0x4
data_ov40_02193404:
	.space 0x4
data_ov40_02193408:
	.space 0x4
data_ov40_0219340c:
	.space 0x4
data_ov40_02193410:
	.space 0x4
data_ov40_02193414:
	.space 0x4
data_ov40_02193418:
	.space 0x4
data_ov40_0219341c:
	.space 0x4
data_ov40_02193420:
	.space 0x4
data_ov40_02193424:
	.space 0x4
data_ov40_02193428:
	.space 0x4
data_ov40_0219342c:
	.space 0x4
data_ov40_02193430:
	.space 0x4
data_ov40_02193434:
	.space 0x4
data_ov40_02193438:
	.space 0x4
data_ov40_0219343c:
	.space 0x4
data_ov40_02193440:
	.space 0x4
data_ov40_02193444:
	.space 0x4
data_ov40_02193448:
	.space 0x4
data_ov40_0219344c:
	.space 0x4
data_ov40_02193450:
	.space 0x4
data_ov40_02193454:
	.space 0x4
data_ov40_02193458:
	.space 0x4
data_ov40_0219345c:
	.space 0x4
data_ov40_02193460:
	.space 0x4
data_ov40_02193464:
	.space 0x4
data_ov40_02193468:
	.space 0x4
data_ov40_0219346c:
	.space 0x4
data_ov40_02193470:
	.space 0x4
data_ov40_02193474:
	.space 0x4
data_ov40_02193478:
	.space 0x4
data_ov40_0219347c:
	.space 0x4
data_ov40_02193480:
	.space 0x4
data_ov40_02193484:
	.space 0x4
data_ov40_02193488:
	.space 0x4
data_ov40_0219348c:
	.space 0x4
data_ov40_02193490:
	.space 0x4
data_ov40_02193494:
	.space 0x4
data_ov40_02193498:
	.space 0x4
data_ov40_0219349c:
	.space 0x4
data_ov40_021934a0:
	.space 0x4
data_ov40_021934a4:
	.space 0x4
data_ov40_021934a8:
	.space 0x4
data_ov40_021934ac:
	.space 0x4
data_ov40_021934b0:
	.space 0x4
data_ov40_021934b4:
	.space 0x4
data_ov40_021934b8:
	.space 0x4
data_ov40_021934bc:
	.space 0x4
data_ov40_021934c0:
	.space 0x4
data_ov40_021934c4:
	.space 0x4
data_ov40_021934c8:
	.space 0x4
data_ov40_021934cc:
	.space 0x4
data_ov40_021934d0:
	.space 0x4
data_ov40_021934d4:
	.space 0x4
data_ov40_021934d8:
	.space 0x4
data_ov40_021934dc:
	.space 0x4
data_ov40_021934e0:
	.space 0x4
data_ov40_021934e4:
	.space 0x4
data_ov40_021934e8:
	.space 0x4
data_ov40_021934ec:
	.space 0x4
data_ov40_021934f0:
	.space 0x4
data_ov40_021934f4:
	.space 0x4
data_ov40_021934f8:
	.space 0x4
data_ov40_021934fc:
	.space 0x4
data_ov40_02193500:
	.space 0x4
data_ov40_02193504:
	.space 0x4
data_ov40_02193508:
	.space 0x4
data_ov40_0219350c:
	.space 0x4
data_ov40_02193510:
	.space 0x4
data_ov40_02193514:
	.space 0x4
data_ov40_02193518:
	.space 0x4
data_ov40_0219351c:
	.space 0x4
data_ov40_02193520:
	.space 0x4
data_ov40_02193524:
	.space 0x4
data_ov40_02193528:
	.space 0x4
data_ov40_0219352c:
	.space 0x4
data_ov40_02193530:
	.space 0x4
data_ov40_02193534:
	.space 0x4
data_ov40_02193538:
	.space 0x4
data_ov40_0219353c:
	.space 0x4
data_ov40_02193540:
	.space 0x4
data_ov40_02193544:
	.space 0x4
data_ov40_02193548:
	.space 0x4
data_ov40_0219354c:
	.space 0x4
data_ov40_02193550:
	.space 0x4
data_ov40_02193554:
	.space 0x4
data_ov40_02193558:
	.space 0x4
data_ov40_0219355c:
	.space 0x4
data_ov40_02193560:
	.space 0x4
data_ov40_02193564:
	.space 0x4
data_ov40_02193568:
	.space 0x4
data_ov40_0219356c:
	.space 0x4
data_ov40_02193570:
	.space 0x4
data_ov40_02193574:
	.space 0x4
data_ov40_02193578:
	.space 0x4
data_ov40_0219357c:
	.space 0x4
data_ov40_02193580:
	.space 0x4
data_ov40_02193584:
	.space 0x4
data_ov40_02193588:
	.space 0x4
data_ov40_0219358c:
	.space 0x4
data_ov40_02193590:
	.space 0x4
data_ov40_02193594:
	.space 0x4
data_ov40_02193598:
	.space 0x4
data_ov40_0219359c:
	.space 0x4
data_ov40_021935a0:
	.space 0x4
data_ov40_021935a4:
	.space 0x4
data_ov40_021935a8:
	.space 0x4
data_ov40_021935ac:
	.space 0x4
data_ov40_021935b0:
	.space 0x4
data_ov40_021935b4:
	.space 0x4
data_ov40_021935b8:
	.space 0x4
data_ov40_021935bc:
	.space 0x4
data_ov40_021935c0:
	.space 0x4
data_ov40_021935c4:
	.space 0x4
data_ov40_021935c8:
	.space 0x4
data_ov40_021935cc:
	.space 0x4
data_ov40_021935d0:
	.space 0x4
data_ov40_021935d4:
	.space 0x4
data_ov40_021935d8:
	.space 0x4
data_ov40_021935dc:
	.space 0x4
data_ov40_021935e0:
	.space 0x4
data_ov40_021935e4:
	.space 0x4
data_ov40_021935e8:
	.space 0x4
data_ov40_021935ec:
	.space 0x4
data_ov40_021935f0:
	.space 0x4
data_ov40_021935f4:
	.space 0x4
data_ov40_021935f8:
	.space 0x4
data_ov40_021935fc:
	.space 0x4
data_ov40_02193600:
	.space 0x4
data_ov40_02193604:
	.space 0x4
data_ov40_02193608:
	.space 0x4
data_ov40_0219360c:
	.space 0x4
data_ov40_02193610:
	.space 0x4
data_ov40_02193614:
	.space 0x4
data_ov40_02193618:
	.space 0x4
data_ov40_0219361c:
	.space 0x4
data_ov40_02193620:
	.space 0x4
data_ov40_02193624:
	.space 0x4
data_ov40_02193628:
	.space 0x4
data_ov40_0219362c:
	.space 0x4
data_ov40_02193630:
	.space 0x4
data_ov40_02193634:
	.space 0x4
data_ov40_02193638:
	.space 0x4
data_ov40_0219363c:
	.space 0x4
data_ov40_02193640:
	.space 0x4
data_ov40_02193644:
	.space 0x4
data_ov40_02193648:
	.space 0x4
data_ov40_0219364c:
	.space 0x4
data_ov40_02193650:
	.space 0x4
data_ov40_02193654:
	.space 0x4
data_ov40_02193658:
	.space 0x4
data_ov40_0219365c:
	.space 0x4
data_ov40_02193660:
	.space 0x4
data_ov40_02193664:
	.space 0x4
data_ov40_02193668:
	.space 0x4
data_ov40_0219366c:
	.space 0x4
data_ov40_02193670:
	.space 0x4
data_ov40_02193674:
	.space 0x4
data_ov40_02193678:
	.space 0x4
data_ov40_0219367c:
	.space 0x4
data_ov40_02193680:
	.space 0x4
data_ov40_02193684:
	.space 0x4
data_ov40_02193688:
	.space 0x4
data_ov40_0219368c:
	.space 0x4
data_ov40_02193690:
	.space 0x4
data_ov40_02193694:
	.space 0x4
data_ov40_02193698:
	.space 0x4
data_ov40_0219369c:
	.space 0x4
data_ov40_021936a0:
	.space 0x4
data_ov40_021936a4:
	.space 0x4
data_ov40_021936a8:
	.space 0x4
data_ov40_021936ac:
	.space 0x4
data_ov40_021936b0:
	.space 0x4
data_ov40_021936b4:
	.space 0x4
data_ov40_021936b8:
	.space 0x4
data_ov40_021936bc:
	.space 0x4
data_ov40_021936c0:
	.space 0x4
data_ov40_021936c4:
	.space 0x4
data_ov40_021936c8:
	.space 0x4
data_ov40_021936cc:
	.space 0x4
data_ov40_021936d0:
	.space 0x4
data_ov40_021936d4:
	.space 0x4
data_ov40_021936d8:
	.space 0x4
data_ov40_021936dc:
	.space 0x4
data_ov40_021936e0:
	.space 0x4
data_ov40_021936e4:
	.space 0x4
data_ov40_021936e8:
	.space 0x4
data_ov40_021936ec:
	.space 0x4
data_ov40_021936f0:
	.space 0x4
data_ov40_021936f4:
	.space 0x4
data_ov40_021936f8:
	.space 0x4
data_ov40_021936fc:
	.space 0x4
data_ov40_02193700:
	.space 0x4
data_ov40_02193704:
	.space 0x4
data_ov40_02193708:
	.space 0x4
data_ov40_0219370c:
	.space 0x4
data_ov40_02193710:
	.space 0x4
data_ov40_02193714:
	.space 0x4
data_ov40_02193718:
	.space 0x4
data_ov40_0219371c:
	.space 0x4
data_ov40_02193720:
	.space 0x4
data_ov40_02193724:
	.space 0x4
data_ov40_02193728:
	.space 0x4
data_ov40_0219372c:
	.space 0x4
data_ov40_02193730:
	.space 0x4
data_ov40_02193734:
	.space 0x4
data_ov40_02193738:
	.space 0x4
data_ov40_0219373c:
	.space 0x4
data_ov40_02193740:
	.space 0x4
data_ov40_02193744:
	.space 0x4
data_ov40_02193748:
	.space 0x4
data_ov40_0219374c:
	.space 0x4
data_ov40_02193750:
	.space 0x4
data_ov40_02193754:
	.space 0x4
data_ov40_02193758:
	.space 0x4
data_ov40_0219375c:
	.space 0x4
data_ov40_02193760:
	.space 0x4
data_ov40_02193764:
	.space 0x4
data_ov40_02193768:
	.space 0x4
data_ov40_0219376c:
	.space 0x4
data_ov40_02193770:
	.space 0x4
data_ov40_02193774:
	.space 0x4
data_ov40_02193778:
	.space 0x4
data_ov40_0219377c:
	.space 0x4
data_ov40_02193780:
	.space 0x4
data_ov40_02193784:
	.space 0x4
data_ov40_02193788:
	.space 0x4
data_ov40_0219378c:
	.space 0x4
data_ov40_02193790:
	.space 0x4
data_ov40_02193794:
	.space 0x4
data_ov40_02193798:
	.space 0x4
data_ov40_0219379c:
	.space 0x4
data_ov40_021937a0:
	.space 0x4
data_ov40_021937a4:
	.space 0x4
data_ov40_021937a8:
	.space 0x4
data_ov40_021937ac:
	.space 0x4
data_ov40_021937b0:
	.space 0x4
data_ov40_021937b4:
	.space 0x4
data_ov40_021937b8:
	.space 0x4
data_ov40_021937bc:
	.space 0x4
data_ov40_021937c0:
	.space 0x4
data_ov40_021937c4:
	.space 0x4
data_ov40_021937c8:
	.space 0x4
data_ov40_021937cc:
	.space 0x4
data_ov40_021937d0:
	.space 0x4
data_ov40_021937d4:
	.space 0x4
data_ov40_021937d8:
	.space 0x4
data_ov40_021937dc:
	.space 0x4
data_ov40_021937e0:
	.space 0x4
data_ov40_021937e4:
	.space 0x4
data_ov40_021937e8:
	.space 0x4
data_ov40_021937ec:
	.space 0x4
data_ov40_021937f0:
	.space 0x4
data_ov40_021937f4:
	.space 0x4
data_ov40_021937f8:
	.space 0x4
data_ov40_021937fc:
	.space 0x4
data_ov40_02193800:
	.space 0x4
data_ov40_02193804:
	.space 0x4
data_ov40_02193808:
	.space 0x4
data_ov40_0219380c:
	.space 0x4
data_ov40_02193810:
	.space 0x4
data_ov40_02193814:
	.space 0x4
data_ov40_02193818:
	.space 0x4
data_ov40_0219381c:
	.space 0x4
data_ov40_02193820:
	.space 0x4
data_ov40_02193824:
	.space 0x4
data_ov40_02193828:
	.space 0x4
data_ov40_0219382c:
	.space 0x4
data_ov40_02193830:
	.space 0x4
data_ov40_02193834:
	.space 0x4
data_ov40_02193838:
	.space 0x4
data_ov40_0219383c:
	.space 0x4
data_ov40_02193840:
	.space 0x4
data_ov40_02193844:
	.space 0x4
data_ov40_02193848:
	.space 0x4
data_ov40_0219384c:
	.space 0x4
data_ov40_02193850:
	.space 0x4
data_ov40_02193854:
	.space 0x4
data_ov40_02193858:
	.space 0x4
data_ov40_0219385c:
	.space 0x4
data_ov40_02193860:
	.space 0x4
data_ov40_02193864:
	.space 0x4
data_ov40_02193868:
	.space 0x4
data_ov40_0219386c:
	.space 0x4
data_ov40_02193870:
	.space 0x4
data_ov40_02193874:
	.space 0x4
data_ov40_02193878:
	.space 0x4
data_ov40_0219387c:
	.space 0x4
data_ov40_02193880:
	.space 0x4
data_ov40_02193884:
	.space 0x4
data_ov40_02193888:
	.space 0x4
data_ov40_0219388c:
	.space 0x4
data_ov40_02193890:
	.space 0x4
data_ov40_02193894:
	.space 0x4
data_ov40_02193898:
	.space 0x4
data_ov40_0219389c:
	.space 0x4
data_ov40_021938a0:
	.space 0x4
data_ov40_021938a4:
	.space 0x4
data_ov40_021938a8:
	.space 0x4
data_ov40_021938ac:
	.space 0x4
data_ov40_021938b0:
	.space 0x4
data_ov40_021938b4:
	.space 0x4
data_ov40_021938b8:
	.space 0x4
data_ov40_021938bc:
	.space 0x4
data_ov40_021938c0:
	.space 0x4
data_ov40_021938c4:
	.space 0x4
data_ov40_021938c8:
	.space 0x4
data_ov40_021938cc:
	.space 0x4
data_ov40_021938d0:
	.space 0x4
data_ov40_021938d4:
	.space 0x4
data_ov40_021938d8:
	.space 0x4
data_ov40_021938dc:
	.space 0x4
data_ov40_021938e0:
	.space 0x4
data_ov40_021938e4:
	.space 0x4
data_ov40_021938e8:
	.space 0x4
data_ov40_021938ec:
	.space 0x4
data_ov40_021938f0:
	.space 0x4
data_ov40_021938f4:
	.space 0x4
data_ov40_021938f8:
	.space 0x4
data_ov40_021938fc:
	.space 0x4
data_ov40_02193900:
	.space 0x4
data_ov40_02193904:
	.space 0x4
data_ov40_02193908:
	.space 0x4
data_ov40_0219390c:
	.space 0x4
data_ov40_02193910:
	.space 0x4
data_ov40_02193914:
	.space 0x4
data_ov40_02193918:
	.space 0x4
data_ov40_0219391c:
	.space 0x4
data_ov40_02193920:
	.space 0x4
data_ov40_02193924:
	.space 0x4
data_ov40_02193928:
	.space 0x4
data_ov40_0219392c:
	.space 0x4
data_ov40_02193930:
	.space 0x4
data_ov40_02193934:
	.space 0x4
data_ov40_02193938:
	.space 0x4
data_ov40_0219393c:
	.space 0x4
data_ov40_02193940:
	.space 0x4
data_ov40_02193944:
	.space 0x4
data_ov40_02193948:
	.space 0x4
data_ov40_0219394c:
	.space 0x4
data_ov40_02193950:
	.space 0x4
data_ov40_02193954:
	.space 0x4
data_ov40_02193958:
	.space 0x4
data_ov40_0219395c:
	.space 0x4
data_ov40_02193960:
	.space 0x4
data_ov40_02193964:
	.space 0x4
data_ov40_02193968:
	.space 0x4
data_ov40_0219396c:
	.space 0x4
data_ov40_02193970:
	.space 0x4
data_ov40_02193974:
	.space 0x4
data_ov40_02193978:
	.space 0x4
data_ov40_0219397c:
	.space 0x4
data_ov40_02193980:
	.space 0x4
data_ov40_02193984:
	.space 0x4
data_ov40_02193988:
	.space 0x4
data_ov40_0219398c:
	.space 0x4
data_ov40_02193990:
	.space 0x4
data_ov40_02193994:
	.space 0x4
data_ov40_02193998:
	.space 0x4
data_ov40_0219399c:
	.space 0x4
data_ov40_021939a0:
	.space 0x4
data_ov40_021939a4:
	.space 0x4
data_ov40_021939a8:
	.space 0x4
data_ov40_021939ac:
	.space 0x4
data_ov40_021939b0:
	.space 0x4
data_ov40_021939b4:
	.space 0x4
data_ov40_021939b8:
	.space 0x4
data_ov40_021939bc:
	.space 0x4
data_ov40_021939c0:
	.space 0x4
data_ov40_021939c4:
	.space 0x4
data_ov40_021939c8:
	.space 0x4
data_ov40_021939cc:
	.space 0x4
data_ov40_021939d0:
	.space 0x4
data_ov40_021939d4:
	.space 0x4
data_ov40_021939d8:
	.space 0x4
data_ov40_021939dc:
	.space 0x4
data_ov40_021939e0:
	.space 0x4
data_ov40_021939e4:
	.space 0x4
data_ov40_021939e8:
	.space 0x4
data_ov40_021939ec:
	.space 0x4
data_ov40_021939f0:
	.space 0x4
data_ov40_021939f4:
	.space 0x4
data_ov40_021939f8:
	.space 0x4
data_ov40_021939fc:
	.space 0x4
data_ov40_02193a00:
	.space 0x4
data_ov40_02193a04:
	.space 0x4
data_ov40_02193a08:
	.space 0x4
data_ov40_02193a0c:
	.space 0x4
data_ov40_02193a10:
	.space 0x4
data_ov40_02193a14:
	.space 0x4
data_ov40_02193a18:
	.space 0x4
data_ov40_02193a1c:
	.space 0x4
data_ov40_02193a20:
	.space 0x4
data_ov40_02193a24:
	.space 0x4
data_ov40_02193a28:
	.space 0x4
data_ov40_02193a2c:
	.space 0x4
data_ov40_02193a30:
	.space 0x4
data_ov40_02193a34:
	.space 0x4
data_ov40_02193a38:
	.space 0x4
data_ov40_02193a3c:
	.space 0x4
data_ov40_02193a40:
	.space 0x4
data_ov40_02193a44:
	.space 0x4
data_ov40_02193a48:
	.space 0x4
data_ov40_02193a4c:
	.space 0x4
data_ov40_02193a50:
	.space 0x4
data_ov40_02193a54:
	.space 0x4
data_ov40_02193a58:
	.space 0x4
data_ov40_02193a5c:
	.space 0x4
data_ov40_02193a60:
	.space 0x4
data_ov40_02193a64:
	.space 0x4
data_ov40_02193a68:
	.space 0x4
data_ov40_02193a6c:
	.space 0x4
data_ov40_02193a70:
	.space 0x4
data_ov40_02193a74:
	.space 0x4
data_ov40_02193a78:
	.space 0x4
data_ov40_02193a7c:
	.space 0x4
data_ov40_02193a80:
	.space 0x4
data_ov40_02193a84:
	.space 0x4
data_ov40_02193a88:
	.space 0x4
data_ov40_02193a8c:
	.space 0x4
data_ov40_02193a90:
	.space 0x4
data_ov40_02193a94:
	.space 0x4
data_ov40_02193a98:
	.space 0x4
data_ov40_02193a9c:
	.space 0x4
data_ov40_02193aa0:
	.space 0x4
data_ov40_02193aa4:
	.space 0x4
data_ov40_02193aa8:
	.space 0x4
data_ov40_02193aac:
	.space 0x4
data_ov40_02193ab0:
	.space 0x4
data_ov40_02193ab4:
	.space 0x4
data_ov40_02193ab8:
	.space 0x4
data_ov40_02193abc:
	.space 0x4
data_ov40_02193ac0:
	.space 0x4
data_ov40_02193ac4:
	.space 0x4
data_ov40_02193ac8:
	.space 0x4
data_ov40_02193acc:
	.space 0x4
data_ov40_02193ad0:
	.space 0x4
data_ov40_02193ad4:
	.space 0x4
data_ov40_02193ad8:
	.space 0x4
data_ov40_02193adc:
	.space 0x4
data_ov40_02193ae0:
	.space 0x4
data_ov40_02193ae4:
	.space 0x4
data_ov40_02193ae8:
	.space 0x4
data_ov40_02193aec:
	.space 0x4
data_ov40_02193af0:
	.space 0x4
data_ov40_02193af4:
	.space 0x4
data_ov40_02193af8:
	.space 0x4
data_ov40_02193afc:
	.space 0x4
data_ov40_02193b00:
	.space 0x4
data_ov40_02193b04:
	.space 0x4
data_ov40_02193b08:
	.space 0x4
data_ov40_02193b0c:
	.space 0x4
data_ov40_02193b10:
	.space 0x4
data_ov40_02193b14:
	.space 0x4
data_ov40_02193b18:
	.space 0x4
data_ov40_02193b1c:
	.space 0x4
data_ov40_02193b20:
	.space 0x4
data_ov40_02193b24:
	.space 0x4
data_ov40_02193b28:
	.space 0x4
data_ov40_02193b2c:
	.space 0x4
data_ov40_02193b30:
	.space 0x4
data_ov40_02193b34:
	.space 0x4
data_ov40_02193b38:
	.space 0x4
data_ov40_02193b3c:
	.space 0x4
data_ov40_02193b40:
	.space 0x4
data_ov40_02193b44:
	.space 0x4
data_ov40_02193b48:
	.space 0x4
data_ov40_02193b4c:
	.space 0x4
data_ov40_02193b50:
	.space 0x4
data_ov40_02193b54:
	.space 0x4
data_ov40_02193b58:
	.space 0x4
data_ov40_02193b5c:
	.space 0x4
data_ov40_02193b60:
	.space 0x4
data_ov40_02193b64:
	.space 0x4
data_ov40_02193b68:
	.space 0x4
data_ov40_02193b6c:
	.space 0x4
data_ov40_02193b70:
	.space 0x4
data_ov40_02193b74:
	.space 0x4
data_ov40_02193b78:
	.space 0x4
data_ov40_02193b7c:
	.space 0x4
data_ov40_02193b80:
	.space 0x4
data_ov40_02193b84:
	.space 0x4
data_ov40_02193b88:
	.space 0x4
data_ov40_02193b8c:
	.space 0x4
data_ov40_02193b90:
	.space 0x4
data_ov40_02193b94:
	.space 0x4
data_ov40_02193b98:
	.space 0x4
data_ov40_02193b9c:
	.space 0x4
data_ov40_02193ba0:
	.space 0x4
data_ov40_02193ba4:
	.space 0x4
data_ov40_02193ba8:
	.space 0x4
data_ov40_02193bac:
	.space 0x4
data_ov40_02193bb0:
	.space 0x4
data_ov40_02193bb4:
	.space 0x4
data_ov40_02193bb8:
	.space 0x4
data_ov40_02193bbc:
	.space 0x4
data_ov40_02193bc0:
	.space 0x4
data_ov40_02193bc4:
	.space 0x4
data_ov40_02193bc8:
	.space 0x4
data_ov40_02193bcc:
	.space 0x4
data_ov40_02193bd0:
	.space 0x4
data_ov40_02193bd4:
	.space 0x4
data_ov40_02193bd8:
	.space 0x4
data_ov40_02193bdc:
	.space 0x4
data_ov40_02193be0:
	.space 0x4
data_ov40_02193be4:
	.space 0x4
data_ov40_02193be8:
	.space 0x4
data_ov40_02193bec:
	.space 0x4
data_ov40_02193bf0:
	.space 0x4
data_ov40_02193bf4:
	.space 0x4
data_ov40_02193bf8:
	.space 0x4
data_ov40_02193bfc:
	.space 0x4
data_ov40_02193c00:
	.space 0x4
data_ov40_02193c04:
	.space 0x4
data_ov40_02193c08:
	.space 0x4
data_ov40_02193c0c:
	.space 0x4
data_ov40_02193c10:
	.space 0x4
data_ov40_02193c14:
	.space 0x4
data_ov40_02193c18:
	.space 0x4
data_ov40_02193c1c:
	.space 0x4
data_ov40_02193c20:
	.space 0x4
data_ov40_02193c24:
	.space 0x4
data_ov40_02193c28:
	.space 0x4
data_ov40_02193c2c:
	.space 0x4
data_ov40_02193c30:
	.space 0x4
data_ov40_02193c34:
	.space 0x4
data_ov40_02193c38:
	.space 0x4
data_ov40_02193c3c:
	.space 0x4
data_ov40_02193c40:
	.space 0x4
data_ov40_02193c44:
	.space 0x4
data_ov40_02193c48:
	.space 0x4
data_ov40_02193c4c:
	.space 0x4
data_ov40_02193c50:
	.space 0x4
data_ov40_02193c54:
	.space 0x4
data_ov40_02193c58:
	.space 0x4
data_ov40_02193c5c:
	.space 0x4
data_ov40_02193c60:
	.space 0x4
data_ov40_02193c64:
	.space 0x4
data_ov40_02193c68:
	.space 0x4
data_ov40_02193c6c:
	.space 0x4
data_ov40_02193c70:
	.space 0x4
data_ov40_02193c74:
	.space 0x4
data_ov40_02193c78:
	.space 0x4
data_ov40_02193c7c:
	.space 0x4
data_ov40_02193c80:
	.space 0x4
data_ov40_02193c84:
	.space 0x4
data_ov40_02193c88:
	.space 0x4
data_ov40_02193c8c:
	.space 0x4
data_ov40_02193c90:
	.space 0x4
data_ov40_02193c94:
	.space 0x4
data_ov40_02193c98:
	.space 0x4
data_ov40_02193c9c:
	.space 0x4
data_ov40_02193ca0:
	.space 0x4
data_ov40_02193ca4:
	.space 0x4
data_ov40_02193ca8:
	.space 0x4
data_ov40_02193cac:
	.space 0x4
data_ov40_02193cb0:
	.space 0x4
data_ov40_02193cb4:
	.space 0x4
data_ov40_02193cb8:
	.space 0x4
data_ov40_02193cbc:
	.space 0x4
data_ov40_02193cc0:
	.space 0x4
data_ov40_02193cc4:
	.space 0x4
data_ov40_02193cc8:
	.space 0x4
data_ov40_02193ccc:
	.space 0x4
data_ov40_02193cd0:
	.space 0x4
data_ov40_02193cd4:
	.space 0x4
data_ov40_02193cd8:
	.space 0x4
data_ov40_02193cdc:
	.space 0x4
data_ov40_02193ce0:
	.space 0x4
data_ov40_02193ce4:
	.space 0x4
data_ov40_02193ce8:
	.space 0x4
data_ov40_02193cec:
	.space 0x4
data_ov40_02193cf0:
	.space 0x4
data_ov40_02193cf4:
	.space 0x4
data_ov40_02193cf8:
	.space 0x4
data_ov40_02193cfc:
	.space 0x4
data_ov40_02193d00:
	.space 0x4
data_ov40_02193d04:
	.space 0x4
data_ov40_02193d08:
	.space 0x4
data_ov40_02193d0c:
	.space 0x4
data_ov40_02193d10:
	.space 0x4
data_ov40_02193d14:
	.space 0x4
data_ov40_02193d18:
	.space 0x4
data_ov40_02193d1c:
	.space 0x4
data_ov40_02193d20:
	.space 0x4
data_ov40_02193d24:
	.space 0x4
data_ov40_02193d28:
	.space 0x4
data_ov40_02193d2c:
	.space 0x4
data_ov40_02193d30:
	.space 0x4
data_ov40_02193d34:
	.space 0x4
data_ov40_02193d38:
	.space 0x4
data_ov40_02193d3c:
	.space 0x4
data_ov40_02193d40:
	.space 0x4
data_ov40_02193d44:
	.space 0x4
data_ov40_02193d48:
	.space 0x4
data_ov40_02193d4c:
	.space 0x4
data_ov40_02193d50:
	.space 0x4
data_ov40_02193d54:
	.space 0x4
data_ov40_02193d58:
	.space 0x4
data_ov40_02193d5c:
	.space 0x4
data_ov40_02193d60:
	.space 0x4
data_ov40_02193d64:
	.space 0x4
data_ov40_02193d68:
	.space 0x4
data_ov40_02193d6c:
	.space 0x4
data_ov40_02193d70:
	.space 0x4
data_ov40_02193d74:
	.space 0x4
data_ov40_02193d78:
	.space 0x4
data_ov40_02193d7c:
	.space 0x4
data_ov40_02193d80:
	.space 0x4
data_ov40_02193d84:
	.space 0x4
data_ov40_02193d88:
	.space 0x4
data_ov40_02193d8c:
	.space 0x4
data_ov40_02193d90:
	.space 0x4
data_ov40_02193d94:
	.space 0x4
data_ov40_02193d98:
	.space 0x4
data_ov40_02193d9c:
	.space 0x4
data_ov40_02193da0:
	.space 0x4
data_ov40_02193da4:
	.space 0x4
data_ov40_02193da8:
	.space 0x4
data_ov40_02193dac:
	.space 0x4
data_ov40_02193db0:
	.space 0x4
data_ov40_02193db4:
	.space 0x4
data_ov40_02193db8:
	.space 0x4
data_ov40_02193dbc:
	.space 0x4
data_ov40_02193dc0:
	.space 0x4
data_ov40_02193dc4:
	.space 0x4
data_ov40_02193dc8:
	.space 0x4
data_ov40_02193dcc:
	.space 0x4
data_ov40_02193dd0:
	.space 0x4
data_ov40_02193dd4:
	.space 0x4
data_ov40_02193dd8:
	.space 0x4
data_ov40_02193ddc:
	.space 0x4
data_ov40_02193de0:
	.space 0x4
data_ov40_02193de4:
	.space 0x4
data_ov40_02193de8:
	.space 0x4
data_ov40_02193dec:
	.space 0x4
data_ov40_02193df0:
	.space 0x4
data_ov40_02193df4:
	.space 0x4
data_ov40_02193df8:
	.space 0x4
data_ov40_02193dfc:
	.space 0x4
data_ov40_02193e00:
	.space 0x4
data_ov40_02193e04:
	.space 0x4
data_ov40_02193e08:
	.space 0x4
data_ov40_02193e0c:
	.space 0x4
data_ov40_02193e10:
	.space 0x4
data_ov40_02193e14:
	.space 0x4
data_ov40_02193e18:
	.space 0x4
data_ov40_02193e1c:
	.space 0x4
data_ov40_02193e20:
	.space 0x4
data_ov40_02193e24:
	.space 0x4
data_ov40_02193e28:
	.space 0x4
data_ov40_02193e2c:
	.space 0x4
data_ov40_02193e30:
	.space 0x4
data_ov40_02193e34:
	.space 0x4
data_ov40_02193e38:
	.space 0x4
data_ov40_02193e3c:
	.space 0x4
data_ov40_02193e40:
	.space 0x4
data_ov40_02193e44:
	.space 0x4
data_ov40_02193e48:
	.space 0x4
data_ov40_02193e4c:
	.space 0x4
data_ov40_02193e50:
	.space 0x4
data_ov40_02193e54:
	.space 0x4
data_ov40_02193e58:
	.space 0x4
data_ov40_02193e5c:
	.space 0x4
data_ov40_02193e60:
	.space 0x4
data_ov40_02193e64:
	.space 0x4
data_ov40_02193e68:
	.space 0x4
data_ov40_02193e6c:
	.space 0x4
data_ov40_02193e70:
	.space 0x4
data_ov40_02193e74:
	.space 0x4
data_ov40_02193e78:
	.space 0x4
data_ov40_02193e7c:
	.space 0x4
data_ov40_02193e80:
	.space 0x4
data_ov40_02193e84:
	.space 0x4
data_ov40_02193e88:
	.space 0x4
data_ov40_02193e8c:
	.space 0x4
data_ov40_02193e90:
	.space 0x4
data_ov40_02193e94:
	.space 0x4
data_ov40_02193e98:
	.space 0x4
data_ov40_02193e9c:
	.space 0x4
data_ov40_02193ea0:
	.space 0x4
data_ov40_02193ea4:
	.space 0x4
data_ov40_02193ea8:
	.space 0x4
data_ov40_02193eac:
	.space 0x4
data_ov40_02193eb0:
	.space 0x4
data_ov40_02193eb4:
	.space 0x4
data_ov40_02193eb8:
	.space 0x4
data_ov40_02193ebc:
	.space 0x4
data_ov40_02193ec0:
	.space 0x4
data_ov40_02193ec4:
	.space 0x4
data_ov40_02193ec8:
	.space 0x4
data_ov40_02193ecc:
	.space 0x4
data_ov40_02193ed0:
	.space 0x4
data_ov40_02193ed4:
	.space 0x4
data_ov40_02193ed8:
	.space 0x4
data_ov40_02193edc:
	.space 0x4
data_ov40_02193ee0:
	.space 0x4
data_ov40_02193ee4:
	.space 0x4
data_ov40_02193ee8:
	.space 0x4
data_ov40_02193eec:
	.space 0x4
data_ov40_02193ef0:
	.space 0x4
data_ov40_02193ef4:
	.space 0x4
data_ov40_02193ef8:
	.space 0x4
data_ov40_02193efc:
	.space 0x4
data_ov40_02193f00:
	.space 0x4
data_ov40_02193f04:
	.space 0x4
data_ov40_02193f08:
	.space 0x4
data_ov40_02193f0c:
	.space 0x4
data_ov40_02193f10:
	.space 0x4
data_ov40_02193f14:
	.space 0x4
data_ov40_02193f18:
	.space 0x4
data_ov40_02193f1c:
	.space 0x4
data_ov40_02193f20:
	.space 0x4
data_ov40_02193f24:
	.space 0x4
data_ov40_02193f28:
	.space 0x4
data_ov40_02193f2c:
	.space 0x4
data_ov40_02193f30:
	.space 0x4
data_ov40_02193f34:
	.space 0x4
data_ov40_02193f38:
	.space 0x4
data_ov40_02193f3c:
	.space 0x4
data_ov40_02193f40:
	.space 0x4
data_ov40_02193f44:
	.space 0x4
data_ov40_02193f48:
	.space 0x4
data_ov40_02193f4c:
	.space 0x4
data_ov40_02193f50:
	.space 0x4
data_ov40_02193f54:
	.space 0x4
data_ov40_02193f58:
	.space 0x4
data_ov40_02193f5c:
	.space 0x4
data_ov40_02193f60:
	.space 0x4
data_ov40_02193f64:
	.space 0x4
data_ov40_02193f68:
	.space 0x4
data_ov40_02193f6c:
	.space 0x4
data_ov40_02193f70:
	.space 0x4
data_ov40_02193f74:
	.space 0x4
data_ov40_02193f78:
	.space 0x4
data_ov40_02193f7c:
	.space 0x4
data_ov40_02193f80:
	.space 0x4
data_ov40_02193f84:
	.space 0x4
data_ov40_02193f88:
	.space 0x4
data_ov40_02193f8c:
	.space 0x4
data_ov40_02193f90:
	.space 0x4
data_ov40_02193f94:
	.space 0x4
data_ov40_02193f98:
	.space 0x4
data_ov40_02193f9c:
	.space 0x4
data_ov40_02193fa0:
	.space 0x4
data_ov40_02193fa4:
	.space 0x4
data_ov40_02193fa8:
	.space 0x4
data_ov40_02193fac:
	.space 0x4
data_ov40_02193fb0:
	.space 0x4
data_ov40_02193fb4:
	.space 0x4
data_ov40_02193fb8:
	.space 0x4
data_ov40_02193fbc:
	.space 0x4
data_ov40_02193fc0:
	.space 0x4
data_ov40_02193fc4:
	.space 0x4
data_ov40_02193fc8:
	.space 0x4
data_ov40_02193fcc:
	.space 0x4
data_ov40_02193fd0:
	.space 0x4
data_ov40_02193fd4:
	.space 0x4
data_ov40_02193fd8:
	.space 0x4
data_ov40_02193fdc:
	.space 0x4
data_ov40_02193fe0:
	.space 0x4
data_ov40_02193fe4:
	.space 0x4
data_ov40_02193fe8:
	.space 0x4
data_ov40_02193fec:
	.space 0x4
data_ov40_02193ff0:
	.space 0x4
data_ov40_02193ff4:
	.space 0x4
data_ov40_02193ff8:
	.space 0x4
data_ov40_02193ffc:
	.space 0x4
data_ov40_02194000:
	.space 0x4
data_ov40_02194004:
	.space 0x4
data_ov40_02194008:
	.space 0x4
data_ov40_0219400c:
	.space 0x4
data_ov40_02194010:
	.space 0x4
data_ov40_02194014:
	.space 0x4
data_ov40_02194018:
	.space 0x4
data_ov40_0219401c:
	.space 0x4
data_ov40_02194020:
	.space 0x4
data_ov40_02194024:
	.space 0x4
data_ov40_02194028:
	.space 0x4
data_ov40_0219402c:
	.space 0x4
data_ov40_02194030:
	.space 0x4
data_ov40_02194034:
	.space 0x4
data_ov40_02194038:
	.space 0x4
data_ov40_0219403c:
	.space 0x4
data_ov40_02194040:
	.space 0x4
data_ov40_02194044:
	.space 0x4
data_ov40_02194048:
	.space 0x4
data_ov40_0219404c:
	.space 0x4
data_ov40_02194050:
	.space 0x4
data_ov40_02194054:
	.space 0x4
data_ov40_02194058:
	.space 0x4
data_ov40_0219405c:
	.space 0x4
data_ov40_02194060:
	.space 0x4
data_ov40_02194064:
	.space 0x4
data_ov40_02194068:
	.space 0x4
data_ov40_0219406c:
	.space 0x4
data_ov40_02194070:
	.space 0x4
data_ov40_02194074:
	.space 0x4
data_ov40_02194078:
	.space 0x4
data_ov40_0219407c:
	.space 0x4
data_ov40_02194080:
	.space 0x4
data_ov40_02194084:
	.space 0x4
data_ov40_02194088:
	.space 0x4
data_ov40_0219408c:
	.space 0x4
data_ov40_02194090:
	.space 0x4
data_ov40_02194094:
	.space 0x4
data_ov40_02194098:
	.space 0x4
data_ov40_0219409c:
	.space 0x4
data_ov40_021940a0:
	.space 0x4
data_ov40_021940a4:
	.space 0x4
data_ov40_021940a8:
	.space 0x4
data_ov40_021940ac:
	.space 0x4
data_ov40_021940b0:
	.space 0x4
data_ov40_021940b4:
	.space 0x4
data_ov40_021940b8:
	.space 0x4
data_ov40_021940bc:
	.space 0x4
data_ov40_021940c0:
	.space 0x4
data_ov40_021940c4:
	.space 0x4
data_ov40_021940c8:
	.space 0x4
data_ov40_021940cc:
	.space 0x4
data_ov40_021940d0:
	.space 0x4
data_ov40_021940d4:
	.space 0x4
data_ov40_021940d8:
	.space 0x4
data_ov40_021940dc:
	.space 0x4
data_ov40_021940e0:
	.space 0x4
data_ov40_021940e4:
	.space 0x4
data_ov40_021940e8:
	.space 0x4
data_ov40_021940ec:
	.space 0x4
data_ov40_021940f0:
	.space 0x4
data_ov40_021940f4:
	.space 0x4
data_ov40_021940f8:
	.space 0x4
data_ov40_021940fc:
	.space 0x4
data_ov40_02194100:
	.space 0x4
data_ov40_02194104:
	.space 0x4
data_ov40_02194108:
	.space 0x4
data_ov40_0219410c:
	.space 0x4
data_ov40_02194110:
	.space 0x4
data_ov40_02194114:
	.space 0x4
data_ov40_02194118:
	.space 0x4
data_ov40_0219411c:
	.space 0x4
data_ov40_02194120:
	.space 0x4
data_ov40_02194124:
	.space 0x4
data_ov40_02194128:
	.space 0x4
data_ov40_0219412c:
	.space 0x4
data_ov40_02194130:
	.space 0x4
data_ov40_02194134:
	.space 0x4
data_ov40_02194138:
	.space 0x4
data_ov40_0219413c:
	.space 0x4
data_ov40_02194140:
	.space 0x4
data_ov40_02194144:
	.space 0x4
data_ov40_02194148:
	.space 0x4
data_ov40_0219414c:
	.space 0x4
data_ov40_02194150:
	.space 0x4
data_ov40_02194154:
	.space 0x4
data_ov40_02194158:
	.space 0x4
data_ov40_0219415c:
	.space 0x4
data_ov40_02194160:
	.space 0x4
data_ov40_02194164:
	.space 0x4
data_ov40_02194168:
	.space 0x4
data_ov40_0219416c:
	.space 0x4
data_ov40_02194170:
	.space 0x4
data_ov40_02194174:
	.space 0x4
data_ov40_02194178:
	.space 0x4
data_ov40_0219417c:
	.space 0x4
data_ov40_02194180:
	.space 0x4
data_ov40_02194184:
	.space 0x4
data_ov40_02194188:
	.space 0x4
data_ov40_0219418c:
	.space 0x4
data_ov40_02194190:
	.space 0x4
data_ov40_02194194:
	.space 0x4
data_ov40_02194198:
	.space 0x4
data_ov40_0219419c:
	.space 0x4
data_ov40_021941a0:
	.space 0x4
data_ov40_021941a4:
	.space 0x4
data_ov40_021941a8:
	.space 0x4
data_ov40_021941ac:
	.space 0x4
data_ov40_021941b0:
	.space 0x4
data_ov40_021941b4:
	.space 0x4
data_ov40_021941b8:
	.space 0x4
data_ov40_021941bc:
	.space 0x4
data_ov40_021941c0:
	.space 0x4
data_ov40_021941c4:
	.space 0x4
data_ov40_021941c8:
	.space 0x4
data_ov40_021941cc:
	.space 0x4
data_ov40_021941d0:
	.space 0x4
data_ov40_021941d4:
	.space 0x4
data_ov40_021941d8:
	.space 0x4
data_ov40_021941dc:
	.space 0x4
data_ov40_021941e0:
	.space 0x4
data_ov40_021941e4:
	.space 0x4
data_ov40_021941e8:
	.space 0x4
data_ov40_021941ec:
	.space 0x4
data_ov40_021941f0:
	.space 0x4
data_ov40_021941f4:
	.space 0x4
data_ov40_021941f8:
	.space 0x4
data_ov40_021941fc:
	.space 0x4
data_ov40_02194200:
	.space 0x4
data_ov40_02194204:
	.space 0x4
data_ov40_02194208:
	.space 0x4
data_ov40_0219420c:
	.space 0x4
data_ov40_02194210:
	.space 0x4
data_ov40_02194214:
	.space 0x4
data_ov40_02194218:
	.space 0x4
data_ov40_0219421c:
	.space 0x4
data_ov40_02194220:
	.space 0x4
data_ov40_02194224:
	.space 0x4
data_ov40_02194228:
	.space 0x4
data_ov40_0219422c:
	.space 0x4
data_ov40_02194230:
	.space 0x4
data_ov40_02194234:
	.space 0x4
data_ov40_02194238:
	.space 0x4
data_ov40_0219423c:
	.space 0x4
data_ov40_02194240:
	.space 0x4
data_ov40_02194244:
	.space 0x4
data_ov40_02194248:
	.space 0x4
data_ov40_0219424c:
	.space 0x4
data_ov40_02194250:
	.space 0x4
data_ov40_02194254:
	.space 0x4
data_ov40_02194258:
	.space 0x4
data_ov40_0219425c:
	.space 0x4
data_ov40_02194260:
	.space 0x4
data_ov40_02194264:
	.space 0x4
data_ov40_02194268:
	.space 0x4
data_ov40_0219426c:
	.space 0x4
data_ov40_02194270:
	.space 0x4
data_ov40_02194274:
	.space 0x4
data_ov40_02194278:
	.space 0x4
data_ov40_0219427c:
	.space 0x4
data_ov40_02194280:
	.space 0x4
data_ov40_02194284:
	.space 0x4
data_ov40_02194288:
	.space 0x4
data_ov40_0219428c:
	.space 0x4
data_ov40_02194290:
	.space 0x4
data_ov40_02194294:
	.space 0x4
data_ov40_02194298:
	.space 0x4
data_ov40_0219429c:
	.space 0x4
data_ov40_021942a0:
	.space 0x4
data_ov40_021942a4:
	.space 0x4
data_ov40_021942a8:
	.space 0x4
data_ov40_021942ac:
	.space 0x4
data_ov40_021942b0:
	.space 0x4
data_ov40_021942b4:
	.space 0x4
data_ov40_021942b8:
	.space 0x4
data_ov40_021942bc:
	.space 0x4
data_ov40_021942c0:
	.space 0x4
data_ov40_021942c4:
	.space 0x4
data_ov40_021942c8:
	.space 0x4
data_ov40_021942cc:
	.space 0x4
data_ov40_021942d0:
	.space 0x4
data_ov40_021942d4:
	.space 0x4
data_ov40_021942d8:
	.space 0x4
data_ov40_021942dc:
	.space 0x4
data_ov40_021942e0:
	.space 0x4
data_ov40_021942e4:
	.space 0x4
data_ov40_021942e8:
	.space 0x4
data_ov40_021942ec:
	.space 0x4
data_ov40_021942f0:
	.space 0x4
data_ov40_021942f4:
	.space 0x4
data_ov40_021942f8:
	.space 0x4
data_ov40_021942fc:
	.space 0x4
data_ov40_02194300:
	.space 0x4
data_ov40_02194304:
	.space 0x4
data_ov40_02194308:
	.space 0x4
data_ov40_0219430c:
	.space 0x4
data_ov40_02194310:
	.space 0x4
data_ov40_02194314:
	.space 0x4
data_ov40_02194318:
	.space 0x4
data_ov40_0219431c:
	.space 0x4
data_ov40_02194320:
	.space 0x4
data_ov40_02194324:
	.space 0x4
data_ov40_02194328:
	.space 0x4
data_ov40_0219432c:
	.space 0x4
data_ov40_02194330:
	.space 0x4
data_ov40_02194334:
	.space 0x4
data_ov40_02194338:
	.space 0x4
data_ov40_0219433c:
	.space 0x4
data_ov40_02194340:
	.space 0x4
data_ov40_02194344:
	.space 0x4
data_ov40_02194348:
	.space 0x4
data_ov40_0219434c:
	.space 0x4
data_ov40_02194350:
	.space 0x4
data_ov40_02194354:
	.space 0x4
data_ov40_02194358:
	.space 0x4
data_ov40_0219435c:
	.space 0x4
data_ov40_02194360:
	.space 0x4
data_ov40_02194364:
	.space 0x4
data_ov40_02194368:
	.space 0x4
data_ov40_0219436c:
	.space 0x4
data_ov40_02194370:
	.space 0x4
data_ov40_02194374:
	.space 0x4
data_ov40_02194378:
	.space 0x4
data_ov40_0219437c:
	.space 0x4
data_ov40_02194380:
	.space 0x4
data_ov40_02194384:
	.space 0x4
data_ov40_02194388:
	.space 0x4
data_ov40_0219438c:
	.space 0x4
data_ov40_02194390:
	.space 0x4
data_ov40_02194394:
	.space 0x4
data_ov40_02194398:
	.space 0x4
data_ov40_0219439c:
	.space 0x4
data_ov40_021943a0:
	.space 0x4
data_ov40_021943a4:
	.space 0x4
data_ov40_021943a8:
	.space 0x4
data_ov40_021943ac:
	.space 0x4
data_ov40_021943b0:
	.space 0x4
data_ov40_021943b4:
	.space 0x4
data_ov40_021943b8:
	.space 0x4
data_ov40_021943bc:
	.space 0x4
data_ov40_021943c0:
	.space 0x4
data_ov40_021943c4:
	.space 0x4
data_ov40_021943c8:
	.space 0x4
data_ov40_021943cc:
	.space 0x4
data_ov40_021943d0:
	.space 0x4
data_ov40_021943d4:
	.space 0x4
data_ov40_021943d8:
	.space 0x4
data_ov40_021943dc:
	.space 0x4
data_ov40_021943e0:
	.space 0x4
data_ov40_021943e4:
	.space 0x4
data_ov40_021943e8:
	.space 0x4
data_ov40_021943ec:
	.space 0x4
data_ov40_021943f0:
	.space 0x4
data_ov40_021943f4:
	.space 0x4
data_ov40_021943f8:
	.space 0x4
data_ov40_021943fc:
	.space 0x4
data_ov40_02194400:
	.space 0x4
data_ov40_02194404:
	.space 0x4
data_ov40_02194408:
	.space 0x4
data_ov40_0219440c:
	.space 0x4
data_ov40_02194410:
	.space 0x4
data_ov40_02194414:
	.space 0x4
data_ov40_02194418:
	.space 0x4
data_ov40_0219441c:
	.space 0x4
data_ov40_02194420:
	.space 0x4
data_ov40_02194424:
	.space 0x4
data_ov40_02194428:
	.space 0x4
data_ov40_0219442c:
	.space 0x4
data_ov40_02194430:
	.space 0x4
data_ov40_02194434:
	.space 0x4
data_ov40_02194438:
	.space 0x4
data_ov40_0219443c:
	.space 0x4
data_ov40_02194440:
	.space 0x4
data_ov40_02194444:
	.space 0x4
data_ov40_02194448:
	.space 0x4
data_ov40_0219444c:
	.space 0x4
data_ov40_02194450:
	.space 0x4
data_ov40_02194454:
	.space 0x4
data_ov40_02194458:
	.space 0x4
data_ov40_0219445c:
	.space 0x4
data_ov40_02194460:
	.space 0x4
data_ov40_02194464:
	.space 0x4
data_ov40_02194468:
	.space 0x4
data_ov40_0219446c:
	.space 0x4
data_ov40_02194470:
	.space 0x4
data_ov40_02194474:
	.space 0x4
data_ov40_02194478:
	.space 0x4
data_ov40_0219447c:
	.space 0x4
data_ov40_02194480:
	.space 0x4
data_ov40_02194484:
	.space 0x4
data_ov40_02194488:
	.space 0x4
data_ov40_0219448c:
	.space 0x4
data_ov40_02194490:
	.space 0x4
data_ov40_02194494:
	.space 0x4
data_ov40_02194498:
	.space 0x4
data_ov40_0219449c:
	.space 0x4
data_ov40_021944a0:
	.space 0x4
data_ov40_021944a4:
	.space 0x4
data_ov40_021944a8:
	.space 0x4
data_ov40_021944ac:
	.space 0x4
data_ov40_021944b0:
	.space 0x4
data_ov40_021944b4:
	.space 0x4
data_ov40_021944b8:
	.space 0x4
data_ov40_021944bc:
	.space 0x4
data_ov40_021944c0:
	.space 0x4
data_ov40_021944c4:
	.space 0x4
data_ov40_021944c8:
	.space 0x4
data_ov40_021944cc:
	.space 0x4
data_ov40_021944d0:
	.space 0x4
data_ov40_021944d4:
	.space 0x4
data_ov40_021944d8:
	.space 0x4
data_ov40_021944dc:
	.space 0x4
data_ov40_021944e0:
	.space 0x4
data_ov40_021944e4:
	.space 0x4
data_ov40_021944e8:
	.space 0x4
data_ov40_021944ec:
	.space 0x4
data_ov40_021944f0:
	.space 0x4
data_ov40_021944f4:
	.space 0x4
data_ov40_021944f8:
	.space 0x4
data_ov40_021944fc:
	.space 0x4
data_ov40_02194500:
	.space 0x4
data_ov40_02194504:
	.space 0x4
data_ov40_02194508:
	.space 0x4
data_ov40_0219450c:
	.space 0x4
data_ov40_02194510:
	.space 0x4
data_ov40_02194514:
	.space 0x4
data_ov40_02194518:
	.space 0x4
data_ov40_0219451c:
	.space 0x4
data_ov40_02194520:
	.space 0x4
data_ov40_02194524:
	.space 0x4
data_ov40_02194528:
	.space 0x4
data_ov40_0219452c:
	.space 0x4
data_ov40_02194530:
	.space 0x4
data_ov40_02194534:
	.space 0x4
data_ov40_02194538:
	.space 0x4
data_ov40_0219453c:
	.space 0x4
data_ov40_02194540:
	.space 0x4
data_ov40_02194544:
	.space 0x4
data_ov40_02194548:
	.space 0x4
data_ov40_0219454c:
	.space 0x4
data_ov40_02194550:
	.space 0x4
data_ov40_02194554:
	.space 0x4
data_ov40_02194558:
	.space 0x4
data_ov40_0219455c:
	.space 0x4
data_ov40_02194560:
	.space 0x4
data_ov40_02194564:
	.space 0x4
data_ov40_02194568:
	.space 0x4
data_ov40_0219456c:
	.space 0x4
data_ov40_02194570:
	.space 0x4
data_ov40_02194574:
	.space 0x4
data_ov40_02194578:
	.space 0x4
data_ov40_0219457c:
	.space 0x4
data_ov40_02194580:
	.space 0x4
data_ov40_02194584:
	.space 0x4
data_ov40_02194588:
	.space 0x4
data_ov40_0219458c:
	.space 0x4
data_ov40_02194590:
	.space 0x4
data_ov40_02194594:
	.space 0x4
data_ov40_02194598:
	.space 0x4
data_ov40_0219459c:
	.space 0x4
data_ov40_021945a0:
	.space 0x4
data_ov40_021945a4:
	.space 0x4
data_ov40_021945a8:
	.space 0x4
data_ov40_021945ac:
	.space 0x4
data_ov40_021945b0:
	.space 0x4
data_ov40_021945b4:
	.space 0x4
data_ov40_021945b8:
	.space 0x4
data_ov40_021945bc:
	.space 0x4
data_ov40_021945c0:
	.space 0x4
data_ov40_021945c4:
	.space 0x4
data_ov40_021945c8:
	.space 0x4
data_ov40_021945cc:
	.space 0x4
data_ov40_021945d0:
	.space 0x4
data_ov40_021945d4:
	.space 0x4
data_ov40_021945d8:
	.space 0x4
data_ov40_021945dc:
	.space 0x4
data_ov40_021945e0:
	.space 0x4
data_ov40_021945e4:
	.space 0x4
data_ov40_021945e8:
	.space 0x4
data_ov40_021945ec:
	.space 0x4
data_ov40_021945f0:
	.space 0x4
data_ov40_021945f4:
	.space 0x4
data_ov40_021945f8:
	.space 0x4
data_ov40_021945fc:
	.space 0x4
data_ov40_02194600:
	.space 0x4
data_ov40_02194604:
	.space 0x4
data_ov40_02194608:
	.space 0x4
data_ov40_0219460c:
	.space 0x4
data_ov40_02194610:
	.space 0x4
data_ov40_02194614:
	.space 0x4
data_ov40_02194618:
	.space 0x4
data_ov40_0219461c:
	.space 0x4
data_ov40_02194620:
	.space 0x4
data_ov40_02194624:
	.space 0x4
data_ov40_02194628:
	.space 0x4
data_ov40_0219462c:
	.space 0x4
data_ov40_02194630:
	.space 0x4
data_ov40_02194634:
	.space 0x4
data_ov40_02194638:
	.space 0x4
data_ov40_0219463c:
	.space 0x4
data_ov40_02194640:
	.space 0x4
data_ov40_02194644:
	.space 0x4
data_ov40_02194648:
	.space 0x4
data_ov40_0219464c:
	.space 0x4
data_ov40_02194650:
	.space 0x4
data_ov40_02194654:
	.space 0x4
data_ov40_02194658:
	.space 0x4
data_ov40_0219465c:
	.space 0x4
data_ov40_02194660:
	.space 0x4
data_ov40_02194664:
	.space 0x4
data_ov40_02194668:
	.space 0x4
data_ov40_0219466c:
	.space 0x4
data_ov40_02194670:
	.space 0x4
data_ov40_02194674:
	.space 0x4
data_ov40_02194678:
	.space 0x4
data_ov40_0219467c:
	.space 0x4
data_ov40_02194680:
	.space 0x4
data_ov40_02194684:
	.space 0x4
data_ov40_02194688:
	.space 0x4
data_ov40_0219468c:
	.space 0x4
data_ov40_02194690:
	.space 0x4
data_ov40_02194694:
	.space 0x4
data_ov40_02194698:
	.space 0x4
data_ov40_0219469c:
	.space 0x4
data_ov40_021946a0:
	.space 0x4
data_ov40_021946a4:
	.space 0x4
data_ov40_021946a8:
	.space 0x4
data_ov40_021946ac:
	.space 0x4
data_ov40_021946b0:
	.space 0x4
data_ov40_021946b4:
	.space 0x4
data_ov40_021946b8:
	.space 0x4
data_ov40_021946bc:
	.space 0x4
data_ov40_021946c0:
	.space 0x4
data_ov40_021946c4:
	.space 0x4
data_ov40_021946c8:
	.space 0x4
data_ov40_021946cc:
	.space 0x4
data_ov40_021946d0:
	.space 0x4
data_ov40_021946d4:
	.space 0x4
data_ov40_021946d8:
	.space 0x4
data_ov40_021946dc:
	.space 0x4
data_ov40_021946e0:
	.space 0x4
data_ov40_021946e4:
	.space 0x4
data_ov40_021946e8:
	.space 0x4
data_ov40_021946ec:
	.space 0x4
data_ov40_021946f0:
	.space 0x4
data_ov40_021946f4:
	.space 0x4
data_ov40_021946f8:
	.space 0x4
data_ov40_021946fc:
	.space 0x4
data_ov40_02194700:
	.space 0x4
data_ov40_02194704:
	.space 0x4
data_ov40_02194708:
	.space 0x4
data_ov40_0219470c:
	.space 0x4
data_ov40_02194710:
	.space 0x4
data_ov40_02194714:
	.space 0x4
data_ov40_02194718:
	.space 0x4
data_ov40_0219471c:
	.space 0x4
data_ov40_02194720:
	.space 0x4
data_ov40_02194724:
	.space 0x4
data_ov40_02194728:
	.space 0x4
data_ov40_0219472c:
	.space 0x4
data_ov40_02194730:
	.space 0x4
data_ov40_02194734:
	.space 0x4
data_ov40_02194738:
	.space 0x4
data_ov40_0219473c:
	.space 0x4
data_ov40_02194740:
	.space 0x4
data_ov40_02194744:
	.space 0x4
data_ov40_02194748:
	.space 0x4
data_ov40_0219474c:
	.space 0x4
data_ov40_02194750:
	.space 0x4
data_ov40_02194754:
	.space 0x4
data_ov40_02194758:
	.space 0x4
data_ov40_0219475c:
	.space 0x4
data_ov40_02194760:
	.space 0x4
data_ov40_02194764:
	.space 0x4
data_ov40_02194768:
	.space 0x4
data_ov40_0219476c:
	.space 0x4
data_ov40_02194770:
	.space 0x4
data_ov40_02194774:
	.space 0x4
data_ov40_02194778:
	.space 0x4
data_ov40_0219477c:
	.space 0x4
data_ov40_02194780:
	.space 0x4
data_ov40_02194784:
	.space 0x4
data_ov40_02194788:
	.space 0x4
data_ov40_0219478c:
	.space 0x4
data_ov40_02194790:
	.space 0x4
data_ov40_02194794:
	.space 0x4
data_ov40_02194798:
	.space 0x4
data_ov40_0219479c:
	.space 0x4
data_ov40_021947a0:
	.space 0x4
data_ov40_021947a4:
	.space 0x4
data_ov40_021947a8:
	.space 0x4
data_ov40_021947ac:
	.space 0x4
data_ov40_021947b0:
	.space 0x4
data_ov40_021947b4:
	.space 0x4
data_ov40_021947b8:
	.space 0x4
data_ov40_021947bc:
	.space 0x4
data_ov40_021947c0:
	.space 0x4
data_ov40_021947c4:
	.space 0x4
data_ov40_021947c8:
	.space 0x4
data_ov40_021947cc:
	.space 0x4
data_ov40_021947d0:
	.space 0x4
data_ov40_021947d4:
	.space 0x4
data_ov40_021947d8:
	.space 0x4
data_ov40_021947dc:
	.space 0x4
data_ov40_021947e0:
	.space 0x4
data_ov40_021947e4:
	.space 0x4
data_ov40_021947e8:
	.space 0x4
data_ov40_021947ec:
	.space 0x4
data_ov40_021947f0:
	.space 0x4
data_ov40_021947f4:
	.space 0x4
data_ov40_021947f8:
	.space 0x4
data_ov40_021947fc:
	.space 0x4
data_ov40_02194800:
	.space 0x4
data_ov40_02194804:
	.space 0x4
data_ov40_02194808:
	.space 0x4
data_ov40_0219480c:
	.space 0x4
data_ov40_02194810:
	.space 0x4
data_ov40_02194814:
	.space 0x4
data_ov40_02194818:
	.space 0x4
data_ov40_0219481c:
	.space 0x4
data_ov40_02194820:
	.space 0x4
data_ov40_02194824:
	.space 0x4
data_ov40_02194828:
	.space 0x4
data_ov40_0219482c:
	.space 0x4
data_ov40_02194830:
	.space 0x4
data_ov40_02194834:
	.space 0x4
data_ov40_02194838:
	.space 0x4
data_ov40_0219483c:
	.space 0x4
data_ov40_02194840:
	.space 0x4
data_ov40_02194844:
	.space 0x4
data_ov40_02194848:
	.space 0x4
data_ov40_0219484c:
	.space 0x4
data_ov40_02194850:
	.space 0x4
data_ov40_02194854:
	.space 0x4
data_ov40_02194858:
	.space 0x4
data_ov40_0219485c:
	.space 0x4
data_ov40_02194860:
	.space 0x4
data_ov40_02194864:
	.space 0x4
data_ov40_02194868:
	.space 0x4
data_ov40_0219486c:
	.space 0x4
data_ov40_02194870:
	.space 0x4
data_ov40_02194874:
	.space 0x4
data_ov40_02194878:
	.space 0x4
data_ov40_0219487c:
	.space 0x4
data_ov40_02194880:
	.space 0x4
data_ov40_02194884:
	.space 0x4
data_ov40_02194888:
	.space 0x4
data_ov40_0219488c:
	.space 0x4
data_ov40_02194890:
	.space 0x4
data_ov40_02194894:
	.space 0x4
data_ov40_02194898:
	.space 0x4
data_ov40_0219489c:
	.space 0x4
data_ov40_021948a0:
	.space 0x4
data_ov40_021948a4:
	.space 0x4
data_ov40_021948a8:
	.space 0x4
data_ov40_021948ac:
	.space 0x4
data_ov40_021948b0:
	.space 0x4
data_ov40_021948b4:
	.space 0x4
data_ov40_021948b8:
	.space 0x4
data_ov40_021948bc:
	.space 0x4
data_ov40_021948c0:
	.space 0x4
data_ov40_021948c4:
	.space 0x4
data_ov40_021948c8:
	.space 0x4
data_ov40_021948cc:
	.space 0x4
data_ov40_021948d0:
	.space 0x4
data_ov40_021948d4:
	.space 0x4
data_ov40_021948d8:
	.space 0x4
data_ov40_021948dc:
	.space 0x4
data_ov40_021948e0:
	.space 0x4
data_ov40_021948e4:
	.space 0x4
data_ov40_021948e8:
	.space 0x4
data_ov40_021948ec:
	.space 0x4
data_ov40_021948f0:
	.space 0x4
data_ov40_021948f4:
	.space 0x4
data_ov40_021948f8:
	.space 0x4
data_ov40_021948fc:
	.space 0x4
data_ov40_02194900:
	.space 0x4
data_ov40_02194904:
	.space 0x4
data_ov40_02194908:
	.space 0x4
data_ov40_0219490c:
	.space 0x4
data_ov40_02194910:
	.space 0x4
data_ov40_02194914:
	.space 0x4
data_ov40_02194918:
	.space 0x4
data_ov40_0219491c:
	.space 0x4
data_ov40_02194920:
	.space 0x4
data_ov40_02194924:
	.space 0x4
data_ov40_02194928:
	.space 0x4
data_ov40_0219492c:
	.space 0x4
data_ov40_02194930:
	.space 0x4
data_ov40_02194934:
	.space 0x4
data_ov40_02194938:
	.space 0x4
data_ov40_0219493c:
	.space 0x4
data_ov40_02194940:
	.space 0x4
data_ov40_02194944:
	.space 0x4
data_ov40_02194948:
	.space 0x4
data_ov40_0219494c:
	.space 0x4
data_ov40_02194950:
	.space 0x4
data_ov40_02194954:
	.space 0x4
data_ov40_02194958:
	.space 0x4
data_ov40_0219495c:
	.space 0x4
data_ov40_02194960:
	.space 0x4
data_ov40_02194964:
	.space 0x4
data_ov40_02194968:
	.space 0x4
data_ov40_0219496c:
	.space 0x4
data_ov40_02194970:
	.space 0x4
data_ov40_02194974:
	.space 0x4
data_ov40_02194978:
	.space 0x4
data_ov40_0219497c:
	.space 0x4
data_ov40_02194980:
	.space 0x4
data_ov40_02194984:
	.space 0x4
data_ov40_02194988:
	.space 0x4
data_ov40_0219498c:
	.space 0x4
data_ov40_02194990:
	.space 0x4
data_ov40_02194994:
	.space 0x4
data_ov40_02194998:
	.space 0x4
data_ov40_0219499c:
	.space 0x4
data_ov40_021949a0:
	.space 0x4
data_ov40_021949a4:
	.space 0x4
data_ov40_021949a8:
	.space 0x4
data_ov40_021949ac:
	.space 0x4
data_ov40_021949b0:
	.space 0x4
data_ov40_021949b4:
	.space 0x4
data_ov40_021949b8:
	.space 0x4
data_ov40_021949bc:
	.space 0x4
data_ov40_021949c0:
	.space 0x4
data_ov40_021949c4:
	.space 0x4
data_ov40_021949c8:
	.space 0x4
data_ov40_021949cc:
	.space 0x4
data_ov40_021949d0:
	.space 0x4
data_ov40_021949d4:
	.space 0x4
data_ov40_021949d8:
	.space 0x4
data_ov40_021949dc:
	.space 0x4
data_ov40_021949e0:
	.space 0x4
data_ov40_021949e4:
	.space 0x4
data_ov40_021949e8:
	.space 0x4
data_ov40_021949ec:
	.space 0x4
data_ov40_021949f0:
	.space 0x4
data_ov40_021949f4:
	.space 0x4
data_ov40_021949f8:
	.space 0x4
data_ov40_021949fc:
	.space 0x4
data_ov40_02194a00:
	.space 0x4
data_ov40_02194a04:
	.space 0x4
data_ov40_02194a08:
	.space 0x4
data_ov40_02194a0c:
	.space 0x4
data_ov40_02194a10:
	.space 0x4
data_ov40_02194a14:
	.space 0x4
data_ov40_02194a18:
	.space 0x4
data_ov40_02194a1c:
	.space 0x4
data_ov40_02194a20:
	.space 0x4
data_ov40_02194a24:
	.space 0x4
data_ov40_02194a28:
	.space 0x4
data_ov40_02194a2c:
	.space 0x4
data_ov40_02194a30:
	.space 0x4
data_ov40_02194a34:
	.space 0x4
data_ov40_02194a38:
	.space 0x4
data_ov40_02194a3c:
	.space 0x4
data_ov40_02194a40:
	.space 0x4
data_ov40_02194a44:
	.space 0x4
data_ov40_02194a48:
	.space 0x4
data_ov40_02194a4c:
	.space 0x4
data_ov40_02194a50:
	.space 0x4
data_ov40_02194a54:
	.space 0x4
data_ov40_02194a58:
	.space 0x4
data_ov40_02194a5c:
	.space 0x4
data_ov40_02194a60:
	.space 0x4
data_ov40_02194a64:
	.space 0x4
data_ov40_02194a68:
	.space 0x4
data_ov40_02194a6c:
	.space 0x4
data_ov40_02194a70:
	.space 0x4
data_ov40_02194a74:
	.space 0x4
data_ov40_02194a78:
	.space 0x4
data_ov40_02194a7c:
	.space 0x4
data_ov40_02194a80:
	.space 0x4
data_ov40_02194a84:
	.space 0x4
data_ov40_02194a88:
	.space 0x4
data_ov40_02194a8c:
	.space 0x4
data_ov40_02194a90:
	.space 0x4
data_ov40_02194a94:
	.space 0x4
data_ov40_02194a98:
	.space 0x4
data_ov40_02194a9c:
	.space 0x4
data_ov40_02194aa0:
	.space 0x4
data_ov40_02194aa4:
	.space 0x4
data_ov40_02194aa8:
	.space 0x4
data_ov40_02194aac:
	.space 0x4
data_ov40_02194ab0:
	.space 0x4
data_ov40_02194ab4:
	.space 0x4
data_ov40_02194ab8:
	.space 0x4
data_ov40_02194abc:
	.space 0x4
data_ov40_02194ac0:
	.space 0x4
data_ov40_02194ac4:
	.space 0x4
data_ov40_02194ac8:
	.space 0x4
data_ov40_02194acc:
	.space 0x4
data_ov40_02194ad0:
	.space 0x4
data_ov40_02194ad4:
	.space 0x4
data_ov40_02194ad8:
	.space 0x4
data_ov40_02194adc:
	.space 0x4
data_ov40_02194ae0:
	.space 0x4
data_ov40_02194ae4:
	.space 0x4
data_ov40_02194ae8:
	.space 0x4
data_ov40_02194aec:
	.space 0x4
data_ov40_02194af0:
	.space 0x4
data_ov40_02194af4:
	.space 0x4
data_ov40_02194af8:
	.space 0x4
data_ov40_02194afc:
	.space 0x4
data_ov40_02194b00:
	.space 0x4
data_ov40_02194b04:
	.space 0x4
data_ov40_02194b08:
	.space 0x4
data_ov40_02194b0c:
	.space 0x4
data_ov40_02194b10:
	.space 0x4
data_ov40_02194b14:
	.space 0x4
data_ov40_02194b18:
	.space 0x4
data_ov40_02194b1c:
	.space 0x4
data_ov40_02194b20:
	.space 0x4
data_ov40_02194b24:
	.space 0x4
data_ov40_02194b28:
	.space 0x4
data_ov40_02194b2c:
	.space 0x4
data_ov40_02194b30:
	.space 0x4
data_ov40_02194b34:
	.space 0x4
data_ov40_02194b38:
	.space 0x4
data_ov40_02194b3c:
	.space 0x4
data_ov40_02194b40:
	.space 0x4
data_ov40_02194b44:
	.space 0x4
data_ov40_02194b48:
	.space 0x4
data_ov40_02194b4c:
	.space 0x4
data_ov40_02194b50:
	.space 0x4
data_ov40_02194b54:
	.space 0x4
data_ov40_02194b58:
	.space 0x4
data_ov40_02194b5c:
	.space 0x4
data_ov40_02194b60:
	.space 0x4
data_ov40_02194b64:
	.space 0x4
data_ov40_02194b68:
	.space 0x4
data_ov40_02194b6c:
	.space 0x4
data_ov40_02194b70:
	.space 0x4
data_ov40_02194b74:
	.space 0x4
data_ov40_02194b78:
	.space 0x4
data_ov40_02194b7c:
	.space 0x4
data_ov40_02194b80:
	.space 0x4
data_ov40_02194b84:
	.space 0x4
data_ov40_02194b88:
	.space 0x4
data_ov40_02194b8c:
	.space 0x4
data_ov40_02194b90:
	.space 0x4
data_ov40_02194b94:
	.space 0x4
data_ov40_02194b98:
	.space 0x4
data_ov40_02194b9c:
	.space 0x4
data_ov40_02194ba0:
	.space 0x4
data_ov40_02194ba4:
	.space 0x4
data_ov40_02194ba8:
	.space 0x4
data_ov40_02194bac:
	.space 0x4
data_ov40_02194bb0:
	.space 0x4
data_ov40_02194bb4:
	.space 0x4
data_ov40_02194bb8:
	.space 0x4
data_ov40_02194bbc:
	.space 0x4
data_ov40_02194bc0:
	.space 0x4
data_ov40_02194bc4:
	.space 0x4
data_ov40_02194bc8:
	.space 0x4
data_ov40_02194bcc:
	.space 0x4
data_ov40_02194bd0:
	.space 0x4
data_ov40_02194bd4:
	.space 0x4
data_ov40_02194bd8:
	.space 0x4
data_ov40_02194bdc:
	.space 0x4
data_ov40_02194be0:
	.space 0x4
data_ov40_02194be4:
	.space 0x4
data_ov40_02194be8:
	.space 0x4
data_ov40_02194bec:
	.space 0x4
data_ov40_02194bf0:
	.space 0x4
data_ov40_02194bf4:
	.space 0x4
data_ov40_02194bf8:
	.space 0x4
data_ov40_02194bfc:
	.space 0x4
data_ov40_02194c00:
	.space 0x4
data_ov40_02194c04:
	.space 0x4
data_ov40_02194c08:
	.space 0x4
data_ov40_02194c0c:
	.space 0x4
data_ov40_02194c10:
	.space 0x4
data_ov40_02194c14:
	.space 0x4
data_ov40_02194c18:
	.space 0x4
data_ov40_02194c1c:
	.space 0x4
data_ov40_02194c20:
	.space 0x4
data_ov40_02194c24:
	.space 0x4
data_ov40_02194c28:
	.space 0x4
data_ov40_02194c2c:
	.space 0x4
data_ov40_02194c30:
	.space 0x4
data_ov40_02194c34:
	.space 0x4
data_ov40_02194c38:
	.space 0x4
data_ov40_02194c3c:
	.space 0x4
data_ov40_02194c40:
	.space 0x4
data_ov40_02194c44:
	.space 0x4
data_ov40_02194c48:
	.space 0x4
data_ov40_02194c4c:
	.space 0x4
data_ov40_02194c50:
	.space 0x4
data_ov40_02194c54:
	.space 0x4
data_ov40_02194c58:
	.space 0x4
data_ov40_02194c5c:
	.space 0x4
data_ov40_02194c60:
	.space 0x4
data_ov40_02194c64:
	.space 0x4
data_ov40_02194c68:
	.space 0x4
data_ov40_02194c6c:
	.space 0x4
data_ov40_02194c70:
	.space 0x4
data_ov40_02194c74:
	.space 0x4
data_ov40_02194c78:
	.space 0x4
data_ov40_02194c7c:
	.space 0x4
data_ov40_02194c80:
	.space 0x4
data_ov40_02194c84:
	.space 0x4
data_ov40_02194c88:
	.space 0x4
data_ov40_02194c8c:
	.space 0x4
data_ov40_02194c90:
	.space 0x4
data_ov40_02194c94:
	.space 0x4
data_ov40_02194c98:
	.space 0x4
data_ov40_02194c9c:
	.space 0x4
data_ov40_02194ca0:
	.space 0x4
data_ov40_02194ca4:
	.space 0x4
data_ov40_02194ca8:
	.space 0x4
data_ov40_02194cac:
	.space 0x4
data_ov40_02194cb0:
	.space 0x4
data_ov40_02194cb4:
	.space 0x4
data_ov40_02194cb8:
	.space 0x4
data_ov40_02194cbc:
	.space 0x4
data_ov40_02194cc0:
	.space 0x4
data_ov40_02194cc4:
	.space 0x4
data_ov40_02194cc8:
	.space 0x4
data_ov40_02194ccc:
	.space 0x4
data_ov40_02194cd0:
	.space 0x4
data_ov40_02194cd4:
	.space 0x4
data_ov40_02194cd8:
	.space 0x4
data_ov40_02194cdc:
	.space 0x4
data_ov40_02194ce0:
	.space 0x4
data_ov40_02194ce4:
	.space 0x4
data_ov40_02194ce8:
	.space 0x4
data_ov40_02194cec:
	.space 0x4
data_ov40_02194cf0:
	.space 0x4
data_ov40_02194cf4:
	.space 0x4
data_ov40_02194cf8:
	.space 0x4
data_ov40_02194cfc:
	.space 0x4
data_ov40_02194d00:
	.space 0x4
data_ov40_02194d04:
	.space 0x4
data_ov40_02194d08:
	.space 0x4
data_ov40_02194d0c:
	.space 0x4
data_ov40_02194d10:
	.space 0x4
data_ov40_02194d14:
	.space 0x4
data_ov40_02194d18:
	.space 0x4
data_ov40_02194d1c:
	.space 0x4
data_ov40_02194d20:
	.space 0x4
data_ov40_02194d24:
	.space 0x4
data_ov40_02194d28:
	.space 0x4
data_ov40_02194d2c:
	.space 0x4
data_ov40_02194d30:
	.space 0x4
data_ov40_02194d34:
	.space 0x4
data_ov40_02194d38:
	.space 0x4
data_ov40_02194d3c:
	.space 0x4
data_ov40_02194d40:
	.space 0x4
data_ov40_02194d44:
	.space 0x4
data_ov40_02194d48:
	.space 0x4
data_ov40_02194d4c:
	.space 0x4
data_ov40_02194d50:
	.space 0x4
data_ov40_02194d54:
	.space 0x4
data_ov40_02194d58:
	.space 0x4
data_ov40_02194d5c:
	.space 0x4
data_ov40_02194d60:
	.space 0x4
data_ov40_02194d64:
	.space 0x4
data_ov40_02194d68:
	.space 0x4
data_ov40_02194d6c:
	.space 0x4
data_ov40_02194d70:
	.space 0x4
data_ov40_02194d74:
	.space 0x4
data_ov40_02194d78:
	.space 0x4
data_ov40_02194d7c:
	.space 0x4
data_ov40_02194d80:
	.space 0x4
data_ov40_02194d84:
	.space 0x4
data_ov40_02194d88:
	.space 0x4
data_ov40_02194d8c:
	.space 0x4
data_ov40_02194d90:
	.space 0x4
data_ov40_02194d94:
	.space 0x4
data_ov40_02194d98:
	.space 0x4
data_ov40_02194d9c:
	.space 0x4
data_ov40_02194da0:
	.space 0x4
data_ov40_02194da4:
	.space 0x4
data_ov40_02194da8:
	.space 0x4
data_ov40_02194dac:
	.space 0x4
data_ov40_02194db0:
	.space 0x4
data_ov40_02194db4:
	.space 0x4
data_ov40_02194db8:
	.space 0x4
data_ov40_02194dbc:
	.space 0x4
data_ov40_02194dc0:
	.space 0x4
data_ov40_02194dc4:
	.space 0x4
data_ov40_02194dc8:
	.space 0x4
data_ov40_02194dcc:
	.space 0x4
data_ov40_02194dd0:
	.space 0x4
data_ov40_02194dd4:
	.space 0x4
data_ov40_02194dd8:
	.space 0x4
data_ov40_02194ddc:
	.space 0x4
data_ov40_02194de0:
	.space 0x4
data_ov40_02194de4:
	.space 0x4
data_ov40_02194de8:
	.space 0x4
data_ov40_02194dec:
	.space 0x4
data_ov40_02194df0:
	.space 0x4
data_ov40_02194df4:
	.space 0x4
data_ov40_02194df8:
	.space 0x4
data_ov40_02194dfc:
	.space 0x4
data_ov40_02194e00:
	.space 0x4
data_ov40_02194e04:
	.space 0x4
data_ov40_02194e08:
	.space 0x4
data_ov40_02194e0c:
	.space 0x4
data_ov40_02194e10:
	.space 0x4
data_ov40_02194e14:
	.space 0x4
data_ov40_02194e18:
	.space 0x4
data_ov40_02194e1c:
	.space 0x4
data_ov40_02194e20:
	.space 0x4
data_ov40_02194e24:
	.space 0x4
data_ov40_02194e28:
	.space 0x4
data_ov40_02194e2c:
	.space 0x4
data_ov40_02194e30:
	.space 0x4
data_ov40_02194e34:
	.space 0x4
data_ov40_02194e38:
	.space 0x4
data_ov40_02194e3c:
	.space 0x4
data_ov40_02194e40:
	.space 0x4
data_ov40_02194e44:
	.space 0x4
data_ov40_02194e48:
	.space 0x4
data_ov40_02194e4c:
	.space 0x4
data_ov40_02194e50:
	.space 0x4
data_ov40_02194e54:
	.space 0x4
data_ov40_02194e58:
	.space 0x4
data_ov40_02194e5c:
	.space 0x4
data_ov40_02194e60:
	.space 0x4
data_ov40_02194e64:
	.space 0x4
data_ov40_02194e68:
	.space 0x4
data_ov40_02194e6c:
	.space 0x4
data_ov40_02194e70:
	.space 0x4
data_ov40_02194e74:
	.space 0x4
data_ov40_02194e78:
	.space 0x4
data_ov40_02194e7c:
	.space 0x4
data_ov40_02194e80:
	.space 0x4
data_ov40_02194e84:
	.space 0x4
data_ov40_02194e88:
	.space 0x4
data_ov40_02194e8c:
	.space 0x4
data_ov40_02194e90:
	.space 0x4
data_ov40_02194e94:
	.space 0x4
data_ov40_02194e98:
	.space 0x4
data_ov40_02194e9c:
	.space 0x4
data_ov40_02194ea0:
	.space 0x4
data_ov40_02194ea4:
	.space 0x4
data_ov40_02194ea8:
	.space 0x4
data_ov40_02194eac:
	.space 0x4
data_ov40_02194eb0:
	.space 0x4
data_ov40_02194eb4:
	.space 0x4
data_ov40_02194eb8:
	.space 0x4
data_ov40_02194ebc:
	.space 0x4
data_ov40_02194ec0:
	.space 0x4
data_ov40_02194ec4:
	.space 0x4
data_ov40_02194ec8:
	.space 0x4
data_ov40_02194ecc:
	.space 0x4
data_ov40_02194ed0:
	.space 0x4
data_ov40_02194ed4:
	.space 0x4
data_ov40_02194ed8:
	.space 0x4
data_ov40_02194edc:
	.space 0x4
data_ov40_02194ee0:
	.space 0x4
data_ov40_02194ee4:
	.space 0x4
data_ov40_02194ee8:
	.space 0x4
data_ov40_02194eec:
	.space 0x4
data_ov40_02194ef0:
	.space 0x4
data_ov40_02194ef4:
	.space 0x4
data_ov40_02194ef8:
	.space 0x4
data_ov40_02194efc:
	.space 0x4
data_ov40_02194f00:
	.space 0x4
data_ov40_02194f04:
	.space 0x4
data_ov40_02194f08:
	.space 0x4
data_ov40_02194f0c:
	.space 0x4
data_ov40_02194f10:
	.space 0x4
data_ov40_02194f14:
	.space 0x4
data_ov40_02194f18:
	.space 0x4
data_ov40_02194f1c:
	.space 0x4
data_ov40_02194f20:
	.space 0x4
data_ov40_02194f24:
	.space 0x4
data_ov40_02194f28:
	.space 0x4
data_ov40_02194f2c:
	.space 0x4
data_ov40_02194f30:
	.space 0x4
data_ov40_02194f34:
	.space 0x4
data_ov40_02194f38:
	.space 0x4
data_ov40_02194f3c:
	.space 0x4
data_ov40_02194f40:
	.space 0x4
data_ov40_02194f44:
	.space 0x4
data_ov40_02194f48:
	.space 0x4
data_ov40_02194f4c:
	.space 0x4
data_ov40_02194f50:
	.space 0x4
data_ov40_02194f54:
	.space 0x4
data_ov40_02194f58:
	.space 0x4
data_ov40_02194f5c:
	.space 0x4
data_ov40_02194f60:
	.space 0x4
data_ov40_02194f64:
	.space 0x4
data_ov40_02194f68:
	.space 0x4
data_ov40_02194f6c:
	.space 0x4
data_ov40_02194f70:
	.space 0x4
data_ov40_02194f74:
	.space 0x4
data_ov40_02194f78:
	.space 0x4
data_ov40_02194f7c:
	.space 0x4
data_ov40_02194f80:
	.space 0x4
data_ov40_02194f84:
	.space 0x4
data_ov40_02194f88:
	.space 0x4
data_ov40_02194f8c:
	.space 0x4
data_ov40_02194f90:
	.space 0x4
data_ov40_02194f94:
	.space 0x4
data_ov40_02194f98:
	.space 0x4
data_ov40_02194f9c:
	.space 0x4
data_ov40_02194fa0:
	.space 0x4
data_ov40_02194fa4:
	.space 0x4
data_ov40_02194fa8:
	.space 0x4
data_ov40_02194fac:
	.space 0x4
data_ov40_02194fb0:
	.space 0x4
data_ov40_02194fb4:
	.space 0x4
data_ov40_02194fb8:
	.space 0x4
data_ov40_02194fbc:
	.space 0x4
data_ov40_02194fc0:
	.space 0x4
data_ov40_02194fc4:
	.space 0x4
data_ov40_02194fc8:
	.space 0x4
data_ov40_02194fcc:
	.space 0x4
data_ov40_02194fd0:
	.space 0x4
data_ov40_02194fd4:
	.space 0x4
data_ov40_02194fd8:
	.space 0x4
data_ov40_02194fdc:
	.space 0x4
data_ov40_02194fe0:
	.space 0x4
data_ov40_02194fe4:
	.space 0x4
data_ov40_02194fe8:
	.space 0x4
data_ov40_02194fec:
	.space 0x4
data_ov40_02194ff0:
	.space 0x4
data_ov40_02194ff4:
	.space 0x4
data_ov40_02194ff8:
	.space 0x4
data_ov40_02194ffc:
	.space 0x4
data_ov40_02195000:
	.space 0x4
data_ov40_02195004:
	.space 0x4
data_ov40_02195008:
	.space 0x4
data_ov40_0219500c:
	.space 0x4
data_ov40_02195010:
	.space 0x4
data_ov40_02195014:
	.space 0x4
data_ov40_02195018:
	.space 0x4
data_ov40_0219501c:
	.space 0x4
data_ov40_02195020:
	.space 0x4
data_ov40_02195024:
	.space 0x4
data_ov40_02195028:
	.space 0x4
data_ov40_0219502c:
	.space 0x4
data_ov40_02195030:
	.space 0x4
data_ov40_02195034:
	.space 0x4
data_ov40_02195038:
	.space 0x4
data_ov40_0219503c:
	.space 0x4
data_ov40_02195040:
	.space 0x4
data_ov40_02195044:
	.space 0x4
data_ov40_02195048:
	.space 0x4
data_ov40_0219504c:
	.space 0x4
data_ov40_02195050:
	.space 0x4
data_ov40_02195054:
	.space 0x4
data_ov40_02195058:
	.space 0x4
data_ov40_0219505c:
	.space 0x4
data_ov40_02195060:
	.space 0x4
data_ov40_02195064:
	.space 0x4
data_ov40_02195068:
	.space 0x4
data_ov40_0219506c:
	.space 0x4
data_ov40_02195070:
	.space 0x4
data_ov40_02195074:
	.space 0x4
data_ov40_02195078:
	.space 0x4
data_ov40_0219507c:
	.space 0x4
data_ov40_02195080:
	.space 0x4
data_ov40_02195084:
	.space 0x4
data_ov40_02195088:
	.space 0x4
data_ov40_0219508c:
	.space 0x4
data_ov40_02195090:
	.space 0x4
data_ov40_02195094:
	.space 0x4
data_ov40_02195098:
	.space 0x4
data_ov40_0219509c:
	.space 0x4
data_ov40_021950a0:
	.space 0x4
data_ov40_021950a4:
	.space 0x4
data_ov40_021950a8:
	.space 0x4
data_ov40_021950ac:
	.space 0x4
data_ov40_021950b0:
	.space 0x4
data_ov40_021950b4:
	.space 0x4
data_ov40_021950b8:
	.space 0x4
data_ov40_021950bc:
	.space 0x4
data_ov40_021950c0:
	.space 0x4
data_ov40_021950c4:
	.space 0x4
data_ov40_021950c8:
	.space 0x4
data_ov40_021950cc:
	.space 0x4
data_ov40_021950d0:
	.space 0x4
data_ov40_021950d4:
	.space 0x4
data_ov40_021950d8:
	.space 0x4
data_ov40_021950dc:
	.space 0x4
data_ov40_021950e0:
	.space 0x4
data_ov40_021950e4:
	.space 0x4
data_ov40_021950e8:
	.space 0x4
data_ov40_021950ec:
	.space 0x4
data_ov40_021950f0:
	.space 0x4
data_ov40_021950f4:
	.space 0x4
data_ov40_021950f8:
	.space 0x4
data_ov40_021950fc:
	.space 0x4
data_ov40_02195100:
	.space 0x4
data_ov40_02195104:
	.space 0x4
data_ov40_02195108:
	.space 0x4
data_ov40_0219510c:
	.space 0x4
data_ov40_02195110:
	.space 0x4
data_ov40_02195114:
	.space 0x4
data_ov40_02195118:
	.space 0x4
data_ov40_0219511c:
	.space 0x4
data_ov40_02195120:
	.space 0x4
data_ov40_02195124:
	.space 0x4
data_ov40_02195128:
	.space 0x4
data_ov40_0219512c:
	.space 0x4
data_ov40_02195130:
	.space 0x4
data_ov40_02195134:
	.space 0x4
data_ov40_02195138:
	.space 0x4
data_ov40_0219513c:
	.space 0x4
data_ov40_02195140:
	.space 0x4
data_ov40_02195144:
	.space 0x4
data_ov40_02195148:
	.space 0x4
data_ov40_0219514c:
	.space 0x4
data_ov40_02195150:
	.space 0x4
data_ov40_02195154:
	.space 0x4
data_ov40_02195158:
	.space 0x4
data_ov40_0219515c:
	.space 0x4
data_ov40_02195160:
	.space 0x4
data_ov40_02195164:
	.space 0x4
data_ov40_02195168:
	.space 0x4
data_ov40_0219516c:
	.space 0x4
data_ov40_02195170:
	.space 0x4
data_ov40_02195174:
	.space 0x4
data_ov40_02195178:
	.space 0x4
data_ov40_0219517c:
	.space 0x4
data_ov40_02195180:
	.space 0x4
data_ov40_02195184:
	.space 0x4
data_ov40_02195188:
	.space 0x4
data_ov40_0219518c:
	.space 0x4
data_ov40_02195190:
	.space 0x4
data_ov40_02195194:
	.space 0x4
data_ov40_02195198:
	.space 0x4
data_ov40_0219519c:
	.space 0x4
data_ov40_021951a0:
	.space 0x4
data_ov40_021951a4:
	.space 0x4
data_ov40_021951a8:
	.space 0x4
data_ov40_021951ac:
	.space 0x4
data_ov40_021951b0:
	.space 0x4
data_ov40_021951b4:
	.space 0x4
data_ov40_021951b8:
	.space 0x4
data_ov40_021951bc:
	.space 0x4
data_ov40_021951c0:
	.space 0x4
data_ov40_021951c4:
	.space 0x4
data_ov40_021951c8:
	.space 0x4
data_ov40_021951cc:
	.space 0x4
data_ov40_021951d0:
	.space 0x4
data_ov40_021951d4:
	.space 0x4
data_ov40_021951d8:
	.space 0x4
data_ov40_021951dc:
	.space 0x4
data_ov40_021951e0:
	.space 0x4
data_ov40_021951e4:
	.space 0x4
data_ov40_021951e8:
	.space 0x4
data_ov40_021951ec:
	.space 0x4
data_ov40_021951f0:
	.space 0x4
data_ov40_021951f4:
	.space 0x4
data_ov40_021951f8:
	.space 0x4
data_ov40_021951fc:
	.space 0x4
data_ov40_02195200:
	.space 0x4
data_ov40_02195204:
	.space 0x4
data_ov40_02195208:
	.space 0x4
data_ov40_0219520c:
	.space 0x4
data_ov40_02195210:
	.space 0x4
data_ov40_02195214:
	.space 0x4
data_ov40_02195218:
	.space 0x4
data_ov40_0219521c:
	.space 0x4
data_ov40_02195220:
	.space 0x4
data_ov40_02195224:
	.space 0x4
data_ov40_02195228:
	.space 0x4
data_ov40_0219522c:
	.space 0x4
data_ov40_02195230:
	.space 0x4
data_ov40_02195234:
	.space 0x4
data_ov40_02195238:
	.space 0x4
data_ov40_0219523c:
	.space 0x4
data_ov40_02195240:
	.space 0x4
data_ov40_02195244:
	.space 0x4
data_ov40_02195248:
	.space 0x4
data_ov40_0219524c:
	.space 0x4
data_ov40_02195250:
	.space 0x4
data_ov40_02195254:
	.space 0x4
data_ov40_02195258:
	.space 0x4
data_ov40_0219525c:
	.space 0x4
data_ov40_02195260:
	.space 0x4
data_ov40_02195264:
	.space 0x4
data_ov40_02195268:
	.space 0x4
data_ov40_0219526c:
	.space 0x4
data_ov40_02195270:
	.space 0x4
data_ov40_02195274:
	.space 0x4
data_ov40_02195278:
	.space 0x4
data_ov40_0219527c:
	.space 0x4
data_ov40_02195280:
	.space 0x4
data_ov40_02195284:
	.space 0x4
data_ov40_02195288:
	.space 0x4
data_ov40_0219528c:
	.space 0x4
data_ov40_02195290:
	.space 0x4
data_ov40_02195294:
	.space 0x4
data_ov40_02195298:
	.space 0x4
data_ov40_0219529c:
	.space 0x4
data_ov40_021952a0:
	.space 0x4
data_ov40_021952a4:
	.space 0x4
data_ov40_021952a8:
	.space 0x4
data_ov40_021952ac:
	.space 0x4
data_ov40_021952b0:
	.space 0x4
data_ov40_021952b4:
	.space 0x4
data_ov40_021952b8:
	.space 0x4
data_ov40_021952bc:
	.space 0x4
data_ov40_021952c0:
	.space 0x4
data_ov40_021952c4:
	.space 0x4
data_ov40_021952c8:
	.space 0x4
data_ov40_021952cc:
	.space 0x4
data_ov40_021952d0:
	.space 0x4
data_ov40_021952d4:
	.space 0x4
data_ov40_021952d8:
	.space 0x4
data_ov40_021952dc:
	.space 0x4
data_ov40_021952e0:
	.space 0x4
data_ov40_021952e4:
	.space 0x4
data_ov40_021952e8:
	.space 0x4
data_ov40_021952ec:
	.space 0x4
data_ov40_021952f0:
	.space 0x4
data_ov40_021952f4:
	.space 0x4
data_ov40_021952f8:
	.space 0x4
data_ov40_021952fc:
	.space 0x4
data_ov40_02195300:
	.space 0x4
data_ov40_02195304:
	.space 0x4
data_ov40_02195308:
	.space 0x4
data_ov40_0219530c:
	.space 0x4
data_ov40_02195310:
	.space 0x4
data_ov40_02195314:
	.space 0x4
data_ov40_02195318:
	.space 0x4
data_ov40_0219531c:
	.space 0x4
data_ov40_02195320:
	.space 0x4
data_ov40_02195324:
	.space 0x4
data_ov40_02195328:
	.space 0x4
data_ov40_0219532c:
	.space 0x4
data_ov40_02195330:
	.space 0x4
data_ov40_02195334:
	.space 0x4
data_ov40_02195338:
	.space 0x4
data_ov40_0219533c:
	.space 0x4
data_ov40_02195340:
	.space 0x4
data_ov40_02195344:
	.space 0x4
data_ov40_02195348:
	.space 0x4
data_ov40_0219534c:
	.space 0x4
data_ov40_02195350:
	.space 0x4
data_ov40_02195354:
	.space 0x4
data_ov40_02195358:
	.space 0x4
data_ov40_0219535c:
	.space 0x4
data_ov40_02195360:
	.space 0x4
data_ov40_02195364:
	.space 0x4
data_ov40_02195368:
	.space 0x4
data_ov40_0219536c:
	.space 0x4
data_ov40_02195370:
	.space 0x4
data_ov40_02195374:
	.space 0x4
data_ov40_02195378:
	.space 0x4
data_ov40_0219537c:
	.space 0x4
data_ov40_02195380:
	.space 0x4
data_ov40_02195384:
	.space 0x4
data_ov40_02195388:
	.space 0x4
data_ov40_0219538c:
	.space 0x4
data_ov40_02195390:
	.space 0x4
data_ov40_02195394:
	.space 0x4
data_ov40_02195398:
	.space 0x4
data_ov40_0219539c:
	.space 0x4
data_ov40_021953a0:
	.space 0x4
data_ov40_021953a4:
	.space 0x4
data_ov40_021953a8:
	.space 0x4
data_ov40_021953ac:
	.space 0x4
data_ov40_021953b0:
	.space 0x4
data_ov40_021953b4:
	.space 0x4
data_ov40_021953b8:
	.space 0x4
data_ov40_021953bc:
	.space 0x4
data_ov40_021953c0:
	.space 0x4
data_ov40_021953c4:
	.space 0x4
data_ov40_021953c8:
	.space 0x4
data_ov40_021953cc:
	.space 0x4
data_ov40_021953d0:
	.space 0x4
data_ov40_021953d4:
	.space 0x4
data_ov40_021953d8:
	.space 0x4
data_ov40_021953dc:
	.space 0x4
data_ov40_021953e0:
	.space 0x4
data_ov40_021953e4:
	.space 0x4
data_ov40_021953e8:
	.space 0x4
data_ov40_021953ec:
	.space 0x4
data_ov40_021953f0:
	.space 0x4
data_ov40_021953f4:
	.space 0x4
data_ov40_021953f8:
	.space 0x4
data_ov40_021953fc:
	.space 0x4
data_ov40_02195400:
	.space 0x4
data_ov40_02195404:
	.space 0x4
data_ov40_02195408:
	.space 0x4
data_ov40_0219540c:
	.space 0x4
data_ov40_02195410:
	.space 0x4
data_ov40_02195414:
	.space 0x4
data_ov40_02195418:
	.space 0x4
data_ov40_0219541c:
	.space 0x4
data_ov40_02195420:
	.space 0x4
data_ov40_02195424:
	.space 0x4
data_ov40_02195428:
	.space 0x4
data_ov40_0219542c:
	.space 0x4
data_ov40_02195430:
	.space 0x4
data_ov40_02195434:
	.space 0x4
data_ov40_02195438:
	.space 0x4
data_ov40_0219543c:
	.space 0x4
data_ov40_02195440:
	.space 0x4
data_ov40_02195444:
	.space 0x4
data_ov40_02195448:
	.space 0x4
data_ov40_0219544c:
	.space 0x4
data_ov40_02195450:
	.space 0x4
data_ov40_02195454:
	.space 0x4
data_ov40_02195458:
	.space 0x4
data_ov40_0219545c:
	.space 0x4
data_ov40_02195460:
	.space 0x4
data_ov40_02195464:
	.space 0x4
data_ov40_02195468:
	.space 0x4
data_ov40_0219546c:
	.space 0x4
data_ov40_02195470:
	.space 0x4
data_ov40_02195474:
	.space 0x4
data_ov40_02195478:
	.space 0x4
data_ov40_0219547c:
	.space 0x4
data_ov40_02195480:
	.space 0x4
data_ov40_02195484:
	.space 0x4
data_ov40_02195488:
	.space 0x4
data_ov40_0219548c:
	.space 0x4
data_ov40_02195490:
	.space 0x4
data_ov40_02195494:
	.space 0x4
data_ov40_02195498:
	.space 0x4
data_ov40_0219549c:
	.space 0x4
data_ov40_021954a0:
	.space 0x4
data_ov40_021954a4:
	.space 0x4
data_ov40_021954a8:
	.space 0x4
data_ov40_021954ac:
	.space 0x4
data_ov40_021954b0:
	.space 0x4
data_ov40_021954b4:
	.space 0x4
data_ov40_021954b8:
	.space 0x4
data_ov40_021954bc:
	.space 0x4
data_ov40_021954c0:
	.space 0x4
data_ov40_021954c4:
	.space 0x4
data_ov40_021954c8:
	.space 0x4
data_ov40_021954cc:
	.space 0x4
data_ov40_021954d0:
	.space 0x4
data_ov40_021954d4:
	.space 0x4
data_ov40_021954d8:
	.space 0x4
data_ov40_021954dc:
	.space 0x4
data_ov40_021954e0:
	.space 0x4
data_ov40_021954e4:
	.space 0x4
data_ov40_021954e8:
	.space 0x4
data_ov40_021954ec:
	.space 0x4
data_ov40_021954f0:
	.space 0x4
data_ov40_021954f4:
	.space 0x4
data_ov40_021954f8:
	.space 0x4
data_ov40_021954fc:
	.space 0x4
data_ov40_02195500:
	.space 0x4
data_ov40_02195504:
	.space 0x4
data_ov40_02195508:
	.space 0x4
data_ov40_0219550c:
	.space 0x4
data_ov40_02195510:
	.space 0x4
data_ov40_02195514:
	.space 0x4
data_ov40_02195518:
	.space 0x4
data_ov40_0219551c:
	.space 0x4
data_ov40_02195520:
	.space 0x4
data_ov40_02195524:
	.space 0x4
data_ov40_02195528:
	.space 0x4
data_ov40_0219552c:
	.space 0x4
data_ov40_02195530:
	.space 0x4
data_ov40_02195534:
	.space 0x4
data_ov40_02195538:
	.space 0x4
data_ov40_0219553c:
	.space 0x4
data_ov40_02195540:
	.space 0x4
data_ov40_02195544:
	.space 0x4
data_ov40_02195548:
	.space 0x4
data_ov40_0219554c:
	.space 0x4
data_ov40_02195550:
	.space 0x4
data_ov40_02195554:
	.space 0x4
data_ov40_02195558:
	.space 0x4
data_ov40_0219555c:
	.space 0x4
data_ov40_02195560:
	.space 0x4
data_ov40_02195564:
	.space 0x4
data_ov40_02195568:
	.space 0x4
data_ov40_0219556c:
	.space 0x4
data_ov40_02195570:
	.space 0x4
data_ov40_02195574:
	.space 0x4
data_ov40_02195578:
	.space 0x4
data_ov40_0219557c:
	.space 0x4
data_ov40_02195580:
	.space 0x4
data_ov40_02195584:
	.space 0x4
data_ov40_02195588:
	.space 0x4
data_ov40_0219558c:
	.space 0x4
data_ov40_02195590:
	.space 0x4
data_ov40_02195594:
	.space 0x4
data_ov40_02195598:
	.space 0x4
data_ov40_0219559c:
	.space 0x4
data_ov40_021955a0:
	.space 0x4
data_ov40_021955a4:
	.space 0x4
data_ov40_021955a8:
	.space 0x4
data_ov40_021955ac:
	.space 0x4
data_ov40_021955b0:
	.space 0x4
data_ov40_021955b4:
	.space 0x4
data_ov40_021955b8:
	.space 0x4
data_ov40_021955bc:
	.space 0x4
data_ov40_021955c0:
	.space 0x4
data_ov40_021955c4:
	.space 0x4
data_ov40_021955c8:
	.space 0x4
data_ov40_021955cc:
	.space 0x4
data_ov40_021955d0:
	.space 0x4
data_ov40_021955d4:
	.space 0x4
data_ov40_021955d8:
	.space 0x4
data_ov40_021955dc:
	.space 0x4
data_ov40_021955e0:
	.space 0x4
data_ov40_021955e4:
	.space 0x4
data_ov40_021955e8:
	.space 0x4
data_ov40_021955ec:
	.space 0x4
data_ov40_021955f0:
	.space 0x4
data_ov40_021955f4:
	.space 0x4
data_ov40_021955f8:
	.space 0x4
data_ov40_021955fc:
	.space 0x4
data_ov40_02195600:
	.space 0x4
data_ov40_02195604:
	.space 0x4
data_ov40_02195608:
	.space 0x4
data_ov40_0219560c:
	.space 0x4
data_ov40_02195610:
	.space 0x4
data_ov40_02195614:
	.space 0x4
data_ov40_02195618:
	.space 0x4
data_ov40_0219561c:
	.space 0x4
data_ov40_02195620:
	.space 0x4
data_ov40_02195624:
	.space 0x4
data_ov40_02195628:
	.space 0x4
data_ov40_0219562c:
	.space 0x4
data_ov40_02195630:
	.space 0x4
data_ov40_02195634:
	.space 0x4
data_ov40_02195638:
	.space 0x4
data_ov40_0219563c:
	.space 0x4
data_ov40_02195640:
	.space 0x4
data_ov40_02195644:
	.space 0x4
data_ov40_02195648:
	.space 0x4
data_ov40_0219564c:
	.space 0x4
data_ov40_02195650:
	.space 0x4
data_ov40_02195654:
	.space 0x4
data_ov40_02195658:
	.space 0x4
data_ov40_0219565c:
	.space 0x4
data_ov40_02195660:
	.space 0x4
data_ov40_02195664:
	.space 0x4
data_ov40_02195668:
	.space 0x4
data_ov40_0219566c:
	.space 0x4
data_ov40_02195670:
	.space 0x4
data_ov40_02195674:
	.space 0x4
data_ov40_02195678:
	.space 0x4
data_ov40_0219567c:
	.space 0x4
data_ov40_02195680:
	.space 0x4
data_ov40_02195684:
	.space 0x4
data_ov40_02195688:
	.space 0x4
data_ov40_0219568c:
	.space 0x4
data_ov40_02195690:
	.space 0x4
data_ov40_02195694:
	.space 0x4
data_ov40_02195698:
	.space 0x4
data_ov40_0219569c:
	.space 0x4
data_ov40_021956a0:
	.space 0x4
data_ov40_021956a4:
	.space 0x4
data_ov40_021956a8:
	.space 0x4
data_ov40_021956ac:
	.space 0x4
data_ov40_021956b0:
	.space 0x4
data_ov40_021956b4:
	.space 0x4
data_ov40_021956b8:
	.space 0x4
data_ov40_021956bc:
	.space 0x4
data_ov40_021956c0:
	.space 0x4
data_ov40_021956c4:
	.space 0x4
data_ov40_021956c8:
	.space 0x4
data_ov40_021956cc:
	.space 0x4
data_ov40_021956d0:
	.space 0x4
data_ov40_021956d4:
	.space 0x4
data_ov40_021956d8:
	.space 0x4
data_ov40_021956dc:
	.space 0x4
data_ov40_021956e0:
	.space 0x4
data_ov40_021956e4:
	.space 0x4
data_ov40_021956e8:
	.space 0x4
data_ov40_021956ec:
	.space 0x4
data_ov40_021956f0:
	.space 0x4
data_ov40_021956f4:
	.space 0x4
data_ov40_021956f8:
	.space 0x4
data_ov40_021956fc:
	.space 0x4
data_ov40_02195700:
	.space 0x4
data_ov40_02195704:
	.space 0x4
data_ov40_02195708:
	.space 0x4
data_ov40_0219570c:
	.space 0x4
data_ov40_02195710:
	.space 0x4
data_ov40_02195714:
	.space 0x4
data_ov40_02195718:
	.space 0x4
data_ov40_0219571c:
	.space 0x4
data_ov40_02195720:
	.space 0x4
data_ov40_02195724:
	.space 0x4
data_ov40_02195728:
	.space 0x4
data_ov40_0219572c:
	.space 0x4
data_ov40_02195730:
	.space 0x4
data_ov40_02195734:
	.space 0x4
data_ov40_02195738:
	.space 0x4
data_ov40_0219573c:
	.space 0x4
data_ov40_02195740:
	.space 0x4
data_ov40_02195744:
	.space 0x4
data_ov40_02195748:
	.space 0x4
data_ov40_0219574c:
	.space 0x4
data_ov40_02195750:
	.space 0x4
data_ov40_02195754:
	.space 0x4
data_ov40_02195758:
	.space 0x4
data_ov40_0219575c:
	.space 0x4
data_ov40_02195760:
	.space 0x4
data_ov40_02195764:
	.space 0x4
data_ov40_02195768:
	.space 0x4
data_ov40_0219576c:
	.space 0x4
data_ov40_02195770:
	.space 0x4
data_ov40_02195774:
	.space 0x4
data_ov40_02195778:
	.space 0x4
data_ov40_0219577c:
	.space 0x4
data_ov40_02195780:
	.space 0x4
data_ov40_02195784:
	.space 0x4
data_ov40_02195788:
	.space 0x4
data_ov40_0219578c:
	.space 0x4
data_ov40_02195790:
	.space 0x4
data_ov40_02195794:
	.space 0x4
data_ov40_02195798:
	.space 0x4
data_ov40_0219579c:
	.space 0x4
data_ov40_021957a0:
	.space 0x4
data_ov40_021957a4:
	.space 0x4
data_ov40_021957a8:
	.space 0x4
data_ov40_021957ac:
	.space 0x4
data_ov40_021957b0:
	.space 0x4
data_ov40_021957b4:
	.space 0x4
data_ov40_021957b8:
	.space 0x4
data_ov40_021957bc:
	.space 0x4
data_ov40_021957c0:
	.space 0x4
data_ov40_021957c4:
	.space 0x4
data_ov40_021957c8:
	.space 0x4
data_ov40_021957cc:
	.space 0x4
data_ov40_021957d0:
	.space 0x4
data_ov40_021957d4:
	.space 0x4
data_ov40_021957d8:
	.space 0x4
data_ov40_021957dc:
	.space 0x4
data_ov40_021957e0:
	.space 0x4
data_ov40_021957e4:
	.space 0x4
data_ov40_021957e8:
	.space 0x4
data_ov40_021957ec:
	.space 0x4
data_ov40_021957f0:
	.space 0x4
data_ov40_021957f4:
	.space 0x4
data_ov40_021957f8:
	.space 0x4
data_ov40_021957fc:
	.space 0x4
data_ov40_02195800:
	.space 0x4
data_ov40_02195804:
	.space 0x4
data_ov40_02195808:
	.space 0x4
data_ov40_0219580c:
	.space 0x4
data_ov40_02195810:
	.space 0x4
data_ov40_02195814:
	.space 0x4
data_ov40_02195818:
	.space 0x4
data_ov40_0219581c:
	.space 0x4
data_ov40_02195820:
	.space 0x4
data_ov40_02195824:
	.space 0x4
data_ov40_02195828:
	.space 0x4
data_ov40_0219582c:
	.space 0x4
data_ov40_02195830:
	.space 0x4
data_ov40_02195834:
	.space 0x4
data_ov40_02195838:
	.space 0x4
data_ov40_0219583c:
	.space 0x4
data_ov40_02195840:
	.space 0x4
data_ov40_02195844:
	.space 0x4
data_ov40_02195848:
	.space 0x4
data_ov40_0219584c:
	.space 0x4
data_ov40_02195850:
	.space 0x4
data_ov40_02195854:
	.space 0x4
data_ov40_02195858:
	.space 0x4
data_ov40_0219585c:
	.space 0x4
data_ov40_02195860:
	.space 0x4
data_ov40_02195864:
	.space 0x4
data_ov40_02195868:
	.space 0x4
data_ov40_0219586c:
	.space 0x4
data_ov40_02195870:
	.space 0x4
data_ov40_02195874:
	.space 0x4
data_ov40_02195878:
	.space 0x4
data_ov40_0219587c:
	.space 0x4
data_ov40_02195880:
	.space 0x4
data_ov40_02195884:
	.space 0x4
data_ov40_02195888:
	.space 0x4
data_ov40_0219588c:
	.space 0x4
data_ov40_02195890:
	.space 0x4
data_ov40_02195894:
	.space 0x4
data_ov40_02195898:
	.space 0x4
data_ov40_0219589c:
	.space 0x4
data_ov40_021958a0:
	.space 0x4
data_ov40_021958a4:
	.space 0x4
data_ov40_021958a8:
	.space 0x4
data_ov40_021958ac:
	.space 0x4
data_ov40_021958b0:
	.space 0x4
data_ov40_021958b4:
	.space 0x4
data_ov40_021958b8:
	.space 0x4
data_ov40_021958bc:
	.space 0x4
data_ov40_021958c0:
	.space 0x4
data_ov40_021958c4:
	.space 0x4
data_ov40_021958c8:
	.space 0x4
data_ov40_021958cc:
	.space 0x4
data_ov40_021958d0:
	.space 0x4
data_ov40_021958d4:
	.space 0x4
data_ov40_021958d8:
	.space 0x4
data_ov40_021958dc:
	.space 0x4
data_ov40_021958e0:
	.space 0x4
data_ov40_021958e4:
	.space 0x4
data_ov40_021958e8:
	.space 0x4
data_ov40_021958ec:
	.space 0x4
data_ov40_021958f0:
	.space 0x4
data_ov40_021958f4:
	.space 0x4
data_ov40_021958f8:
	.space 0x4
data_ov40_021958fc:
	.space 0x4
data_ov40_02195900:
	.space 0x4
data_ov40_02195904:
	.space 0x4
data_ov40_02195908:
	.space 0x4
data_ov40_0219590c:
	.space 0x4
data_ov40_02195910:
	.space 0x4
data_ov40_02195914:
	.space 0x4
data_ov40_02195918:
	.space 0x4
data_ov40_0219591c:
	.space 0x4
data_ov40_02195920:
	.space 0x4
data_ov40_02195924:
	.space 0x4
data_ov40_02195928:
	.space 0x4
data_ov40_0219592c:
	.space 0x4
data_ov40_02195930:
	.space 0x4
data_ov40_02195934:
	.space 0x4
data_ov40_02195938:
	.space 0x4
data_ov40_0219593c:
	.space 0x4
data_ov40_02195940:
	.space 0x4
data_ov40_02195944:
	.space 0x4
data_ov40_02195948:
	.space 0x4
data_ov40_0219594c:
	.space 0x4
data_ov40_02195950:
	.space 0x4
data_ov40_02195954:
	.space 0x4
data_ov40_02195958:
	.space 0x4
data_ov40_0219595c:
	.space 0x4
data_ov40_02195960:
	.space 0x4
data_ov40_02195964:
	.space 0x4
data_ov40_02195968:
	.space 0x4
data_ov40_0219596c:
	.space 0x4
data_ov40_02195970:
	.space 0x4
data_ov40_02195974:
	.space 0x4
data_ov40_02195978:
	.space 0x4
data_ov40_0219597c:
	.space 0x4
data_ov40_02195980:
	.space 0x4
data_ov40_02195984:
	.space 0x4
data_ov40_02195988:
	.space 0x4
data_ov40_0219598c:
	.space 0x4
data_ov40_02195990:
	.space 0x4
data_ov40_02195994:
	.space 0x4
data_ov40_02195998:
	.space 0x4
data_ov40_0219599c:
	.space 0x4
data_ov40_021959a0:
	.space 0x4
data_ov40_021959a4:
	.space 0x4
data_ov40_021959a8:
	.space 0x4
data_ov40_021959ac:
	.space 0x4
data_ov40_021959b0:
	.space 0x4
data_ov40_021959b4:
	.space 0x4
data_ov40_021959b8:
	.space 0x4
data_ov40_021959bc:
	.space 0x4
data_ov40_021959c0:
	.space 0x4
data_ov40_021959c4:
	.space 0x4
data_ov40_021959c8:
	.space 0x4
data_ov40_021959cc:
	.space 0x4
data_ov40_021959d0:
	.space 0x4
data_ov40_021959d4:
	.space 0x4
data_ov40_021959d8:
	.space 0x4
data_ov40_021959dc:
	.space 0x4
data_ov40_021959e0:
	.space 0x4
data_ov40_021959e4:
	.space 0x4
data_ov40_021959e8:
	.space 0x4
data_ov40_021959ec:
	.space 0x4
data_ov40_021959f0:
	.space 0x4
data_ov40_021959f4:
	.space 0x4
data_ov40_021959f8:
	.space 0x4
data_ov40_021959fc:
	.space 0x4
data_ov40_02195a00:
	.space 0x4
data_ov40_02195a04:
	.space 0x4
data_ov40_02195a08:
	.space 0x4
data_ov40_02195a0c:
	.space 0x4
data_ov40_02195a10:
	.space 0x4
data_ov40_02195a14:
	.space 0x4
data_ov40_02195a18:
	.space 0x4
data_ov40_02195a1c:
	.space 0x4
data_ov40_02195a20:
	.space 0x4
data_ov40_02195a24:
	.space 0x4
data_ov40_02195a28:
	.space 0x4
data_ov40_02195a2c:
	.space 0x4
data_ov40_02195a30:
	.space 0x4
data_ov40_02195a34:
	.space 0x4
data_ov40_02195a38:
	.space 0x4
data_ov40_02195a3c:
	.space 0x4
data_ov40_02195a40:
	.space 0x4
data_ov40_02195a44:
	.space 0x4
data_ov40_02195a48:
	.space 0x4
data_ov40_02195a4c:
	.space 0x4
data_ov40_02195a50:
	.space 0x4
data_ov40_02195a54:
	.space 0x4
data_ov40_02195a58:
	.space 0x4
data_ov40_02195a5c:
	.space 0x4
data_ov40_02195a60:
	.space 0x4
data_ov40_02195a64:
	.space 0x4
data_ov40_02195a68:
	.space 0x4
data_ov40_02195a6c:
	.space 0x4
data_ov40_02195a70:
	.space 0x4
data_ov40_02195a74:
	.space 0x4
data_ov40_02195a78:
	.space 0x4
data_ov40_02195a7c:
	.space 0x4
data_ov40_02195a80:
	.space 0x4
data_ov40_02195a84:
	.space 0x4
data_ov40_02195a88:
	.space 0x4
data_ov40_02195a8c:
	.space 0x4
data_ov40_02195a90:
	.space 0x4
data_ov40_02195a94:
	.space 0x4
data_ov40_02195a98:
	.space 0x4
data_ov40_02195a9c:
	.space 0x4
data_ov40_02195aa0:
	.space 0x4
data_ov40_02195aa4:
	.space 0x4
data_ov40_02195aa8:
	.space 0x4
data_ov40_02195aac:
	.space 0x4
data_ov40_02195ab0:
	.space 0x4
data_ov40_02195ab4:
	.space 0x4
data_ov40_02195ab8:
	.space 0x4
data_ov40_02195abc:
	.space 0x4
data_ov40_02195ac0:
	.space 0x4
data_ov40_02195ac4:
	.space 0x4
data_ov40_02195ac8:
	.space 0x4
data_ov40_02195acc:
	.space 0x4
data_ov40_02195ad0:
	.space 0x4
data_ov40_02195ad4:
	.space 0x4
data_ov40_02195ad8:
	.space 0x4
data_ov40_02195adc:
	.space 0x4
data_ov40_02195ae0:
	.space 0x4
data_ov40_02195ae4:
	.space 0x4
data_ov40_02195ae8:
	.space 0x4
data_ov40_02195aec:
	.space 0x4
data_ov40_02195af0:
	.space 0x4
data_ov40_02195af4:
	.space 0x4
data_ov40_02195af8:
	.space 0x4
data_ov40_02195afc:
	.space 0x4
data_ov40_02195b00:
	.space 0x4
data_ov40_02195b04:
	.space 0x4
data_ov40_02195b08:
	.space 0x4
data_ov40_02195b0c:
	.space 0x4
data_ov40_02195b10:
	.space 0x4
data_ov40_02195b14:
	.space 0x4
data_ov40_02195b18:
	.space 0x4
data_ov40_02195b1c:
	.space 0x4
data_ov40_02195b20:
	.space 0x4
data_ov40_02195b24:
	.space 0x4
data_ov40_02195b28:
	.space 0x4
data_ov40_02195b2c:
	.space 0x4
data_ov40_02195b30:
	.space 0x4
data_ov40_02195b34:
	.space 0x4
data_ov40_02195b38:
	.space 0x4
data_ov40_02195b3c:
	.space 0x4
data_ov40_02195b40:
	.space 0x4
data_ov40_02195b44:
	.space 0x4
data_ov40_02195b48:
	.space 0x4
data_ov40_02195b4c:
	.space 0x4
data_ov40_02195b50:
	.space 0x4
data_ov40_02195b54:
	.space 0x4
data_ov40_02195b58:
	.space 0x4
data_ov40_02195b5c:
	.space 0x4
data_ov40_02195b60:
	.space 0x4
data_ov40_02195b64:
	.space 0x4
data_ov40_02195b68:
	.space 0x4
data_ov40_02195b6c:
	.space 0x4
data_ov40_02195b70:
	.space 0x4
data_ov40_02195b74:
	.space 0x4
data_ov40_02195b78:
	.space 0x4
data_ov40_02195b7c:
	.space 0x4
data_ov40_02195b80:
	.space 0x4
data_ov40_02195b84:
	.space 0x4
data_ov40_02195b88:
	.space 0x4
data_ov40_02195b8c:
	.space 0x4
data_ov40_02195b90:
	.space 0x4
data_ov40_02195b94:
	.space 0x4
data_ov40_02195b98:
	.space 0x4
data_ov40_02195b9c:
	.space 0x4
data_ov40_02195ba0:
	.space 0x4
data_ov40_02195ba4:
	.space 0x4
data_ov40_02195ba8:
	.space 0x4
data_ov40_02195bac:
	.space 0x4
data_ov40_02195bb0:
	.space 0x4
data_ov40_02195bb4:
	.space 0x4
data_ov40_02195bb8:
	.space 0x4
data_ov40_02195bbc:
	.space 0x4
data_ov40_02195bc0:
	.space 0x4
data_ov40_02195bc4:
	.space 0x4
data_ov40_02195bc8:
	.space 0x4
data_ov40_02195bcc:
	.space 0x4
data_ov40_02195bd0:
	.space 0x4
data_ov40_02195bd4:
	.space 0x4
data_ov40_02195bd8:
	.space 0x4
data_ov40_02195bdc:
	.space 0x4
data_ov40_02195be0:
	.space 0x4
data_ov40_02195be4:
	.space 0x4
data_ov40_02195be8:
	.space 0x4
data_ov40_02195bec:
	.space 0x4
data_ov40_02195bf0:
	.space 0x4
data_ov40_02195bf4:
	.space 0x4
data_ov40_02195bf8:
	.space 0x4
data_ov40_02195bfc:
	.space 0x4
data_ov40_02195c00:
	.space 0x4
data_ov40_02195c04:
	.space 0x4
data_ov40_02195c08:
	.space 0x4
data_ov40_02195c0c:
	.space 0x4
data_ov40_02195c10:
	.space 0x4
data_ov40_02195c14:
	.space 0x4
data_ov40_02195c18:
	.space 0x4
data_ov40_02195c1c:
	.space 0x4
data_ov40_02195c20:
	.space 0x4
data_ov40_02195c24:
	.space 0x4
data_ov40_02195c28:
	.space 0x4
data_ov40_02195c2c:
	.space 0x4
data_ov40_02195c30:
	.space 0x4
data_ov40_02195c34:
	.space 0x4
data_ov40_02195c38:
	.space 0x4
data_ov40_02195c3c:
	.space 0x4
data_ov40_02195c40:
	.space 0x4
data_ov40_02195c44:
	.space 0x4
data_ov40_02195c48:
	.space 0x4
data_ov40_02195c4c:
	.space 0x4
data_ov40_02195c50:
	.space 0x4
data_ov40_02195c54:
	.space 0x4
data_ov40_02195c58:
	.space 0x4
data_ov40_02195c5c:
	.space 0x4
data_ov40_02195c60:
	.space 0x4
data_ov40_02195c64:
	.space 0x4
data_ov40_02195c68:
	.space 0x4
data_ov40_02195c6c:
	.space 0x4
data_ov40_02195c70:
	.space 0x4
data_ov40_02195c74:
	.space 0x4
data_ov40_02195c78:
	.space 0x4
data_ov40_02195c7c:
	.space 0x4
data_ov40_02195c80:
	.space 0x4
data_ov40_02195c84:
	.space 0x4
data_ov40_02195c88:
	.space 0x4
data_ov40_02195c8c:
	.space 0x4
data_ov40_02195c90:
	.space 0x4
data_ov40_02195c94:
	.space 0x4
data_ov40_02195c98:
	.space 0x4
data_ov40_02195c9c:
	.space 0x4
data_ov40_02195ca0:
	.space 0x4
data_ov40_02195ca4:
	.space 0x4
data_ov40_02195ca8:
	.space 0x4
data_ov40_02195cac:
	.space 0x4
data_ov40_02195cb0:
	.space 0x4
data_ov40_02195cb4:
	.space 0x4
data_ov40_02195cb8:
	.space 0x4
data_ov40_02195cbc:
	.space 0x4
data_ov40_02195cc0:
	.space 0x4
data_ov40_02195cc4:
	.space 0x4
data_ov40_02195cc8:
	.space 0x4
data_ov40_02195ccc:
	.space 0x4
data_ov40_02195cd0:
	.space 0x4
data_ov40_02195cd4:
	.space 0x4
data_ov40_02195cd8:
	.space 0x4
data_ov40_02195cdc:
	.space 0x4
data_ov40_02195ce0:
	.space 0x4
data_ov40_02195ce4:
	.space 0x4
data_ov40_02195ce8:
	.space 0x4
data_ov40_02195cec:
	.space 0x4
data_ov40_02195cf0:
	.space 0x4
data_ov40_02195cf4:
	.space 0x4
data_ov40_02195cf8:
	.space 0x4
data_ov40_02195cfc:
	.space 0x4
data_ov40_02195d00:
	.space 0x4
data_ov40_02195d04:
	.space 0x4
data_ov40_02195d08:
	.space 0x4
data_ov40_02195d0c:
	.space 0x4
data_ov40_02195d10:
	.space 0x4
data_ov40_02195d14:
	.space 0x4
data_ov40_02195d18:
	.space 0x4
data_ov40_02195d1c:
	.space 0x4
data_ov40_02195d20:
	.space 0x4
data_ov40_02195d24:
	.space 0x4
data_ov40_02195d28:
	.space 0x4
data_ov40_02195d2c:
	.space 0x4
data_ov40_02195d30:
	.space 0x4
data_ov40_02195d34:
	.space 0x4
data_ov40_02195d38:
	.space 0x4
data_ov40_02195d3c:
	.space 0x4
data_ov40_02195d40:
	.space 0x4
data_ov40_02195d44:
	.space 0x4
data_ov40_02195d48:
	.space 0x4
data_ov40_02195d4c:
	.space 0x4
data_ov40_02195d50:
	.space 0x4
data_ov40_02195d54:
	.space 0x4
data_ov40_02195d58:
	.space 0x4
data_ov40_02195d5c:
	.space 0x4
data_ov40_02195d60:
	.space 0x4
data_ov40_02195d64:
	.space 0x4
data_ov40_02195d68:
	.space 0x4
data_ov40_02195d6c:
	.space 0x4
data_ov40_02195d70:
	.space 0x4
data_ov40_02195d74:
	.space 0x4
data_ov40_02195d78:
	.space 0x4
data_ov40_02195d7c:
	.space 0x4
data_ov40_02195d80:
	.space 0x4
data_ov40_02195d84:
	.space 0x4
data_ov40_02195d88:
	.space 0x4
data_ov40_02195d8c:
	.space 0x4
data_ov40_02195d90:
	.space 0x4
data_ov40_02195d94:
	.space 0x4
data_ov40_02195d98:
	.space 0x4
data_ov40_02195d9c:
	.space 0x4
data_ov40_02195da0:
	.space 0x4
data_ov40_02195da4:
	.space 0x4
data_ov40_02195da8:
	.space 0x4
data_ov40_02195dac:
	.space 0x4
data_ov40_02195db0:
	.space 0x4
data_ov40_02195db4:
	.space 0x4
data_ov40_02195db8:
	.space 0x4
data_ov40_02195dbc:
	.space 0x4
data_ov40_02195dc0:
	.space 0x4
data_ov40_02195dc4:
	.space 0x4
data_ov40_02195dc8:
	.space 0x4
data_ov40_02195dcc:
	.space 0x4
data_ov40_02195dd0:
	.space 0x4
data_ov40_02195dd4:
	.space 0x4
data_ov40_02195dd8:
	.space 0x4
data_ov40_02195ddc:
	.space 0x4
data_ov40_02195de0:
	.space 0x4
data_ov40_02195de4:
	.space 0x4
data_ov40_02195de8:
	.space 0x4
data_ov40_02195dec:
	.space 0x4
data_ov40_02195df0:
	.space 0x4
data_ov40_02195df4:
	.space 0x4
data_ov40_02195df8:
	.space 0x4
data_ov40_02195dfc:
	.space 0x4
data_ov40_02195e00:
	.space 0x4
data_ov40_02195e04:
	.space 0x4
data_ov40_02195e08:
	.space 0x4
data_ov40_02195e0c:
	.space 0x4
data_ov40_02195e10:
	.space 0x4
data_ov40_02195e14:
	.space 0x4
data_ov40_02195e18:
	.space 0x4
data_ov40_02195e1c:
	.space 0x4
data_ov40_02195e20:
	.space 0x4
data_ov40_02195e24:
	.space 0x4
data_ov40_02195e28:
	.space 0x4
data_ov40_02195e2c:
	.space 0x4
data_ov40_02195e30:
	.space 0x4
data_ov40_02195e34:
	.space 0x4
data_ov40_02195e38:
	.space 0x4
data_ov40_02195e3c:
	.space 0x4
data_ov40_02195e40:
	.space 0x4
data_ov40_02195e44:
	.space 0x4
data_ov40_02195e48:
	.space 0x4
data_ov40_02195e4c:
	.space 0x4
data_ov40_02195e50:
	.space 0x4
data_ov40_02195e54:
	.space 0x4
data_ov40_02195e58:
	.space 0x4
data_ov40_02195e5c:
	.space 0x4
data_ov40_02195e60:
	.space 0x4
data_ov40_02195e64:
	.space 0x4
data_ov40_02195e68:
	.space 0x4
data_ov40_02195e6c:
	.space 0x4
data_ov40_02195e70:
	.space 0x4
data_ov40_02195e74:
	.space 0x4
data_ov40_02195e78:
	.space 0x4
data_ov40_02195e7c:
	.space 0x4
data_ov40_02195e80:
	.space 0x4
data_ov40_02195e84:
	.space 0x4
data_ov40_02195e88:
	.space 0x4
data_ov40_02195e8c:
	.space 0x4
data_ov40_02195e90:
	.space 0x4
data_ov40_02195e94:
	.space 0x4
data_ov40_02195e98:
	.space 0x4
data_ov40_02195e9c:
	.space 0x4
data_ov40_02195ea0:
	.space 0x4
data_ov40_02195ea4:
	.space 0x4
data_ov40_02195ea8:
	.space 0x4
data_ov40_02195eac:
	.space 0x4
data_ov40_02195eb0:
	.space 0x4
data_ov40_02195eb4:
	.space 0x4
data_ov40_02195eb8:
	.space 0x4
data_ov40_02195ebc:
	.space 0x4
data_ov40_02195ec0:
	.space 0x4
data_ov40_02195ec4:
	.space 0x4
data_ov40_02195ec8:
	.space 0x4
data_ov40_02195ecc:
	.space 0x4
data_ov40_02195ed0:
	.space 0x4
data_ov40_02195ed4:
	.space 0x4
data_ov40_02195ed8:
	.space 0x4
data_ov40_02195edc:
	.space 0x4
data_ov40_02195ee0:
	.space 0x4
data_ov40_02195ee4:
	.space 0x4
data_ov40_02195ee8:
	.space 0x4
data_ov40_02195eec:
	.space 0x4
data_ov40_02195ef0:
	.space 0x4
data_ov40_02195ef4:
	.space 0x4
data_ov40_02195ef8:
	.space 0x4
data_ov40_02195efc:
	.space 0x4
data_ov40_02195f00:
	.space 0x4
data_ov40_02195f04:
	.space 0x4
data_ov40_02195f08:
	.space 0x4
data_ov40_02195f0c:
	.space 0x4
data_ov40_02195f10:
	.space 0x4
data_ov40_02195f14:
	.space 0x4
data_ov40_02195f18:
	.space 0x4
data_ov40_02195f1c:
	.space 0x4
data_ov40_02195f20:
	.space 0x4
data_ov40_02195f24:
	.space 0x4
data_ov40_02195f28:
	.space 0x4
data_ov40_02195f2c:
	.space 0x4
data_ov40_02195f30:
	.space 0x4
data_ov40_02195f34:
	.space 0x4
data_ov40_02195f38:
	.space 0x4
data_ov40_02195f3c:
	.space 0x4
data_ov40_02195f40:
	.space 0x4
data_ov40_02195f44:
	.space 0x4
data_ov40_02195f48:
	.space 0x4
data_ov40_02195f4c:
	.space 0x4
data_ov40_02195f50:
	.space 0x4
data_ov40_02195f54:
	.space 0x4
data_ov40_02195f58:
	.space 0x4
data_ov40_02195f5c:
	.space 0x4
data_ov40_02195f60:
	.space 0x4
data_ov40_02195f64:
	.space 0x4
data_ov40_02195f68:
	.space 0x4
data_ov40_02195f6c:
	.space 0x4
data_ov40_02195f70:
	.space 0x4
data_ov40_02195f74:
	.space 0x4
data_ov40_02195f78:
	.space 0x4
data_ov40_02195f7c:
	.space 0x4
data_ov40_02195f80:
	.space 0x4
data_ov40_02195f84:
	.space 0x4
data_ov40_02195f88:
	.space 0x4
data_ov40_02195f8c:
	.space 0x4
data_ov40_02195f90:
	.space 0x4
data_ov40_02195f94:
	.space 0x4
data_ov40_02195f98:
	.space 0x4
data_ov40_02195f9c:
	.space 0x4
data_ov40_02195fa0:
	.space 0x4
data_ov40_02195fa4:
	.space 0x4
data_ov40_02195fa8:
	.space 0x4
data_ov40_02195fac:
	.space 0x4
data_ov40_02195fb0:
	.space 0x4
data_ov40_02195fb4:
	.space 0x4
data_ov40_02195fb8:
	.space 0x4
data_ov40_02195fbc:
	.space 0x4
data_ov40_02195fc0:
	.space 0x4
data_ov40_02195fc4:
	.space 0x4
data_ov40_02195fc8:
	.space 0x4
data_ov40_02195fcc:
	.space 0x4
data_ov40_02195fd0:
	.space 0x4
data_ov40_02195fd4:
	.space 0x4
data_ov40_02195fd8:
	.space 0x4
data_ov40_02195fdc:
	.space 0x4
data_ov40_02195fe0:
	.space 0x4
data_ov40_02195fe4:
	.space 0x4
data_ov40_02195fe8:
	.space 0x4
data_ov40_02195fec:
	.space 0x4
data_ov40_02195ff0:
	.space 0x4
data_ov40_02195ff4:
	.space 0x4
data_ov40_02195ff8:
	.space 0x4
data_ov40_02195ffc:
	.space 0x4
data_ov40_02196000:
	.space 0x4
data_ov40_02196004:
	.space 0x4
data_ov40_02196008:
	.space 0x4
data_ov40_0219600c:
	.space 0x4
data_ov40_02196010:
	.space 0x4
data_ov40_02196014:
	.space 0x4
data_ov40_02196018:
	.space 0x4
data_ov40_0219601c:
	.space 0x4
data_ov40_02196020:
	.space 0x4
data_ov40_02196024:
	.space 0x4
data_ov40_02196028:
	.space 0x4
data_ov40_0219602c:
	.space 0x4
data_ov40_02196030:
	.space 0x4
data_ov40_02196034:
	.space 0x4
data_ov40_02196038:
	.space 0x4
data_ov40_0219603c:
	.space 0x4
data_ov40_02196040:
	.space 0x4
data_ov40_02196044:
	.space 0x4
data_ov40_02196048:
	.space 0x4
data_ov40_0219604c:
	.space 0x4
data_ov40_02196050:
	.space 0x4
data_ov40_02196054:
	.space 0x4
data_ov40_02196058:
	.space 0x4
data_ov40_0219605c:
	.space 0x4
data_ov40_02196060:
	.space 0x4
data_ov40_02196064:
	.space 0x4
data_ov40_02196068:
	.space 0x4
data_ov40_0219606c:
	.space 0x4
data_ov40_02196070:
	.space 0x4
data_ov40_02196074:
	.space 0x4
data_ov40_02196078:
	.space 0x4
data_ov40_0219607c:
	.space 0x4
data_ov40_02196080:
	.space 0x4
data_ov40_02196084:
	.space 0x4
data_ov40_02196088:
	.space 0x4
data_ov40_0219608c:
	.space 0x4
data_ov40_02196090:
	.space 0x4
data_ov40_02196094:
	.space 0x4
data_ov40_02196098:
	.space 0x4
data_ov40_0219609c:
	.space 0x4
data_ov40_021960a0:
	.space 0x4
data_ov40_021960a4:
	.space 0x4
data_ov40_021960a8:
	.space 0x4
data_ov40_021960ac:
	.space 0x4
data_ov40_021960b0:
	.space 0x4
data_ov40_021960b4:
	.space 0x4
data_ov40_021960b8:
	.space 0x4
data_ov40_021960bc:
	.space 0x4
data_ov40_021960c0:
	.space 0x4
data_ov40_021960c4:
	.space 0x4
data_ov40_021960c8:
	.space 0x4
data_ov40_021960cc:
	.space 0x4
data_ov40_021960d0:
	.space 0x4
data_ov40_021960d4:
	.space 0x4
data_ov40_021960d8:
	.space 0x4
data_ov40_021960dc:
	.space 0x4
data_ov40_021960e0:
	.space 0x4
data_ov40_021960e4:
	.space 0x4
data_ov40_021960e8:
	.space 0x4
data_ov40_021960ec:
	.space 0x4
data_ov40_021960f0:
	.space 0x4
data_ov40_021960f4:
	.space 0x4
data_ov40_021960f8:
	.space 0x4
data_ov40_021960fc:
	.space 0x4
data_ov40_02196100:
	.space 0x4
data_ov40_02196104:
	.space 0x4
data_ov40_02196108:
	.space 0x4
data_ov40_0219610c:
	.space 0x4
data_ov40_02196110:
	.space 0x4
data_ov40_02196114:
	.space 0x4
data_ov40_02196118:
	.space 0x4
data_ov40_0219611c:
	.space 0x4
data_ov40_02196120:
	.space 0x4
data_ov40_02196124:
	.space 0x4
data_ov40_02196128:
	.space 0x4
data_ov40_0219612c:
	.space 0x4
data_ov40_02196130:
	.space 0x4
data_ov40_02196134:
	.space 0x4
data_ov40_02196138:
	.space 0x4
data_ov40_0219613c:
	.space 0x4
data_ov40_02196140:
	.space 0x4
data_ov40_02196144:
	.space 0x4
data_ov40_02196148:
	.space 0x4
data_ov40_0219614c:
	.space 0x4
data_ov40_02196150:
	.space 0x4
data_ov40_02196154:
	.space 0x4
data_ov40_02196158:
	.space 0x4
data_ov40_0219615c:
	.space 0x4
data_ov40_02196160:
	.space 0x4
data_ov40_02196164:
	.space 0x4
data_ov40_02196168:
	.space 0x4
data_ov40_0219616c:
	.space 0x4
data_ov40_02196170:
	.space 0x4
data_ov40_02196174:
	.space 0x4
data_ov40_02196178:
	.space 0x4
data_ov40_0219617c:
	.space 0x4
data_ov40_02196180:
	.space 0x4
data_ov40_02196184:
	.space 0x4
data_ov40_02196188:
	.space 0x4
data_ov40_0219618c:
	.space 0x4
data_ov40_02196190:
	.space 0x4
data_ov40_02196194:
	.space 0x4
data_ov40_02196198:
	.space 0x4
data_ov40_0219619c:
	.space 0x4
data_ov40_021961a0:
	.space 0x4
data_ov40_021961a4:
	.space 0x4
data_ov40_021961a8:
	.space 0x4
data_ov40_021961ac:
	.space 0x4
data_ov40_021961b0:
	.space 0x4
data_ov40_021961b4:
	.space 0x4
data_ov40_021961b8:
	.space 0x4
data_ov40_021961bc:
	.space 0x4
data_ov40_021961c0:
	.space 0x4
data_ov40_021961c4:
	.space 0x4
data_ov40_021961c8:
	.space 0x4
data_ov40_021961cc:
	.space 0x4
data_ov40_021961d0:
	.space 0x4
data_ov40_021961d4:
	.space 0x4
data_ov40_021961d8:
	.space 0x4
data_ov40_021961dc:
	.space 0x4
data_ov40_021961e0:
	.space 0x4
data_ov40_021961e4:
	.space 0x4
data_ov40_021961e8:
	.space 0x4
data_ov40_021961ec:
	.space 0x4
data_ov40_021961f0:
	.space 0x4
data_ov40_021961f4:
	.space 0x4
data_ov40_021961f8:
	.space 0x4
data_ov40_021961fc:
	.space 0x4
data_ov40_02196200:
	.space 0x4
data_ov40_02196204:
	.space 0x4
data_ov40_02196208:
	.space 0x4
data_ov40_0219620c:
	.space 0x4
data_ov40_02196210:
	.space 0x4
data_ov40_02196214:
	.space 0x4
data_ov40_02196218:
	.space 0x4
data_ov40_0219621c:
	.space 0x4
data_ov40_02196220:
	.space 0x4
data_ov40_02196224:
	.space 0x4
data_ov40_02196228:
	.space 0x4
data_ov40_0219622c:
	.space 0x4
data_ov40_02196230:
	.space 0x4
data_ov40_02196234:
	.space 0x4
data_ov40_02196238:
	.space 0x4
data_ov40_0219623c:
	.space 0x4
data_ov40_02196240:
	.space 0x4
data_ov40_02196244:
	.space 0x4
data_ov40_02196248:
	.space 0x4
data_ov40_0219624c:
	.space 0x4
data_ov40_02196250:
	.space 0x4
data_ov40_02196254:
	.space 0x4
data_ov40_02196258:
	.space 0x4
data_ov40_0219625c:
	.space 0x4
data_ov40_02196260:
	.space 0x4
data_ov40_02196264:
	.space 0x4
data_ov40_02196268:
	.space 0x4
data_ov40_0219626c:
	.space 0x4
data_ov40_02196270:
	.space 0x4
data_ov40_02196274:
	.space 0x4
data_ov40_02196278:
	.space 0x4
data_ov40_0219627c:
	.space 0x4
data_ov40_02196280:
	.space 0x4
data_ov40_02196284:
	.space 0x4
data_ov40_02196288:
	.space 0x4
data_ov40_0219628c:
	.space 0x4
data_ov40_02196290:
	.space 0x4
data_ov40_02196294:
	.space 0x4
data_ov40_02196298:
	.space 0x4
data_ov40_0219629c:
	.space 0x4
data_ov40_021962a0:
	.space 0x4
data_ov40_021962a4:
	.space 0x4
data_ov40_021962a8:
	.space 0x4
data_ov40_021962ac:
	.space 0x4
data_ov40_021962b0:
	.space 0x4
data_ov40_021962b4:
	.space 0x4
data_ov40_021962b8:
	.space 0x4
data_ov40_021962bc:
	.space 0x4
data_ov40_021962c0:
	.space 0x4
data_ov40_021962c4:
	.space 0x4
data_ov40_021962c8:
	.space 0x4
data_ov40_021962cc:
	.space 0x4
data_ov40_021962d0:
	.space 0x4
data_ov40_021962d4:
	.space 0x4
data_ov40_021962d8:
	.space 0x4
data_ov40_021962dc:
	.space 0x4
data_ov40_021962e0:
	.space 0x4
data_ov40_021962e4:
	.space 0x4
data_ov40_021962e8:
	.space 0x4
data_ov40_021962ec:
	.space 0x4
data_ov40_021962f0:
	.space 0x4
data_ov40_021962f4:
	.space 0x4
data_ov40_021962f8:
	.space 0x4
data_ov40_021962fc:
	.space 0x4
data_ov40_02196300:
	.space 0x4
data_ov40_02196304:
	.space 0x4
data_ov40_02196308:
	.space 0x4
data_ov40_0219630c:
	.space 0x4
data_ov40_02196310:
	.space 0x4
data_ov40_02196314:
	.space 0x4
data_ov40_02196318:
	.space 0x4
data_ov40_0219631c:
	.space 0x4
data_ov40_02196320:
	.space 0x4
data_ov40_02196324:
	.space 0x4
data_ov40_02196328:
	.space 0x4
data_ov40_0219632c:
	.space 0x4
data_ov40_02196330:
	.space 0x4
data_ov40_02196334:
	.space 0x4
data_ov40_02196338:
	.space 0x4
data_ov40_0219633c:
	.space 0x4
data_ov40_02196340:
	.space 0x4
data_ov40_02196344:
	.space 0x4
data_ov40_02196348:
	.space 0x4
data_ov40_0219634c:
	.space 0x4
data_ov40_02196350:
	.space 0x4
data_ov40_02196354:
	.space 0x4
data_ov40_02196358:
	.space 0x4
data_ov40_0219635c:
	.space 0x4
data_ov40_02196360:
	.space 0x4
data_ov40_02196364:
	.space 0x4
data_ov40_02196368:
	.space 0x4
data_ov40_0219636c:
	.space 0x4
data_ov40_02196370:
	.space 0x4
data_ov40_02196374:
	.space 0x4
data_ov40_02196378:
	.space 0x4
data_ov40_0219637c:
	.space 0x4
data_ov40_02196380:
	.space 0x4
data_ov40_02196384:
	.space 0x4
data_ov40_02196388:
	.space 0x4
data_ov40_0219638c:
	.space 0x4
data_ov40_02196390:
	.space 0x4
data_ov40_02196394:
	.space 0x4
data_ov40_02196398:
	.space 0x4
data_ov40_0219639c:
	.space 0x4
data_ov40_021963a0:
	.space 0x4
data_ov40_021963a4:
	.space 0x4
data_ov40_021963a8:
	.space 0x4
data_ov40_021963ac:
	.space 0x4
data_ov40_021963b0:
	.space 0x4
data_ov40_021963b4:
	.space 0x4
data_ov40_021963b8:
	.space 0x4
data_ov40_021963bc:
	.space 0x4
data_ov40_021963c0:
	.space 0x4
data_ov40_021963c4:
	.space 0x4
data_ov40_021963c8:
	.space 0x4
data_ov40_021963cc:
	.space 0x4
data_ov40_021963d0:
	.space 0x4
data_ov40_021963d4:
	.space 0x4
data_ov40_021963d8:
	.space 0x4
data_ov40_021963dc:
	.space 0x4
data_ov40_021963e0:
	.space 0x4
data_ov40_021963e4:
	.space 0x4
data_ov40_021963e8:
	.space 0x4
data_ov40_021963ec:
	.space 0x4
data_ov40_021963f0:
	.space 0x4
data_ov40_021963f4:
	.space 0x4
data_ov40_021963f8:
	.space 0x4
data_ov40_021963fc:
	.space 0x4
data_ov40_02196400:
	.space 0x4
data_ov40_02196404:
	.space 0x4
data_ov40_02196408:
	.space 0x4
data_ov40_0219640c:
	.space 0x4
data_ov40_02196410:
	.space 0x4
data_ov40_02196414:
	.space 0x4
data_ov40_02196418:
	.space 0x4
data_ov40_0219641c:
	.space 0x4
data_ov40_02196420:
	.space 0x4
data_ov40_02196424:
	.space 0x4
data_ov40_02196428:
	.space 0x4
data_ov40_0219642c:
	.space 0x4
data_ov40_02196430:
	.space 0x4
data_ov40_02196434:
	.space 0x4
data_ov40_02196438:
	.space 0x4
data_ov40_0219643c:
	.space 0x4
data_ov40_02196440:
	.space 0x4
data_ov40_02196444:
	.space 0x4
data_ov40_02196448:
	.space 0x4
data_ov40_0219644c:
	.space 0x4
data_ov40_02196450:
	.space 0x4
data_ov40_02196454:
	.space 0x4
data_ov40_02196458:
	.space 0x4
data_ov40_0219645c:
	.space 0x4
data_ov40_02196460:
	.space 0x4
data_ov40_02196464:
	.space 0x4
data_ov40_02196468:
	.space 0x4
data_ov40_0219646c:
	.space 0x4
data_ov40_02196470:
	.space 0x4
data_ov40_02196474:
	.space 0x4
data_ov40_02196478:
	.space 0x4
data_ov40_0219647c:
	.space 0x4
data_ov40_02196480:
	.space 0x4
data_ov40_02196484:
	.space 0x4
data_ov40_02196488:
	.space 0x4
data_ov40_0219648c:
	.space 0x4
data_ov40_02196490:
	.space 0x4
data_ov40_02196494:
	.space 0x4
data_ov40_02196498:
	.space 0x4
data_ov40_0219649c:
	.space 0x4
data_ov40_021964a0:
	.space 0x4
data_ov40_021964a4:
	.space 0x4
data_ov40_021964a8:
	.space 0x4
data_ov40_021964ac:
	.space 0x4
data_ov40_021964b0:
	.space 0x4
data_ov40_021964b4:
	.space 0x4
data_ov40_021964b8:
	.space 0x4
data_ov40_021964bc:
	.space 0x4
data_ov40_021964c0:
	.space 0x4
data_ov40_021964c4:
	.space 0x4
data_ov40_021964c8:
	.space 0x4
data_ov40_021964cc:
	.space 0x4
data_ov40_021964d0:
	.space 0x4
data_ov40_021964d4:
	.space 0x4
data_ov40_021964d8:
	.space 0x4
data_ov40_021964dc:
	.space 0x4
data_ov40_021964e0:
	.space 0x4
data_ov40_021964e4:
	.space 0x4
data_ov40_021964e8:
	.space 0x4
data_ov40_021964ec:
	.space 0x4
data_ov40_021964f0:
	.space 0x4
data_ov40_021964f4:
	.space 0x4
data_ov40_021964f8:
	.space 0x4
data_ov40_021964fc:
	.space 0x4
data_ov40_02196500:
	.space 0x4
data_ov40_02196504:
	.space 0x4
data_ov40_02196508:
	.space 0x4
data_ov40_0219650c:
	.space 0x4
data_ov40_02196510:
	.space 0x4
data_ov40_02196514:
	.space 0x4
data_ov40_02196518:
	.space 0x4
data_ov40_0219651c:
	.space 0x4
data_ov40_02196520:
	.space 0x4
data_ov40_02196524:
	.space 0x4
data_ov40_02196528:
	.space 0x4
data_ov40_0219652c:
	.space 0x4
data_ov40_02196530:
	.space 0x4
data_ov40_02196534:
	.space 0x4
data_ov40_02196538:
	.space 0x4
data_ov40_0219653c:
	.space 0x4
data_ov40_02196540:
	.space 0x4
data_ov40_02196544:
	.space 0x4
data_ov40_02196548:
	.space 0x4
data_ov40_0219654c:
	.space 0x4
data_ov40_02196550:
	.space 0x4
data_ov40_02196554:
	.space 0x4
data_ov40_02196558:
	.space 0x4
data_ov40_0219655c:
	.space 0x4
data_ov40_02196560:
	.space 0x4
data_ov40_02196564:
	.space 0x4
data_ov40_02196568:
	.space 0x4
data_ov40_0219656c:
	.space 0x4
data_ov40_02196570:
	.space 0x4
data_ov40_02196574:
	.space 0x4
data_ov40_02196578:
	.space 0x4
data_ov40_0219657c:
	.space 0x4
data_ov40_02196580:
	.space 0x4
data_ov40_02196584:
	.space 0x4
data_ov40_02196588:
	.space 0x4
data_ov40_0219658c:
	.space 0x4
data_ov40_02196590:
	.space 0x4
data_ov40_02196594:
	.space 0x4
data_ov40_02196598:
	.space 0x4
data_ov40_0219659c:
	.space 0x4
data_ov40_021965a0:
	.space 0x4
data_ov40_021965a4:
	.space 0x4
data_ov40_021965a8:
	.space 0x4
data_ov40_021965ac:
	.space 0x4
data_ov40_021965b0:
	.space 0x4
data_ov40_021965b4:
	.space 0x4
data_ov40_021965b8:
	.space 0x4
data_ov40_021965bc:
	.space 0x4
data_ov40_021965c0:
	.space 0x4
data_ov40_021965c4:
	.space 0x4
data_ov40_021965c8:
	.space 0x4
data_ov40_021965cc:
	.space 0x4
data_ov40_021965d0:
	.space 0x4
data_ov40_021965d4:
	.space 0x4
data_ov40_021965d8:
	.space 0x4
data_ov40_021965dc:
	.space 0x4
data_ov40_021965e0:
	.space 0x4
data_ov40_021965e4:
	.space 0x4
data_ov40_021965e8:
	.space 0x4
data_ov40_021965ec:
	.space 0x4
data_ov40_021965f0:
	.space 0x4
data_ov40_021965f4:
	.space 0x4
data_ov40_021965f8:
	.space 0x4
data_ov40_021965fc:
	.space 0x4
data_ov40_02196600:
	.space 0x4
data_ov40_02196604:
	.space 0x4
data_ov40_02196608:
	.space 0x4
data_ov40_0219660c:
	.space 0x4
data_ov40_02196610:
	.space 0x4
data_ov40_02196614:
	.space 0x4
data_ov40_02196618:
	.space 0x4
data_ov40_0219661c:
	.space 0x4
data_ov40_02196620:
	.space 0x4
data_ov40_02196624:
	.space 0x4
data_ov40_02196628:
	.space 0x4
data_ov40_0219662c:
	.space 0x4
data_ov40_02196630:
	.space 0x4
data_ov40_02196634:
	.space 0x4
data_ov40_02196638:
	.space 0x4
data_ov40_0219663c:
	.space 0x4
data_ov40_02196640:
	.space 0x4
data_ov40_02196644:
	.space 0x4
data_ov40_02196648:
	.space 0x4
data_ov40_0219664c:
	.space 0x4
data_ov40_02196650:
	.space 0x4
data_ov40_02196654:
	.space 0x4
data_ov40_02196658:
	.space 0x4
data_ov40_0219665c:
	.space 0x4
data_ov40_02196660:
	.space 0x4
data_ov40_02196664:
	.space 0x4
data_ov40_02196668:
	.space 0x4
data_ov40_0219666c:
	.space 0x4
data_ov40_02196670:
	.space 0x4
data_ov40_02196674:
	.space 0x4
data_ov40_02196678:
	.space 0x4
data_ov40_0219667c:
	.space 0x4
data_ov40_02196680:
	.space 0x4
data_ov40_02196684:
	.space 0x4
data_ov40_02196688:
	.space 0x4
data_ov40_0219668c:
	.space 0x4
data_ov40_02196690:
	.space 0x4
data_ov40_02196694:
	.space 0x4
data_ov40_02196698:
	.space 0x4
data_ov40_0219669c:
	.space 0x4
data_ov40_021966a0:
	.space 0x4
data_ov40_021966a4:
	.space 0x4
data_ov40_021966a8:
	.space 0x4
data_ov40_021966ac:
	.space 0x4
data_ov40_021966b0:
	.space 0x4
data_ov40_021966b4:
	.space 0x4
data_ov40_021966b8:
	.space 0x4
data_ov40_021966bc:
	.space 0x4
data_ov40_021966c0:
	.space 0x4
data_ov40_021966c4:
	.space 0x4
data_ov40_021966c8:
	.space 0x4
data_ov40_021966cc:
	.space 0x4
data_ov40_021966d0:
	.space 0x4
data_ov40_021966d4:
	.space 0x4
data_ov40_021966d8:
	.space 0x4
data_ov40_021966dc:
	.space 0x4
data_ov40_021966e0:
	.space 0x4
data_ov40_021966e4:
	.space 0x4
data_ov40_021966e8:
	.space 0x4
data_ov40_021966ec:
	.space 0x4
data_ov40_021966f0:
	.space 0x4
data_ov40_021966f4:
	.space 0x4
data_ov40_021966f8:
	.space 0x4
data_ov40_021966fc:
	.space 0x4
data_ov40_02196700:
	.space 0x4
data_ov40_02196704:
	.space 0x4
data_ov40_02196708:
	.space 0x4
data_ov40_0219670c:
	.space 0x4
data_ov40_02196710:
	.space 0x4
data_ov40_02196714:
	.space 0x4
data_ov40_02196718:
	.space 0x4
data_ov40_0219671c:
	.space 0x4
data_ov40_02196720:
	.space 0x4
data_ov40_02196724:
	.space 0x4
data_ov40_02196728:
	.space 0x4
data_ov40_0219672c:
	.space 0x4
data_ov40_02196730:
	.space 0x4
data_ov40_02196734:
	.space 0x4
data_ov40_02196738:
	.space 0x4
data_ov40_0219673c:
	.space 0x4
data_ov40_02196740:
	.space 0x4
data_ov40_02196744:
	.space 0x4
data_ov40_02196748:
	.space 0x4
data_ov40_0219674c:
	.space 0x4
data_ov40_02196750:
	.space 0x4
data_ov40_02196754:
	.space 0x4
data_ov40_02196758:
	.space 0x4
data_ov40_0219675c:
	.space 0x4
data_ov40_02196760:
	.space 0x4
data_ov40_02196764:
	.space 0x4
data_ov40_02196768:
	.space 0x4
data_ov40_0219676c:
	.space 0x4
data_ov40_02196770:
	.space 0x4
data_ov40_02196774:
	.space 0x4
data_ov40_02196778:
	.space 0x4
data_ov40_0219677c:
	.space 0x4
data_ov40_02196780:
	.space 0x4
data_ov40_02196784:
	.space 0x4
data_ov40_02196788:
	.space 0x4
data_ov40_0219678c:
	.space 0x4
data_ov40_02196790:
	.space 0x4
data_ov40_02196794:
	.space 0x4
data_ov40_02196798:
	.space 0x4
data_ov40_0219679c:
	.space 0x4
data_ov40_021967a0:
	.space 0x4
data_ov40_021967a4:
	.space 0x4
data_ov40_021967a8:
	.space 0x4
data_ov40_021967ac:
	.space 0x4
data_ov40_021967b0:
	.space 0x4
data_ov40_021967b4:
	.space 0x4
data_ov40_021967b8:
	.space 0x4
data_ov40_021967bc:
	.space 0x4
data_ov40_021967c0:
	.space 0x4
data_ov40_021967c4:
	.space 0x4
data_ov40_021967c8:
	.space 0x4
data_ov40_021967cc:
	.space 0x4
data_ov40_021967d0:
	.space 0x4
data_ov40_021967d4:
	.space 0x4
data_ov40_021967d8:
	.space 0x4
data_ov40_021967dc:
	.space 0x4
data_ov40_021967e0:
	.space 0x4
data_ov40_021967e4:
	.space 0x4
data_ov40_021967e8:
	.space 0x4
data_ov40_021967ec:
	.space 0x4
data_ov40_021967f0:
	.space 0x4
data_ov40_021967f4:
	.space 0x4
data_ov40_021967f8:
	.space 0x4
data_ov40_021967fc:
	.space 0x4
data_ov40_02196800:
	.space 0x4
data_ov40_02196804:
	.space 0x4
data_ov40_02196808:
	.space 0x4
data_ov40_0219680c:
	.space 0x4
data_ov40_02196810:
	.space 0x4
data_ov40_02196814:
	.space 0x4
data_ov40_02196818:
	.space 0x4
data_ov40_0219681c:
	.space 0x4
data_ov40_02196820:
	.space 0x4
data_ov40_02196824:
	.space 0x4
data_ov40_02196828:
	.space 0x4
data_ov40_0219682c:
	.space 0x4
data_ov40_02196830:
	.space 0x4
data_ov40_02196834:
	.space 0x4
data_ov40_02196838:
	.space 0x4
data_ov40_0219683c:
	.space 0x4
data_ov40_02196840:
	.space 0x4
data_ov40_02196844:
	.space 0x4
data_ov40_02196848:
	.space 0x4
data_ov40_0219684c:
	.space 0x4
data_ov40_02196850:
	.space 0x4
data_ov40_02196854:
	.space 0x4
data_ov40_02196858:
	.space 0x4
data_ov40_0219685c:
	.space 0x4
data_ov40_02196860:
	.space 0x4
data_ov40_02196864:
	.space 0x4
data_ov40_02196868:
	.space 0x4
data_ov40_0219686c:
	.space 0x4
data_ov40_02196870:
	.space 0x4
data_ov40_02196874:
	.space 0x4
data_ov40_02196878:
	.space 0x4
data_ov40_0219687c:
	.space 0x4
data_ov40_02196880:
	.space 0x4
data_ov40_02196884:
	.space 0x4
data_ov40_02196888:
	.space 0x4
data_ov40_0219688c:
	.space 0x4
data_ov40_02196890:
	.space 0x4
data_ov40_02196894:
	.space 0x4
data_ov40_02196898:
	.space 0x4
data_ov40_0219689c:
	.space 0x4
data_ov40_021968a0:
	.space 0x4
data_ov40_021968a4:
	.space 0x4
data_ov40_021968a8:
	.space 0x4
data_ov40_021968ac:
	.space 0x4
data_ov40_021968b0:
	.space 0x4
data_ov40_021968b4:
	.space 0x4
data_ov40_021968b8:
	.space 0x4
data_ov40_021968bc:
	.space 0x4
data_ov40_021968c0:
	.space 0x4
data_ov40_021968c4:
	.space 0x4
data_ov40_021968c8:
	.space 0x4
data_ov40_021968cc:
	.space 0x4
data_ov40_021968d0:
	.space 0x4
data_ov40_021968d4:
	.space 0x4
data_ov40_021968d8:
	.space 0x4
data_ov40_021968dc:
	.space 0x4
data_ov40_021968e0:
	.space 0x4
data_ov40_021968e4:
	.space 0x4
data_ov40_021968e8:
	.space 0x4
data_ov40_021968ec:
	.space 0x4
data_ov40_021968f0:
	.space 0x4
data_ov40_021968f4:
	.space 0x4
data_ov40_021968f8:
	.space 0x4
data_ov40_021968fc:
	.space 0x4
data_ov40_02196900:
	.space 0x4
data_ov40_02196904:
	.space 0x4
data_ov40_02196908:
	.space 0x4
data_ov40_0219690c:
	.space 0x4
data_ov40_02196910:
	.space 0x4
data_ov40_02196914:
	.space 0x4
data_ov40_02196918:
	.space 0x4
data_ov40_0219691c:
	.space 0x4
data_ov40_02196920:
	.space 0x4
data_ov40_02196924:
	.space 0x4
data_ov40_02196928:
	.space 0x4
data_ov40_0219692c:
	.space 0x4
data_ov40_02196930:
	.space 0x4
data_ov40_02196934:
	.space 0x4
data_ov40_02196938:
	.space 0x4
data_ov40_0219693c:
	.space 0x4
data_ov40_02196940:
	.space 0x4
data_ov40_02196944:
	.space 0x4
data_ov40_02196948:
	.space 0x4
data_ov40_0219694c:
	.space 0x4
data_ov40_02196950:
	.space 0x4
data_ov40_02196954:
	.space 0x4
data_ov40_02196958:
	.space 0x4
data_ov40_0219695c:
	.space 0x4
data_ov40_02196960:
	.space 0x4
data_ov40_02196964:
	.space 0x4
data_ov40_02196968:
	.space 0x4
data_ov40_0219696c:
	.space 0x4
data_ov40_02196970:
	.space 0x4
data_ov40_02196974:
	.space 0x4
data_ov40_02196978:
	.space 0x4
data_ov40_0219697c:
	.space 0x4
data_ov40_02196980:
	.space 0x4
data_ov40_02196984:
	.space 0x4
data_ov40_02196988:
	.space 0x4
data_ov40_0219698c:
	.space 0x4
data_ov40_02196990:
	.space 0x4
data_ov40_02196994:
	.space 0x4
data_ov40_02196998:
	.space 0x4
data_ov40_0219699c:
	.space 0x4
data_ov40_021969a0:
	.space 0x4
data_ov40_021969a4:
	.space 0x4
data_ov40_021969a8:
	.space 0x4
data_ov40_021969ac:
	.space 0x4
data_ov40_021969b0:
	.space 0x4
data_ov40_021969b4:
	.space 0x4
data_ov40_021969b8:
	.space 0x4
data_ov40_021969bc:
	.space 0x4
data_ov40_021969c0:
	.space 0x4
data_ov40_021969c4:
	.space 0x4
data_ov40_021969c8:
	.space 0x4
data_ov40_021969cc:
	.space 0x4
data_ov40_021969d0:
	.space 0x4
data_ov40_021969d4:
	.space 0x4
data_ov40_021969d8:
	.space 0x4
data_ov40_021969dc:
	.space 0x4
data_ov40_021969e0:
	.space 0x4
data_ov40_021969e4:
	.space 0x4
data_ov40_021969e8:
	.space 0x4
data_ov40_021969ec:
	.space 0x4
data_ov40_021969f0:
	.space 0x4
data_ov40_021969f4:
	.space 0x4
data_ov40_021969f8:
	.space 0x4
data_ov40_021969fc:
	.space 0x4
data_ov40_02196a00:
	.space 0x4
data_ov40_02196a04:
	.space 0x4
data_ov40_02196a08:
	.space 0x4
data_ov40_02196a0c:
	.space 0x4
data_ov40_02196a10:
	.space 0x4
data_ov40_02196a14:
	.space 0x4
data_ov40_02196a18:
	.space 0x4
data_ov40_02196a1c:
	.space 0x4
data_ov40_02196a20:
	.space 0x4
data_ov40_02196a24:
	.space 0x4
data_ov40_02196a28:
	.space 0x4
data_ov40_02196a2c:
	.space 0x4
data_ov40_02196a30:
	.space 0x4
data_ov40_02196a34:
	.space 0x4
data_ov40_02196a38:
	.space 0x4
data_ov40_02196a3c:
	.space 0x4
data_ov40_02196a40:
	.space 0x4
data_ov40_02196a44:
	.space 0x4
data_ov40_02196a48:
	.space 0x4
data_ov40_02196a4c:
	.space 0x4
data_ov40_02196a50:
	.space 0x4
data_ov40_02196a54:
	.space 0x4
data_ov40_02196a58:
	.space 0x4
data_ov40_02196a5c:
	.space 0x4
data_ov40_02196a60:
	.space 0x4
data_ov40_02196a64:
	.space 0x4
data_ov40_02196a68:
	.space 0x4
data_ov40_02196a6c:
	.space 0x4
data_ov40_02196a70:
	.space 0x4
data_ov40_02196a74:
	.space 0x4
data_ov40_02196a78:
	.space 0x4
data_ov40_02196a7c:
	.space 0x4
data_ov40_02196a80:
	.space 0x4
data_ov40_02196a84:
	.space 0x4
data_ov40_02196a88:
	.space 0x4
data_ov40_02196a8c:
	.space 0x4
data_ov40_02196a90:
	.space 0x4
data_ov40_02196a94:
	.space 0x4
data_ov40_02196a98:
	.space 0x4
data_ov40_02196a9c:
	.space 0x4
data_ov40_02196aa0:
	.space 0x4
data_ov40_02196aa4:
	.space 0x4
data_ov40_02196aa8:
	.space 0x4
data_ov40_02196aac:
	.space 0x4
data_ov40_02196ab0:
	.space 0x4
data_ov40_02196ab4:
	.space 0x4
data_ov40_02196ab8:
	.space 0x4
data_ov40_02196abc:
	.space 0x4
data_ov40_02196ac0:
	.space 0x4
data_ov40_02196ac4:
	.space 0x4
data_ov40_02196ac8:
	.space 0x4
data_ov40_02196acc:
	.space 0x4
data_ov40_02196ad0:
	.space 0x4
data_ov40_02196ad4:
	.space 0x4
data_ov40_02196ad8:
	.space 0x4
data_ov40_02196adc:
	.space 0x4
data_ov40_02196ae0:
	.space 0x4
data_ov40_02196ae4:
	.space 0x4
data_ov40_02196ae8:
	.space 0x4
data_ov40_02196aec:
	.space 0x4
data_ov40_02196af0:
	.space 0x4
data_ov40_02196af4:
	.space 0x4
data_ov40_02196af8:
	.space 0x4
data_ov40_02196afc:
	.space 0x4
data_ov40_02196b00:
	.space 0x4
data_ov40_02196b04:
	.space 0x4
data_ov40_02196b08:
	.space 0x4
data_ov40_02196b0c:
	.space 0x4
data_ov40_02196b10:
	.space 0x4
data_ov40_02196b14:
	.space 0x4
data_ov40_02196b18:
	.space 0x4
data_ov40_02196b1c:
	.space 0x4
data_ov40_02196b20:
	.space 0x4
data_ov40_02196b24:
	.space 0x4
data_ov40_02196b28:
	.space 0x4
data_ov40_02196b2c:
	.space 0x4
data_ov40_02196b30:
	.space 0x4
data_ov40_02196b34:
	.space 0x4
data_ov40_02196b38:
	.space 0x4
data_ov40_02196b3c:
	.space 0x4
data_ov40_02196b40:
	.space 0x4
data_ov40_02196b44:
	.space 0x4
data_ov40_02196b48:
	.space 0x4
data_ov40_02196b4c:
	.space 0x4
data_ov40_02196b50:
	.space 0x4
data_ov40_02196b54:
	.space 0x4
data_ov40_02196b58:
	.space 0x4
data_ov40_02196b5c:
	.space 0x4
data_ov40_02196b60:
	.space 0x4
data_ov40_02196b64:
	.space 0x4
data_ov40_02196b68:
	.space 0x4
data_ov40_02196b6c:
	.space 0x4
data_ov40_02196b70:
	.space 0x4
data_ov40_02196b74:
	.space 0x4
data_ov40_02196b78:
	.space 0x4
data_ov40_02196b7c:
	.space 0x4
data_ov40_02196b80:
	.space 0x4
data_ov40_02196b84:
	.space 0x4
data_ov40_02196b88:
	.space 0x4
data_ov40_02196b8c:
	.space 0x4
data_ov40_02196b90:
	.space 0x4
data_ov40_02196b94:
	.space 0x4
data_ov40_02196b98:
	.space 0x4
data_ov40_02196b9c:
	.space 0x4
data_ov40_02196ba0:
	.space 0x4
data_ov40_02196ba4:
	.space 0x4
data_ov40_02196ba8:
	.space 0x4
data_ov40_02196bac:
	.space 0x4
data_ov40_02196bb0:
	.space 0x4
data_ov40_02196bb4:
	.space 0x4
data_ov40_02196bb8:
	.space 0x4
data_ov40_02196bbc:
	.space 0x4
data_ov40_02196bc0:
	.space 0x4
data_ov40_02196bc4:
	.space 0x4
data_ov40_02196bc8:
	.space 0x4
data_ov40_02196bcc:
	.space 0x4
data_ov40_02196bd0:
	.space 0x4
data_ov40_02196bd4:
	.space 0x4
data_ov40_02196bd8:
	.space 0x4
data_ov40_02196bdc:
	.space 0x4
data_ov40_02196be0:
	.space 0x4
data_ov40_02196be4:
	.space 0x4
data_ov40_02196be8:
	.space 0x4
data_ov40_02196bec:
	.space 0x4
data_ov40_02196bf0:
	.space 0x4
data_ov40_02196bf4:
	.space 0x4
data_ov40_02196bf8:
	.space 0x4
data_ov40_02196bfc:
	.space 0x4
data_ov40_02196c00:
	.space 0x4
data_ov40_02196c04:
	.space 0x4
data_ov40_02196c08:
	.space 0x4
data_ov40_02196c0c:
	.space 0x4
data_ov40_02196c10:
	.space 0x4
data_ov40_02196c14:
	.space 0x4
data_ov40_02196c18:
	.space 0x4
data_ov40_02196c1c:
	.space 0x4
data_ov40_02196c20:
	.space 0x4
data_ov40_02196c24:
	.space 0x4
data_ov40_02196c28:
	.space 0x4
data_ov40_02196c2c:
	.space 0x4
data_ov40_02196c30:
	.space 0x4
data_ov40_02196c34:
	.space 0x4
data_ov40_02196c38:
	.space 0x4
data_ov40_02196c3c:
	.space 0x4
data_ov40_02196c40:
	.space 0x4
data_ov40_02196c44:
	.space 0x4
data_ov40_02196c48:
	.space 0x4
data_ov40_02196c4c:
	.space 0x4
data_ov40_02196c50:
	.space 0x4
data_ov40_02196c54:
	.space 0x4
data_ov40_02196c58:
	.space 0x4
data_ov40_02196c5c:
	.space 0x4
data_ov40_02196c60:
	.space 0x4
data_ov40_02196c64:
	.space 0x4
data_ov40_02196c68:
	.space 0x4
data_ov40_02196c6c:
	.space 0x4
data_ov40_02196c70:
	.space 0x4
data_ov40_02196c74:
	.space 0x4
data_ov40_02196c78:
	.space 0x4
data_ov40_02196c7c:
	.space 0x4
data_ov40_02196c80:
	.space 0x4
data_ov40_02196c84:
	.space 0x4
data_ov40_02196c88:
	.space 0x4
data_ov40_02196c8c:
	.space 0x4
data_ov40_02196c90:
	.space 0x4
data_ov40_02196c94:
	.space 0x4
data_ov40_02196c98:
	.space 0x4
data_ov40_02196c9c:
	.space 0x4
data_ov40_02196ca0:
	.space 0x4
data_ov40_02196ca4:
	.space 0x4
data_ov40_02196ca8:
	.space 0x4
data_ov40_02196cac:
	.space 0x4
data_ov40_02196cb0:
	.space 0x4
data_ov40_02196cb4:
	.space 0x4
data_ov40_02196cb8:
	.space 0x4
data_ov40_02196cbc:
	.space 0x4
data_ov40_02196cc0:
	.space 0x4
data_ov40_02196cc4:
	.space 0x4
data_ov40_02196cc8:
	.space 0x4
data_ov40_02196ccc:
	.space 0x4
data_ov40_02196cd0:
	.space 0x4
data_ov40_02196cd4:
	.space 0x4
data_ov40_02196cd8:
	.space 0x4
data_ov40_02196cdc:
	.space 0x4
data_ov40_02196ce0:
	.space 0x4
data_ov40_02196ce4:
	.space 0x4
data_ov40_02196ce8:
	.space 0x4
data_ov40_02196cec:
	.space 0x4
data_ov40_02196cf0:
	.space 0x4
data_ov40_02196cf4:
	.space 0x4
data_ov40_02196cf8:
	.space 0x4
data_ov40_02196cfc:
	.space 0x4
data_ov40_02196d00:
	.space 0x4
data_ov40_02196d04:
	.space 0x4
data_ov40_02196d08:
	.space 0x4
data_ov40_02196d0c:
	.space 0x4
data_ov40_02196d10:
	.space 0x4
data_ov40_02196d14:
	.space 0x4
data_ov40_02196d18:
	.space 0x4
data_ov40_02196d1c:
	.space 0x4
data_ov40_02196d20:
	.space 0x4
data_ov40_02196d24:
	.space 0x4
data_ov40_02196d28:
	.space 0x4
data_ov40_02196d2c:
	.space 0x4
data_ov40_02196d30:
	.space 0x4
data_ov40_02196d34:
	.space 0x4
data_ov40_02196d38:
	.space 0x4
data_ov40_02196d3c:
	.space 0x4
data_ov40_02196d40:
	.space 0x4
data_ov40_02196d44:
	.space 0x4
data_ov40_02196d48:
	.space 0x4
data_ov40_02196d4c:
	.space 0x4
data_ov40_02196d50:
	.space 0x4
data_ov40_02196d54:
	.space 0x4
data_ov40_02196d58:
	.space 0x4
data_ov40_02196d5c:
	.space 0x4
data_ov40_02196d60:
	.space 0x4
data_ov40_02196d64:
	.space 0x4
data_ov40_02196d68:
	.space 0x4
data_ov40_02196d6c:
	.space 0x4
data_ov40_02196d70:
	.space 0x4
data_ov40_02196d74:
	.space 0x4
data_ov40_02196d78:
	.space 0x4
data_ov40_02196d7c:
	.space 0x4
data_ov40_02196d80:
	.space 0x4
data_ov40_02196d84:
	.space 0x4
data_ov40_02196d88:
	.space 0x4
data_ov40_02196d8c:
	.space 0x4
data_ov40_02196d90:
	.space 0x4
data_ov40_02196d94:
	.space 0x4
data_ov40_02196d98:
	.space 0x4
data_ov40_02196d9c:
	.space 0x4
data_ov40_02196da0:
	.space 0x4
data_ov40_02196da4:
	.space 0x4
data_ov40_02196da8:
	.space 0x4
data_ov40_02196dac:
	.space 0x4
data_ov40_02196db0:
	.space 0x4
data_ov40_02196db4:
	.space 0x4
data_ov40_02196db8:
	.space 0x4
data_ov40_02196dbc:
	.space 0x4
data_ov40_02196dc0:
	.space 0x4
data_ov40_02196dc4:
	.space 0x4
data_ov40_02196dc8:
	.space 0x4
data_ov40_02196dcc:
	.space 0x4
data_ov40_02196dd0:
	.space 0x4
data_ov40_02196dd4:
	.space 0x4
data_ov40_02196dd8:
	.space 0x4
data_ov40_02196ddc:
	.space 0x4
data_ov40_02196de0:
	.space 0x4
data_ov40_02196de4:
	.space 0x4
data_ov40_02196de8:
	.space 0x4
data_ov40_02196dec:
	.space 0x4
data_ov40_02196df0:
	.space 0x4
data_ov40_02196df4:
	.space 0x4
data_ov40_02196df8:
	.space 0x4
data_ov40_02196dfc:
	.space 0x4
data_ov40_02196e00:
	.space 0x4
data_ov40_02196e04:
	.space 0x4
data_ov40_02196e08:
	.space 0x4
data_ov40_02196e0c:
	.space 0x4
data_ov40_02196e10:
	.space 0x4
data_ov40_02196e14:
	.space 0x4
data_ov40_02196e18:
	.space 0x4
data_ov40_02196e1c:
	.space 0x4
data_ov40_02196e20:
	.space 0x4
data_ov40_02196e24:
	.space 0x4
data_ov40_02196e28:
	.space 0x4
data_ov40_02196e2c:
	.space 0x4
data_ov40_02196e30:
	.space 0x4
data_ov40_02196e34:
	.space 0x4
data_ov40_02196e38:
	.space 0x4
data_ov40_02196e3c:
	.space 0x4
data_ov40_02196e40:
	.space 0x4
data_ov40_02196e44:
	.space 0x4
data_ov40_02196e48:
	.space 0x4
data_ov40_02196e4c:
	.space 0x4
data_ov40_02196e50:
	.space 0x4
data_ov40_02196e54:
	.space 0x4
data_ov40_02196e58:
	.space 0x4
data_ov40_02196e5c:
	.space 0x4
data_ov40_02196e60:
	.space 0x4
data_ov40_02196e64:
	.space 0x4
data_ov40_02196e68:
	.space 0x4
data_ov40_02196e6c:
	.space 0x4
data_ov40_02196e70:
	.space 0x4
data_ov40_02196e74:
	.space 0x4
data_ov40_02196e78:
	.space 0x4
data_ov40_02196e7c:
	.space 0x4
data_ov40_02196e80:
	.space 0x4
data_ov40_02196e84:
	.space 0x4
data_ov40_02196e88:
	.space 0x4
data_ov40_02196e8c:
	.space 0x4
data_ov40_02196e90:
	.space 0x4
data_ov40_02196e94:
	.space 0x4
data_ov40_02196e98:
	.space 0x4
data_ov40_02196e9c:
	.space 0x4
data_ov40_02196ea0:
	.space 0x4
data_ov40_02196ea4:
	.space 0x4
data_ov40_02196ea8:
	.space 0x4
data_ov40_02196eac:
	.space 0x4
data_ov40_02196eb0:
	.space 0x4
data_ov40_02196eb4:
	.space 0x4
data_ov40_02196eb8:
	.space 0x4
data_ov40_02196ebc:
	.space 0x4
data_ov40_02196ec0:
	.space 0x4
data_ov40_02196ec4:
	.space 0x4
data_ov40_02196ec8:
	.space 0x4
data_ov40_02196ecc:
	.space 0x4
data_ov40_02196ed0:
	.space 0x4
data_ov40_02196ed4:
	.space 0x4
data_ov40_02196ed8:
	.space 0x4
data_ov40_02196edc:
	.space 0x4
data_ov40_02196ee0:
	.space 0x4
data_ov40_02196ee4:
	.space 0x4
data_ov40_02196ee8:
	.space 0x4
data_ov40_02196eec:
	.space 0x4
data_ov40_02196ef0:
	.space 0x4
data_ov40_02196ef4:
	.space 0x4
data_ov40_02196ef8:
	.space 0x4
data_ov40_02196efc:
	.space 0x4
data_ov40_02196f00:
	.space 0x4
data_ov40_02196f04:
	.space 0x4
data_ov40_02196f08:
	.space 0x4
data_ov40_02196f0c:
	.space 0x4
data_ov40_02196f10:
	.space 0x4
data_ov40_02196f14:
	.space 0x4
data_ov40_02196f18:
	.space 0x4
data_ov40_02196f1c:
	.space 0x4
data_ov40_02196f20:
	.space 0x4
data_ov40_02196f24:
	.space 0x4
data_ov40_02196f28:
	.space 0x4
data_ov40_02196f2c:
	.space 0x4
data_ov40_02196f30:
	.space 0x4
data_ov40_02196f34:
	.space 0x4
data_ov40_02196f38:
	.space 0x4
data_ov40_02196f3c:
	.space 0x4
data_ov40_02196f40:
	.space 0x4
data_ov40_02196f44:
	.space 0x4
data_ov40_02196f48:
	.space 0x4
data_ov40_02196f4c:
	.space 0x4
data_ov40_02196f50:
	.space 0x4
data_ov40_02196f54:
	.space 0x4
data_ov40_02196f58:
	.space 0x4
data_ov40_02196f5c:
	.space 0x4
data_ov40_02196f60:
	.space 0x4
data_ov40_02196f64:
	.space 0x4
data_ov40_02196f68:
	.space 0x4
data_ov40_02196f6c:
	.space 0x4
data_ov40_02196f70:
	.space 0x4
data_ov40_02196f74:
	.space 0x4
data_ov40_02196f78:
	.space 0x4
data_ov40_02196f7c:
	.space 0x4
data_ov40_02196f80:
	.space 0x4
data_ov40_02196f84:
	.space 0x4
data_ov40_02196f88:
	.space 0x4
data_ov40_02196f8c:
	.space 0x4
data_ov40_02196f90:
	.space 0x4
data_ov40_02196f94:
	.space 0x4
data_ov40_02196f98:
	.space 0x4
data_ov40_02196f9c:
	.space 0x4
data_ov40_02196fa0:
	.space 0x4
data_ov40_02196fa4:
	.space 0x4
data_ov40_02196fa8:
	.space 0x4
data_ov40_02196fac:
	.space 0x4
data_ov40_02196fb0:
	.space 0x4
data_ov40_02196fb4:
	.space 0x4
data_ov40_02196fb8:
	.space 0x4
data_ov40_02196fbc:
	.space 0x4
data_ov40_02196fc0:
	.space 0x4
data_ov40_02196fc4:
	.space 0x4
data_ov40_02196fc8:
	.space 0x4
data_ov40_02196fcc:
	.space 0x4
data_ov40_02196fd0:
	.space 0x4
data_ov40_02196fd4:
	.space 0x4
data_ov40_02196fd8:
	.space 0x4
data_ov40_02196fdc:
	.space 0x4
data_ov40_02196fe0:
	.space 0x4
data_ov40_02196fe4:
	.space 0x4
data_ov40_02196fe8:
	.space 0x4
data_ov40_02196fec:
	.space 0x4
data_ov40_02196ff0:
	.space 0x4
data_ov40_02196ff4:
	.space 0x4
data_ov40_02196ff8:
	.space 0x4
data_ov40_02196ffc:
	.space 0x4
data_ov40_02197000:
	.space 0x4
data_ov40_02197004:
	.space 0x4
data_ov40_02197008:
	.space 0x4
data_ov40_0219700c:
	.space 0x4
data_ov40_02197010:
	.space 0x4
data_ov40_02197014:
	.space 0x4
data_ov40_02197018:
	.space 0x4
data_ov40_0219701c:
	.space 0x4
data_ov40_02197020:
	.space 0x4
data_ov40_02197024:
	.space 0x4
data_ov40_02197028:
	.space 0x4
data_ov40_0219702c:
	.space 0x4
data_ov40_02197030:
	.space 0x4
data_ov40_02197034:
	.space 0x4
data_ov40_02197038:
	.space 0x4
data_ov40_0219703c:
	.space 0x4
data_ov40_02197040:
	.space 0x4
data_ov40_02197044:
	.space 0x4
data_ov40_02197048:
	.space 0x4
data_ov40_0219704c:
	.space 0x4
data_ov40_02197050:
	.space 0x4
data_ov40_02197054:
	.space 0x4
data_ov40_02197058:
	.space 0x4
data_ov40_0219705c:
	.space 0x4
data_ov40_02197060:
	.space 0x4
data_ov40_02197064:
	.space 0x4
data_ov40_02197068:
	.space 0x4
data_ov40_0219706c:
	.space 0x4
data_ov40_02197070:
	.space 0x4
data_ov40_02197074:
	.space 0x4
data_ov40_02197078:
	.space 0x4
data_ov40_0219707c:
	.space 0x4
data_ov40_02197080:
	.space 0x4
data_ov40_02197084:
	.space 0x4
data_ov40_02197088:
	.space 0x4
data_ov40_0219708c:
	.space 0x4
data_ov40_02197090:
	.space 0x4
data_ov40_02197094:
	.space 0x4
data_ov40_02197098:
	.space 0x4
data_ov40_0219709c:
	.space 0x4
data_ov40_021970a0:
	.space 0x4
data_ov40_021970a4:
	.space 0x4
data_ov40_021970a8:
	.space 0x4
data_ov40_021970ac:
	.space 0x4
data_ov40_021970b0:
	.space 0x4
data_ov40_021970b4:
	.space 0x4
data_ov40_021970b8:
	.space 0x4
data_ov40_021970bc:
	.space 0x4
data_ov40_021970c0:
	.space 0x4
data_ov40_021970c4:
	.space 0x4
data_ov40_021970c8:
	.space 0x4
data_ov40_021970cc:
	.space 0x4
data_ov40_021970d0:
	.space 0x4
data_ov40_021970d4:
	.space 0x4
data_ov40_021970d8:
	.space 0x4
data_ov40_021970dc:
	.space 0x4
data_ov40_021970e0:
	.space 0x4
data_ov40_021970e4:
	.space 0x4
data_ov40_021970e8:
	.space 0x4
data_ov40_021970ec:
	.space 0x4
data_ov40_021970f0:
	.space 0x4
data_ov40_021970f4:
	.space 0x4
data_ov40_021970f8:
	.space 0x4
data_ov40_021970fc:
	.space 0x4
data_ov40_02197100:
	.space 0x4
data_ov40_02197104:
	.space 0x4
data_ov40_02197108:
	.space 0x4
data_ov40_0219710c:
	.space 0x4
data_ov40_02197110:
	.space 0x4
data_ov40_02197114:
	.space 0x4
data_ov40_02197118:
	.space 0x4
data_ov40_0219711c:
	.space 0x4
data_ov40_02197120:
	.space 0x4
data_ov40_02197124:
	.space 0x4
data_ov40_02197128:
	.space 0x4
data_ov40_0219712c:
	.space 0x4
data_ov40_02197130:
	.space 0x4
data_ov40_02197134:
	.space 0x4
data_ov40_02197138:
	.space 0x4
data_ov40_0219713c:
	.space 0x4
data_ov40_02197140:
	.space 0x4
data_ov40_02197144:
	.space 0x4
data_ov40_02197148:
	.space 0x4
data_ov40_0219714c:
	.space 0x4
data_ov40_02197150:
	.space 0x4
data_ov40_02197154:
	.space 0x4
data_ov40_02197158:
	.space 0x4
data_ov40_0219715c:
	.space 0x4
data_ov40_02197160:
	.space 0x4
data_ov40_02197164:
	.space 0x4
data_ov40_02197168:
	.space 0x4
data_ov40_0219716c:
	.space 0x4
data_ov40_02197170:
	.space 0x4
data_ov40_02197174:
	.space 0x4
data_ov40_02197178:
	.space 0x4
data_ov40_0219717c:
	.space 0x4
data_ov40_02197180:
	.space 0x4
data_ov40_02197184:
	.space 0x4
data_ov40_02197188:
	.space 0x4
data_ov40_0219718c:
	.space 0x4
data_ov40_02197190:
	.space 0x4
data_ov40_02197194:
	.space 0x4
data_ov40_02197198:
	.space 0x4
data_ov40_0219719c:
	.space 0x4
data_ov40_021971a0:
	.space 0x4
data_ov40_021971a4:
	.space 0x4
data_ov40_021971a8:
	.space 0x4
data_ov40_021971ac:
	.space 0x4
data_ov40_021971b0:
	.space 0x4
data_ov40_021971b4:
	.space 0x4
data_ov40_021971b8:
	.space 0x4
data_ov40_021971bc:
	.space 0x4
data_ov40_021971c0:
	.space 0x4
data_ov40_021971c4:
	.space 0x4
data_ov40_021971c8:
	.space 0x4
data_ov40_021971cc:
	.space 0x4
data_ov40_021971d0:
	.space 0x4
data_ov40_021971d4:
	.space 0x4
data_ov40_021971d8:
	.space 0x4
data_ov40_021971dc:
	.space 0x4
data_ov40_021971e0:
	.space 0x4
data_ov40_021971e4:
	.space 0x4
data_ov40_021971e8:
	.space 0x4
data_ov40_021971ec:
	.space 0x4
data_ov40_021971f0:
	.space 0x4
data_ov40_021971f4:
	.space 0x4
data_ov40_021971f8:
	.space 0x4
data_ov40_021971fc:
	.space 0x4
data_ov40_02197200:
	.space 0x4
data_ov40_02197204:
	.space 0x4
data_ov40_02197208:
	.space 0x4
data_ov40_0219720c:
	.space 0x4
data_ov40_02197210:
	.space 0x4
data_ov40_02197214:
	.space 0x4
data_ov40_02197218:
	.space 0x4
data_ov40_0219721c:
	.space 0x4
data_ov40_02197220:
	.space 0x4
data_ov40_02197224:
	.space 0x4
data_ov40_02197228:
	.space 0x4
data_ov40_0219722c:
	.space 0x4
data_ov40_02197230:
	.space 0x4
data_ov40_02197234:
	.space 0x4
data_ov40_02197238:
	.space 0x4
data_ov40_0219723c:
	.space 0x4
data_ov40_02197240:
	.space 0x4
data_ov40_02197244:
	.space 0x4
data_ov40_02197248:
	.space 0x4
data_ov40_0219724c:
	.space 0x4
data_ov40_02197250:
	.space 0x4
data_ov40_02197254:
	.space 0x4
data_ov40_02197258:
	.space 0x4
data_ov40_0219725c:
	.space 0x4
data_ov40_02197260:
	.space 0x4
data_ov40_02197264:
	.space 0x4
data_ov40_02197268:
	.space 0x4
data_ov40_0219726c:
	.space 0x4
data_ov40_02197270:
	.space 0x4
data_ov40_02197274:
	.space 0x4
data_ov40_02197278:
	.space 0x4
data_ov40_0219727c:
	.space 0x4
data_ov40_02197280:
	.space 0x4
data_ov40_02197284:
	.space 0x4
data_ov40_02197288:
	.space 0x4
data_ov40_0219728c:
	.space 0x4
data_ov40_02197290:
	.space 0x4
data_ov40_02197294:
	.space 0x4
data_ov40_02197298:
	.space 0x4
data_ov40_0219729c:
	.space 0x4
data_ov40_021972a0:
	.space 0x4
data_ov40_021972a4:
	.space 0x4
data_ov40_021972a8:
	.space 0x4
data_ov40_021972ac:
	.space 0x4
data_ov40_021972b0:
	.space 0x4
data_ov40_021972b4:
	.space 0x4
data_ov40_021972b8:
	.space 0x4
data_ov40_021972bc:
	.space 0x4
data_ov40_021972c0:
	.space 0x4
data_ov40_021972c4:
	.space 0x4
data_ov40_021972c8:
	.space 0x4
data_ov40_021972cc:
	.space 0x4
data_ov40_021972d0:
	.space 0x4
data_ov40_021972d4:
	.space 0x4
data_ov40_021972d8:
	.space 0x4
data_ov40_021972dc:
	.space 0x4
data_ov40_021972e0:
	.space 0x4
data_ov40_021972e4:
	.space 0x4
data_ov40_021972e8:
	.space 0x4
data_ov40_021972ec:
	.space 0x4
data_ov40_021972f0:
	.space 0x4
data_ov40_021972f4:
	.space 0x4
data_ov40_021972f8:
	.space 0x4
data_ov40_021972fc:
	.space 0x4
data_ov40_02197300:
	.space 0x4
data_ov40_02197304:
	.space 0x4
data_ov40_02197308:
	.space 0x4
data_ov40_0219730c:
	.space 0x4
data_ov40_02197310:
	.space 0x4
data_ov40_02197314:
	.space 0x4
data_ov40_02197318:
	.space 0x4
data_ov40_0219731c:
	.space 0x4
data_ov40_02197320:
	.space 0x4
data_ov40_02197324:
	.space 0x4
data_ov40_02197328:
	.space 0x4
data_ov40_0219732c:
	.space 0x4
data_ov40_02197330:
	.space 0x4
data_ov40_02197334:
	.space 0x4
data_ov40_02197338:
	.space 0x4
data_ov40_0219733c:
	.space 0x4
data_ov40_02197340:
	.space 0x4
data_ov40_02197344:
	.space 0x4
data_ov40_02197348:
	.space 0x4
data_ov40_0219734c:
	.space 0x4
data_ov40_02197350:
	.space 0x4
data_ov40_02197354:
	.space 0x4
data_ov40_02197358:
	.space 0x4
data_ov40_0219735c:
	.space 0x4
data_ov40_02197360:
	.space 0x4
data_ov40_02197364:
	.space 0x4
data_ov40_02197368:
	.space 0x4
data_ov40_0219736c:
	.space 0x4
data_ov40_02197370:
	.space 0x4
data_ov40_02197374:
	.space 0x4
data_ov40_02197378:
	.space 0x4
data_ov40_0219737c:
	.space 0x4
data_ov40_02197380:
	.space 0x4
data_ov40_02197384:
	.space 0x4
data_ov40_02197388:
	.space 0x4
data_ov40_0219738c:
	.space 0x4
data_ov40_02197390:
	.space 0x4
data_ov40_02197394:
	.space 0x4
data_ov40_02197398:
	.space 0x4
data_ov40_0219739c:
	.space 0x4
data_ov40_021973a0:
	.space 0x4
data_ov40_021973a4:
	.space 0x4
data_ov40_021973a8:
	.space 0x4
data_ov40_021973ac:
	.space 0x4
data_ov40_021973b0:
	.space 0x4
data_ov40_021973b4:
	.space 0x4
data_ov40_021973b8:
	.space 0x4
data_ov40_021973bc:
	.space 0x4
data_ov40_021973c0:
	.space 0x4
data_ov40_021973c4:
	.space 0x4
data_ov40_021973c8:
	.space 0x4
data_ov40_021973cc:
	.space 0x4
data_ov40_021973d0:
	.space 0x4
data_ov40_021973d4:
	.space 0x4
data_ov40_021973d8:
	.space 0x4
data_ov40_021973dc:
	.space 0x4
data_ov40_021973e0:
	.space 0x4
data_ov40_021973e4:
	.space 0x4
data_ov40_021973e8:
	.space 0x4
data_ov40_021973ec:
	.space 0x4
data_ov40_021973f0:
	.space 0x4
data_ov40_021973f4:
	.space 0x4
data_ov40_021973f8:
	.space 0x4
data_ov40_021973fc:
	.space 0x4
data_ov40_02197400:
	.space 0x4
data_ov40_02197404:
	.space 0x4
data_ov40_02197408:
	.space 0x4
data_ov40_0219740c:
	.space 0x4
data_ov40_02197410:
	.space 0x4
data_ov40_02197414:
	.space 0x4
data_ov40_02197418:
	.space 0x4
data_ov40_0219741c:
	.space 0x4
data_ov40_02197420:
	.space 0x4
data_ov40_02197424:
	.space 0x4
data_ov40_02197428:
	.space 0x4
data_ov40_0219742c:
	.space 0x4
data_ov40_02197430:
	.space 0x4
data_ov40_02197434:
	.space 0x4
data_ov40_02197438:
	.space 0x4
data_ov40_0219743c:
	.space 0x4
data_ov40_02197440:
	.space 0x4
data_ov40_02197444:
	.space 0x4
data_ov40_02197448:
	.space 0x4
data_ov40_0219744c:
	.space 0x4
data_ov40_02197450:
	.space 0x4
data_ov40_02197454:
	.space 0x4
data_ov40_02197458:
	.space 0x4
data_ov40_0219745c:
	.space 0x4
data_ov40_02197460:
	.space 0x4
data_ov40_02197464:
	.space 0x4
data_ov40_02197468:
	.space 0x4
data_ov40_0219746c:
	.space 0x4
data_ov40_02197470:
	.space 0x4
data_ov40_02197474:
	.space 0x4
data_ov40_02197478:
	.space 0x4
data_ov40_0219747c:
	.space 0x4
data_ov40_02197480:
	.space 0x4
data_ov40_02197484:
	.space 0x4
data_ov40_02197488:
	.space 0x4
data_ov40_0219748c:
	.space 0x4
data_ov40_02197490:
	.space 0x4
data_ov40_02197494:
	.space 0x4
data_ov40_02197498:
	.space 0x4
data_ov40_0219749c:
	.space 0x4
data_ov40_021974a0:
	.space 0x4
data_ov40_021974a4:
	.space 0x4
data_ov40_021974a8:
	.space 0x4
data_ov40_021974ac:
	.space 0x4
data_ov40_021974b0:
	.space 0x4
data_ov40_021974b4:
	.space 0x4
data_ov40_021974b8:
	.space 0x4
data_ov40_021974bc:
	.space 0x4
data_ov40_021974c0:
	.space 0x4
data_ov40_021974c4:
	.space 0x4
data_ov40_021974c8:
	.space 0x4
data_ov40_021974cc:
	.space 0x4
data_ov40_021974d0:
	.space 0x4
data_ov40_021974d4:
	.space 0x4
data_ov40_021974d8:
	.space 0x4
data_ov40_021974dc:
	.space 0x4
data_ov40_021974e0:
	.space 0x4
data_ov40_021974e4:
	.space 0x4
data_ov40_021974e8:
	.space 0x4
data_ov40_021974ec:
	.space 0x4
data_ov40_021974f0:
	.space 0x4
data_ov40_021974f4:
	.space 0x4
data_ov40_021974f8:
	.space 0x4
data_ov40_021974fc:
	.space 0x4
data_ov40_02197500:
	.space 0x4
data_ov40_02197504:
	.space 0x4
data_ov40_02197508:
	.space 0x4
data_ov40_0219750c:
	.space 0x4
data_ov40_02197510:
	.space 0x4
data_ov40_02197514:
	.space 0x4
data_ov40_02197518:
	.space 0x4
data_ov40_0219751c:
	.space 0x4
data_ov40_02197520:
	.space 0x4
data_ov40_02197524:
	.space 0x4
data_ov40_02197528:
	.space 0x4
data_ov40_0219752c:
	.space 0x4
data_ov40_02197530:
	.space 0x4
data_ov40_02197534:
	.space 0x4
data_ov40_02197538:
	.space 0x4
data_ov40_0219753c:
	.space 0x4
data_ov40_02197540:
	.space 0x4
data_ov40_02197544:
	.space 0x4
data_ov40_02197548:
	.space 0x4
data_ov40_0219754c:
	.space 0x4
data_ov40_02197550:
	.space 0x4
data_ov40_02197554:
	.space 0x4
data_ov40_02197558:
	.space 0x4
data_ov40_0219755c:
	.space 0x4
data_ov40_02197560:
	.space 0x4
data_ov40_02197564:
	.space 0x4
data_ov40_02197568:
	.space 0x4
data_ov40_0219756c:
	.space 0x4
data_ov40_02197570:
	.space 0x4
data_ov40_02197574:
	.space 0x4
data_ov40_02197578:
	.space 0x4
data_ov40_0219757c:
	.space 0x4
data_ov40_02197580:
	.space 0x4
data_ov40_02197584:
	.space 0x4
data_ov40_02197588:
	.space 0x4
data_ov40_0219758c:
	.space 0x4
data_ov40_02197590:
	.space 0x4
data_ov40_02197594:
	.space 0x4
data_ov40_02197598:
	.space 0x4
data_ov40_0219759c:
	.space 0x4
data_ov40_021975a0:
	.space 0x4
data_ov40_021975a4:
	.space 0x4
data_ov40_021975a8:
	.space 0x4
data_ov40_021975ac:
	.space 0x4
data_ov40_021975b0:
	.space 0x4
data_ov40_021975b4:
	.space 0x4
data_ov40_021975b8:
	.space 0x4
data_ov40_021975bc:
	.space 0x4
data_ov40_021975c0:
	.space 0x4
data_ov40_021975c4:
	.space 0x4
data_ov40_021975c8:
	.space 0x4
data_ov40_021975cc:
	.space 0x4
data_ov40_021975d0:
	.space 0x4
data_ov40_021975d4:
	.space 0x4
data_ov40_021975d8:
	.space 0x4
data_ov40_021975dc:
	.space 0x4
data_ov40_021975e0:
	.space 0x4
data_ov40_021975e4:
	.space 0x4
data_ov40_021975e8:
	.space 0x4
data_ov40_021975ec:
	.space 0x4
data_ov40_021975f0:
	.space 0x4
data_ov40_021975f4:
	.space 0x4
data_ov40_021975f8:
	.space 0x4
data_ov40_021975fc:
	.space 0x4
data_ov40_02197600:
	.space 0x4
data_ov40_02197604:
	.space 0x4
data_ov40_02197608:
	.space 0x4
data_ov40_0219760c:
	.space 0x4
data_ov40_02197610:
	.space 0x4
data_ov40_02197614:
	.space 0x4
data_ov40_02197618:
	.space 0x4
data_ov40_0219761c:
	.space 0x4
data_ov40_02197620:
	.space 0x4
data_ov40_02197624:
	.space 0x4
data_ov40_02197628:
	.space 0x4
data_ov40_0219762c:
	.space 0x4
data_ov40_02197630:
	.space 0x4
data_ov40_02197634:
	.space 0x4
data_ov40_02197638:
	.space 0x4
data_ov40_0219763c:
	.space 0x4
data_ov40_02197640:
	.space 0x4
data_ov40_02197644:
	.space 0x4
data_ov40_02197648:
	.space 0x4
data_ov40_0219764c:
	.space 0x4
data_ov40_02197650:
	.space 0x4
data_ov40_02197654:
	.space 0x4
data_ov40_02197658:
	.space 0x4
data_ov40_0219765c:
	.space 0x4
data_ov40_02197660:
	.space 0x4
data_ov40_02197664:
	.space 0x4
data_ov40_02197668:
	.space 0x4
data_ov40_0219766c:
	.space 0x4
data_ov40_02197670:
	.space 0x4
data_ov40_02197674:
	.space 0x4
data_ov40_02197678:
	.space 0x4
data_ov40_0219767c:
	.space 0x4
data_ov40_02197680:
	.space 0x4
data_ov40_02197684:
	.space 0x4
data_ov40_02197688:
	.space 0x4
data_ov40_0219768c:
	.space 0x4
data_ov40_02197690:
	.space 0x4
data_ov40_02197694:
	.space 0x4
data_ov40_02197698:
	.space 0x4
data_ov40_0219769c:
	.space 0x4
data_ov40_021976a0:
	.space 0x4
data_ov40_021976a4:
	.space 0x4
data_ov40_021976a8:
	.space 0x4
data_ov40_021976ac:
	.space 0x4
data_ov40_021976b0:
	.space 0x4
data_ov40_021976b4:
	.space 0x4
data_ov40_021976b8:
	.space 0x4
data_ov40_021976bc:
	.space 0x4
data_ov40_021976c0:
	.space 0x4
data_ov40_021976c4:
	.space 0x4
data_ov40_021976c8:
	.space 0x4
data_ov40_021976cc:
	.space 0x4
data_ov40_021976d0:
	.space 0x4
data_ov40_021976d4:
	.space 0x4
data_ov40_021976d8:
	.space 0x4
data_ov40_021976dc:
	.space 0x4
data_ov40_021976e0:
	.space 0x4
data_ov40_021976e4:
	.space 0x4
data_ov40_021976e8:
	.space 0x4
data_ov40_021976ec:
	.space 0x4
data_ov40_021976f0:
	.space 0x4
data_ov40_021976f4:
	.space 0x4
data_ov40_021976f8:
	.space 0x4
data_ov40_021976fc:
	.space 0x4
data_ov40_02197700:
	.space 0x4
data_ov40_02197704:
	.space 0x4
data_ov40_02197708:
	.space 0x4
data_ov40_0219770c:
	.space 0x4
data_ov40_02197710:
	.space 0x4
data_ov40_02197714:
	.space 0x4
data_ov40_02197718:
	.space 0x4
data_ov40_0219771c:
	.space 0x4
data_ov40_02197720:
	.space 0x4
data_ov40_02197724:
	.space 0x4
data_ov40_02197728:
	.space 0x4
data_ov40_0219772c:
	.space 0x4
data_ov40_02197730:
	.space 0x4
data_ov40_02197734:
	.space 0x4
data_ov40_02197738:
	.space 0x4
data_ov40_0219773c:
	.space 0x4
data_ov40_02197740:
	.space 0x4
data_ov40_02197744:
	.space 0x4
data_ov40_02197748:
	.space 0x4
data_ov40_0219774c:
	.space 0x4
data_ov40_02197750:
	.space 0x4
data_ov40_02197754:
	.space 0x4
data_ov40_02197758:
	.space 0x4
data_ov40_0219775c:
	.space 0x4
data_ov40_02197760:
	.space 0x4
data_ov40_02197764:
	.space 0x4
data_ov40_02197768:
	.space 0x4
data_ov40_0219776c:
	.space 0x4
data_ov40_02197770:
	.space 0x4
data_ov40_02197774:
	.space 0x4
data_ov40_02197778:
	.space 0x4
data_ov40_0219777c:
	.space 0x4
data_ov40_02197780:
	.space 0x4
data_ov40_02197784:
	.space 0x4
data_ov40_02197788:
	.space 0x4
data_ov40_0219778c:
	.space 0x4
data_ov40_02197790:
	.space 0x4
data_ov40_02197794:
	.space 0x4
data_ov40_02197798:
	.space 0x4
data_ov40_0219779c:
	.space 0x4
data_ov40_021977a0:
	.space 0x4
data_ov40_021977a4:
	.space 0x4
data_ov40_021977a8:
	.space 0x4
data_ov40_021977ac:
	.space 0x4
data_ov40_021977b0:
	.space 0x4
data_ov40_021977b4:
	.space 0x4
data_ov40_021977b8:
	.space 0x4
data_ov40_021977bc:
	.space 0x4
data_ov40_021977c0:
	.space 0x4
data_ov40_021977c4:
	.space 0x4
data_ov40_021977c8:
	.space 0x4
data_ov40_021977cc:
	.space 0x4
data_ov40_021977d0:
	.space 0x4
data_ov40_021977d4:
	.space 0x4
data_ov40_021977d8:
	.space 0x4
data_ov40_021977dc:
	.space 0x4
data_ov40_021977e0:
	.space 0x4
data_ov40_021977e4:
	.space 0x4
data_ov40_021977e8:
	.space 0x4
data_ov40_021977ec:
	.space 0x4
data_ov40_021977f0:
	.space 0x4
data_ov40_021977f4:
	.space 0x4
data_ov40_021977f8:
	.space 0x4
data_ov40_021977fc:
	.space 0x4
data_ov40_02197800:
	.space 0x4
data_ov40_02197804:
	.space 0x4
data_ov40_02197808:
	.space 0x4
data_ov40_0219780c:
	.space 0x4
data_ov40_02197810:
	.space 0x4
data_ov40_02197814:
	.space 0x4
data_ov40_02197818:
	.space 0x4
data_ov40_0219781c:
	.space 0x4
data_ov40_02197820:
	.space 0x4
data_ov40_02197824:
	.space 0x4
data_ov40_02197828:
	.space 0x4
data_ov40_0219782c:
	.space 0x4
data_ov40_02197830:
	.space 0x4
data_ov40_02197834:
	.space 0x4
data_ov40_02197838:
	.space 0x4
data_ov40_0219783c:
	.space 0x4
data_ov40_02197840:
	.space 0x4
data_ov40_02197844:
	.space 0x4
data_ov40_02197848:
	.space 0x4
data_ov40_0219784c:
	.space 0x4
data_ov40_02197850:
	.space 0x4
data_ov40_02197854:
	.space 0x4
data_ov40_02197858:
	.space 0x4
data_ov40_0219785c:
	.space 0x4
data_ov40_02197860:
	.space 0x4
data_ov40_02197864:
	.space 0x4
data_ov40_02197868:
	.space 0x4
data_ov40_0219786c:
	.space 0x4
data_ov40_02197870:
	.space 0x4
data_ov40_02197874:
	.space 0x4
data_ov40_02197878:
	.space 0x4
data_ov40_0219787c:
	.space 0x4
data_ov40_02197880:
	.space 0x4
data_ov40_02197884:
	.space 0x4
data_ov40_02197888:
	.space 0x4
data_ov40_0219788c:
	.space 0x4
data_ov40_02197890:
	.space 0x4
data_ov40_02197894:
	.space 0x4
data_ov40_02197898:
	.space 0x4
data_ov40_0219789c:
	.space 0x4
data_ov40_021978a0:
	.space 0x4
data_ov40_021978a4:
	.space 0x4
data_ov40_021978a8:
	.space 0x4
data_ov40_021978ac:
	.space 0x4
data_ov40_021978b0:
	.space 0x4
data_ov40_021978b4:
	.space 0x4
data_ov40_021978b8:
	.space 0x4
data_ov40_021978bc:
	.space 0x4
data_ov40_021978c0:
	.space 0x4
data_ov40_021978c4:
	.space 0x4
data_ov40_021978c8:
	.space 0x4
data_ov40_021978cc:
	.space 0x4
data_ov40_021978d0:
	.space 0x4
data_ov40_021978d4:
	.space 0x4
data_ov40_021978d8:
	.space 0x4
data_ov40_021978dc:
	.space 0x4
data_ov40_021978e0:
	.space 0x4
data_ov40_021978e4:
	.space 0x4
data_ov40_021978e8:
	.space 0x4
data_ov40_021978ec:
	.space 0x4
data_ov40_021978f0:
	.space 0x4
data_ov40_021978f4:
	.space 0x4
data_ov40_021978f8:
	.space 0x4
data_ov40_021978fc:
	.space 0x4
data_ov40_02197900:
	.space 0x4
data_ov40_02197904:
	.space 0x4
data_ov40_02197908:
	.space 0x4
data_ov40_0219790c:
	.space 0x4
data_ov40_02197910:
	.space 0x4
data_ov40_02197914:
	.space 0x4
data_ov40_02197918:
	.space 0x4
data_ov40_0219791c:
	.space 0x4
data_ov40_02197920:
	.space 0x4
data_ov40_02197924:
	.space 0x4
data_ov40_02197928:
	.space 0x4
data_ov40_0219792c:
	.space 0x4
data_ov40_02197930:
	.space 0x4
data_ov40_02197934:
	.space 0x4
data_ov40_02197938:
	.space 0x4
data_ov40_0219793c:
	.space 0x4
data_ov40_02197940:
	.space 0x4
data_ov40_02197944:
	.space 0x4
data_ov40_02197948:
	.space 0x4
data_ov40_0219794c:
	.space 0x4
data_ov40_02197950:
	.space 0x4
data_ov40_02197954:
	.space 0x4
data_ov40_02197958:
	.space 0x4
data_ov40_0219795c:
	.space 0x4
data_ov40_02197960:
	.space 0x4
data_ov40_02197964:
	.space 0x4
data_ov40_02197968:
	.space 0x4
data_ov40_0219796c:
	.space 0x4
data_ov40_02197970:
	.space 0x4
data_ov40_02197974:
	.space 0x4
data_ov40_02197978:
	.space 0x4
data_ov40_0219797c:
	.space 0x4
data_ov40_02197980:
	.space 0x4
data_ov40_02197984:
	.space 0x4
data_ov40_02197988:
	.space 0x4
data_ov40_0219798c:
	.space 0x4
data_ov40_02197990:
	.space 0x4
data_ov40_02197994:
	.space 0x4
data_ov40_02197998:
	.space 0x4
data_ov40_0219799c:
	.space 0x4
data_ov40_021979a0:
	.space 0x4
data_ov40_021979a4:
	.space 0x4
data_ov40_021979a8:
	.space 0x4
data_ov40_021979ac:
	.space 0x4
data_ov40_021979b0:
	.space 0x4
data_ov40_021979b4:
	.space 0x4
data_ov40_021979b8:
	.space 0x4
data_ov40_021979bc:
	.space 0x4
data_ov40_021979c0:
	.space 0x4
data_ov40_021979c4:
	.space 0x4
data_ov40_021979c8:
	.space 0x4
data_ov40_021979cc:
	.space 0x4
data_ov40_021979d0:
	.space 0x4
data_ov40_021979d4:
	.space 0x4
data_ov40_021979d8:
	.space 0x4
data_ov40_021979dc:
	.space 0x4
data_ov40_021979e0:
	.space 0x4
data_ov40_021979e4:
	.space 0x4
data_ov40_021979e8:
	.space 0x4
data_ov40_021979ec:
	.space 0x4
data_ov40_021979f0:
	.space 0x4
data_ov40_021979f4:
	.space 0x4
data_ov40_021979f8:
	.space 0x4
data_ov40_021979fc:
	.space 0x4
data_ov40_02197a00:
	.space 0x4
data_ov40_02197a04:
	.space 0x4
data_ov40_02197a08:
	.space 0x4
data_ov40_02197a0c:
	.space 0x4
data_ov40_02197a10:
	.space 0x4
data_ov40_02197a14:
	.space 0x4
data_ov40_02197a18:
	.space 0x4
data_ov40_02197a1c:
	.space 0x4
data_ov40_02197a20:
	.space 0x4
data_ov40_02197a24:
	.space 0x4
data_ov40_02197a28:
	.space 0x4
data_ov40_02197a2c:
	.space 0x4
data_ov40_02197a30:
	.space 0x4
data_ov40_02197a34:
	.space 0x4
data_ov40_02197a38:
	.space 0x4
data_ov40_02197a3c:
	.space 0x4
data_ov40_02197a40:
	.space 0x4
data_ov40_02197a44:
	.space 0x4
data_ov40_02197a48:
	.space 0x4
data_ov40_02197a4c:
	.space 0x4
data_ov40_02197a50:
	.space 0x4
data_ov40_02197a54:
	.space 0x4
data_ov40_02197a58:
	.space 0x4
data_ov40_02197a5c:
	.space 0x4
data_ov40_02197a60:
	.space 0x4
data_ov40_02197a64:
	.space 0x4
data_ov40_02197a68:
	.space 0x4
data_ov40_02197a6c:
	.space 0x4
data_ov40_02197a70:
	.space 0x4
data_ov40_02197a74:
	.space 0x4
data_ov40_02197a78:
	.space 0x4
data_ov40_02197a7c:
	.space 0x4
data_ov40_02197a80:
	.space 0x4
data_ov40_02197a84:
	.space 0x4
data_ov40_02197a88:
	.space 0x4
data_ov40_02197a8c:
	.space 0x4
data_ov40_02197a90:
	.space 0x4
data_ov40_02197a94:
	.space 0x4
data_ov40_02197a98:
	.space 0x4
data_ov40_02197a9c:
	.space 0x4
data_ov40_02197aa0:
	.space 0x4
data_ov40_02197aa4:
	.space 0x4
data_ov40_02197aa8:
	.space 0x4
data_ov40_02197aac:
	.space 0x4
data_ov40_02197ab0:
	.space 0x4
data_ov40_02197ab4:
	.space 0x4
data_ov40_02197ab8:
	.space 0x4
data_ov40_02197abc:
	.space 0x4
data_ov40_02197ac0:
	.space 0x4
data_ov40_02197ac4:
	.space 0x4
data_ov40_02197ac8:
	.space 0x4
data_ov40_02197acc:
	.space 0x4
data_ov40_02197ad0:
	.space 0x4
data_ov40_02197ad4:
	.space 0x4
data_ov40_02197ad8:
	.space 0x4
data_ov40_02197adc:
	.space 0x4
data_ov40_02197ae0:
	.space 0x4
data_ov40_02197ae4:
	.space 0x4
data_ov40_02197ae8:
	.space 0x4
data_ov40_02197aec:
	.space 0x4
data_ov40_02197af0:
	.space 0x4
data_ov40_02197af4:
	.space 0x4
data_ov40_02197af8:
	.space 0x4
data_ov40_02197afc:
	.space 0x4
data_ov40_02197b00:
	.space 0x4
data_ov40_02197b04:
	.space 0x4
data_ov40_02197b08:
	.space 0x4
data_ov40_02197b0c:
	.space 0x4
data_ov40_02197b10:
	.space 0x4
data_ov40_02197b14:
	.space 0x4
data_ov40_02197b18:
	.space 0x4
data_ov40_02197b1c:
	.space 0x4
data_ov40_02197b20:
	.space 0x4
data_ov40_02197b24:
	.space 0x4
data_ov40_02197b28:
	.space 0x4
data_ov40_02197b2c:
	.space 0x4
data_ov40_02197b30:
	.space 0x4
data_ov40_02197b34:
	.space 0x4
data_ov40_02197b38:
	.space 0x4
data_ov40_02197b3c:
	.space 0x4
data_ov40_02197b40:
	.space 0x4
data_ov40_02197b44:
	.space 0x4
data_ov40_02197b48:
	.space 0x4
data_ov40_02197b4c:
	.space 0x4
data_ov40_02197b50:
	.space 0x4
data_ov40_02197b54:
	.space 0x4
data_ov40_02197b58:
	.space 0x4
data_ov40_02197b5c:
	.space 0x4
data_ov40_02197b60:
	.space 0x4
data_ov40_02197b64:
	.space 0x4
data_ov40_02197b68:
	.space 0x4
data_ov40_02197b6c:
	.space 0x4
data_ov40_02197b70:
	.space 0x4
data_ov40_02197b74:
	.space 0x4
data_ov40_02197b78:
	.space 0x4
data_ov40_02197b7c:
	.space 0x4
data_ov40_02197b80:
	.space 0x4
data_ov40_02197b84:
	.space 0x4
data_ov40_02197b88:
	.space 0x4
data_ov40_02197b8c:
	.space 0x4
data_ov40_02197b90:
	.space 0x4
data_ov40_02197b94:
	.space 0x4
data_ov40_02197b98:
	.space 0x4
data_ov40_02197b9c:
	.space 0x4
data_ov40_02197ba0:
	.space 0x4
data_ov40_02197ba4:
	.space 0x4
data_ov40_02197ba8:
	.space 0x4
data_ov40_02197bac:
	.space 0x4
data_ov40_02197bb0:
	.space 0x4
data_ov40_02197bb4:
	.space 0x4
data_ov40_02197bb8:
	.space 0x4
data_ov40_02197bbc:
	.space 0x4
data_ov40_02197bc0:
	.space 0x4
data_ov40_02197bc4:
	.space 0x4
data_ov40_02197bc8:
	.space 0x4
data_ov40_02197bcc:
	.space 0x4
data_ov40_02197bd0:
	.space 0x4
data_ov40_02197bd4:
	.space 0x4
data_ov40_02197bd8:
	.space 0x4
data_ov40_02197bdc:
	.space 0x4
data_ov40_02197be0:
	.space 0x4
data_ov40_02197be4:
	.space 0x4
data_ov40_02197be8:
	.space 0x4
data_ov40_02197bec:
	.space 0x4
data_ov40_02197bf0:
	.space 0x4
data_ov40_02197bf4:
	.space 0x4
data_ov40_02197bf8:
	.space 0x4
data_ov40_02197bfc:
	.space 0x4
data_ov40_02197c00:
	.space 0x4
data_ov40_02197c04:
	.space 0x4
data_ov40_02197c08:
	.space 0x4
data_ov40_02197c0c:
	.space 0x4
data_ov40_02197c10:
	.space 0x4
data_ov40_02197c14:
	.space 0x4
data_ov40_02197c18:
	.space 0x4
data_ov40_02197c1c:
	.space 0x4
data_ov40_02197c20:
	.space 0x4
data_ov40_02197c24:
	.space 0x4
data_ov40_02197c28:
	.space 0x4
data_ov40_02197c2c:
	.space 0x4
data_ov40_02197c30:
	.space 0x4
data_ov40_02197c34:
	.space 0x4
data_ov40_02197c38:
	.space 0x4
data_ov40_02197c3c:
	.space 0x4
data_ov40_02197c40:
	.space 0x4
data_ov40_02197c44:
	.space 0x4
data_ov40_02197c48:
	.space 0x4
data_ov40_02197c4c:
	.space 0x4
data_ov40_02197c50:
	.space 0x4
data_ov40_02197c54:
	.space 0x4
data_ov40_02197c58:
	.space 0x4
data_ov40_02197c5c:
	.space 0x4
data_ov40_02197c60:
	.space 0x4
data_ov40_02197c64:
	.space 0x4
data_ov40_02197c68:
	.space 0x4
data_ov40_02197c6c:
	.space 0x4
data_ov40_02197c70:
	.space 0x4
data_ov40_02197c74:
	.space 0x4
data_ov40_02197c78:
	.space 0x4
data_ov40_02197c7c:
	.space 0x4
data_ov40_02197c80:
	.space 0x4
data_ov40_02197c84:
	.space 0x4
data_ov40_02197c88:
	.space 0x4
data_ov40_02197c8c:
	.space 0x4
data_ov40_02197c90:
	.space 0x4
data_ov40_02197c94:
	.space 0x4
data_ov40_02197c98:
	.space 0x4
data_ov40_02197c9c:
	.space 0x4
data_ov40_02197ca0:
	.space 0x4
data_ov40_02197ca4:
	.space 0x4
data_ov40_02197ca8:
	.space 0x4
data_ov40_02197cac:
	.space 0x4
data_ov40_02197cb0:
	.space 0x4
data_ov40_02197cb4:
	.space 0x4
data_ov40_02197cb8:
	.space 0x4
data_ov40_02197cbc:
	.space 0x4
data_ov40_02197cc0:
	.space 0x4
data_ov40_02197cc4:
	.space 0x4
data_ov40_02197cc8:
	.space 0x4
data_ov40_02197ccc:
	.space 0x4
data_ov40_02197cd0:
	.space 0x4
data_ov40_02197cd4:
	.space 0x4
data_ov40_02197cd8:
	.space 0x4
data_ov40_02197cdc:
	.space 0x4
data_ov40_02197ce0:
	.space 0x4
data_ov40_02197ce4:
	.space 0x4
data_ov40_02197ce8:
	.space 0x4
data_ov40_02197cec:
	.space 0x4
data_ov40_02197cf0:
	.space 0x4
data_ov40_02197cf4:
	.space 0x4
data_ov40_02197cf8:
	.space 0x4
data_ov40_02197cfc:
	.space 0x4
data_ov40_02197d00:
	.space 0x4
data_ov40_02197d04:
	.space 0x4
data_ov40_02197d08:
	.space 0x4
data_ov40_02197d0c:
	.space 0x4
data_ov40_02197d10:
	.space 0x4
data_ov40_02197d14:
	.space 0x4
data_ov40_02197d18:
	.space 0x4
data_ov40_02197d1c:
	.space 0x4
data_ov40_02197d20:
	.space 0x4
data_ov40_02197d24:
	.space 0x4
data_ov40_02197d28:
	.space 0x4
data_ov40_02197d2c:
	.space 0x4
data_ov40_02197d30:
	.space 0x4
data_ov40_02197d34:
	.space 0x4
data_ov40_02197d38:
	.space 0x4
data_ov40_02197d3c:
	.space 0x4
data_ov40_02197d40:
	.space 0x4
data_ov40_02197d44:
	.space 0x4
data_ov40_02197d48:
	.space 0x4
data_ov40_02197d4c:
	.space 0x4
data_ov40_02197d50:
	.space 0x4
data_ov40_02197d54:
	.space 0x4
data_ov40_02197d58:
	.space 0x4
data_ov40_02197d5c:
	.space 0x4
data_ov40_02197d60:
	.space 0x4
data_ov40_02197d64:
	.space 0x4
data_ov40_02197d68:
	.space 0x4
data_ov40_02197d6c:
	.space 0x4
data_ov40_02197d70:
	.space 0x4
data_ov40_02197d74:
	.space 0x4
data_ov40_02197d78:
	.space 0x4
data_ov40_02197d7c:
	.space 0x4
data_ov40_02197d80:
	.space 0x4
data_ov40_02197d84:
	.space 0x4
data_ov40_02197d88:
	.space 0x4
data_ov40_02197d8c:
	.space 0x4
data_ov40_02197d90:
	.space 0x4
data_ov40_02197d94:
	.space 0x4
data_ov40_02197d98:
	.space 0x4
data_ov40_02197d9c:
	.space 0x4
data_ov40_02197da0:
	.space 0x4
data_ov40_02197da4:
	.space 0x4
data_ov40_02197da8:
	.space 0x4
data_ov40_02197dac:
	.space 0x4
data_ov40_02197db0:
	.space 0x4
data_ov40_02197db4:
	.space 0x4
data_ov40_02197db8:
	.space 0x4
data_ov40_02197dbc:
	.space 0x4
data_ov40_02197dc0:
	.space 0x4
data_ov40_02197dc4:
	.space 0x4
data_ov40_02197dc8:
	.space 0x4
data_ov40_02197dcc:
	.space 0x4
data_ov40_02197dd0:
	.space 0x4
data_ov40_02197dd4:
	.space 0x4
data_ov40_02197dd8:
	.space 0x4
data_ov40_02197ddc:
	.space 0x4
data_ov40_02197de0:
	.space 0x4
data_ov40_02197de4:
	.space 0x4
data_ov40_02197de8:
	.space 0x4
data_ov40_02197dec:
	.space 0x4
data_ov40_02197df0:
	.space 0x4
data_ov40_02197df4:
	.space 0x4
data_ov40_02197df8:
	.space 0x4
data_ov40_02197dfc:
	.space 0x4
data_ov40_02197e00:
	.space 0x4
data_ov40_02197e04:
	.space 0x4
data_ov40_02197e08:
	.space 0x4
data_ov40_02197e0c:
	.space 0x4
data_ov40_02197e10:
	.space 0x4
data_ov40_02197e14:
	.space 0x4
data_ov40_02197e18:
	.space 0x4
data_ov40_02197e1c:
	.space 0x4
data_ov40_02197e20:
	.space 0x4
data_ov40_02197e24:
	.space 0x4
data_ov40_02197e28:
	.space 0x4
data_ov40_02197e2c:
	.space 0x4
data_ov40_02197e30:
	.space 0x4
data_ov40_02197e34:
	.space 0x4
data_ov40_02197e38:
	.space 0x4
data_ov40_02197e3c:
	.space 0x4
data_ov40_02197e40:
	.space 0x4
data_ov40_02197e44:
	.space 0x4
data_ov40_02197e48:
	.space 0x4
data_ov40_02197e4c:
	.space 0x4
data_ov40_02197e50:
	.space 0x4
data_ov40_02197e54:
	.space 0x4
data_ov40_02197e58:
	.space 0x4
data_ov40_02197e5c:
	.space 0x4
data_ov40_02197e60:
	.space 0x4
data_ov40_02197e64:
	.space 0x4
data_ov40_02197e68:
	.space 0x4
data_ov40_02197e6c:
	.space 0x4
data_ov40_02197e70:
	.space 0x4
data_ov40_02197e74:
	.space 0x4
data_ov40_02197e78:
	.space 0x4
data_ov40_02197e7c:
	.space 0x4
data_ov40_02197e80:
	.space 0x4
data_ov40_02197e84:
	.space 0x4
data_ov40_02197e88:
	.space 0x4
data_ov40_02197e8c:
	.space 0x4
data_ov40_02197e90:
	.space 0x4
data_ov40_02197e94:
	.space 0x4
data_ov40_02197e98:
	.space 0x4
data_ov40_02197e9c:
	.space 0x4
data_ov40_02197ea0:
	.space 0x4
data_ov40_02197ea4:
	.space 0x4
data_ov40_02197ea8:
	.space 0x4
data_ov40_02197eac:
	.space 0x4
data_ov40_02197eb0:
	.space 0x4
data_ov40_02197eb4:
	.space 0x4
data_ov40_02197eb8:
	.space 0x4
data_ov40_02197ebc:
	.space 0x4
data_ov40_02197ec0:
	.space 0x4
data_ov40_02197ec4:
	.space 0x4
data_ov40_02197ec8:
	.space 0x4
data_ov40_02197ecc:
	.space 0x4
data_ov40_02197ed0:
	.space 0x4
data_ov40_02197ed4:
	.space 0x4
data_ov40_02197ed8:
	.space 0x4
data_ov40_02197edc:
	.space 0x4
data_ov40_02197ee0:
	.space 0x4
data_ov40_02197ee4:
	.space 0x4
data_ov40_02197ee8:
	.space 0x4
data_ov40_02197eec:
	.space 0x4
data_ov40_02197ef0:
	.space 0x4
data_ov40_02197ef4:
	.space 0x4
data_ov40_02197ef8:
	.space 0x4
data_ov40_02197efc:
	.space 0x4
data_ov40_02197f00:
	.space 0x4
data_ov40_02197f04:
	.space 0x4
data_ov40_02197f08:
	.space 0x4
data_ov40_02197f0c:
	.space 0x4
data_ov40_02197f10:
	.space 0x4
data_ov40_02197f14:
	.space 0x4
data_ov40_02197f18:
	.space 0x4
data_ov40_02197f1c:
	.space 0x4
data_ov40_02197f20:
	.space 0x4
data_ov40_02197f24:
	.space 0x4
data_ov40_02197f28:
	.space 0x4
data_ov40_02197f2c:
	.space 0x4
data_ov40_02197f30:
	.space 0x4
data_ov40_02197f34:
	.space 0x4
data_ov40_02197f38:
	.space 0x4
data_ov40_02197f3c:
	.space 0x4
data_ov40_02197f40:
	.space 0x4
data_ov40_02197f44:
	.space 0x4
data_ov40_02197f48:
	.space 0x4
data_ov40_02197f4c:
	.space 0x4
data_ov40_02197f50:
	.space 0x4
data_ov40_02197f54:
	.space 0x4
data_ov40_02197f58:
	.space 0x4
data_ov40_02197f5c:
	.space 0x4
data_ov40_02197f60:
	.space 0x4
data_ov40_02197f64:
	.space 0x4
data_ov40_02197f68:
	.space 0x4
data_ov40_02197f6c:
	.space 0x4
data_ov40_02197f70:
	.space 0x4
data_ov40_02197f74:
	.space 0x4
data_ov40_02197f78:
	.space 0x4
data_ov40_02197f7c:
	.space 0x4
data_ov40_02197f80:
	.space 0x4
data_ov40_02197f84:
	.space 0x4
data_ov40_02197f88:
	.space 0x4
data_ov40_02197f8c:
	.space 0x4
data_ov40_02197f90:
	.space 0x4
data_ov40_02197f94:
	.space 0x4
data_ov40_02197f98:
	.space 0x4
data_ov40_02197f9c:
	.space 0x4
data_ov40_02197fa0:
	.space 0x4
data_ov40_02197fa4:
	.space 0x4
data_ov40_02197fa8:
	.space 0x4
data_ov40_02197fac:
	.space 0x4
data_ov40_02197fb0:
	.space 0x4
data_ov40_02197fb4:
	.space 0x4
data_ov40_02197fb8:
	.space 0x4
data_ov40_02197fbc:
	.space 0x4
data_ov40_02197fc0:
	.space 0x4
data_ov40_02197fc4:
	.space 0x4
data_ov40_02197fc8:
	.space 0x4
data_ov40_02197fcc:
	.space 0x4
data_ov40_02197fd0:
	.space 0x4
data_ov40_02197fd4:
	.space 0x4
data_ov40_02197fd8:
	.space 0x4
data_ov40_02197fdc:
	.space 0x4
data_ov40_02197fe0:
	.space 0x4
data_ov40_02197fe4:
	.space 0x4
data_ov40_02197fe8:
	.space 0x4
data_ov40_02197fec:
	.space 0x4
data_ov40_02197ff0:
	.space 0x4
data_ov40_02197ff4:
	.space 0x4
data_ov40_02197ff8:
	.space 0x4
data_ov40_02197ffc:
	.space 0x4
data_ov40_02198000:
	.space 0x4
data_ov40_02198004:
	.space 0x4
data_ov40_02198008:
	.space 0x4
data_ov40_0219800c:
	.space 0x4
data_ov40_02198010:
	.space 0x4
data_ov40_02198014:
	.space 0x4
data_ov40_02198018:
	.space 0x4
data_ov40_0219801c:
	.space 0x4
data_ov40_02198020:
	.space 0x4
data_ov40_02198024:
	.space 0x4
data_ov40_02198028:
	.space 0x4
data_ov40_0219802c:
	.space 0x4
data_ov40_02198030:
	.space 0x4
data_ov40_02198034:
	.space 0x4
data_ov40_02198038:
	.space 0x4
data_ov40_0219803c:
	.space 0x4
data_ov40_02198040:
	.space 0x4
data_ov40_02198044:
	.space 0x4
data_ov40_02198048:
	.space 0x4
data_ov40_0219804c:
	.space 0x4
data_ov40_02198050:
	.space 0x4
data_ov40_02198054:
	.space 0x4
data_ov40_02198058:
	.space 0x4
data_ov40_0219805c:
	.space 0x4
data_ov40_02198060:
	.space 0x4
data_ov40_02198064:
	.space 0x4
data_ov40_02198068:
	.space 0x4
data_ov40_0219806c:
	.space 0x4
data_ov40_02198070:
	.space 0x4
data_ov40_02198074:
	.space 0x4
data_ov40_02198078:
	.space 0x4
data_ov40_0219807c:
	.space 0x4
data_ov40_02198080:
	.space 0x4
data_ov40_02198084:
	.space 0x4
data_ov40_02198088:
	.space 0x4
data_ov40_0219808c:
	.space 0x4
data_ov40_02198090:
	.space 0x4
data_ov40_02198094:
	.space 0x4
data_ov40_02198098:
	.space 0x4
data_ov40_0219809c:
	.space 0x4
data_ov40_021980a0:
	.space 0x4
data_ov40_021980a4:
	.space 0x4
data_ov40_021980a8:
	.space 0x4
data_ov40_021980ac:
	.space 0x4
data_ov40_021980b0:
	.space 0x4
data_ov40_021980b4:
	.space 0x4
data_ov40_021980b8:
	.space 0x4
data_ov40_021980bc:
	.space 0x4
data_ov40_021980c0:
	.space 0x4
data_ov40_021980c4:
	.space 0x4
data_ov40_021980c8:
	.space 0x4
data_ov40_021980cc:
	.space 0x4
data_ov40_021980d0:
	.space 0x4
data_ov40_021980d4:
	.space 0x4
data_ov40_021980d8:
	.space 0x4
data_ov40_021980dc:
	.space 0x4
data_ov40_021980e0:
	.space 0x4
data_ov40_021980e4:
	.space 0x4
data_ov40_021980e8:
	.space 0x4
data_ov40_021980ec:
	.space 0x4
data_ov40_021980f0:
	.space 0x4
data_ov40_021980f4:
	.space 0x4
data_ov40_021980f8:
	.space 0x4
data_ov40_021980fc:
	.space 0x4
data_ov40_02198100:
	.space 0x4
data_ov40_02198104:
	.space 0x4
data_ov40_02198108:
	.space 0x4
data_ov40_0219810c:
	.space 0x4
data_ov40_02198110:
	.space 0x4
data_ov40_02198114:
	.space 0x4
data_ov40_02198118:
	.space 0x4
data_ov40_0219811c:
	.space 0x4
data_ov40_02198120:
	.space 0x4
data_ov40_02198124:
	.space 0x4
data_ov40_02198128:
	.space 0x4
data_ov40_0219812c:
	.space 0x4
data_ov40_02198130:
	.space 0x4
data_ov40_02198134:
	.space 0x4
data_ov40_02198138:
	.space 0x4
data_ov40_0219813c:
	.space 0x4
data_ov40_02198140:
	.space 0x4
data_ov40_02198144:
	.space 0x4
data_ov40_02198148:
	.space 0x4
data_ov40_0219814c:
	.space 0x4
data_ov40_02198150:
	.space 0x4
data_ov40_02198154:
	.space 0x4
data_ov40_02198158:
	.space 0x4
data_ov40_0219815c:
	.space 0x4
data_ov40_02198160:
	.space 0x4
data_ov40_02198164:
	.space 0x4
data_ov40_02198168:
	.space 0x4
data_ov40_0219816c:
	.space 0x4
data_ov40_02198170:
	.space 0x4
data_ov40_02198174:
	.space 0x4
data_ov40_02198178:
	.space 0x4
data_ov40_0219817c:
	.space 0x4
data_ov40_02198180:
	.space 0x4
data_ov40_02198184:
	.space 0x4
data_ov40_02198188:
	.space 0x4
data_ov40_0219818c:
	.space 0x4
data_ov40_02198190:
	.space 0x4
data_ov40_02198194:
	.space 0x4
data_ov40_02198198:
	.space 0x4
data_ov40_0219819c:
	.space 0x4
data_ov40_021981a0:
	.space 0x4
data_ov40_021981a4:
	.space 0x4
data_ov40_021981a8:
	.space 0x4
data_ov40_021981ac:
	.space 0x4
data_ov40_021981b0:
	.space 0x4
data_ov40_021981b4:
	.space 0x4
data_ov40_021981b8:
	.space 0x4
data_ov40_021981bc:
	.space 0x4
data_ov40_021981c0:
	.space 0x4
data_ov40_021981c4:
	.space 0x4
data_ov40_021981c8:
	.space 0x4
data_ov40_021981cc:
	.space 0x4
data_ov40_021981d0:
	.space 0x4
data_ov40_021981d4:
	.space 0x4
data_ov40_021981d8:
	.space 0x4
data_ov40_021981dc:
	.space 0x4
data_ov40_021981e0:
	.space 0x4
data_ov40_021981e4:
	.space 0x4
data_ov40_021981e8:
	.space 0x4
data_ov40_021981ec:
	.space 0x4
data_ov40_021981f0:
	.space 0x4
data_ov40_021981f4:
	.space 0x4
data_ov40_021981f8:
	.space 0x4
data_ov40_021981fc:
	.space 0x4
data_ov40_02198200:
	.space 0x4
data_ov40_02198204:
	.space 0x4
data_ov40_02198208:
	.space 0x4
data_ov40_0219820c:
	.space 0x4
data_ov40_02198210:
	.space 0x4
data_ov40_02198214:
	.space 0x4
data_ov40_02198218:
	.space 0x4
data_ov40_0219821c:
	.space 0x4
data_ov40_02198220:
	.space 0x4
data_ov40_02198224:
	.space 0x4
data_ov40_02198228:
	.space 0x4
data_ov40_0219822c:
	.space 0x4
data_ov40_02198230:
	.space 0x4
data_ov40_02198234:
	.space 0x4
data_ov40_02198238:
	.space 0x4
data_ov40_0219823c:
	.space 0x4
data_ov40_02198240:
	.space 0x4
data_ov40_02198244:
	.space 0x4
data_ov40_02198248:
	.space 0x4
data_ov40_0219824c:
	.space 0x4
data_ov40_02198250:
	.space 0x4
data_ov40_02198254:
	.space 0x4
data_ov40_02198258:
	.space 0x4
data_ov40_0219825c:
	.space 0x4
data_ov40_02198260:
	.space 0x4
data_ov40_02198264:
	.space 0x4
data_ov40_02198268:
	.space 0x4
data_ov40_0219826c:
	.space 0x4
data_ov40_02198270:
	.space 0x4
data_ov40_02198274:
	.space 0x4
data_ov40_02198278:
	.space 0x4
data_ov40_0219827c:
	.space 0x4
data_ov40_02198280:
	.space 0x4
data_ov40_02198284:
	.space 0x4
data_ov40_02198288:
	.space 0x4
data_ov40_0219828c:
	.space 0x4
data_ov40_02198290:
	.space 0x4
data_ov40_02198294:
	.space 0x4
data_ov40_02198298:
	.space 0x4
data_ov40_0219829c:
	.space 0x4
data_ov40_021982a0:
	.space 0x4
data_ov40_021982a4:
	.space 0x4
data_ov40_021982a8:
	.space 0x4
data_ov40_021982ac:
	.space 0x4
data_ov40_021982b0:
	.space 0x4
data_ov40_021982b4:
	.space 0x4
data_ov40_021982b8:
	.space 0x4
data_ov40_021982bc:
	.space 0x4
data_ov40_021982c0:
	.space 0x4
data_ov40_021982c4:
	.space 0x4
data_ov40_021982c8:
	.space 0x4
data_ov40_021982cc:
	.space 0x4
data_ov40_021982d0:
	.space 0x4
data_ov40_021982d4:
	.space 0x4
data_ov40_021982d8:
	.space 0x4
data_ov40_021982dc:
	.space 0x4
data_ov40_021982e0:
	.space 0x4
data_ov40_021982e4:
	.space 0x4
data_ov40_021982e8:
	.space 0x4
data_ov40_021982ec:
	.space 0x4
data_ov40_021982f0:
	.space 0x4
data_ov40_021982f4:
	.space 0x4
data_ov40_021982f8:
	.space 0x4
data_ov40_021982fc:
	.space 0x4
data_ov40_02198300:
	.space 0x4
data_ov40_02198304:
	.space 0x4
data_ov40_02198308:
	.space 0x4
data_ov40_0219830c:
	.space 0x4
data_ov40_02198310:
	.space 0x4
data_ov40_02198314:
	.space 0x4
data_ov40_02198318:
	.space 0x4
data_ov40_0219831c:
	.space 0x4
data_ov40_02198320:
	.space 0x4
data_ov40_02198324:
	.space 0x4
data_ov40_02198328:
	.space 0x4
data_ov40_0219832c:
	.space 0x4
data_ov40_02198330:
	.space 0x4
data_ov40_02198334:
	.space 0x4
data_ov40_02198338:
	.space 0x4
data_ov40_0219833c:
	.space 0x4
data_ov40_02198340:
	.space 0x4
data_ov40_02198344:
	.space 0x4
data_ov40_02198348:
	.space 0x4
data_ov40_0219834c:
	.space 0x4
data_ov40_02198350:
	.space 0x4
data_ov40_02198354:
	.space 0x4
data_ov40_02198358:
	.space 0x4
data_ov40_0219835c:
	.space 0x4
data_ov40_02198360:
	.space 0x4
data_ov40_02198364:
	.space 0x4
data_ov40_02198368:
	.space 0x4
data_ov40_0219836c:
	.space 0x4
data_ov40_02198370:
	.space 0x4
data_ov40_02198374:
	.space 0x4
data_ov40_02198378:
	.space 0x4
data_ov40_0219837c:
	.space 0x4
data_ov40_02198380:
	.space 0x4
data_ov40_02198384:
	.space 0x4
data_ov40_02198388:
	.space 0x4
data_ov40_0219838c:
	.space 0x4
data_ov40_02198390:
	.space 0x4
data_ov40_02198394:
	.space 0x4
data_ov40_02198398:
	.space 0x4
data_ov40_0219839c:
	.space 0x4
data_ov40_021983a0:
	.space 0x4
data_ov40_021983a4:
	.space 0x4
data_ov40_021983a8:
	.space 0x4
data_ov40_021983ac:
	.space 0x4
data_ov40_021983b0:
	.space 0x4
data_ov40_021983b4:
	.space 0x4
data_ov40_021983b8:
	.space 0x4
data_ov40_021983bc:
	.space 0x4
data_ov40_021983c0:
	.space 0x4
data_ov40_021983c4:
	.space 0x4
data_ov40_021983c8:
	.space 0x4
data_ov40_021983cc:
	.space 0x4
data_ov40_021983d0:
	.space 0x4
data_ov40_021983d4:
	.space 0x4
data_ov40_021983d8:
	.space 0x4
data_ov40_021983dc:
	.space 0x4
data_ov40_021983e0:
	.space 0x4
data_ov40_021983e4:
	.space 0x4
data_ov40_021983e8:
	.space 0x4
data_ov40_021983ec:
	.space 0x4
data_ov40_021983f0:
	.space 0x4
data_ov40_021983f4:
	.space 0x4
data_ov40_021983f8:
	.space 0x4
data_ov40_021983fc:
	.space 0x4
data_ov40_02198400:
	.space 0x4
data_ov40_02198404:
	.space 0x4
data_ov40_02198408:
	.space 0x4
data_ov40_0219840c:
	.space 0x4
data_ov40_02198410:
	.space 0x4
data_ov40_02198414:
	.space 0x4
data_ov40_02198418:
	.space 0x4
data_ov40_0219841c:
	.space 0x4
data_ov40_02198420:
	.space 0x4
data_ov40_02198424:
	.space 0x4
data_ov40_02198428:
	.space 0x4
data_ov40_0219842c:
	.space 0x4
data_ov40_02198430:
	.space 0x4
data_ov40_02198434:
	.space 0x4
data_ov40_02198438:
	.space 0x4
data_ov40_0219843c:
	.space 0x4
data_ov40_02198440:
	.space 0x4
data_ov40_02198444:
	.space 0x4
data_ov40_02198448:
	.space 0x4
data_ov40_0219844c:
	.space 0x4
data_ov40_02198450:
	.space 0x4
data_ov40_02198454:
	.space 0x4
data_ov40_02198458:
	.space 0x4
data_ov40_0219845c:
	.space 0x4
data_ov40_02198460:
	.space 0x4
data_ov40_02198464:
	.space 0x4
data_ov40_02198468:
	.space 0x4
data_ov40_0219846c:
	.space 0x4
data_ov40_02198470:
	.space 0x4
data_ov40_02198474:
	.space 0x4
data_ov40_02198478:
	.space 0x4
data_ov40_0219847c:
	.space 0x4
data_ov40_02198480:
	.space 0x4
data_ov40_02198484:
	.space 0x4
data_ov40_02198488:
	.space 0x4
data_ov40_0219848c:
	.space 0x4
data_ov40_02198490:
	.space 0x4
data_ov40_02198494:
	.space 0x4
data_ov40_02198498:
	.space 0x4
data_ov40_0219849c:
	.space 0x4
data_ov40_021984a0:
	.space 0x4
data_ov40_021984a4:
	.space 0x4
data_ov40_021984a8:
	.space 0x4
data_ov40_021984ac:
	.space 0x4
data_ov40_021984b0:
	.space 0x4
data_ov40_021984b4:
	.space 0x4
data_ov40_021984b8:
	.space 0x4
data_ov40_021984bc:
	.space 0x4
data_ov40_021984c0:
	.space 0x4
data_ov40_021984c4:
	.space 0x4
data_ov40_021984c8:
	.space 0x4
data_ov40_021984cc:
	.space 0x4
data_ov40_021984d0:
	.space 0x4
data_ov40_021984d4:
	.space 0x4
data_ov40_021984d8:
	.space 0x4
data_ov40_021984dc:
	.space 0x4
data_ov40_021984e0:
	.space 0x4
data_ov40_021984e4:
	.space 0x4
data_ov40_021984e8:
	.space 0x4
data_ov40_021984ec:
	.space 0x4
data_ov40_021984f0:
	.space 0x4
data_ov40_021984f4:
	.space 0x4
data_ov40_021984f8:
	.space 0x4
data_ov40_021984fc:
	.space 0x4
data_ov40_02198500:
	.space 0x4
data_ov40_02198504:
	.space 0x4
data_ov40_02198508:
	.space 0x4
data_ov40_0219850c:
	.space 0x4
data_ov40_02198510:
	.space 0x4
data_ov40_02198514:
	.space 0x4
data_ov40_02198518:
	.space 0x4
data_ov40_0219851c:
	.space 0x4
data_ov40_02198520:
	.space 0x4
data_ov40_02198524:
	.space 0x4
data_ov40_02198528:
	.space 0x4
data_ov40_0219852c:
	.space 0x4
data_ov40_02198530:
	.space 0x4
data_ov40_02198534:
	.space 0x4
data_ov40_02198538:
	.space 0x4
data_ov40_0219853c:
	.space 0x4
data_ov40_02198540:
	.space 0x4
data_ov40_02198544:
	.space 0x4
data_ov40_02198548:
	.space 0x4
data_ov40_0219854c:
	.space 0x4
data_ov40_02198550:
	.space 0x4
data_ov40_02198554:
	.space 0x4
data_ov40_02198558:
	.space 0x4
data_ov40_0219855c:
	.space 0x4
data_ov40_02198560:
	.space 0x4
data_ov40_02198564:
	.space 0x4
data_ov40_02198568:
	.space 0x4
data_ov40_0219856c:
	.space 0x4
data_ov40_02198570:
	.space 0x4
data_ov40_02198574:
	.space 0x4
data_ov40_02198578:
	.space 0x4
data_ov40_0219857c:
	.space 0x4
data_ov40_02198580:
	.space 0x4
data_ov40_02198584:
	.space 0x4
data_ov40_02198588:
	.space 0x4
data_ov40_0219858c:
	.space 0x4
data_ov40_02198590:
	.space 0x4
data_ov40_02198594:
	.space 0x4
data_ov40_02198598:
	.space 0x4
data_ov40_0219859c:
	.space 0x4
data_ov40_021985a0:
	.space 0x4
data_ov40_021985a4:
	.space 0x4
data_ov40_021985a8:
	.space 0x4
data_ov40_021985ac:
	.space 0x4
data_ov40_021985b0:
	.space 0x4
data_ov40_021985b4:
	.space 0x4
data_ov40_021985b8:
	.space 0x4
data_ov40_021985bc:
	.space 0x4
data_ov40_021985c0:
	.space 0x4
data_ov40_021985c4:
	.space 0x4
data_ov40_021985c8:
	.space 0x4
data_ov40_021985cc:
	.space 0x4
data_ov40_021985d0:
	.space 0x4
data_ov40_021985d4:
	.space 0x4
data_ov40_021985d8:
	.space 0x4
data_ov40_021985dc:
	.space 0x4
data_ov40_021985e0:
	.space 0x4
data_ov40_021985e4:
	.space 0x4
data_ov40_021985e8:
	.space 0x4
data_ov40_021985ec:
	.space 0x4
data_ov40_021985f0:
	.space 0x4
data_ov40_021985f4:
	.space 0x4
data_ov40_021985f8:
	.space 0x4
data_ov40_021985fc:
	.space 0x4
data_ov40_02198600:
	.space 0x4
data_ov40_02198604:
	.space 0x4
data_ov40_02198608:
	.space 0x4
data_ov40_0219860c:
	.space 0x4
data_ov40_02198610:
	.space 0x4
data_ov40_02198614:
	.space 0x4
data_ov40_02198618:
	.space 0x4
data_ov40_0219861c:
	.space 0x4
data_ov40_02198620:
	.space 0x4
data_ov40_02198624:
	.space 0x4
data_ov40_02198628:
	.space 0x4
data_ov40_0219862c:
	.space 0x4
data_ov40_02198630:
	.space 0x4
data_ov40_02198634:
	.space 0x4
data_ov40_02198638:
	.space 0x4
data_ov40_0219863c:
	.space 0x4
data_ov40_02198640:
	.space 0x4
data_ov40_02198644:
	.space 0x4
data_ov40_02198648:
	.space 0x4
data_ov40_0219864c:
	.space 0x4
data_ov40_02198650:
	.space 0x4
data_ov40_02198654:
	.space 0x4
data_ov40_02198658:
	.space 0x4
data_ov40_0219865c:
	.space 0x4
data_ov40_02198660:
	.space 0x4
data_ov40_02198664:
	.space 0x4
data_ov40_02198668:
	.space 0x4
data_ov40_0219866c:
	.space 0x4
data_ov40_02198670:
	.space 0x4
data_ov40_02198674:
	.space 0x4
data_ov40_02198678:
	.space 0x4
data_ov40_0219867c:
	.space 0x4
data_ov40_02198680:
	.space 0x4
data_ov40_02198684:
	.space 0x4
data_ov40_02198688:
	.space 0x4
data_ov40_0219868c:
	.space 0x4
data_ov40_02198690:
	.space 0x4
data_ov40_02198694:
	.space 0x4
data_ov40_02198698:
	.space 0x4
data_ov40_0219869c:
	.space 0x4
data_ov40_021986a0:
	.space 0x4
data_ov40_021986a4:
	.space 0x4
data_ov40_021986a8:
	.space 0x4
data_ov40_021986ac:
	.space 0x4
data_ov40_021986b0:
	.space 0x4
data_ov40_021986b4:
	.space 0x4
data_ov40_021986b8:
	.space 0x4
data_ov40_021986bc:
	.space 0x4
data_ov40_021986c0:
	.space 0x4
data_ov40_021986c4:
	.space 0x4
data_ov40_021986c8:
	.space 0x4
data_ov40_021986cc:
	.space 0x4
data_ov40_021986d0:
	.space 0x4
data_ov40_021986d4:
	.space 0x4
data_ov40_021986d8:
	.space 0x4
data_ov40_021986dc:
	.space 0x4
data_ov40_021986e0:
	.space 0x4
data_ov40_021986e4:
	.space 0x4
data_ov40_021986e8:
	.space 0x4
data_ov40_021986ec:
	.space 0x4
data_ov40_021986f0:
	.space 0x4
data_ov40_021986f4:
	.space 0x4
data_ov40_021986f8:
	.space 0x4
data_ov40_021986fc:
	.space 0x4
data_ov40_02198700:
	.space 0x4
data_ov40_02198704:
	.space 0x4
data_ov40_02198708:
	.space 0x4
data_ov40_0219870c:
	.space 0x4
data_ov40_02198710:
	.space 0x4
data_ov40_02198714:
	.space 0x4
data_ov40_02198718:
	.space 0x4
data_ov40_0219871c:
	.space 0x4
data_ov40_02198720:
	.space 0x4
data_ov40_02198724:
	.space 0x4
data_ov40_02198728:
	.space 0x4
data_ov40_0219872c:
	.space 0x4
data_ov40_02198730:
	.space 0x4
data_ov40_02198734:
	.space 0x4
data_ov40_02198738:
	.space 0x4
data_ov40_0219873c:
	.space 0x4
data_ov40_02198740:
	.space 0x4
data_ov40_02198744:
	.space 0x4
data_ov40_02198748:
	.space 0x4
data_ov40_0219874c:
	.space 0x4
data_ov40_02198750:
	.space 0x4
data_ov40_02198754:
	.space 0x4
data_ov40_02198758:
	.space 0x4
data_ov40_0219875c:
	.space 0x4
data_ov40_02198760:
	.space 0x4
data_ov40_02198764:
	.space 0x4
data_ov40_02198768:
	.space 0x4
data_ov40_0219876c:
	.space 0x4
data_ov40_02198770:
	.space 0x4
data_ov40_02198774:
	.space 0x4
data_ov40_02198778:
	.space 0x4
data_ov40_0219877c:
	.space 0x4
data_ov40_02198780:
	.space 0x4
data_ov40_02198784:
	.space 0x4
data_ov40_02198788:
	.space 0x4
data_ov40_0219878c:
	.space 0x4
data_ov40_02198790:
	.space 0x4
data_ov40_02198794:
	.space 0x4
data_ov40_02198798:
	.space 0x4
data_ov40_0219879c:
	.space 0x4
data_ov40_021987a0:
	.space 0x4
data_ov40_021987a4:
	.space 0x4
data_ov40_021987a8:
	.space 0x4
data_ov40_021987ac:
	.space 0x4
data_ov40_021987b0:
	.space 0x4
data_ov40_021987b4:
	.space 0x4
data_ov40_021987b8:
	.space 0x4
data_ov40_021987bc:
	.space 0x4
data_ov40_021987c0:
	.space 0x4
data_ov40_021987c4:
	.space 0x4
data_ov40_021987c8:
	.space 0x4
data_ov40_021987cc:
	.space 0x4
data_ov40_021987d0:
	.space 0x4
data_ov40_021987d4:
	.space 0x4
data_ov40_021987d8:
	.space 0x4
data_ov40_021987dc:
	.space 0x4
data_ov40_021987e0:
	.space 0x4
data_ov40_021987e4:
	.space 0x4
data_ov40_021987e8:
	.space 0x4
data_ov40_021987ec:
	.space 0x4
data_ov40_021987f0:
	.space 0x4
data_ov40_021987f4:
	.space 0x4
data_ov40_021987f8:
	.space 0x4
data_ov40_021987fc:
	.space 0x4
data_ov40_02198800:
	.space 0x4
data_ov40_02198804:
	.space 0x4
data_ov40_02198808:
	.space 0x4
data_ov40_0219880c:
	.space 0x4
data_ov40_02198810:
	.space 0x4
data_ov40_02198814:
	.space 0x4
data_ov40_02198818:
	.space 0x4
data_ov40_0219881c:
	.space 0x4
data_ov40_02198820:
	.space 0x4
data_ov40_02198824:
	.space 0x4
data_ov40_02198828:
	.space 0x4
data_ov40_0219882c:
	.space 0x4
data_ov40_02198830:
	.space 0x4
data_ov40_02198834:
	.space 0x4
data_ov40_02198838:
	.space 0x4
data_ov40_0219883c:
	.space 0x4
data_ov40_02198840:
	.space 0x4
data_ov40_02198844:
	.space 0x4
data_ov40_02198848:
	.space 0x4
data_ov40_0219884c:
	.space 0x4
data_ov40_02198850:
	.space 0x4
data_ov40_02198854:
	.space 0x4
data_ov40_02198858:
	.space 0x4
data_ov40_0219885c:
	.space 0x4
data_ov40_02198860:
	.space 0x4
data_ov40_02198864:
	.space 0x4
data_ov40_02198868:
	.space 0x4
data_ov40_0219886c:
	.space 0x4
data_ov40_02198870:
	.space 0x4
data_ov40_02198874:
	.space 0x4
data_ov40_02198878:
	.space 0x4
data_ov40_0219887c:
	.space 0x4
data_ov40_02198880:
	.space 0x4
data_ov40_02198884:
	.space 0x4
data_ov40_02198888:
	.space 0x4
data_ov40_0219888c:
	.space 0x4
data_ov40_02198890:
	.space 0x4
data_ov40_02198894:
	.space 0x4
data_ov40_02198898:
	.space 0x4
data_ov40_0219889c:
	.space 0x4
data_ov40_021988a0:
	.space 0x4
data_ov40_021988a4:
	.space 0x4
data_ov40_021988a8:
	.space 0x4
data_ov40_021988ac:
	.space 0x4
data_ov40_021988b0:
	.space 0x4
data_ov40_021988b4:
	.space 0x4
data_ov40_021988b8:
	.space 0x4
data_ov40_021988bc:
	.space 0x4
data_ov40_021988c0:
	.space 0x4
data_ov40_021988c4:
	.space 0x4
data_ov40_021988c8:
	.space 0x4
data_ov40_021988cc:
	.space 0x4
data_ov40_021988d0:
	.space 0x4
data_ov40_021988d4:
	.space 0x4
data_ov40_021988d8:
	.space 0x4
data_ov40_021988dc:
	.space 0x4
data_ov40_021988e0:
	.space 0x4
data_ov40_021988e4:
	.space 0x4
data_ov40_021988e8:
	.space 0x4
data_ov40_021988ec:
	.space 0x4
data_ov40_021988f0:
	.space 0x4
data_ov40_021988f4:
	.space 0x4
data_ov40_021988f8:
	.space 0x4
data_ov40_021988fc:
	.space 0x4
data_ov40_02198900:
	.space 0x4
data_ov40_02198904:
	.space 0x4
data_ov40_02198908:
	.space 0x4
data_ov40_0219890c:
	.space 0x4
data_ov40_02198910:
	.space 0x4
data_ov40_02198914:
	.space 0x4
data_ov40_02198918:
	.space 0x4
data_ov40_0219891c:
	.space 0x4
data_ov40_02198920:
	.space 0x4
data_ov40_02198924:
	.space 0x4
data_ov40_02198928:
	.space 0x4
data_ov40_0219892c:
	.space 0x4
data_ov40_02198930:
	.space 0x4
data_ov40_02198934:
	.space 0x4
data_ov40_02198938:
	.space 0x4
data_ov40_0219893c:
	.space 0x4
data_ov40_02198940:
	.space 0x4
data_ov40_02198944:
	.space 0x4
data_ov40_02198948:
	.space 0x4
data_ov40_0219894c:
	.space 0x4
data_ov40_02198950:
	.space 0x4
data_ov40_02198954:
	.space 0x4
data_ov40_02198958:
	.space 0x4
data_ov40_0219895c:
	.space 0x4
data_ov40_02198960:
	.space 0x4
data_ov40_02198964:
	.space 0x4
data_ov40_02198968:
	.space 0x4
data_ov40_0219896c:
	.space 0x4
data_ov40_02198970:
	.space 0x4
data_ov40_02198974:
	.space 0x4
data_ov40_02198978:
	.space 0x4
data_ov40_0219897c:
	.space 0x4
data_ov40_02198980:
	.space 0x4
data_ov40_02198984:
	.space 0x4
data_ov40_02198988:
	.space 0x4
data_ov40_0219898c:
	.space 0x4
data_ov40_02198990:
	.space 0x4
data_ov40_02198994:
	.space 0x4
data_ov40_02198998:
	.space 0x4
data_ov40_0219899c:
	.space 0x4
data_ov40_021989a0:
	.space 0x4
data_ov40_021989a4:
	.space 0x4
data_ov40_021989a8:
	.space 0x4
data_ov40_021989ac:
	.space 0x4
data_ov40_021989b0:
	.space 0x4
data_ov40_021989b4:
	.space 0x4
data_ov40_021989b8:
	.space 0x4
data_ov40_021989bc:
	.space 0x4
data_ov40_021989c0:
	.space 0x4
data_ov40_021989c4:
	.space 0x4
data_ov40_021989c8:
	.space 0x4
data_ov40_021989cc:
	.space 0x4
data_ov40_021989d0:
	.space 0x4
data_ov40_021989d4:
	.space 0x4
data_ov40_021989d8:
	.space 0x4
data_ov40_021989dc:
	.space 0x4
data_ov40_021989e0:
	.space 0x4
data_ov40_021989e4:
	.space 0x4
data_ov40_021989e8:
	.space 0x4
data_ov40_021989ec:
	.space 0x4
data_ov40_021989f0:
	.space 0x4
data_ov40_021989f4:
	.space 0x4
data_ov40_021989f8:
	.space 0x4
data_ov40_021989fc:
	.space 0x4
data_ov40_02198a00:
	.space 0x4
data_ov40_02198a04:
	.space 0x4
data_ov40_02198a08:
	.space 0x4
data_ov40_02198a0c:
	.space 0x4
data_ov40_02198a10:
	.space 0x4
data_ov40_02198a14:
	.space 0x4
data_ov40_02198a18:
	.space 0x4
data_ov40_02198a1c:
	.space 0x4
data_ov40_02198a20:
	.space 0x4
data_ov40_02198a24:
	.space 0x4
data_ov40_02198a28:
	.space 0x4
data_ov40_02198a2c:
	.space 0x4
data_ov40_02198a30:
	.space 0x4
data_ov40_02198a34:
	.space 0x4
data_ov40_02198a38:
	.space 0x4
data_ov40_02198a3c:
	.space 0x4
data_ov40_02198a40:
	.space 0x4
data_ov40_02198a44:
	.space 0x4
data_ov40_02198a48:
	.space 0x4
data_ov40_02198a4c:
	.space 0x4
data_ov40_02198a50:
	.space 0x4
data_ov40_02198a54:
	.space 0x4
data_ov40_02198a58:
	.space 0x4
data_ov40_02198a5c:
	.space 0x4
data_ov40_02198a60:
	.space 0x4
data_ov40_02198a64:
	.space 0x4
data_ov40_02198a68:
	.space 0x4
data_ov40_02198a6c:
	.space 0x4
data_ov40_02198a70:
	.space 0x4
data_ov40_02198a74:
	.space 0x4
data_ov40_02198a78:
	.space 0x4
data_ov40_02198a7c:
	.space 0x4
data_ov40_02198a80:
	.space 0x4
data_ov40_02198a84:
	.space 0x4
data_ov40_02198a88:
	.space 0x4
data_ov40_02198a8c:
	.space 0x4
data_ov40_02198a90:
	.space 0x4
data_ov40_02198a94:
	.space 0x4
data_ov40_02198a98:
	.space 0x4
data_ov40_02198a9c:
	.space 0x4
data_ov40_02198aa0:
	.space 0x4
data_ov40_02198aa4:
	.space 0x4
data_ov40_02198aa8:
	.space 0x4
data_ov40_02198aac:
	.space 0x4
data_ov40_02198ab0:
	.space 0x4
data_ov40_02198ab4:
	.space 0x4
data_ov40_02198ab8:
	.space 0x4
data_ov40_02198abc:
	.space 0x4
data_ov40_02198ac0:
	.space 0x4
data_ov40_02198ac4:
	.space 0x4
data_ov40_02198ac8:
	.space 0x4
data_ov40_02198acc:
	.space 0x4
data_ov40_02198ad0:
	.space 0x4
data_ov40_02198ad4:
	.space 0x4
data_ov40_02198ad8:
	.space 0x4
data_ov40_02198adc:
	.space 0x4
data_ov40_02198ae0:
	.space 0x4
data_ov40_02198ae4:
	.space 0x4
data_ov40_02198ae8:
	.space 0x4
data_ov40_02198aec:
	.space 0x4
data_ov40_02198af0:
	.space 0x4
data_ov40_02198af4:
	.space 0x4
data_ov40_02198af8:
	.space 0x4
data_ov40_02198afc:
	.space 0x4
data_ov40_02198b00:
	.space 0x4
data_ov40_02198b04:
	.space 0x4
data_ov40_02198b08:
	.space 0x4
data_ov40_02198b0c:
	.space 0x4
data_ov40_02198b10:
	.space 0x4
data_ov40_02198b14:
	.space 0x4
data_ov40_02198b18:
	.space 0x4
data_ov40_02198b1c:
	.space 0x4
data_ov40_02198b20:
	.space 0x4
data_ov40_02198b24:
	.space 0x4
data_ov40_02198b28:
	.space 0x4
data_ov40_02198b2c:
	.space 0x4
data_ov40_02198b30:
	.space 0x4
data_ov40_02198b34:
	.space 0x4
data_ov40_02198b38:
	.space 0x4
data_ov40_02198b3c:
	.space 0x4
data_ov40_02198b40:
	.space 0x4
data_ov40_02198b44:
	.space 0x4
data_ov40_02198b48:
	.space 0x4
data_ov40_02198b4c:
	.space 0x4
data_ov40_02198b50:
	.space 0x4
data_ov40_02198b54:
	.space 0x4
data_ov40_02198b58:
	.space 0x4
data_ov40_02198b5c:
	.space 0x4
data_ov40_02198b60:
	.space 0x4
data_ov40_02198b64:
	.space 0x4
data_ov40_02198b68:
	.space 0x4
data_ov40_02198b6c:
	.space 0x4
data_ov40_02198b70:
	.space 0x4
data_ov40_02198b74:
	.space 0x4
data_ov40_02198b78:
	.space 0x4
data_ov40_02198b7c:
	.space 0x4
data_ov40_02198b80:
	.space 0x4
data_ov40_02198b84:
	.space 0x4
data_ov40_02198b88:
	.space 0x4
data_ov40_02198b8c:
	.space 0x4
data_ov40_02198b90:
	.space 0x4
data_ov40_02198b94:
	.space 0x4
data_ov40_02198b98:
	.space 0x4
data_ov40_02198b9c:
	.space 0x4
data_ov40_02198ba0:
	.space 0x4
data_ov40_02198ba4:
	.space 0x4
data_ov40_02198ba8:
	.space 0x4
data_ov40_02198bac:
	.space 0x4
data_ov40_02198bb0:
	.space 0x4
data_ov40_02198bb4:
	.space 0x4
data_ov40_02198bb8:
	.space 0x4
data_ov40_02198bbc:
	.space 0x4
data_ov40_02198bc0:
	.space 0x4
data_ov40_02198bc4:
	.space 0x4
data_ov40_02198bc8:
	.space 0x4
data_ov40_02198bcc:
	.space 0x4
data_ov40_02198bd0:
	.space 0x4
data_ov40_02198bd4:
	.space 0x4
data_ov40_02198bd8:
	.space 0x4
data_ov40_02198bdc:
	.space 0x4
data_ov40_02198be0:
	.space 0x4
data_ov40_02198be4:
	.space 0x4
data_ov40_02198be8:
	.space 0x4
data_ov40_02198bec:
	.space 0x4
data_ov40_02198bf0:
	.space 0x4
data_ov40_02198bf4:
	.space 0x4
data_ov40_02198bf8:
	.space 0x4
data_ov40_02198bfc:
	.space 0x4
data_ov40_02198c00:
	.space 0x4
data_ov40_02198c04:
	.space 0x4
data_ov40_02198c08:
	.space 0x4
data_ov40_02198c0c:
	.space 0x4
data_ov40_02198c10:
	.space 0x4
data_ov40_02198c14:
	.space 0x4
data_ov40_02198c18:
	.space 0x4
data_ov40_02198c1c:
	.space 0x4
data_ov40_02198c20:
	.space 0x4
data_ov40_02198c24:
	.space 0x4
data_ov40_02198c28:
	.space 0x4
data_ov40_02198c2c:
	.space 0x4
data_ov40_02198c30:
	.space 0x4
data_ov40_02198c34:
	.space 0x4
data_ov40_02198c38:
	.space 0x4
data_ov40_02198c3c:
	.space 0x4
data_ov40_02198c40:
	.space 0x4
data_ov40_02198c44:
	.space 0x4
data_ov40_02198c48:
	.space 0x4
data_ov40_02198c4c:
	.space 0x4
data_ov40_02198c50:
	.space 0x4
data_ov40_02198c54:
	.space 0x4
data_ov40_02198c58:
	.space 0x4
data_ov40_02198c5c:
	.space 0x4
data_ov40_02198c60:
	.space 0x4
data_ov40_02198c64:
	.space 0x4
data_ov40_02198c68:
	.space 0x4
data_ov40_02198c6c:
	.space 0x4
data_ov40_02198c70:
	.space 0x4
data_ov40_02198c74:
	.space 0x4
data_ov40_02198c78:
	.space 0x4
data_ov40_02198c7c:
	.space 0x4
data_ov40_02198c80:
	.space 0x4
data_ov40_02198c84:
	.space 0x4
data_ov40_02198c88:
	.space 0x4
data_ov40_02198c8c:
	.space 0x4
data_ov40_02198c90:
	.space 0x4
data_ov40_02198c94:
	.space 0x4
data_ov40_02198c98:
	.space 0x4
data_ov40_02198c9c:
	.space 0x4
data_ov40_02198ca0:
	.space 0x4
data_ov40_02198ca4:
	.space 0x4
data_ov40_02198ca8:
	.space 0x4
data_ov40_02198cac:
	.space 0x4
data_ov40_02198cb0:
	.space 0x4
data_ov40_02198cb4:
	.space 0x4
data_ov40_02198cb8:
	.space 0x4
data_ov40_02198cbc:
	.space 0x4
data_ov40_02198cc0:
	.space 0x4
data_ov40_02198cc4:
	.space 0x4
data_ov40_02198cc8:
	.space 0x4
data_ov40_02198ccc:
	.space 0x4
data_ov40_02198cd0:
	.space 0x4
data_ov40_02198cd4:
	.space 0x4
data_ov40_02198cd8:
	.space 0x4
data_ov40_02198cdc:
	.space 0x4
data_ov40_02198ce0:
	.space 0x4
data_ov40_02198ce4:
	.space 0x4
data_ov40_02198ce8:
	.space 0x4
data_ov40_02198cec:
	.space 0x4
data_ov40_02198cf0:
	.space 0x4
data_ov40_02198cf4:
	.space 0x4
data_ov40_02198cf8:
	.space 0x4
data_ov40_02198cfc:
	.space 0x4
data_ov40_02198d00:
	.space 0x4
data_ov40_02198d04:
	.space 0x4
data_ov40_02198d08:
	.space 0x4
data_ov40_02198d0c:
	.space 0x4
data_ov40_02198d10:
	.space 0x4
data_ov40_02198d14:
	.space 0x4
data_ov40_02198d18:
	.space 0x4
data_ov40_02198d1c:
	.space 0x4
data_ov40_02198d20:
	.space 0x4
data_ov40_02198d24:
	.space 0x4
data_ov40_02198d28:
	.space 0x4
data_ov40_02198d2c:
	.space 0x4
data_ov40_02198d30:
	.space 0x4
data_ov40_02198d34:
	.space 0x4
data_ov40_02198d38:
	.space 0x4
data_ov40_02198d3c:
	.space 0x4
data_ov40_02198d40:
	.space 0x4
data_ov40_02198d44:
	.space 0x4
data_ov40_02198d48:
	.space 0x4
data_ov40_02198d4c:
	.space 0x4
data_ov40_02198d50:
	.space 0x4
data_ov40_02198d54:
	.space 0x4
data_ov40_02198d58:
	.space 0x4
data_ov40_02198d5c:
	.space 0x4
data_ov40_02198d60:
	.space 0x4
data_ov40_02198d64:
	.space 0x4
data_ov40_02198d68:
	.space 0x4
data_ov40_02198d6c:
	.space 0x4
data_ov40_02198d70:
	.space 0x4
data_ov40_02198d74:
	.space 0x4
data_ov40_02198d78:
	.space 0x4
data_ov40_02198d7c:
	.space 0x4
data_ov40_02198d80:
	.space 0x4
data_ov40_02198d84:
	.space 0x4
data_ov40_02198d88:
	.space 0x4
data_ov40_02198d8c:
	.space 0x4
data_ov40_02198d90:
	.space 0x4
data_ov40_02198d94:
	.space 0x4
data_ov40_02198d98:
	.space 0x4
data_ov40_02198d9c:
	.space 0x4
data_ov40_02198da0:
	.space 0x4
data_ov40_02198da4:
	.space 0x4
data_ov40_02198da8:
	.space 0x4
data_ov40_02198dac:
	.space 0x4
data_ov40_02198db0:
	.space 0x4
data_ov40_02198db4:
	.space 0x4
data_ov40_02198db8:
	.space 0x4
data_ov40_02198dbc:
	.space 0x4
data_ov40_02198dc0:
	.space 0x4
data_ov40_02198dc4:
	.space 0x4
data_ov40_02198dc8:
	.space 0x4
data_ov40_02198dcc:
	.space 0x4
data_ov40_02198dd0:
	.space 0x4
data_ov40_02198dd4:
	.space 0x4
data_ov40_02198dd8:
	.space 0x4
data_ov40_02198ddc:
	.space 0x4
data_ov40_02198de0:
	.space 0x4
data_ov40_02198de4:
	.space 0x4
data_ov40_02198de8:
	.space 0x4
data_ov40_02198dec:
	.space 0x4
data_ov40_02198df0:
	.space 0x4
data_ov40_02198df4:
	.space 0x4
data_ov40_02198df8:
	.space 0x4
data_ov40_02198dfc:
	.space 0x4
data_ov40_02198e00:
	.space 0x4
data_ov40_02198e04:
	.space 0x4
data_ov40_02198e08:
	.space 0x4
data_ov40_02198e0c:
	.space 0x4
data_ov40_02198e10:
	.space 0x4
data_ov40_02198e14:
	.space 0x4
data_ov40_02198e18:
	.space 0x4
data_ov40_02198e1c:
	.space 0x4
data_ov40_02198e20:
	.space 0x4
data_ov40_02198e24:
	.space 0x4
data_ov40_02198e28:
	.space 0x4
data_ov40_02198e2c:
	.space 0x4
data_ov40_02198e30:
	.space 0x4
data_ov40_02198e34:
	.space 0x4
data_ov40_02198e38:
	.space 0x4
data_ov40_02198e3c:
	.space 0x4
data_ov40_02198e40:
	.space 0x4
data_ov40_02198e44:
	.space 0x4
data_ov40_02198e48:
	.space 0x4
data_ov40_02198e4c:
	.space 0x4
data_ov40_02198e50:
	.space 0x4
data_ov40_02198e54:
	.space 0x4
data_ov40_02198e58:
	.space 0x4
data_ov40_02198e5c:
	.space 0x4
data_ov40_02198e60:
	.space 0x4
data_ov40_02198e64:
	.space 0x4
data_ov40_02198e68:
	.space 0x4
data_ov40_02198e6c:
	.space 0x4
data_ov40_02198e70:
	.space 0x4
data_ov40_02198e74:
	.space 0x4
data_ov40_02198e78:
	.space 0x4
data_ov40_02198e7c:
	.space 0x4
data_ov40_02198e80:
	.space 0x4
data_ov40_02198e84:
	.space 0x4
data_ov40_02198e88:
	.space 0x4
data_ov40_02198e8c:
	.space 0x4
data_ov40_02198e90:
	.space 0x4
data_ov40_02198e94:
	.space 0x4
data_ov40_02198e98:
	.space 0x4
data_ov40_02198e9c:
	.space 0x4
data_ov40_02198ea0:
	.space 0x4
data_ov40_02198ea4:
	.space 0x4
data_ov40_02198ea8:
	.space 0x4
data_ov40_02198eac:
	.space 0x4
data_ov40_02198eb0:
	.space 0x4
data_ov40_02198eb4:
	.space 0x4
data_ov40_02198eb8:
	.space 0x4
data_ov40_02198ebc:
	.space 0x4
data_ov40_02198ec0:
	.space 0x4
data_ov40_02198ec4:
	.space 0x4
data_ov40_02198ec8:
	.space 0x4
data_ov40_02198ecc:
	.space 0x4
data_ov40_02198ed0:
	.space 0x4
data_ov40_02198ed4:
	.space 0x4
data_ov40_02198ed8:
	.space 0x4
data_ov40_02198edc:
	.space 0x4
data_ov40_02198ee0:
	.space 0x4
data_ov40_02198ee4:
	.space 0x4
data_ov40_02198ee8:
	.space 0x4
data_ov40_02198eec:
	.space 0x4
data_ov40_02198ef0:
	.space 0x4
data_ov40_02198ef4:
	.space 0x4
data_ov40_02198ef8:
	.space 0x4
data_ov40_02198efc:
	.space 0x4
data_ov40_02198f00:
	.space 0x4
data_ov40_02198f04:
	.space 0x4
data_ov40_02198f08:
	.space 0x4
data_ov40_02198f0c:
	.space 0x4
data_ov40_02198f10:
	.space 0x4
data_ov40_02198f14:
	.space 0x4
data_ov40_02198f18:
	.space 0x4
data_ov40_02198f1c:
	.space 0x4
data_ov40_02198f20:
	.space 0x4
data_ov40_02198f24:
	.space 0x4
data_ov40_02198f28:
	.space 0x4
data_ov40_02198f2c:
	.space 0x4
data_ov40_02198f30:
	.space 0x4
data_ov40_02198f34:
	.space 0x4
data_ov40_02198f38:
	.space 0x4
data_ov40_02198f3c:
	.space 0x4
data_ov40_02198f40:
	.space 0x4
data_ov40_02198f44:
	.space 0x4
data_ov40_02198f48:
	.space 0x4
data_ov40_02198f4c:
	.space 0x4
data_ov40_02198f50:
	.space 0x4
data_ov40_02198f54:
	.space 0x4
data_ov40_02198f58:
	.space 0x4
data_ov40_02198f5c:
	.space 0x4
data_ov40_02198f60:
	.space 0x4
data_ov40_02198f64:
	.space 0x4
data_ov40_02198f68:
	.space 0x4
data_ov40_02198f6c:
	.space 0x4
data_ov40_02198f70:
	.space 0x4
data_ov40_02198f74:
	.space 0x4
data_ov40_02198f78:
	.space 0x4
data_ov40_02198f7c:
	.space 0x4
data_ov40_02198f80:
	.space 0x4
data_ov40_02198f84:
	.space 0x4
data_ov40_02198f88:
	.space 0x4
data_ov40_02198f8c:
	.space 0x4
data_ov40_02198f90:
	.space 0x4
data_ov40_02198f94:
	.space 0x4
data_ov40_02198f98:
	.space 0x4
data_ov40_02198f9c:
	.space 0x4
data_ov40_02198fa0:
	.space 0x4
data_ov40_02198fa4:
	.space 0x4
data_ov40_02198fa8:
	.space 0x4
data_ov40_02198fac:
	.space 0x4
data_ov40_02198fb0:
	.space 0x4
data_ov40_02198fb4:
	.space 0x4
data_ov40_02198fb8:
	.space 0x4
data_ov40_02198fbc:
	.space 0x4
data_ov40_02198fc0:
	.space 0x4
data_ov40_02198fc4:
	.space 0x4
data_ov40_02198fc8:
	.space 0x4
data_ov40_02198fcc:
	.space 0x4
data_ov40_02198fd0:
	.space 0x4
data_ov40_02198fd4:
	.space 0x4
data_ov40_02198fd8:
	.space 0x4
data_ov40_02198fdc:
	.space 0x4
data_ov40_02198fe0:
	.space 0x4
data_ov40_02198fe4:
	.space 0x4
data_ov40_02198fe8:
	.space 0x4
data_ov40_02198fec:
	.space 0x4
data_ov40_02198ff0:
	.space 0x4
data_ov40_02198ff4:
	.space 0x4
data_ov40_02198ff8:
	.space 0x4
data_ov40_02198ffc:
	.space 0x4
data_ov40_02199000:
	.space 0x4
data_ov40_02199004:
	.space 0x4
data_ov40_02199008:
	.space 0x4
data_ov40_0219900c:
	.space 0x4
data_ov40_02199010:
	.space 0x4
data_ov40_02199014:
	.space 0x4
data_ov40_02199018:
	.space 0x4
data_ov40_0219901c:
	.space 0x4
data_ov40_02199020:
	.space 0x4
data_ov40_02199024:
	.space 0x4
data_ov40_02199028:
	.space 0x4
data_ov40_0219902c:
	.space 0x4
data_ov40_02199030:
	.space 0x4
data_ov40_02199034:
	.space 0x4
data_ov40_02199038:
	.space 0x4
data_ov40_0219903c:
	.space 0x4
data_ov40_02199040:
	.space 0x4
data_ov40_02199044:
	.space 0x4
data_ov40_02199048:
	.space 0x4
data_ov40_0219904c:
	.space 0x4
data_ov40_02199050:
	.space 0x4
data_ov40_02199054:
	.space 0x4
data_ov40_02199058:
	.space 0x4
data_ov40_0219905c:
	.space 0x4
data_ov40_02199060:
	.space 0x4
data_ov40_02199064:
	.space 0x4
data_ov40_02199068:
	.space 0x4
data_ov40_0219906c:
	.space 0x4
data_ov40_02199070:
	.space 0x4
data_ov40_02199074:
	.space 0x4
data_ov40_02199078:
	.space 0x4
data_ov40_0219907c:
	.space 0x4
data_ov40_02199080:
	.space 0x4
data_ov40_02199084:
	.space 0x4
data_ov40_02199088:
	.space 0x4
data_ov40_0219908c:
	.space 0x4
data_ov40_02199090:
	.space 0x4
data_ov40_02199094:
	.space 0x4
data_ov40_02199098:
	.space 0x4
data_ov40_0219909c:
	.space 0x4
data_ov40_021990a0:
	.space 0x4
data_ov40_021990a4:
	.space 0x4
data_ov40_021990a8:
	.space 0x4
data_ov40_021990ac:
	.space 0x4
data_ov40_021990b0:
	.space 0x4
data_ov40_021990b4:
	.space 0x4
data_ov40_021990b8:
	.space 0x4
data_ov40_021990bc:
	.space 0x4
data_ov40_021990c0:
	.space 0x4
data_ov40_021990c4:
	.space 0x4
data_ov40_021990c8:
	.space 0x4
data_ov40_021990cc:
	.space 0x4
data_ov40_021990d0:
	.space 0x4
data_ov40_021990d4:
	.space 0x4
data_ov40_021990d8:
	.space 0x4
data_ov40_021990dc:
	.space 0x4
data_ov40_021990e0:
	.space 0x4
data_ov40_021990e4:
	.space 0x4
data_ov40_021990e8:
	.space 0x4
data_ov40_021990ec:
	.space 0x4
data_ov40_021990f0:
	.space 0x4
data_ov40_021990f4:
	.space 0x4
data_ov40_021990f8:
	.space 0x4
data_ov40_021990fc:
	.space 0x4
data_ov40_02199100:
	.space 0x4
data_ov40_02199104:
	.space 0x4
data_ov40_02199108:
	.space 0x4
data_ov40_0219910c:
	.space 0x4
data_ov40_02199110:
	.space 0x4
data_ov40_02199114:
	.space 0x4
data_ov40_02199118:
	.space 0x4
data_ov40_0219911c:
	.space 0x4
data_ov40_02199120:
	.space 0x4
data_ov40_02199124:
	.space 0x4
data_ov40_02199128:
	.space 0x4
data_ov40_0219912c:
	.space 0x4
data_ov40_02199130:
	.space 0x4
data_ov40_02199134:
	.space 0x4
data_ov40_02199138:
	.space 0x4
data_ov40_0219913c:
	.space 0x4
data_ov40_02199140:
	.space 0x4
data_ov40_02199144:
	.space 0x4
data_ov40_02199148:
	.space 0x4
data_ov40_0219914c:
	.space 0x4
data_ov40_02199150:
	.space 0x4
data_ov40_02199154:
	.space 0x4
data_ov40_02199158:
	.space 0x4
data_ov40_0219915c:
	.space 0x4
data_ov40_02199160:
	.space 0x4
data_ov40_02199164:
	.space 0x4
data_ov40_02199168:
	.space 0x4
data_ov40_0219916c:
	.space 0x4
data_ov40_02199170:
	.space 0x4
data_ov40_02199174:
	.space 0x4
data_ov40_02199178:
	.space 0x4
data_ov40_0219917c:
	.space 0x4
data_ov40_02199180:
	.space 0x4
data_ov40_02199184:
	.space 0x4
data_ov40_02199188:
	.space 0x4
data_ov40_0219918c:
	.space 0x4
data_ov40_02199190:
	.space 0x4
data_ov40_02199194:
	.space 0x4
data_ov40_02199198:
	.space 0x4
data_ov40_0219919c:
	.space 0x4
data_ov40_021991a0:
	.space 0x4
data_ov40_021991a4:
	.space 0x4
data_ov40_021991a8:
	.space 0x4
data_ov40_021991ac:
	.space 0x4
data_ov40_021991b0:
	.space 0x4
data_ov40_021991b4:
	.space 0x4
data_ov40_021991b8:
	.space 0x4
data_ov40_021991bc:
	.space 0x4
data_ov40_021991c0:
	.space 0x4
data_ov40_021991c4:
	.space 0x4
data_ov40_021991c8:
	.space 0x4
data_ov40_021991cc:
	.space 0x4
data_ov40_021991d0:
	.space 0x4
data_ov40_021991d4:
	.space 0x4
data_ov40_021991d8:
	.space 0x4
data_ov40_021991dc:
	.space 0x4
data_ov40_021991e0:
	.space 0x4
data_ov40_021991e4:
	.space 0x4
data_ov40_021991e8:
	.space 0x4
data_ov40_021991ec:
	.space 0x4
data_ov40_021991f0:
	.space 0x4
data_ov40_021991f4:
	.space 0x4
data_ov40_021991f8:
	.space 0x4
data_ov40_021991fc:
	.space 0x4
data_ov40_02199200:
	.space 0x4
data_ov40_02199204:
	.space 0x4
data_ov40_02199208:
	.space 0x4
data_ov40_0219920c:
	.space 0x4
data_ov40_02199210:
	.space 0x4
data_ov40_02199214:
	.space 0x4
data_ov40_02199218:
	.space 0x4
data_ov40_0219921c:
	.space 0x4
data_ov40_02199220:
	.space 0x4
data_ov40_02199224:
	.space 0x4
data_ov40_02199228:
	.space 0x4
data_ov40_0219922c:
	.space 0x4
data_ov40_02199230:
	.space 0x4
data_ov40_02199234:
	.space 0x4
data_ov40_02199238:
	.space 0x4
data_ov40_0219923c:
	.space 0x4
data_ov40_02199240:
	.space 0x4
data_ov40_02199244:
	.space 0x4
data_ov40_02199248:
	.space 0x4
data_ov40_0219924c:
	.space 0x4
data_ov40_02199250:
	.space 0x4
data_ov40_02199254:
	.space 0x4
data_ov40_02199258:
	.space 0x4
data_ov40_0219925c:
	.space 0x4
data_ov40_02199260:
	.space 0x4
data_ov40_02199264:
	.space 0x4
data_ov40_02199268:
	.space 0x4
data_ov40_0219926c:
	.space 0x4
data_ov40_02199270:
	.space 0x4
data_ov40_02199274:
	.space 0x4
data_ov40_02199278:
	.space 0x4
data_ov40_0219927c:
	.space 0x4
data_ov40_02199280:
	.space 0x4
data_ov40_02199284:
	.space 0x4
data_ov40_02199288:
	.space 0x4
data_ov40_0219928c:
	.space 0x4
data_ov40_02199290:
	.space 0x4
data_ov40_02199294:
	.space 0x4
data_ov40_02199298:
	.space 0x4
data_ov40_0219929c:
	.space 0x4
data_ov40_021992a0:
	.space 0x4
data_ov40_021992a4:
	.space 0x4
data_ov40_021992a8:
	.space 0x4
data_ov40_021992ac:
	.space 0x4
data_ov40_021992b0:
	.space 0x4
data_ov40_021992b4:
	.space 0x4
data_ov40_021992b8:
	.space 0x4
data_ov40_021992bc:
	.space 0x4
data_ov40_021992c0:
	.space 0x4
data_ov40_021992c4:
	.space 0x4
data_ov40_021992c8:
	.space 0x4
data_ov40_021992cc:
	.space 0x4
data_ov40_021992d0:
	.space 0x4
data_ov40_021992d4:
	.space 0x4
data_ov40_021992d8:
	.space 0x4
data_ov40_021992dc:
	.space 0x4
data_ov40_021992e0:
	.space 0x4
data_ov40_021992e4:
	.space 0x4
data_ov40_021992e8:
	.space 0x4
data_ov40_021992ec:
	.space 0x4
data_ov40_021992f0:
	.space 0x4
data_ov40_021992f4:
	.space 0x4
data_ov40_021992f8:
	.space 0x4
data_ov40_021992fc:
	.space 0x4
data_ov40_02199300:
	.space 0x4
data_ov40_02199304:
	.space 0x4
data_ov40_02199308:
	.space 0x4
data_ov40_0219930c:
	.space 0x4
data_ov40_02199310:
	.space 0x4
data_ov40_02199314:
	.space 0x4
data_ov40_02199318:
	.space 0x4
data_ov40_0219931c:
	.space 0x4
data_ov40_02199320:
	.space 0x4
data_ov40_02199324:
	.space 0x4
data_ov40_02199328:
	.space 0x4
data_ov40_0219932c:
	.space 0x4
data_ov40_02199330:
	.space 0x4
data_ov40_02199334:
	.space 0x4
data_ov40_02199338:
	.space 0x4
data_ov40_0219933c:
	.space 0x4
data_ov40_02199340:
	.space 0x4
data_ov40_02199344:
	.space 0x4
data_ov40_02199348:
	.space 0x4
data_ov40_0219934c:
	.space 0x4
data_ov40_02199350:
	.space 0x4
data_ov40_02199354:
	.space 0x4
data_ov40_02199358:
	.space 0x4
data_ov40_0219935c:
	.space 0x4
data_ov40_02199360:
	.space 0x4
data_ov40_02199364:
	.space 0x4
data_ov40_02199368:
	.space 0x4
data_ov40_0219936c:
	.space 0x4
data_ov40_02199370:
	.space 0x4
data_ov40_02199374:
	.space 0x4
data_ov40_02199378:
	.space 0x4
data_ov40_0219937c:
	.space 0x4
data_ov40_02199380:
	.space 0x4
data_ov40_02199384:
	.space 0x4
data_ov40_02199388:
	.space 0x4
data_ov40_0219938c:
	.space 0x4
data_ov40_02199390:
	.space 0x4
data_ov40_02199394:
	.space 0x4
data_ov40_02199398:
	.space 0x4
data_ov40_0219939c:
	.space 0x4
data_ov40_021993a0:
	.space 0x4
data_ov40_021993a4:
	.space 0x4
data_ov40_021993a8:
	.space 0x4
data_ov40_021993ac:
	.space 0x4
data_ov40_021993b0:
	.space 0x4
data_ov40_021993b4:
	.space 0x4
data_ov40_021993b8:
	.space 0x4
data_ov40_021993bc:
	.space 0x4
data_ov40_021993c0:
	.space 0x4
data_ov40_021993c4:
	.space 0x4
data_ov40_021993c8:
	.space 0x4
data_ov40_021993cc:
	.space 0x4
data_ov40_021993d0:
	.space 0x4
data_ov40_021993d4:
	.space 0x4
data_ov40_021993d8:
	.space 0x4
data_ov40_021993dc:
	.space 0x4
data_ov40_021993e0:
	.space 0x4
data_ov40_021993e4:
	.space 0x4
data_ov40_021993e8:
	.space 0x4
data_ov40_021993ec:
	.space 0x4
data_ov40_021993f0:
	.space 0x4
data_ov40_021993f4:
	.space 0x4
data_ov40_021993f8:
	.space 0x4
data_ov40_021993fc:
	.space 0x4
data_ov40_02199400:
	.space 0x4
data_ov40_02199404:
	.space 0x4
data_ov40_02199408:
	.space 0x4
data_ov40_0219940c:
	.space 0x4
data_ov40_02199410:
	.space 0x4
data_ov40_02199414:
	.space 0x4
data_ov40_02199418:
	.space 0x4
data_ov40_0219941c:
	.space 0x4
data_ov40_02199420:
	.space 0x4
data_ov40_02199424:
	.space 0x4
data_ov40_02199428:
	.space 0x4
data_ov40_0219942c:
	.space 0x4
data_ov40_02199430:
	.space 0x4
data_ov40_02199434:
	.space 0x4
data_ov40_02199438:
	.space 0x4
data_ov40_0219943c:
	.space 0x4
data_ov40_02199440:
	.space 0x4
data_ov40_02199444:
	.space 0x4
data_ov40_02199448:
	.space 0x4
data_ov40_0219944c:
	.space 0x4
data_ov40_02199450:
	.space 0x4
data_ov40_02199454:
	.space 0x4
data_ov40_02199458:
	.space 0x4
data_ov40_0219945c:
	.space 0x4
data_ov40_02199460:
	.space 0x4
data_ov40_02199464:
	.space 0x4
data_ov40_02199468:
	.space 0x4
data_ov40_0219946c:
	.space 0x4
data_ov40_02199470:
	.space 0x4
data_ov40_02199474:
	.space 0x4
data_ov40_02199478:
	.space 0x4
data_ov40_0219947c:
	.space 0x4
data_ov40_02199480:
	.space 0x4
data_ov40_02199484:
	.space 0x4
data_ov40_02199488:
	.space 0x4
data_ov40_0219948c:
	.space 0x4
data_ov40_02199490:
	.space 0x4
data_ov40_02199494:
	.space 0x4
data_ov40_02199498:
	.space 0x4
data_ov40_0219949c:
	.space 0x4
data_ov40_021994a0:
	.space 0x4
data_ov40_021994a4:
	.space 0x4
data_ov40_021994a8:
	.space 0x4
data_ov40_021994ac:
	.space 0x4
data_ov40_021994b0:
	.space 0x4
data_ov40_021994b4:
	.space 0x4
data_ov40_021994b8:
	.space 0x4
data_ov40_021994bc:
	.space 0x4
data_ov40_021994c0:
	.space 0x4
data_ov40_021994c4:
	.space 0x4
data_ov40_021994c8:
	.space 0x4
data_ov40_021994cc:
	.space 0x4
data_ov40_021994d0:
	.space 0x4
data_ov40_021994d4:
	.space 0x4
data_ov40_021994d8:
	.space 0x4
data_ov40_021994dc:
	.space 0x4
data_ov40_021994e0:
	.space 0x4
data_ov40_021994e4:
	.space 0x4
data_ov40_021994e8:
	.space 0x4
data_ov40_021994ec:
	.space 0x4
data_ov40_021994f0:
	.space 0x4
data_ov40_021994f4:
	.space 0x4
data_ov40_021994f8:
	.space 0x4
data_ov40_021994fc:
	.space 0x4
data_ov40_02199500:
	.space 0x4
data_ov40_02199504:
	.space 0x4
data_ov40_02199508:
	.space 0x4
data_ov40_0219950c:
	.space 0x4
data_ov40_02199510:
	.space 0x4
data_ov40_02199514:
	.space 0x4
data_ov40_02199518:
	.space 0x4
data_ov40_0219951c:
	.space 0x4
data_ov40_02199520:
	.space 0x4
data_ov40_02199524:
	.space 0x4
data_ov40_02199528:
	.space 0x4
data_ov40_0219952c:
	.space 0x4
data_ov40_02199530:
	.space 0x4
data_ov40_02199534:
	.space 0x4
data_ov40_02199538:
	.space 0x4
data_ov40_0219953c:
	.space 0x4
data_ov40_02199540:
	.space 0x4
data_ov40_02199544:
	.space 0x4
data_ov40_02199548:
	.space 0x4
data_ov40_0219954c:
	.space 0x4
data_ov40_02199550:
	.space 0x4
data_ov40_02199554:
	.space 0x4
data_ov40_02199558:
	.space 0x4
data_ov40_0219955c:
	.space 0x4
data_ov40_02199560:
	.space 0x4
data_ov40_02199564:
	.space 0x4
data_ov40_02199568:
	.space 0x4
data_ov40_0219956c:
	.space 0x4
data_ov40_02199570:
	.space 0x4
data_ov40_02199574:
	.space 0x4
data_ov40_02199578:
	.space 0x4
data_ov40_0219957c:
	.space 0x4
data_ov40_02199580:
	.space 0x4
data_ov40_02199584:
	.space 0x4
data_ov40_02199588:
	.space 0x4
data_ov40_0219958c:
	.space 0x4
data_ov40_02199590:
	.space 0x4
data_ov40_02199594:
	.space 0x4
data_ov40_02199598:
	.space 0x4
data_ov40_0219959c:
	.space 0x4
data_ov40_021995a0:
	.space 0x4
data_ov40_021995a4:
	.space 0x4
data_ov40_021995a8:
	.space 0x4
data_ov40_021995ac:
	.space 0x4
data_ov40_021995b0:
	.space 0x4
data_ov40_021995b4:
	.space 0x4
data_ov40_021995b8:
	.space 0x4
data_ov40_021995bc:
	.space 0x4
data_ov40_021995c0:
	.space 0x4
data_ov40_021995c4:
	.space 0x4
data_ov40_021995c8:
	.space 0x4
data_ov40_021995cc:
	.space 0x4
data_ov40_021995d0:
	.space 0x4
data_ov40_021995d4:
	.space 0x4
data_ov40_021995d8:
	.space 0x4
data_ov40_021995dc:
	.space 0x4
data_ov40_021995e0:
	.space 0x4
data_ov40_021995e4:
	.space 0x4
data_ov40_021995e8:
	.space 0x4
data_ov40_021995ec:
	.space 0x4
data_ov40_021995f0:
	.space 0x4
data_ov40_021995f4:
	.space 0x4
data_ov40_021995f8:
	.space 0x4
data_ov40_021995fc:
	.space 0x4
data_ov40_02199600:
	.space 0x4
data_ov40_02199604:
	.space 0x4
data_ov40_02199608:
	.space 0x4
data_ov40_0219960c:
	.space 0x4
data_ov40_02199610:
	.space 0x4
data_ov40_02199614:
	.space 0x4
data_ov40_02199618:
	.space 0x4
data_ov40_0219961c:
	.space 0x4
data_ov40_02199620:
	.space 0x4
data_ov40_02199624:
	.space 0x4
data_ov40_02199628:
	.space 0x4
data_ov40_0219962c:
	.space 0x4
data_ov40_02199630:
	.space 0x4
data_ov40_02199634:
	.space 0x4
data_ov40_02199638:
	.space 0x4
data_ov40_0219963c:
	.space 0x4
data_ov40_02199640:
	.space 0x4
data_ov40_02199644:
	.space 0x4
data_ov40_02199648:
	.space 0x4
data_ov40_0219964c:
	.space 0x4
data_ov40_02199650:
	.space 0x4
data_ov40_02199654:
	.space 0x4
data_ov40_02199658:
	.space 0x4
data_ov40_0219965c:
	.space 0x4
data_ov40_02199660:
	.space 0x4
data_ov40_02199664:
	.space 0x4
data_ov40_02199668:
	.space 0x4
data_ov40_0219966c:
	.space 0x4
data_ov40_02199670:
	.space 0x4
data_ov40_02199674:
	.space 0x4
data_ov40_02199678:
	.space 0x4
data_ov40_0219967c:
	.space 0x4
data_ov40_02199680:
	.space 0x4
data_ov40_02199684:
	.space 0x4
data_ov40_02199688:
	.space 0x4
data_ov40_0219968c:
	.space 0x4
data_ov40_02199690:
	.space 0x4
data_ov40_02199694:
	.space 0x4
data_ov40_02199698:
	.space 0x4
data_ov40_0219969c:
	.space 0x4
data_ov40_021996a0:
	.space 0x4
data_ov40_021996a4:
	.space 0x4
data_ov40_021996a8:
	.space 0x4
data_ov40_021996ac:
	.space 0x4
data_ov40_021996b0:
	.space 0x4
data_ov40_021996b4:
	.space 0x4
data_ov40_021996b8:
	.space 0x4
data_ov40_021996bc:
	.space 0x4
data_ov40_021996c0:
	.space 0x4
data_ov40_021996c4:
	.space 0x4
data_ov40_021996c8:
	.space 0x4
data_ov40_021996cc:
	.space 0x4
data_ov40_021996d0:
	.space 0x4
data_ov40_021996d4:
	.space 0x4
data_ov40_021996d8:
	.space 0x4
data_ov40_021996dc:
	.space 0x4
data_ov40_021996e0:
	.space 0x4
data_ov40_021996e4:
	.space 0x4
data_ov40_021996e8:
	.space 0x4
data_ov40_021996ec:
	.space 0x4
data_ov40_021996f0:
	.space 0x4
data_ov40_021996f4:
	.space 0x4
data_ov40_021996f8:
	.space 0x4
data_ov40_021996fc:
	.space 0x4
data_ov40_02199700:
	.space 0x4
data_ov40_02199704:
	.space 0x4
data_ov40_02199708:
	.space 0x4
data_ov40_0219970c:
	.space 0x4
data_ov40_02199710:
	.space 0x4
data_ov40_02199714:
	.space 0x4
data_ov40_02199718:
	.space 0x4
data_ov40_0219971c:
	.space 0x4
data_ov40_02199720:
	.space 0x4
data_ov40_02199724:
	.space 0x4
data_ov40_02199728:
	.space 0x4
data_ov40_0219972c:
	.space 0x4
data_ov40_02199730:
	.space 0x4
data_ov40_02199734:
	.space 0x4
data_ov40_02199738:
	.space 0x4
data_ov40_0219973c:
	.space 0x4
data_ov40_02199740:
	.space 0x4
data_ov40_02199744:
	.space 0x4
data_ov40_02199748:
	.space 0x4
data_ov40_0219974c:
	.space 0x4
data_ov40_02199750:
	.space 0x4
data_ov40_02199754:
	.space 0x4
data_ov40_02199758:
	.space 0x4
data_ov40_0219975c:
	.space 0x4
data_ov40_02199760:
	.space 0x4
data_ov40_02199764:
	.space 0x4
data_ov40_02199768:
	.space 0x4
data_ov40_0219976c:
	.space 0x4
data_ov40_02199770:
	.space 0x4
data_ov40_02199774:
	.space 0x4
data_ov40_02199778:
	.space 0x4
data_ov40_0219977c:
	.space 0x4
data_ov40_02199780:
	.space 0x4
data_ov40_02199784:
	.space 0x4
data_ov40_02199788:
	.space 0x4
data_ov40_0219978c:
	.space 0x4
data_ov40_02199790:
	.space 0x4
data_ov40_02199794:
	.space 0x4
data_ov40_02199798:
	.space 0x4
data_ov40_0219979c:
	.space 0x4
data_ov40_021997a0:
	.space 0x4
data_ov40_021997a4:
	.space 0x4
data_ov40_021997a8:
	.space 0x4
data_ov40_021997ac:
	.space 0x4
data_ov40_021997b0:
	.space 0x4
data_ov40_021997b4:
	.space 0x4
data_ov40_021997b8:
	.space 0x4
data_ov40_021997bc:
	.space 0x4
data_ov40_021997c0:
	.space 0x4
data_ov40_021997c4:
	.space 0x4
data_ov40_021997c8:
	.space 0x4
data_ov40_021997cc:
	.space 0x4
data_ov40_021997d0:
	.space 0x4
data_ov40_021997d4:
	.space 0x4
data_ov40_021997d8:
	.space 0x4
data_ov40_021997dc:
	.space 0x4
data_ov40_021997e0:
	.space 0x4
data_ov40_021997e4:
	.space 0x4
data_ov40_021997e8:
	.space 0x4
data_ov40_021997ec:
	.space 0x4
data_ov40_021997f0:
	.space 0x4
data_ov40_021997f4:
	.space 0x4
data_ov40_021997f8:
	.space 0x4
data_ov40_021997fc:
	.space 0x4
data_ov40_02199800:
	.space 0x4
data_ov40_02199804:
	.space 0x4
data_ov40_02199808:
	.space 0x4
data_ov40_0219980c:
	.space 0x4
data_ov40_02199810:
	.space 0x4
data_ov40_02199814:
	.space 0x4
data_ov40_02199818:
	.space 0x4
data_ov40_0219981c:
	.space 0x4
data_ov40_02199820:
	.space 0x4
data_ov40_02199824:
	.space 0x4
data_ov40_02199828:
	.space 0x4
data_ov40_0219982c:
	.space 0x4
data_ov40_02199830:
	.space 0x4
data_ov40_02199834:
	.space 0x4
data_ov40_02199838:
	.space 0x4
data_ov40_0219983c:
	.space 0x4
data_ov40_02199840:
	.space 0x4
data_ov40_02199844:
	.space 0x4
data_ov40_02199848:
	.space 0x4
data_ov40_0219984c:
	.space 0x4
data_ov40_02199850:
	.space 0x4
data_ov40_02199854:
	.space 0x4
data_ov40_02199858:
	.space 0x4
data_ov40_0219985c:
	.space 0x4
data_ov40_02199860:
	.space 0x4
data_ov40_02199864:
	.space 0x4
data_ov40_02199868:
	.space 0x4
data_ov40_0219986c:
	.space 0x4
data_ov40_02199870:
	.space 0x4
data_ov40_02199874:
	.space 0x4
data_ov40_02199878:
	.space 0x4
data_ov40_0219987c:
	.space 0x4
data_ov40_02199880:
	.space 0x4
data_ov40_02199884:
	.space 0x4
data_ov40_02199888:
	.space 0x4
data_ov40_0219988c:
	.space 0x4
data_ov40_02199890:
	.space 0x4
data_ov40_02199894:
	.space 0x4
data_ov40_02199898:
	.space 0x4
data_ov40_0219989c:
	.space 0x4
data_ov40_021998a0:
	.space 0x4
data_ov40_021998a4:
	.space 0x4
data_ov40_021998a8:
	.space 0x4
data_ov40_021998ac:
	.space 0x4
data_ov40_021998b0:
	.space 0x4
data_ov40_021998b4:
	.space 0x4
data_ov40_021998b8:
	.space 0x4
data_ov40_021998bc:
	.space 0x4
data_ov40_021998c0:
	.space 0x4
data_ov40_021998c4:
	.space 0x4
data_ov40_021998c8:
	.space 0x4
data_ov40_021998cc:
	.space 0x4
data_ov40_021998d0:
	.space 0x4
data_ov40_021998d4:
	.space 0x4
data_ov40_021998d8:
	.space 0x4
data_ov40_021998dc:
	.space 0x4
data_ov40_021998e0:
	.space 0x4
data_ov40_021998e4:
	.space 0x4
data_ov40_021998e8:
	.space 0x4
data_ov40_021998ec:
	.space 0x4
data_ov40_021998f0:
	.space 0x4
data_ov40_021998f4:
	.space 0x4
data_ov40_021998f8:
	.space 0x4
data_ov40_021998fc:
	.space 0x4
data_ov40_02199900:
	.space 0x4
data_ov40_02199904:
	.space 0x4
data_ov40_02199908:
	.space 0x4
data_ov40_0219990c:
	.space 0x4
data_ov40_02199910:
	.space 0x4
data_ov40_02199914:
	.space 0x4
data_ov40_02199918:
	.space 0x4
data_ov40_0219991c:
	.space 0x4
data_ov40_02199920:
	.space 0x4
data_ov40_02199924:
	.space 0x4
data_ov40_02199928:
	.space 0x4
data_ov40_0219992c:
	.space 0x4
data_ov40_02199930:
	.space 0x4
data_ov40_02199934:
	.space 0x4
data_ov40_02199938:
	.space 0x4
data_ov40_0219993c:
	.space 0x4
data_ov40_02199940:
	.space 0x4
data_ov40_02199944:
	.space 0x4
data_ov40_02199948:
	.space 0x4
data_ov40_0219994c:
	.space 0x4
data_ov40_02199950:
	.space 0x4
data_ov40_02199954:
	.space 0x4
data_ov40_02199958:
	.space 0x4
data_ov40_0219995c:
	.space 0x4
data_ov40_02199960:
	.space 0x4
data_ov40_02199964:
	.space 0x4
data_ov40_02199968:
	.space 0x4
data_ov40_0219996c:
	.space 0x4
data_ov40_02199970:
	.space 0x4
data_ov40_02199974:
	.space 0x4
data_ov40_02199978:
	.space 0x4
data_ov40_0219997c:
	.space 0x4
data_ov40_02199980:
	.space 0x4
data_ov40_02199984:
	.space 0x4
data_ov40_02199988:
	.space 0x4
data_ov40_0219998c:
	.space 0x4
data_ov40_02199990:
	.space 0x4
data_ov40_02199994:
	.space 0x4
data_ov40_02199998:
	.space 0x4
data_ov40_0219999c:
	.space 0x4
data_ov40_021999a0:
	.space 0x4
data_ov40_021999a4:
	.space 0x4
data_ov40_021999a8:
	.space 0x4
data_ov40_021999ac:
	.space 0x4
data_ov40_021999b0:
	.space 0x4
data_ov40_021999b4:
	.space 0x4
data_ov40_021999b8:
	.space 0x4
data_ov40_021999bc:
	.space 0x4
data_ov40_021999c0:
	.space 0x4
data_ov40_021999c4:
	.space 0x4
data_ov40_021999c8:
	.space 0x4
data_ov40_021999cc:
	.space 0x4
data_ov40_021999d0:
	.space 0x4
data_ov40_021999d4:
	.space 0x4
data_ov40_021999d8:
	.space 0x4
data_ov40_021999dc:
	.space 0x4
data_ov40_021999e0:
	.space 0x4
data_ov40_021999e4:
	.space 0x4
data_ov40_021999e8:
	.space 0x4
data_ov40_021999ec:
	.space 0x4
data_ov40_021999f0:
	.space 0x4
data_ov40_021999f4:
	.space 0x4
data_ov40_021999f8:
	.space 0x4
data_ov40_021999fc:
	.space 0x4
data_ov40_02199a00:
	.space 0x4
data_ov40_02199a04:
	.space 0x4
data_ov40_02199a08:
	.space 0x4
data_ov40_02199a0c:
	.space 0x4
data_ov40_02199a10:
	.space 0x4
data_ov40_02199a14:
	.space 0x4
data_ov40_02199a18:
	.space 0x4
data_ov40_02199a1c:
	.space 0x4
data_ov40_02199a20:
	.space 0x4
data_ov40_02199a24:
	.space 0x4
data_ov40_02199a28:
	.space 0x4
data_ov40_02199a2c:
	.space 0x4
data_ov40_02199a30:
	.space 0x4
data_ov40_02199a34:
	.space 0x4
data_ov40_02199a38:
	.space 0x4
data_ov40_02199a3c:
	.space 0x4
data_ov40_02199a40:
	.space 0x4
data_ov40_02199a44:
	.space 0x4
data_ov40_02199a48:
	.space 0x4
data_ov40_02199a4c:
	.space 0x4
data_ov40_02199a50:
	.space 0x4
data_ov40_02199a54:
	.space 0x4
data_ov40_02199a58:
	.space 0x4
data_ov40_02199a5c:
	.space 0x4
data_ov40_02199a60:
	.space 0x4
data_ov40_02199a64:
	.space 0x4
data_ov40_02199a68:
	.space 0x4
data_ov40_02199a6c:
	.space 0x4
data_ov40_02199a70:
	.space 0x4
data_ov40_02199a74:
	.space 0x4
data_ov40_02199a78:
	.space 0x4
data_ov40_02199a7c:
	.space 0x4
data_ov40_02199a80:
	.space 0x4
data_ov40_02199a84:
	.space 0x4
data_ov40_02199a88:
	.space 0x4
data_ov40_02199a8c:
	.space 0x4
data_ov40_02199a90:
	.space 0x4
data_ov40_02199a94:
	.space 0x4
data_ov40_02199a98:
	.space 0x4
data_ov40_02199a9c:
	.space 0x4
data_ov40_02199aa0:
	.space 0x4
data_ov40_02199aa4:
	.space 0x4
data_ov40_02199aa8:
	.space 0x4
data_ov40_02199aac:
	.space 0x4
data_ov40_02199ab0:
	.space 0x4
data_ov40_02199ab4:
	.space 0x4
data_ov40_02199ab8:
	.space 0x4
data_ov40_02199abc:
	.space 0x4
data_ov40_02199ac0:
	.space 0x4
data_ov40_02199ac4:
	.space 0x4
data_ov40_02199ac8:
	.space 0x4
data_ov40_02199acc:
	.space 0x4
data_ov40_02199ad0:
	.space 0x4
data_ov40_02199ad4:
	.space 0x4
data_ov40_02199ad8:
	.space 0x4
data_ov40_02199adc:
	.space 0x4
data_ov40_02199ae0:
	.space 0x4
data_ov40_02199ae4:
	.space 0x4
data_ov40_02199ae8:
	.space 0x4
data_ov40_02199aec:
	.space 0x4
data_ov40_02199af0:
	.space 0x4
data_ov40_02199af4:
	.space 0x4
data_ov40_02199af8:
	.space 0x4
data_ov40_02199afc:
	.space 0x4
data_ov40_02199b00:
	.space 0x4
data_ov40_02199b04:
	.space 0x4
data_ov40_02199b08:
	.space 0x4
data_ov40_02199b0c:
	.space 0x4
data_ov40_02199b10:
	.space 0x4
data_ov40_02199b14:
	.space 0x4
data_ov40_02199b18:
	.space 0x4
data_ov40_02199b1c:
	.space 0x4
data_ov40_02199b20:
	.space 0x4
data_ov40_02199b24:
	.space 0x4
data_ov40_02199b28:
	.space 0x4
data_ov40_02199b2c:
	.space 0x4
data_ov40_02199b30:
	.space 0x4
data_ov40_02199b34:
	.space 0x4
data_ov40_02199b38:
	.space 0x4
data_ov40_02199b3c:
	.space 0x4
data_ov40_02199b40:
	.space 0x4
data_ov40_02199b44:
	.space 0x4
data_ov40_02199b48:
	.space 0x4
data_ov40_02199b4c:
	.space 0x4
data_ov40_02199b50:
	.space 0x4
data_ov40_02199b54:
	.space 0x4
data_ov40_02199b58:
	.space 0x4
data_ov40_02199b5c:
	.space 0x4
data_ov40_02199b60:
	.space 0x4
data_ov40_02199b64:
	.space 0x4
data_ov40_02199b68:
	.space 0x4
data_ov40_02199b6c:
	.space 0x4
data_ov40_02199b70:
	.space 0x4
data_ov40_02199b74:
	.space 0x4
data_ov40_02199b78:
	.space 0x4
data_ov40_02199b7c:
	.space 0x4
data_ov40_02199b80:
	.space 0x4
data_ov40_02199b84:
	.space 0x4
data_ov40_02199b88:
	.space 0x4
data_ov40_02199b8c:
	.space 0x4
data_ov40_02199b90:
	.space 0x4
data_ov40_02199b94:
	.space 0x4
data_ov40_02199b98:
	.space 0x4
data_ov40_02199b9c:
	.space 0x4
data_ov40_02199ba0:
	.space 0x4
data_ov40_02199ba4:
	.space 0x4
data_ov40_02199ba8:
	.space 0x4
data_ov40_02199bac:
	.space 0x4
data_ov40_02199bb0:
	.space 0x4
data_ov40_02199bb4:
	.space 0x4
data_ov40_02199bb8:
	.space 0x4
data_ov40_02199bbc:
	.space 0x4
data_ov40_02199bc0:
	.space 0x4
data_ov40_02199bc4:
	.space 0x4
data_ov40_02199bc8:
	.space 0x4
data_ov40_02199bcc:
	.space 0x4
data_ov40_02199bd0:
	.space 0x4
data_ov40_02199bd4:
	.space 0x4
data_ov40_02199bd8:
	.space 0x4
data_ov40_02199bdc:
	.space 0x4
data_ov40_02199be0:
	.space 0x4
data_ov40_02199be4:
	.space 0x4
data_ov40_02199be8:
	.space 0x4
data_ov40_02199bec:
	.space 0x4
data_ov40_02199bf0:
	.space 0x4
data_ov40_02199bf4:
	.space 0x4
data_ov40_02199bf8:
	.space 0x4
data_ov40_02199bfc:
	.space 0x4
data_ov40_02199c00:
	.space 0x4
data_ov40_02199c04:
	.space 0x4
data_ov40_02199c08:
	.space 0x4
data_ov40_02199c0c:
	.space 0x4
data_ov40_02199c10:
	.space 0x4
data_ov40_02199c14:
	.space 0x4
data_ov40_02199c18:
	.space 0x4
data_ov40_02199c1c:
	.space 0x4
data_ov40_02199c20:
	.space 0x4
data_ov40_02199c24:
	.space 0x4
data_ov40_02199c28:
	.space 0x4
data_ov40_02199c2c:
	.space 0x4
data_ov40_02199c30:
	.space 0x4
data_ov40_02199c34:
	.space 0x4
data_ov40_02199c38:
	.space 0x4
data_ov40_02199c3c:
	.space 0x4
data_ov40_02199c40:
	.space 0x4
data_ov40_02199c44:
	.space 0x4
data_ov40_02199c48:
	.space 0x4
data_ov40_02199c4c:
	.space 0x4
data_ov40_02199c50:
	.space 0x4
data_ov40_02199c54:
	.space 0x4
data_ov40_02199c58:
	.space 0x4
data_ov40_02199c5c:
	.space 0x4
data_ov40_02199c60:
	.space 0x4
data_ov40_02199c64:
	.space 0x4
data_ov40_02199c68:
	.space 0x4
data_ov40_02199c6c:
	.space 0x4
data_ov40_02199c70:
	.space 0x4
data_ov40_02199c74:
	.space 0x4
data_ov40_02199c78:
	.space 0x4
data_ov40_02199c7c:
	.space 0x4
data_ov40_02199c80:
	.space 0x4
data_ov40_02199c84:
	.space 0x4
data_ov40_02199c88:
	.space 0x4
data_ov40_02199c8c:
	.space 0x4
data_ov40_02199c90:
	.space 0x4
data_ov40_02199c94:
	.space 0x4
data_ov40_02199c98:
	.space 0x4
data_ov40_02199c9c:
	.space 0x4
data_ov40_02199ca0:
	.space 0x4
data_ov40_02199ca4:
	.space 0x4
data_ov40_02199ca8:
	.space 0x4
data_ov40_02199cac:
	.space 0x4
data_ov40_02199cb0:
	.space 0x4
data_ov40_02199cb4:
	.space 0x4
data_ov40_02199cb8:
	.space 0x4
data_ov40_02199cbc:
	.space 0x4
data_ov40_02199cc0:
	.space 0x4
data_ov40_02199cc4:
	.space 0x4
data_ov40_02199cc8:
	.space 0x4
data_ov40_02199ccc:
	.space 0x4
data_ov40_02199cd0:
	.space 0x4
data_ov40_02199cd4:
	.space 0x4
data_ov40_02199cd8:
	.space 0x4
data_ov40_02199cdc:
	.space 0x4
data_ov40_02199ce0:
	.space 0x4
data_ov40_02199ce4:
	.space 0x4
data_ov40_02199ce8:
	.space 0x4
data_ov40_02199cec:
	.space 0x4
data_ov40_02199cf0:
	.space 0x4
data_ov40_02199cf4:
	.space 0x4
data_ov40_02199cf8:
	.space 0x4
data_ov40_02199cfc:
	.space 0x4
data_ov40_02199d00:
	.space 0x4
data_ov40_02199d04:
	.space 0x4
data_ov40_02199d08:
	.space 0x4
data_ov40_02199d0c:
	.space 0x4
data_ov40_02199d10:
	.space 0x4
data_ov40_02199d14:
	.space 0x4
data_ov40_02199d18:
	.space 0x4
data_ov40_02199d1c:
	.space 0x4
data_ov40_02199d20:
	.space 0x4
data_ov40_02199d24:
	.space 0x4
data_ov40_02199d28:
	.space 0x4
data_ov40_02199d2c:
	.space 0x4
data_ov40_02199d30:
	.space 0x4
data_ov40_02199d34:
	.space 0x4
data_ov40_02199d38:
	.space 0x4
data_ov40_02199d3c:
	.space 0x4
data_ov40_02199d40:
	.space 0x4
data_ov40_02199d44:
	.space 0x4
data_ov40_02199d48:
	.space 0x4
data_ov40_02199d4c:
	.space 0x4
data_ov40_02199d50:
	.space 0x4
data_ov40_02199d54:
	.space 0x4
data_ov40_02199d58:
	.space 0x4
data_ov40_02199d5c:
	.space 0x4
data_ov40_02199d60:
	.space 0x4
data_ov40_02199d64:
	.space 0x4
data_ov40_02199d68:
	.space 0x4
data_ov40_02199d6c:
	.space 0x4
data_ov40_02199d70:
	.space 0x4
data_ov40_02199d74:
	.space 0x4
data_ov40_02199d78:
	.space 0x4
data_ov40_02199d7c:
	.space 0x4
data_ov40_02199d80:
	.space 0x4
data_ov40_02199d84:
	.space 0x4
data_ov40_02199d88:
	.space 0x4
data_ov40_02199d8c:
	.space 0x4
data_ov40_02199d90:
	.space 0x4
data_ov40_02199d94:
	.space 0x4
data_ov40_02199d98:
	.space 0x4
data_ov40_02199d9c:
	.space 0x4
data_ov40_02199da0:
	.space 0x4
data_ov40_02199da4:
	.space 0x4
data_ov40_02199da8:
	.space 0x4
data_ov40_02199dac:
	.space 0x4
data_ov40_02199db0:
	.space 0x4
data_ov40_02199db4:
	.space 0x4
data_ov40_02199db8:
	.space 0x4
data_ov40_02199dbc:
	.space 0x4
data_ov40_02199dc0:
	.space 0x4
data_ov40_02199dc4:
	.space 0x4
data_ov40_02199dc8:
	.space 0x4
data_ov40_02199dcc:
	.space 0x4
data_ov40_02199dd0:
	.space 0x4
data_ov40_02199dd4:
	.space 0x4
data_ov40_02199dd8:
	.space 0x4
data_ov40_02199ddc:
	.space 0x4
data_ov40_02199de0:
	.space 0x4
data_ov40_02199de4:
	.space 0x4
data_ov40_02199de8:
	.space 0x4
data_ov40_02199dec:
	.space 0x4
data_ov40_02199df0:
	.space 0x4
data_ov40_02199df4:
	.space 0x4
data_ov40_02199df8:
	.space 0x4
data_ov40_02199dfc:
	.space 0x4
data_ov40_02199e00:
	.space 0x4
data_ov40_02199e04:
	.space 0x4
data_ov40_02199e08:
	.space 0x4
data_ov40_02199e0c:
	.space 0x4
data_ov40_02199e10:
	.space 0x4
data_ov40_02199e14:
	.space 0x4
data_ov40_02199e18:
	.space 0x4
data_ov40_02199e1c:
	.space 0x4
data_ov40_02199e20:
	.space 0x4
data_ov40_02199e24:
	.space 0x4
data_ov40_02199e28:
	.space 0x4
data_ov40_02199e2c:
	.space 0x4
data_ov40_02199e30:
	.space 0x4
data_ov40_02199e34:
	.space 0x4
data_ov40_02199e38:
	.space 0x4
data_ov40_02199e3c:
	.space 0x4
data_ov40_02199e40:
	.space 0x4
data_ov40_02199e44:
	.space 0x4
data_ov40_02199e48:
	.space 0x4
data_ov40_02199e4c:
	.space 0x4
data_ov40_02199e50:
	.space 0x4
data_ov40_02199e54:
	.space 0x4
data_ov40_02199e58:
	.space 0x4
data_ov40_02199e5c:
	.space 0x4
data_ov40_02199e60:
	.space 0x4
data_ov40_02199e64:
	.space 0x4
data_ov40_02199e68:
	.space 0x4
data_ov40_02199e6c:
	.space 0x4
data_ov40_02199e70:
	.space 0x4
data_ov40_02199e74:
	.space 0x4
data_ov40_02199e78:
	.space 0x4
data_ov40_02199e7c:
	.space 0x4
data_ov40_02199e80:
	.space 0x4
data_ov40_02199e84:
	.space 0x4
data_ov40_02199e88:
	.space 0x4
data_ov40_02199e8c:
	.space 0x4
data_ov40_02199e90:
	.space 0x4
data_ov40_02199e94:
	.space 0x4
data_ov40_02199e98:
	.space 0x4
data_ov40_02199e9c:
	.space 0x4
data_ov40_02199ea0:
	.space 0x4
data_ov40_02199ea4:
	.space 0x4
data_ov40_02199ea8:
	.space 0x4
data_ov40_02199eac:
	.space 0x4
data_ov40_02199eb0:
	.space 0x4
data_ov40_02199eb4:
	.space 0x4
data_ov40_02199eb8:
	.space 0x4
data_ov40_02199ebc:
	.space 0x4
data_ov40_02199ec0:
	.space 0x4
data_ov40_02199ec4:
	.space 0x4
data_ov40_02199ec8:
	.space 0x4
data_ov40_02199ecc:
	.space 0x4
data_ov40_02199ed0:
	.space 0x4
data_ov40_02199ed4:
	.space 0x4
data_ov40_02199ed8:
	.space 0x4
data_ov40_02199edc:
	.space 0x4
data_ov40_02199ee0:
	.space 0x4
data_ov40_02199ee4:
	.space 0x4
data_ov40_02199ee8:
	.space 0x4
data_ov40_02199eec:
	.space 0x4
data_ov40_02199ef0:
	.space 0x4
data_ov40_02199ef4:
	.space 0x4
data_ov40_02199ef8:
	.space 0x4
data_ov40_02199efc:
	.space 0x4
data_ov40_02199f00:
	.space 0x4
data_ov40_02199f04:
	.space 0x4
data_ov40_02199f08:
	.space 0x4
data_ov40_02199f0c:
	.space 0x4
data_ov40_02199f10:
	.space 0x4
data_ov40_02199f14:
	.space 0x4
data_ov40_02199f18:
	.space 0x4
data_ov40_02199f1c:
	.space 0x4
data_ov40_02199f20:
	.space 0x4
data_ov40_02199f24:
	.space 0x4
data_ov40_02199f28:
	.space 0x4
data_ov40_02199f2c:
	.space 0x4
data_ov40_02199f30:
	.space 0x4
data_ov40_02199f34:
	.space 0x4
data_ov40_02199f38:
	.space 0x4
data_ov40_02199f3c:
	.space 0x4
data_ov40_02199f40:
	.space 0x4
data_ov40_02199f44:
	.space 0x4
data_ov40_02199f48:
	.space 0x4
data_ov40_02199f4c:
	.space 0x4
data_ov40_02199f50:
	.space 0x4
data_ov40_02199f54:
	.space 0x4
data_ov40_02199f58:
	.space 0x4
data_ov40_02199f5c:
	.space 0x4
data_ov40_02199f60:
	.space 0x4
data_ov40_02199f64:
	.space 0x4
data_ov40_02199f68:
	.space 0x4
data_ov40_02199f6c:
	.space 0x4
data_ov40_02199f70:
	.space 0x4
data_ov40_02199f74:
	.space 0x4
data_ov40_02199f78:
	.space 0x4
data_ov40_02199f7c:
	.space 0x4
data_ov40_02199f80:
	.space 0x4
data_ov40_02199f84:
	.space 0x4
data_ov40_02199f88:
	.space 0x4
data_ov40_02199f8c:
	.space 0x4
data_ov40_02199f90:
	.space 0x4
data_ov40_02199f94:
	.space 0x4
data_ov40_02199f98:
	.space 0x4
data_ov40_02199f9c:
	.space 0x4
data_ov40_02199fa0:
	.space 0x4
data_ov40_02199fa4:
	.space 0x4
data_ov40_02199fa8:
	.space 0x4
data_ov40_02199fac:
	.space 0x4
data_ov40_02199fb0:
	.space 0x4
data_ov40_02199fb4:
	.space 0x4
data_ov40_02199fb8:
	.space 0x4
data_ov40_02199fbc:
	.space 0x4
data_ov40_02199fc0:
	.space 0x4
data_ov40_02199fc4:
	.space 0x4
data_ov40_02199fc8:
	.space 0x4
data_ov40_02199fcc:
	.space 0x4
data_ov40_02199fd0:
	.space 0x4
data_ov40_02199fd4:
	.space 0x4
data_ov40_02199fd8:
	.space 0x4
data_ov40_02199fdc:
	.space 0x4
data_ov40_02199fe0:
	.space 0x4
data_ov40_02199fe4:
	.space 0x4
data_ov40_02199fe8:
	.space 0x4
data_ov40_02199fec:
	.space 0x4
data_ov40_02199ff0:
	.space 0x4
data_ov40_02199ff4:
	.space 0x4
data_ov40_02199ff8:
	.space 0x4
data_ov40_02199ffc:
	.space 0x4
data_ov40_0219a000:
	.space 0x4
data_ov40_0219a004:
	.space 0x4
data_ov40_0219a008:
	.space 0x4
data_ov40_0219a00c:
	.space 0x4
data_ov40_0219a010:
	.space 0x4
data_ov40_0219a014:
	.space 0x4
data_ov40_0219a018:
	.space 0x4
data_ov40_0219a01c:
	.space 0x4
data_ov40_0219a020:
	.space 0x4
data_ov40_0219a024:
	.space 0x4
data_ov40_0219a028:
	.space 0x4
data_ov40_0219a02c:
	.space 0x4
data_ov40_0219a030:
	.space 0x4
data_ov40_0219a034:
	.space 0x4
data_ov40_0219a038:
	.space 0x4
data_ov40_0219a03c:
	.space 0x4
data_ov40_0219a040:
	.space 0x4
data_ov40_0219a044:
	.space 0x4
data_ov40_0219a048:
	.space 0x4
data_ov40_0219a04c:
	.space 0x4
data_ov40_0219a050:
	.space 0x4
data_ov40_0219a054:
	.space 0x4
data_ov40_0219a058:
	.space 0x4
data_ov40_0219a05c:
	.space 0x4
data_ov40_0219a060:
	.space 0x4
data_ov40_0219a064:
	.space 0x4
data_ov40_0219a068:
	.space 0x4
data_ov40_0219a06c:
	.space 0x4
data_ov40_0219a070:
	.space 0x4
data_ov40_0219a074:
	.space 0x4
data_ov40_0219a078:
	.space 0x4
data_ov40_0219a07c:
	.space 0x4
data_ov40_0219a080:
	.space 0x4
data_ov40_0219a084:
	.space 0x4
data_ov40_0219a088:
	.space 0x4
data_ov40_0219a08c:
	.space 0x4
data_ov40_0219a090:
	.space 0x4
data_ov40_0219a094:
	.space 0x4
data_ov40_0219a098:
	.space 0x4
data_ov40_0219a09c:
	.space 0x4
data_ov40_0219a0a0:
	.space 0x4
data_ov40_0219a0a4:
	.space 0x4
data_ov40_0219a0a8:
	.space 0x4
data_ov40_0219a0ac:
	.space 0x4
data_ov40_0219a0b0:
	.space 0x4
data_ov40_0219a0b4:
	.space 0x4
data_ov40_0219a0b8:
	.space 0x4
data_ov40_0219a0bc:
	.space 0x4
data_ov40_0219a0c0:
	.space 0x4
data_ov40_0219a0c4:
	.space 0x4
data_ov40_0219a0c8:
	.space 0x4
data_ov40_0219a0cc:
	.space 0x4
data_ov40_0219a0d0:
	.space 0x4
data_ov40_0219a0d4:
	.space 0x4
data_ov40_0219a0d8:
	.space 0x4
data_ov40_0219a0dc:
	.space 0x4
data_ov40_0219a0e0:
	.space 0x4
data_ov40_0219a0e4:
	.space 0x4
data_ov40_0219a0e8:
	.space 0x4
data_ov40_0219a0ec:
	.space 0x4
data_ov40_0219a0f0:
	.space 0x4
data_ov40_0219a0f4:
	.space 0x4
data_ov40_0219a0f8:
	.space 0x4
data_ov40_0219a0fc:
	.space 0x4
data_ov40_0219a100:
	.space 0x4
data_ov40_0219a104:
	.space 0x4
data_ov40_0219a108:
	.space 0x4
data_ov40_0219a10c:
	.space 0x4
data_ov40_0219a110:
	.space 0x4
data_ov40_0219a114:
	.space 0x4
data_ov40_0219a118:
	.space 0x4
data_ov40_0219a11c:
	.space 0x4
data_ov40_0219a120:
	.space 0x4
data_ov40_0219a124:
	.space 0x4
data_ov40_0219a128:
	.space 0x4
data_ov40_0219a12c:
	.space 0x4
data_ov40_0219a130:
	.space 0x4
data_ov40_0219a134:
	.space 0x4
data_ov40_0219a138:
	.space 0x4
data_ov40_0219a13c:
	.space 0x4
data_ov40_0219a140:
	.space 0x4
data_ov40_0219a144:
	.space 0x4
data_ov40_0219a148:
	.space 0x4
data_ov40_0219a14c:
	.space 0x4
data_ov40_0219a150:
	.space 0x4
data_ov40_0219a154:
	.space 0x4
data_ov40_0219a158:
	.space 0x4
data_ov40_0219a15c:
	.space 0x4
data_ov40_0219a160:
	.space 0x4
data_ov40_0219a164:
	.space 0x4
data_ov40_0219a168:
	.space 0x4
data_ov40_0219a16c:
	.space 0x4
data_ov40_0219a170:
	.space 0x4
data_ov40_0219a174:
	.space 0x4
data_ov40_0219a178:
	.space 0x4
data_ov40_0219a17c:
	.space 0x4
data_ov40_0219a180:
	.space 0x4
data_ov40_0219a184:
	.space 0x4
data_ov40_0219a188:
	.space 0x4
data_ov40_0219a18c:
	.space 0x4
data_ov40_0219a190:
	.space 0x4
data_ov40_0219a194:
	.space 0x4
data_ov40_0219a198:
	.space 0x4
data_ov40_0219a19c:
	.space 0x4
