    .include "macros/function.inc"
    .include "global.inc"

	.text

	arm_func_start func_ov42_02189560
func_ov42_02189560: ; 0x02189560
	stmdb sp!, {r3, lr}
	bl func_ov42_0218a794
	ldr r0, [r0, #0x48]
	sub r0, r0, #0x5800
	ldmia sp!, {r3, pc}
	arm_func_end func_ov42_02189560

	arm_func_start func_ov42_02189574
func_ov42_02189574: ; 0x02189574
	stmdb sp!, {r3, lr}
	bl func_ov42_0218a794
	ldr r0, [r0, #0x48]
	add r0, r0, #0x800
	ldmia sp!, {r3, pc}
	arm_func_end func_ov42_02189574

	arm_func_start func_ov42_02189588
func_ov42_02189588: ; 0x02189588
	stmdb sp!, {r3, lr}
	bl func_ov42_0218a794
	ldr r0, [r0, #0x50]
	sub r0, r0, #0x9000
	ldmia sp!, {r3, pc}
	arm_func_end func_ov42_02189588

	arm_func_start func_ov42_0218959c
func_ov42_0218959c: ; 0x0218959c
	ldrh r1, [r1, #4]
	cmp r1, #0
	beq _021895bc
	cmp r1, #1
	beq _021895d8
	cmp r1, #2
	beq _021895f8
	b _02189618
_021895bc:
	ldrh r0, [r0, #0x58]
	cmp r0, #0x7d0
	movlo r0, #1
	movhs r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
_021895d8:
	ldrh r1, [r0, #0x58]
	ldr r0, _02189620 ; =0x000006a4
	cmp r1, r0
	movlo r0, #1
	movhs r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
_021895f8:
	ldrh r1, [r0, #0x58]
	ldr r0, _02189624 ; =0x00000514
	cmp r1, r0
	movlo r0, #1
	movhs r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
_02189618:
	mvn r0, #0
	bx lr
	.align 2, 0
	arm_func_end func_ov42_0218959c
_02189620: .word 0x000006a4
_02189624: .word 0x00000514

	arm_func_start func_ov42_02189628
func_ov42_02189628: ; 0x02189628
	bx lr
	arm_func_end func_ov42_02189628

	arm_func_start func_ov42_0218962c
func_ov42_0218962c: ; 0x0218962c
	ldr r0, _02189638 ; =data_ov42_0218cd20
	ldr r0, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov42_0218962c
_02189638: .word data_ov42_0218cd20

	arm_func_start func_ov42_0218963c
func_ov42_0218963c: ; 0x0218963c
	stmdb sp!, {r3, lr}
	ldr r1, _02189664 ; =data_027e0ce0
	mov r0, #0x74
	ldr r1, [r1, #4]
	mov r2, #4
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov42_02189668
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218963c
_02189664: .word data_027e0ce0

	arm_func_start func_ov42_02189668
func_ov42_02189668: ; 0x02189668
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_ov03_020f44d0
	ldr r1, _02189730 ; =data_ov42_0218c868
	add r0, r4, #4
	str r1, [r4]
	blx func_02030274
	ldr r0, _02189734 ; =data_ov42_0218c894
	add r1, r4, #0x10
	str r0, [r4, #4]
	add r2, r4, #0x28
	mvn r0, #0
_02189698:
	str r0, [r1]
	str r0, [r1, #4]
	add r1, r1, #8
	cmp r1, r2
	blo _02189698
	add r3, r4, #0x40
	mvn r0, #0
_021896b4:
	str r0, [r2]
	str r0, [r2, #4]
	add r2, r2, #8
	cmp r2, r3
	blo _021896b4
	add r0, r4, #0x58
	mvn r1, #0
_021896d0:
	str r1, [r3]
	str r1, [r3, #4]
	add r3, r3, #8
	cmp r3, r0
	blo _021896d0
	mov r1, #0
	strh r1, [r4, #0x58]
	strh r1, [r4, #0x5a]
	str r1, [r4, #0x5c]
	str r1, [r4, #0x60]
	strb r1, [r4, #0x64]
	strb r1, [r4, #0x65]
	ldr r0, _02189738 ; =data_ov42_0218cd20
	str r1, [r4, #0x6c]
	str r4, [r0]
	ldr r0, _0218973c ; =func_ov42_0218a5e4
	strh r1, [r4, #0xc]
	bl func_ov14_0211fd80
	mov r0, r4
	bl func_ov42_02189628
	mov r0, r4
	bl func_ov42_021897dc
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_02189668
_02189730: .word data_ov42_0218c868
_02189734: .word data_ov42_0218c894
_02189738: .word data_ov42_0218cd20
_0218973c: .word func_ov42_0218a5e4

	arm_func_start func_ov42_02189740
func_ov42_02189740: ; 0x02189740
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_02030294
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_02189740

	arm_func_start func_ov42_02189754
func_ov42_02189754: ; 0x02189754
	stmdb sp!, {r4, lr}
	ldr r1, _0218978c ; =data_ov42_0218c868
	mov r4, r0
	str r1, [r4]
	bl func_ov14_0211fd90
	ldr r1, _02189790 ; =data_ov42_0218cd20
	mov r2, #0
	add r0, r4, #4
	str r2, [r1]
	blx func_02030294
	mov r0, r4
	blx func_ov03_020f44ec
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_02189754
_0218978c: .word data_ov42_0218c868
_02189790: .word data_ov42_0218cd20

	arm_func_start func_ov42_02189794
func_ov42_02189794: ; 0x02189794
	stmdb sp!, {r4, lr}
	ldr r1, _021897d4 ; =data_ov42_0218c868
	mov r4, r0
	str r1, [r4]
	bl func_ov14_0211fd90
	ldr r1, _021897d8 ; =data_ov42_0218cd20
	mov r2, #0
	add r0, r4, #4
	str r2, [r1]
	blx func_02030294
	mov r0, r4
	blx func_ov03_020f44ec
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_02189794
_021897d4: .word data_ov42_0218c868
_021897d8: .word data_ov42_0218cd20

	arm_func_start func_ov42_021897dc
func_ov42_021897dc: ; 0x021897dc
	stmdb sp!, {r3, lr}
	mov r3, #0
	strh r3, [r0, #0x58]
	ldr r1, _02189828 ; =0x00000834
	strh r3, [r0, #0x5a]
	str r1, [r0, #0x5c]
	str r3, [r0, #0x60]
	mov r2, r3
_021897fc:
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #0x67]
	cmp r3, #5
	blt _021897fc
	bl func_ov42_0218a734
	ldr r1, _0218982c ; =0x000006a4
	cmp r0, r1
	ldrlo r0, _02189830 ; =data_ov09_0211f5b4
	strloh r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_021897dc
_02189828: .word 0x00000834
_0218982c: .word 0x000006a4
_02189830: .word data_ov09_0211f5b4

	arm_func_start func_ov42_02189834
func_ov42_02189834: ; 0x02189834
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x80
	mov r7, r0
	bl func_ov42_021897dc
	mov r2, #0
	mov r0, #0xff
	add r1, sp, #0x64
	str r2, [sp, #0x64]
	strb r0, [sp, #0x68]
	strh r2, [sp, #0x78]
	strh r2, [sp, #0x7a]
	mov r3, r2
_02189864:
	add r0, r1, r2, lsl #1
	add r2, r2, #1
	strh r3, [r0, #0x18]
	cmp r2, #2
	blo _02189864
	mov r0, #0xff
	add r2, sp, #0x48
	str r3, [sp, #0x48]
	strb r0, [sp, #0x4c]
	strh r3, [sp, #0x5c]
	strh r3, [sp, #0x5e]
	mov r1, #0
_02189894:
	add r0, r2, r3, lsl #1
	add r3, r3, #1
	strh r1, [r0, #0x18]
	cmp r3, #2
	blo _02189894
	ldr r0, _02189af4 ; =data_027e0e60
	add r2, sp, #0x48
	ldr r0, [r0]
	mov r1, #0x42
	bl func_ov00_02083918
	cmp r0, #0
	beq _021898e0
	ldr r0, _02189af8 ; =data_027e0f64
	mov r2, #0
	ldr r0, [r0]
	add r1, sp, #0x48
	ldr r0, [r0, #4]
	mov r3, r2
	bl func_ov00_02087400
_021898e0:
	ldr r0, _02189af4 ; =data_027e0e60
	add r2, sp, #0x64
	ldr r0, [r0]
	mov r1, #0x43
	bl func_ov00_02083918
	cmp r0, #0
	beq _02189918
	ldr r0, _02189af8 ; =data_027e0f64
	mov r2, #0
	ldr r0, [r0]
	add r1, sp, #0x64
	ldr r0, [r0, #8]
	mov r3, r2
	bl func_ov00_02087400
_02189918:
	ldr r0, _02189afc ; =data_027e0fb4
	mov r1, #5
	ldr r0, [r0]
	blx func_ov00_020ae3d0
	ldr r1, _02189b00 ; =data_027e0fc8
	mov r0, r7
	ldr r4, [r1]
	bl func_ov42_02189560
	mov r5, r0
	mov r0, r7
	bl func_ov42_02189574
	add r0, r5, r0
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #0x1
	mov r1, #0
	mov r0, r7
	str r2, [sp, #0x3c]
	str r1, [sp, #0x40]
	bl func_ov42_02189588
	add r0, r0, #0xa000
	str r0, [sp, #0x44]
	mov r0, #0
	strb r0, [r7, #0x64]
	bl func_020385b8
	bl func_ov00_020ab6c8
	mov r0, r4
	add r1, sp, #0x3c
	mov r2, #0x800
	bl func_ov00_020bcf50
	mov r0, #0
	strb r0, [r7, #0x66]
	add r0, sp, #0x10
	bl func_ov00_020c1500
	mvn r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, sp, #0x10
	bl func_ov00_020c3348
	ldr r0, _02189b04 ; =data_ov42_0218c6f4
	add r4, sp, #4
	ldmia r0!, {r0, r1, r2}
	stmia r4!, {r0, r1, r2}
	ldr sl, _02189b08 ; =0x4d544748
	ldr r8, _02189b0c ; =data_027e0fe8
	mov r5, #0
	add r6, r7, #0x10
	add sb, sp, #0x10
_021899d4:
	ldr r0, [sp, #0xc]
	mov r1, sl
	sub r0, r0, #0x1000
	str r0, [sp, #0xc]
	str r6, [sp]
	ldr r0, [r8]
	mov r2, r4
	mov r3, sb
	bl func_ov00_020c4048
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #8
	blt _021899d4
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r1, #0x1000
	add r0, r0, #0x3000
	ldr sl, _02189b10 ; =0x4d544752
	ldr r6, _02189b0c ; =data_027e0fe8
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	add r5, r7, #0x28
	mov r4, #0
	add sb, sp, #4
	add r8, sp, #0x10
_02189a38:
	ldr r0, [sp, #0xc]
	mov r1, sl
	sub r0, r0, #0x1000
	str r0, [sp, #0xc]
	str r5, [sp]
	ldr r0, [r6]
	mov r2, sb
	mov r3, r8
	bl func_ov00_020c4048
	add r4, r4, #1
	cmp r4, #3
	add r5, r5, #8
	blt _02189a38
	mov r2, #0
	mvn r1, #0
_02189a74:
	add r0, r7, r2, lsl #3
	str r1, [r0, #0x40]
	add r2, r2, #1
	str r1, [r0, #0x44]
	cmp r2, #3
	blt _02189a74
	ldr r0, [r7, #0x6c]
	mov r2, #0
	cmp r0, #1
	moveq r0, #5
	movne r0, #0x78
	str r0, [r7, #0x60]
	ldr r0, _02189b14 ; =data_027e0fb8
	ldr r1, [r0]
	ldr r0, _02189b18 ; =data_ov00_020eec68
	strb r2, [r1, #0x7a]
	bl func_ov00_020d7424
	str r0, [r7, #0x70]
	ldr r0, _02189b18 ; =data_ov00_020eec68
	mov r1, #0
	bl func_ov00_020d716c
	ldr r0, _02189b1c ; =data_027e0ffc
	mov r1, #0x14000
	str r1, [r0, #0x18]
	mov r1, #0x5000
	str r1, [r0, #0x1c]
	mov r1, #0x7000
	str r1, [r0, #0x20]
	mov r1, #1
	strb r1, [r0, #0x24]
	add sp, sp, #0x80
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov42_02189834
_02189af4: .word data_027e0e60
_02189af8: .word data_027e0f64
_02189afc: .word data_027e0fb4
_02189b00: .word data_027e0fc8
_02189b04: .word data_ov42_0218c6f4
_02189b08: .word 0x4d544748
_02189b0c: .word data_027e0fe8
_02189b10: .word 0x4d544752
_02189b14: .word data_027e0fb8
_02189b18: .word data_ov00_020eec68
_02189b1c: .word data_027e0ffc

	arm_func_start func_ov42_02189b20
func_ov42_02189b20: ; 0x02189b20
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _02189b7c ; =data_027e0fb8
	strb r1, [r4, #0x65]
	ldr r0, [r0]
	strb r1, [r0, #0x79]
	strb r1, [r0, #0x7b]
	bl func_ov42_0218a794
	bl func_ov42_0218afa8
	mov r2, #1
	strb r2, [r4, #0x66]
	mov r1, #0
	ldr r0, _02189b80 ; =data_027e0ffc
	strb r1, [r4, #0x64]
	mov r1, #0xa000
	str r1, [r0, #0x18]
	mov r1, #0x1000
	str r1, [r0, #0x1c]
	mov r1, #0x7000
	str r1, [r0, #0x20]
	strb r2, [r0, #0x24]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_02189b20
_02189b7c: .word data_027e0fb8
_02189b80: .word data_027e0ffc

	arm_func_start func_ov42_02189b84
func_ov42_02189b84: ; 0x02189b84
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r8, #0
	ldr r5, _02189ccc ; =data_027e0fe4
	add sb, r4, #0x10
	mov r7, r8
	mvn r6, #0
_02189ba0:
	ldr r0, [r5]
	mov r1, sb
	bl func_ov00_020c3674
	cmp r0, #0
	strneb r7, [r0, #0x118]
	add r0, r4, r8, lsl #3
	str r6, [r0, #0x10]
	add r8, r8, #1
	str r6, [r0, #0x14]
	cmp r8, #3
	add sb, sb, #8
	blt _02189ba0
	mov r8, #0
	ldr r5, _02189ccc ; =data_027e0fe4
	add sb, r4, #0x28
	mov r7, r8
	mvn r6, #0
_02189be4:
	ldr r0, [r5]
	mov r1, sb
	bl func_ov00_020c3674
	cmp r0, #0
	strneb r7, [r0, #0x118]
	add r0, r4, r8, lsl #3
	str r6, [r0, #0x28]
	add r8, r8, #1
	str r6, [r0, #0x2c]
	cmp r8, #3
	add sb, sb, #8
	blt _02189be4
	ldr r0, _02189cd0 ; =data_027e0fb4
	ldr r0, [r0]
	blx func_ov00_020ae400
	bl func_ov42_02189ce8
	mov r1, #0
	ldr r2, _02189cd4 ; =data_027e0fb8
	strb r1, [r0, #0xb]
	ldr r2, [r2]
	mov r3, #1
	ldr r0, _02189cd8 ; =data_027e0f64
	strb r3, [r2, #0x7a]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl func_ov00_0208726c
	ldr r0, _02189cd8 ; =data_027e0f64
	mov r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl func_ov00_0208726c
	ldrh r5, [r4, #0x58]
	mov r0, r4
	bl func_ov42_0218a734
	cmp r5, r0
	bls _02189c88
	ldrb r0, [r4, #0x66]
	cmp r0, #0
	ldreqh r1, [r4, #0x58]
	ldreq r0, _02189cdc ; =data_ov09_0211f5b4
	streqh r1, [r0]
_02189c88:
	mov r2, #0
	strb r2, [r4, #0x65]
	strb r2, [r4, #0x64]
	ldr r1, [r4, #0x70]
	ldr r0, _02189ce0 ; =data_ov00_020eec68
	mov r3, #0x7f
	bl func_ov00_020d70a4
	ldr r0, _02189ce4 ; =data_027e0ffc
	mov r1, #0xa000
	str r1, [r0, #0x18]
	mov r1, #0x1000
	str r1, [r0, #0x1c]
	mov r1, #0x7000
	str r1, [r0, #0x20]
	mov r1, #1
	strb r1, [r0, #0x24]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov42_02189b84
_02189ccc: .word data_027e0fe4
_02189cd0: .word data_027e0fb4
_02189cd4: .word data_027e0fb8
_02189cd8: .word data_027e0f64
_02189cdc: .word data_ov09_0211f5b4
_02189ce0: .word data_ov00_020eec68
_02189ce4: .word data_027e0ffc

	arm_func_start func_ov42_02189ce8
func_ov42_02189ce8: ; 0x02189ce8
	ldr ip, _02189cf4 ; =func_01fffcec
	mov r0, #5
	bx ip
	.align 2, 0
	arm_func_end func_ov42_02189ce8
_02189cf4: .word func_01fffcec

	arm_func_start func_ov42_02189cf8
func_ov42_02189cf8: ; 0x02189cf8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmia sp!, {r4, pc}
	ldrb r0, [r4, #0x64]
	cmp r0, #0
	bne _02189d64
	ldr r0, _02189e4c ; =data_027e0fc8
	ldr r0, [r0]
	bl func_ov00_020bc500
	cmp r0, #6
	ldmia sp!, {r4, pc}
	bl func_ov42_0218a794
	bl func_ov42_0218aa8c
	mov r3, #1
	mov r2, #0x8000
	ldr r0, _02189e50 ; =data_027e0fb8
	strb r3, [r4, #0x64]
	ldr r1, [r0]
	ldr r0, _02189e4c ; =data_027e0fc8
	strb r3, [r1, #0x79]
	strb r3, [r1, #0x7b]
	ldr r0, [r0]
	ldr r1, _02189e54 ; =data_027e0f94
	rsb r2, r2, #0
	bl func_ov00_020bcdec
	ldmia sp!, {r4, pc}
_02189d64:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bgt _02189da4
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	ldmia sp!, {r4, pc}
	ldr r0, _02189e58 ; =data_ov00_020eec9c
	mov r1, #0xbf
	bl func_ov00_020d77e4
	bl func_ov42_02189ce8
	mov r1, #1
	strb r1, [r0, #0xb]
	strb r1, [r4, #0x65]
	bl func_ov42_0218a794
	bl func_ov42_0218aab0
	ldmia sp!, {r4, pc}
_02189da4:
	bl func_ov42_0218a794
	ldr r0, [r0, #0x488]
	cmp r0, #0
	bne _02189e2c
	ldr ip, [r4, #0x5c]
	ldr r2, _02189e5c ; =0x88888889
	mov r0, ip, lsr #0x1f
	smull r1, r3, r2, ip
	add r3, ip, r3
	add r3, r0, r3, asr #4
	mov r2, #0x1e
	smull r0, r1, r2, r3
	subs r3, ip, r0
	bne _02189e20
	cmp ip, #0x12c
	ble _02189df4
	ldr r0, _02189e58 ; =data_ov00_020eec9c
	mov r1, #0xbc
	bl func_ov00_020d77e4
	b _02189e20
_02189df4:
	cmp ip, #0x96
	ble _02189e0c
	ldr r0, _02189e58 ; =data_ov00_020eec9c
	mov r1, #0xbd
	bl func_ov00_020d77e4
	b _02189e20
_02189e0c:
	cmp ip, #0x1e
	blt _02189e20
	ldr r0, _02189e58 ; =data_ov00_020eec9c
	mov r1, #0xbe
	bl func_ov00_020d77e4
_02189e20:
	ldr r0, [r4, #0x5c]
	sub r0, r0, #1
	str r0, [r4, #0x5c]
_02189e2c:
	ldr r0, [r4, #0x6c]
	cmp r0, #1
	mov r0, r4
	bne _02189e44
	bl func_ov42_02189efc
	ldmia sp!, {r4, pc}
_02189e44:
	bl func_ov42_02189e88
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_02189cf8
_02189e4c: .word data_027e0fc8
_02189e50: .word data_027e0fb8
_02189e54: .word data_027e0f94
_02189e58: .word data_ov00_020eec9c
_02189e5c: .word 0x88888889

	arm_func_start func_ov42_02189e60
func_ov42_02189e60: ; 0x02189e60
	stmdb sp!, {r3, lr}
	ldr r0, _02189e84 ; =data_027e0fb8
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x79]
	strb r1, [r0, #0x7b]
	bl func_ov42_0218a794
	bl func_ov42_0218afa8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_02189e60
_02189e84: .word data_027e0fb8

	arm_func_start func_ov42_02189e88
func_ov42_02189e88: ; 0x02189e88
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0x5c]
	ldr r1, _02189ef8 ; =0x000001c2
	cmp r2, r1
	bge _02189eb0
	mov r2, #1
	mov r3, r2
	mov r1, #3
	bl func_ov42_0218a63c
	ldmia sp!, {r3, pc}
_02189eb0:
	cmp r2, #0x384
	bge _02189ecc
	mov r2, #1
	mov r3, r2
	mov r1, #2
	bl func_ov42_0218a63c
	ldmia sp!, {r3, pc}
_02189ecc:
	add r1, r1, #0x384
	cmp r2, r1
	mov r2, #0
	mov r3, r2
	bge _02189eec
	mov r1, #2
	bl func_ov42_0218a63c
	ldmia sp!, {r3, pc}
_02189eec:
	mov r1, #1
	bl func_ov42_0218a63c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_02189e88
_02189ef8: .word 0x000001c2

	arm_func_start func_ov42_02189efc
func_ov42_02189efc: ; 0x02189efc
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	ldr r0, [sl, #0x60]
	cmp r0, #0
	addle sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r0, #1
	cmp r0, #0
	addgt sp, sp, #0x10
	str r0, [sl, #0x60]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, #0
	add r0, sp, #0
_02189f34:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #4
	blt _02189f34
	mov r0, #0
	ldr r1, _0218a054 ; =data_027e0764
	add r6, sp, #0
	mov r3, r0
_02189f54:
	ldr r4, [r1]
	ldmib r1, {r2, r5}
	umull r8, r7, r5, r4
	mla r7, r5, r2, r7
	ldr r2, [r1, #0xc]
	ldr r5, [r1, #0x10]
	mla r7, r2, r4, r7
	ldr r2, [r1, #0x14]
	adds r5, r5, r8
	str r5, [r1]
	adc r7, r2, r7
	mov r4, r3, lsl #0x2
	orr r4, r4, r7, lsr #30
	ldr r5, [r6, r0, lsl #2]
	ldr r2, [r6, r4, lsl #2]
	str r7, [r1, #4]
	str r2, [r6, r0, lsl #2]
	add r0, r0, #1
	str r5, [r6, r4, lsl #2]
	cmp r0, #4
	blt _02189f54
	mov r7, #0
	ldr r4, _0218a058 ; =data_027e0fe4
	add sb, sl, #0x28
	mov r6, r7
	mov fp, #3
	add r5, sp, #0
_02189fc0:
	ldr r0, [r4]
	mov r1, sb
	bl func_ov00_020c3674
	mov r8, r0
	ldr r1, [r8, #0x204]
	cmp r1, #0
	beq _02189fe4
	mov r1, r6
	bl func_ov42_0218c0ec
_02189fe4:
	mov r0, r8
	mov r1, fp
	bl func_ov42_0218c0ec
	ldr r1, [r5, r7, lsl #2]
	mov r0, r8
	bl func_ov42_0218c690
	add r7, r7, #1
	cmp r7, #3
	add sb, sb, #8
	blt _02189fc0
	ldr r0, _0218a058 ; =data_027e0fe4
	add r1, sl, #0x10
	ldr r0, [r0]
	bl func_ov00_020c3674
	mov r4, r0
	ldr r1, [r4, #0x204]
	cmp r1, #0
	beq _0218a034
	mov r1, #0
	bl func_ov42_0218c0ec
_0218a034:
	mov r0, r4
	mov r1, #3
	bl func_ov42_0218c0ec
	ldr r1, [sp, #0xc]
	mov r0, r4
	bl func_ov42_0218c690
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
	arm_func_end func_ov42_02189efc
_0218a054: .word data_027e0764
_0218a058: .word data_027e0fe4

	arm_func_start func_ov42_0218a05c
func_ov42_0218a05c: ; 0x0218a05c
	bx lr
	arm_func_end func_ov42_0218a05c

	arm_func_start func_ov42_0218a060
func_ov42_0218a060: ; 0x0218a060
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	ldrh r2, [r1]
	ldr r1, _0218a230 ; =data_027e0618
	mov r4, r0
	ldrb r0, [r1, #0x101]
	tst r2, #1
	movne r1, #1
	moveq r1, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r1, r0
	addeq sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0x1c
	bl func_01ffbe34
	mov r2, #1
	mov r1, #0
	strb r2, [sp, #0x26]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #0x69
	bl func_0203493c
	ldrb r0, [r4, #0x65]
	mov r5, #0
	cmp r0, #0
	beq _0218a108
	ldrsh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	ldrsh r0, [r4, #0xc]
	cmp r0, #0xa
	ble _0218a100
	cmp r0, #0x22
	strgth r5, [r4, #0xc]
	mov r5, #1
	b _0218a10c
_0218a100:
	cmp r0, #0
	b _0218a10c
_0218a108:
	mov r5, #1
_0218a10c:
	ldrh r6, [r4, #0x58]
	mov r0, r4
	bl func_ov42_0218a734
	cmp r6, r0
	blo _0218a164
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	beq _0218a164
	cmp r5, #0
	beq _0218a180
	ldrsh r0, [r4, #0xc]
	cmp r0, #0xb
	bne _0218a14c
	ldr r0, _0218a234 ; =data_ov00_020eec9c
	mov r1, #0xc0
	bl func_ov00_020d77e4
_0218a14c:
	ldrh r3, [r4, #0x58]
	mov r0, r4
	mov r1, #0x17
	mov r2, #1
	bl func_ov42_0218a23c
	b _0218a180
_0218a164:
	cmp r5, #0
	beq _0218a180
	ldrh r3, [r4, #0x58]
	mov r0, r4
	mov r1, #0xd
	mov r2, #1
	bl func_ov42_0218a23c
_0218a180:
	mov r0, r4
	bl func_ov42_0218a734
	mov r3, r0
	mov r0, r4
	mov r1, #0xd
	mov r2, #6
	bl func_ov42_0218a23c
	mov r2, #0
	add ip, sp, #0x1c
	mov r3, r2
	mov r0, #0x69
	mov r1, #5
	str ip, [sp]
	bl func_0203493c
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r2, #0x69
	str r2, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r4, #0x5c]
	ldr ip, _0218a238 ; =0x88888889
	add r4, r0, #0x1d
	smull r3, r0, ip, r4
	add r0, r4, r0
	mov r3, r4, lsr #0x1f
	add r0, r3, r0, asr #4
	mov r1, #2
	mov r3, #0xc
	bl func_02034bc8
	add r1, sp, #0x1c
	mov r2, #0
	str r1, [sp]
	mov r0, #0x69
	mov r1, #0xa
	mov r3, r2
	bl func_0203493c
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a060
_0218a230: .word data_027e0618
_0218a234: .word data_ov00_020eec9c
_0218a238: .word 0x88888889

	arm_func_start func_ov42_0218a23c
func_ov42_0218a23c: ; 0x0218a23c
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	add r0, sp, #8
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl func_01ffbe34
	ldr r2, _0218a384 ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r1, r7, r2, r4
	mov r1, #1
	add r7, r0, r7, asr #2
	mov r2, #0xa
	strb r1, [sp, #0x12]
	smull r0, r1, r2, r7
	sub r7, r4, r0
	mov r3, #0
	str r3, [sp]
	add r2, sp, #8
	str r2, [sp, #4]
	add r1, r6, r7
	mov r0, #0x69
	add r2, r5, #3
	bl func_020349cc
	ldr r2, _0218a384 ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r1, r3, r2, r4
	add r3, r0, r3, asr #2
	smull r0, r1, r2, r3
	mov r0, r3, lsr #0x1f
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r1
	sub r1, r3, r0
	mov r3, #0
	str r3, [sp]
	add r2, sp, #8
	str r2, [sp, #4]
	add r1, r6, r1
	mov r0, #0x69
	add r2, r5, #2
	bl func_020349cc
	mov r3, #0
	ldr lr, _0218a388 ; =0x51eb851f
	str r3, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	smull ip, r1, lr, r4
	mov r2, r4, lsr #0x1f
	add r1, r2, r1, asr #5
	ldr lr, _0218a384 ; =0x66666667
	mov r2, r1, lsr #0x1f
	smull ip, r7, lr, r1
	add r7, r2, r7, asr #2
	mov lr, #0xa
	smull r2, ip, lr, r7
	sub r7, r1, r2
	mov r0, #0x69
	add r1, r6, r7
	add r2, r5, #1
	bl func_020349cc
	mov r3, #0
	mov r2, r5
	ldr ip, _0218a38c ; =0x10624dd3
	str r3, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r5, r4, lsr #0x1f
	smull r4, r1, ip, r4
	add r1, r5, r1, asr #6
	ldr ip, _0218a384 ; =0x66666667
	mov r4, r1, lsr #0x1f
	smull r5, lr, ip, r1
	add lr, r4, lr, asr #2
	mov ip, #0xa
	smull r4, r5, ip, lr
	sub lr, r1, r4
	mov r0, #0x69
	add r1, r6, lr
	bl func_020349cc
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a23c
_0218a384: .word 0x66666667
_0218a388: .word 0x51eb851f
_0218a38c: .word 0x10624dd3

	arm_func_start func_ov42_0218a390
func_ov42_0218a390: ; 0x0218a390
	mov r0, #0
	bx lr
	arm_func_end func_ov42_0218a390

	arm_func_start func_ov42_0218a398
func_ov42_0218a398: ; 0x0218a398
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r3, r1
_0218a3a4:
	add r2, r0, r3
	ldrb r2, [r2, #0x67]
	add r3, r3, #1
	cmp r2, #0
	addeq r1, r1, #1
	cmp r3, #5
	blt _0218a3a4
	cmp r1, #0
	movle r4, #0
	ble _0218a41c
	ldr r2, _0218a454 ; =data_027e0764
	ldr ip, [r2]
	ldmib r2, {r3, lr}
	umull r5, r4, lr, ip
	mla r4, lr, r3, r4
	ldr r3, [r2, #0xc]
	ldr lr, [r2, #0x10]
	mla r4, r3, ip, r4
	ldr r3, [r2, #0x14]
	adds r5, lr, r5
	adc r4, r3, r4
	str r5, [r2]
	str r4, [r2, #4]
	cmp r1, #0
	beq _0218a41c
	mov ip, #0
	umull r3, r2, r4, r1
	mla r2, r4, ip, r2
	mla r2, ip, r1, r2
	mov r4, r2
_0218a41c:
	add r3, r4, #1
	mov r2, #0
_0218a424:
	add r1, r0, r2
	ldrb r1, [r1, #0x67]
	cmp r1, #0
	bne _0218a440
	subs r3, r3, #1
	moveq r0, r2
	ldmia sp!, {r3, r4, r5, pc}
_0218a440:
	add r2, r2, #1
	cmp r2, #5
	blt _0218a424
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a398
_0218a454: .word data_027e0764

	arm_func_start func_ov42_0218a458
func_ov42_0218a458: ; 0x0218a458
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #0x5a]
	add r0, r0, #0xa
	strh r0, [r4, #0x5a]
	ldrh r0, [r4, #0x5a]
	cmp r0, #0x32
	blo _0218a488
	ldr r0, _0218a528 ; =data_ov00_020eec9c
	mov r1, #0x3f0
	bl func_ov00_020d77e4
	b _0218a4e4
_0218a488:
	cmp r0, #0x28
	blo _0218a4a0
	ldr r0, _0218a528 ; =data_ov00_020eec9c
	ldr r1, _0218a52c ; =0x000003ef
	bl func_ov00_020d77e4
	b _0218a4e4
_0218a4a0:
	cmp r0, #0x1e
	blo _0218a4b8
	ldr r0, _0218a528 ; =data_ov00_020eec9c
	ldr r1, _0218a530 ; =0x000003ee
	bl func_ov00_020d77e4
	b _0218a4e4
_0218a4b8:
	cmp r0, #0x14
	blo _0218a4d0
	ldr r0, _0218a528 ; =data_ov00_020eec9c
	ldr r1, _0218a534 ; =0x000003ed
	bl func_ov00_020d77e4
	b _0218a4e4
_0218a4d0:
	cmp r0, #0xa
	blo _0218a4e4
	ldr r0, _0218a528 ; =data_ov00_020eec9c
	mov r1, #0x3ec
	bl func_ov00_020d77e4
_0218a4e4:
	ldrh r0, [r4, #0x5a]
	cmp r0, #0x32
	movhi r0, #0x32
	strhih r0, [r4, #0x5a]
	ldrh r2, [r4, #0x58]
	ldrh r1, [r4, #0x5a]
	ldr r0, _0218a538 ; =0x0000270f
	add r1, r2, r1
	strh r1, [r4, #0x58]
	ldrh r1, [r4, #0x58]
	cmp r1, r0
	strhih r0, [r4, #0x58]
	ldr r0, [r4, #0x6c]
	cmp r0, #1
	moveq r0, #0xa
	streq r0, [r4, #0x60]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a458
_0218a528: .word data_ov00_020eec9c
_0218a52c: .word 0x000003ef
_0218a530: .word 0x000003ee
_0218a534: .word 0x000003ed
_0218a538: .word 0x0000270f

	arm_func_start func_ov42_0218a53c
func_ov42_0218a53c: ; 0x0218a53c
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0218a580 ; =data_ov00_020eec9c
	ldr r1, _0218a584 ; =0x000003eb
	bl func_ov00_020d77e4
	mov r1, #0
	strh r1, [r4, #0x5a]
	ldrh r0, [r4, #0x58]
	cmp r0, #0x32
	subhs r0, r0, #0x32
	strhsh r0, [r4, #0x58]
	strloh r1, [r4, #0x58]
	ldr r0, [r4, #0x6c]
	cmp r0, #1
	moveq r0, #0xa
	streq r0, [r4, #0x60]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a53c
_0218a580: .word data_ov00_020eec9c
_0218a584: .word 0x000003eb

	arm_func_start func_ov42_0218a588
func_ov42_0218a588: ; 0x0218a588
	cmp r2, #1
	add r0, r0, r1
	moveq r1, #1
	movne r1, #0
	strb r1, [r0, #0x67]
	bx lr
	arm_func_end func_ov42_0218a588

	arm_func_start func_ov42_0218a5a0
func_ov42_0218a5a0: ; 0x0218a5a0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	ldr r4, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov lr, #0
	mvn r1, #0
_0218a5b8:
	add ip, r0, lr, lsl #3
	ldr r3, [ip, #0x40]
	add lr, lr, #1
	cmp r3, r1
	streq r2, [ip, #0x40]
	streq r4, [ip, #0x44]
	cmp lr, #3
	blt _0218a5b8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end func_ov42_0218a5a0

	arm_func_start func_ov42_0218a5e4
func_ov42_0218a5e4: ; 0x0218a5e4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218962c
	mov r1, r4
	bl func_ov42_0218a5fc
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218a5e4

	arm_func_start func_ov42_0218a5fc
func_ov42_0218a5fc: ; 0x0218a5fc
	ldr ip, [r1, #8]
	mov r3, #0
_0218a604:
	add r2, r0, r3, lsl #3
	ldr r1, [r2, #0x40]
	cmp r1, ip
	bne _0218a624
	mvn r0, #0
	str r0, [r2, #0x40]
	str r0, [r2, #0x44]
	bx lr
_0218a624:
	add r3, r3, #1
	cmp r3, #3
	blt _0218a604
	mov r1, #0
	strh r1, [r0, #0x5a]
	bx lr
	arm_func_end func_ov42_0218a5fc

	arm_func_start func_ov42_0218a63c
func_ov42_0218a63c: ; 0x0218a63c
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr r0, [sb, #0x60]
	mov r8, r1
	cmp r0, #0
	subgt r0, r0, #1
	mov r7, r2
	mov r6, r3
	strgt r0, [sb, #0x60]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r7, #0
	mov r4, #0
	ble _0218a6c8
	ldr sl, _0218a730 ; =data_027e0fe4
	add r5, sb, #0x28
_0218a678:
	ldr r0, [sl]
	mov r1, r5
	bl func_ov00_020c3674
	ldr r1, [r0, #0x204]
	cmp r1, #0
	bne _0218a6b8
	cmp r6, #0
	beq _0218a6a4
	mov r1, #2
	bl func_ov42_0218c0ec
	b _0218a6ac
_0218a6a4:
	mov r1, #1
	bl func_ov42_0218c0ec
_0218a6ac:
	mov r0, #0xf
	str r0, [sb, #0x60]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0218a6b8:
	add r4, r4, #1
	cmp r4, r7
	add r5, r5, #8
	blt _0218a678
_0218a6c8:
	mov r5, #0
	cmp r8, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, _0218a730 ; =data_027e0fe4
	add r7, sb, #0x10
_0218a6dc:
	ldr r0, [r4]
	mov r1, r7
	bl func_ov00_020c3674
	ldr r1, [r0, #0x204]
	cmp r1, #0
	bne _0218a71c
	cmp r6, #0
	beq _0218a708
	mov r1, #2
	bl func_ov42_0218c0ec
	b _0218a710
_0218a708:
	mov r1, #1
	bl func_ov42_0218c0ec
_0218a710:
	mov r0, #0xf
	str r0, [sb, #0x60]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0218a71c:
	add r5, r5, #1
	cmp r5, r8
	add r7, r7, #8
	blt _0218a6dc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a63c
_0218a730: .word data_027e0fe4

	arm_func_start func_ov42_0218a734
func_ov42_0218a734: ; 0x0218a734
	ldr r0, _0218a740 ; =data_ov09_0211f5b4
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	arm_func_end func_ov42_0218a734
_0218a740: .word data_ov09_0211f5b4

	arm_func_start func_ov42_0218a744
func_ov42_0218a744: ; 0x0218a744
	stmdb sp!, {r4, lr}
	mov r4, r0
	blx func_02030294
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218a744

	arm_func_start func_ov42_0218a760
func_ov42_0218a760: ; 0x0218a760
	stmdb sp!, {r3, lr}
	ldr r1, _0218a78c ; =data_027e0fe0
	ldr r0, _0218a790 ; =0x000004a8
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov42_0218a898
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a760
_0218a78c: .word data_027e0fe0
_0218a790: .word 0x000004a8

	arm_func_start func_ov42_0218a794
func_ov42_0218a794: ; 0x0218a794
	ldr r0, _0218a7a0 ; =data_ov42_0218cd24
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0
	arm_func_end func_ov42_0218a794
_0218a7a0: .word data_ov42_0218cd24

	arm_func_start func_ov42_0218a7a4
func_ov42_0218a7a4: ; 0x0218a7a4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r6, r1
	ldr r4, [r6, #4]
	ldr r1, _0218a890 ; =data_ov42_0218c728
	ldr r2, [r4, #4]
	mov r5, r0
	add r0, r2, #0x40
	bl func_0201e388
	ldr r1, [r6, #8]
	tst r1, #0x10
	ldrneb r1, [r6, #0xae]
	mvneq r1, #0
	cmp r0, r1
	ldreqb r0, [r4, #0x25]
	cmpeq r0, #2
	addne sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	ldr r4, [r6, #0xb4]
	add r0, r5, #0x400
	ldr r1, [r4]
	ldr r3, _0218a894 ; =data_02050f54
	bic r1, r1, #2
	str r1, [r4]
	ldrsh r1, [r0, #0x70]
	add r0, sp, #0x24
	rsb r1, r1, #0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #0x4
	mov r1, r1, lsl #0x1
	add r2, r1, #1
	mov r2, r2, lsl #0x1
	mov r1, r1, lsl #0x1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	blx func_01ff8230
	add r1, r4, #0x28
	add r0, sp, #0x24
	mov r2, r1
	bl func_01ff8690
	add r0, r5, #0x400
	ldrh r1, [r0, #0x72]
	ldr r3, _0218a894 ; =data_02050f54
	add r0, sp, #0
	mov r1, r1, asr #0x4
	mov r1, r1, lsl #0x1
	add r2, r1, #1
	mov r2, r2, lsl #0x1
	mov r1, r1, lsl #0x1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	blx func_01ff8214
	add r1, r4, #0x28
	add r0, sp, #0
	mov r2, r1
	bl func_01ff8690
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a7a4
_0218a890: .word data_ov42_0218c728
_0218a894: .word data_02050f54

	arm_func_start func_ov42_0218a898
func_ov42_0218a898: ; 0x0218a898
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov14_02144ed8
	ldr r1, _0218a8d4 ; =data_ov42_0218c91c
	mov r0, r4
	str r1, [r4]
	mov r1, #0
	strb r1, [r4, #0x478]
	bl func_ov42_0218b690
	ldr r0, _0218a8d8 ; =data_ov42_0218cd24
	mov r1, #0
	str r4, [r0, #0x20]
	mov r0, r4
	strb r1, [r4, #0x484]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a898
_0218a8d4: .word data_ov42_0218c91c
_0218a8d8: .word data_ov42_0218cd24

	arm_func_start func_ov42_0218a8dc
func_ov42_0218a8dc: ; 0x0218a8dc
	stmdb sp!, {r4, lr}
	ldr r1, _0218a8fc ; =data_ov42_0218cd24
	mov r2, #0
	mov r4, r0
	str r2, [r1, #0x20]
	bl func_ov14_021450a8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a8dc
_0218a8fc: .word data_ov42_0218cd24

	arm_func_start func_ov42_0218a900
func_ov42_0218a900: ; 0x0218a900
	stmdb sp!, {r4, lr}
	ldr r1, _0218a928 ; =data_ov42_0218cd24
	mov r2, #0
	mov r4, r0
	str r2, [r1, #0x20]
	bl func_ov14_021450a8
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a900
_0218a928: .word data_ov42_0218cd24

	arm_func_start func_ov42_0218a92c
func_ov42_0218a92c: ; 0x0218a92c
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1d8
	mov r1, #0x2c
	mov r2, #0x2d
	bl func_ov14_02145a74
	ldr r2, _0218a9a0 ; =data_ov42_0218c714
	add r0, r4, #0x1d8
	mov r1, #0x2c
	str r2, [r4, #0x408]
	bl func_ov14_02145c7c
	ldr r2, _0218a9a4 ; =func_ov42_0218a7a4
	str r4, [r4, #0x27c]
	ldr r1, _0218a9a8 ; =data_ov42_0218c708
	mov r0, r4
	str r2, [r4, #0x280]
	bl func_ov14_021451f0
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0x285]
	bl func_ov42_0218addc
	add r1, r4, #0x400
	mov r2, #0
	strh r2, [r1, #0x70]
	strh r2, [r1, #0x72]
	mov r0, r4
	strh r2, [r1, #0x90]
	bl func_ov14_021450f0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a92c
_0218a9a0: .word data_ov42_0218c714
_0218a9a4: .word func_ov42_0218a7a4
_0218a9a8: .word data_ov42_0218c708

	arm_func_start func_ov42_0218a9ac
func_ov42_0218a9ac: ; 0x0218a9ac
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r2, [r4, #0x50]
	ldr r1, [r4, #0x1c]
	ldr r0, _0218aa80 ; =0x00000a66
	sub r1, r2, r1
	sub ip, r0, r1
	sub r1, r0, #0x2b8
	ldr r3, [r4, #0x48]
	ldr r2, [r4, #0x14]
	ldr r0, _0218aa84 ; =0xffffeb33
	sub r2, r3, r2
	sub r0, r0, r2
	str r0, [sp]
	str ip, [sp, #8]
	str r1, [sp, #4]
	ldrsh r1, [r4, #0x78]
	add r0, sp, #0
	rsb r1, r1, #0
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl func_ov00_020a61ac
	ldr r0, [sp]
	mov lr, #0x214
	str r0, [r4, #0x7c]
	ldr r0, [sp, #4]
	mov r3, #0
	str r0, [r4, #0x80]
	ldr r0, [sp, #8]
	ldr r1, _0218aa88 ; =data_ov42_0218c708
	str r0, [r4, #0x84]
	str lr, [r4, #0x88]
	ldr r0, [r4, #0x7c]
	add r2, lr, #0x1000
	str r0, [r4, #0x8c]
	ldr ip, [r4, #0x80]
	add r0, r4, #0x100
	str ip, [r4, #0x90]
	ldr ip, [r4, #0x84]
	str ip, [r4, #0x94]
	ldr ip, [r4, #0x88]
	str ip, [r4, #0x98]
	str r3, [r4, #0xa8]
	str lr, [r4, #0xac]
	str r3, [r4, #0xb0]
	str r2, [r4, #0xb4]
	ldr r2, [r1, #4]
	str r2, [r4, #0x45c]
	ldr r1, [r1, #8]
	strh r1, [r0, #0x1e]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218a9ac
_0218aa80: .word 0x00000a66
_0218aa84: .word 0xffffeb33
_0218aa88: .word data_ov42_0218c708

	arm_func_start func_ov42_0218aa8c
func_ov42_0218aa8c: ; 0x0218aa8c
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #1
	mov r1, #4
	strb r2, [r4, #0x484]
	bl func_ov42_0218b130
	mov r0, #0
	str r0, [r4, #0x4a4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218aa8c

	arm_func_start func_ov42_0218aab0
func_ov42_0218aab0: ; 0x0218aab0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #1
	mov r1, #5
	strb r2, [r4, #0x484]
	bl func_ov42_0218b130
	mov r0, #0
	str r0, [r4, #0x4a4]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218aab0

	arm_func_start func_ov42_0218aad4
func_ov42_0218aad4: ; 0x0218aad4
	ldr ip, _0218aae4 ; =func_ov00_020c243c
	mov r1, #0
	mov r2, r1
	bx ip
	.align 2, 0
	arm_func_end func_ov42_0218aad4
_0218aae4: .word func_ov00_020c243c

	arm_func_start func_ov42_0218aae8
func_ov42_0218aae8: ; 0x0218aae8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #0x1d8
	mov r1, #0x1000
	bl func_ov14_02145e48
	ldr r0, _0218ab48 ; =data_027e0ffc
	ldr r1, _0218ab4c ; =0x000003f1
	add r2, r5, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	ldr r0, [r4, #0x10]
	cmp r0, #7
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	mov r0, r5
	add r1, r5, #0x400
	mov r2, #0x14
	strh r2, [r1, #0x90]
	bl func_ov42_0218ac10
	mov r0, #1
	strb r0, [r5, #0x11d]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov42_0218aae8
_0218ab48: .word data_027e0ffc
_0218ab4c: .word 0x000003f1

	arm_func_start func_ov42_0218ab50
func_ov42_0218ab50: ; 0x0218ab50
	add r1, r0, #0x400
	ldrsh r2, [r1, #0x90]
	cmp r2, #0
	subgt r0, r2, #1
	strgth r0, [r1, #0x90]
	movle r2, #0
	strleh r2, [r1, #0x90]
	strleb r2, [r0, #0x11d]
	bx lr
	arm_func_end func_ov42_0218ab50

	arm_func_start func_ov42_0218ab74
func_ov42_0218ab74: ; 0x0218ab74
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x154]
	cmp r1, #0
	beq _0218ab9c
	ldrsh r1, [r4, #0x12]
	mov r0, #0
	strh r1, [r4, #0x78]
	strb r0, [r4, #0x285]
	ldmia sp!, {r4, pc}
_0218ab9c:
	ldr r1, [r4, #0x48]
	str r1, [r4, #0x54]
	ldr r1, [r4, #0x4c]
	str r1, [r4, #0x58]
	ldr r1, [r4, #0x50]
	str r1, [r4, #0x5c]
	ldr r1, [r4, #0x474]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0218abfc
_0218abc4: ; jump table
	b _0218abd8 ; case 0
	b _0218abe0 ; case 1
	b _0218abe8 ; case 2
	b _0218abf0 ; case 3
	b _0218abf8 ; case 4
_0218abd8:
	bl func_ov42_0218ae18
	b _0218abfc
_0218abe0:
	bl func_ov42_0218ae7c
	b _0218abfc
_0218abe8:
	bl func_ov42_0218af20
	b _0218abfc
_0218abf0:
	bl func_ov42_0218aff8
	b _0218abfc
_0218abf8:
	bl func_ov42_0218ada8
_0218abfc:
	add r0, r4, #0x1d8
	bl func_ov14_02145cac
	mov r0, r4
	bl func_ov14_02145178
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218ab74

	arm_func_start func_ov42_0218ac10
func_ov42_0218ac10: ; 0x0218ac10
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r1, #4
	ldr r2, _0218ad8c ; =data_027e0764
	str r1, [r0, #0x474]
	ldr r3, [r2]
	ldmib r2, {r1, lr}
	umull r7, r6, lr, r3
	mla r6, lr, r1, r6
	ldr ip, [r2, #0xc]
	ldr r5, [r2, #0x10]
	mla r6, ip, r3, r6
	ldr r4, [r2, #0x14]
	adds r7, r5, r7
	ldr r8, _0218ad90 ; =0x00005557
	adc r6, r4, r6
	umull r3, sb, r6, r8
	mov r1, #0
	str r7, [r2]
	mla sb, r6, r1, sb
	mov r3, r1
	mla sb, r3, r8, sb
	ldr r8, _0218ad94 ; =0xffffd555
	str r6, [r2, #4]
	add r8, sb, r8
	mov r8, r8, lsl #0x10
	movs r8, r8, asr #0x10
	umull sb, r8, lr, r7
	mla r8, lr, r6, r8
	bmi _0218ad08
	mla r8, ip, r7, r8
	adds sb, r5, sb
	ldr r5, _0218ad98 ; =0x00001c73
	adc r7, r4, r8
	umull r4, r6, r7, r5
	mla r6, r7, r1, r6
	mla r6, r3, r5, r6
	str sb, [r2]
	add r4, r6, #0x39
	add r5, r4, #0xe00
	str r7, [r2, #4]
	add r4, r0, #0x400
	strh r5, [r4, #0x8c]
	ldr r5, [r2]
	ldmib r2, {r0, r6}
	umull r8, r7, r6, r5
	mla r7, r6, r0, r7
	ldr r0, [r2, #0xc]
	ldr sb, [r2, #0x10]
	mla r7, r0, r5, r7
	ldr r6, [r2, #0x14]
	adds r8, sb, r8
	ldr r0, _0218ad9c ; =0x00001556
	adc r7, r6, r7
	umull r5, r6, r7, r0
	mla r6, r7, r1, r6
	mla r6, r3, r0, r6
	str r8, [r2]
	add r0, r6, #0x39
	str r7, [r2, #4]
	add r0, r0, #0xe00
	strh r0, [r4, #0x8e]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0218ad08:
	mla r8, ip, r7, r8
	adds sb, r5, sb
	ldr r5, _0218ad98 ; =0x00001c73
	adc r7, r4, r8
	umull r4, r6, r7, r5
	mla r6, r7, r1, r6
	mla r6, r3, r5, r6
	str sb, [r2]
	add r4, r6, #0x39
	add r5, r4, #0xe00
	str r7, [r2, #4]
	add r4, r0, #0x400
	strh r5, [r4, #0x8c]
	ldr r5, [r2]
	ldmib r2, {r0, r6}
	umull r8, r7, r6, r5
	mla r7, r6, r0, r7
	ldr r0, [r2, #0xc]
	ldr ip, [r2, #0x10]
	mla r7, r0, r5, r7
	ldr r6, [r2, #0x14]
	adds r8, ip, r8
	ldr r0, _0218ada0 ; =0x0000071e
	adc r7, r6, r7
	umull r5, r6, r7, r0
	mla r6, r7, r1, r6
	mla r6, r3, r0, r6
	ldr r0, _0218ada4 ; =0xfffff1c7
	str r8, [r2]
	str r7, [r2, #4]
	add r0, r6, r0
	strh r0, [r4, #0x8e]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
	arm_func_end func_ov42_0218ac10
_0218ad8c: .word data_027e0764
_0218ad90: .word 0x00005557
_0218ad94: .word 0xffffd555
_0218ad98: .word 0x00001c73
_0218ad9c: .word 0x00001556
_0218ada0: .word 0x0000071e
_0218ada4: .word 0xfffff1c7

	arm_func_start func_ov42_0218ada8
func_ov42_0218ada8: ; 0x0218ada8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218ab50
	add r0, r4, #0x400
	ldrsh r0, [r0, #0x90]
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #0x474]
	mov r0, r4
	bl func_ov42_0218a9ac
	mov r0, r4
	bl func_ov42_0218aad4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218ada8

	arm_func_start func_ov42_0218addc
func_ov42_0218addc: ; 0x0218addc
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0x474]
	strb r1, [r4, #0x478]
	add r0, r4, #0x1d8
	bl func_ov14_02145f0c
	ldr r1, [r4, #0x1e8]
	mov r2, #0x1000
	mov r0, r4
	str r2, [r1, #0x10]
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218addc

	arm_func_start func_ov42_0218ae18
func_ov42_0218ae18: ; 0x0218ae18
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x1f4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x34]
	blx r2
	ldr r2, [r4, #0x1f4]
	add r1, sp, #0
	ldrsh r3, [r2, #0x78]
	add r0, r4, #0x1f8
	add r2, r2, #0x48
	bl func_ov14_0214a92c
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov42_0218ae18

	arm_func_start func_ov42_0218ae58
func_ov42_0218ae58: ; 0x0218ae58
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	str r1, [r4, #0x474]
	bl func_ov14_0214591c
	ldr r0, [r4, #0x1e8]
	mov r1, #0x1000
	str r1, [r0, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218ae58

	arm_func_start func_ov42_0218ae7c
func_ov42_0218ae7c: ; 0x0218ae7c
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x1f4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x34]
	blx r2
	ldr r0, [r4, #0x1f4]
	add r1, sp, #0
	ldrsh r2, [r0, #0x78]
	add r0, r4, #0x1f8
	bl func_ov14_0214aa0c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	ldrb r0, [r4, #0x478]
	cmp r0, #0
	mov r0, r4
	bne _0218aee8
	bl func_ov42_0218addc
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0218aee8:
	bl func_ov42_0218aef4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov42_0218ae7c

	arm_func_start func_ov42_0218aef4
func_ov42_0218aef4: ; 0x0218aef4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1d8
	mov r1, #0
	bl func_ov14_02145f0c
	ldr r0, _0218af1c ; =data_ov09_0211f5b4
	blx func_ov03_020f403c
	mov r0, #2
	str r0, [r4, #0x474]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218aef4
_0218af1c: .word data_ov09_0211f5b4

	arm_func_start func_ov42_0218af20
func_ov42_0218af20: ; 0x0218af20
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add r1, r4, #0x1d8
	ldr r0, [r1, #0x250]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x248]
	cmp r0, #0x1000
	bne _0218af64
	ldr r0, [r4, #0x1e8]
	add r0, r0, #0xc
	bl func_0202e58c
	cmp r0, #0
	beq _0218af64
	add r0, r4, #0x1d8
	mov r1, #0
	bl func_ov14_02145f0c
_0218af64:
	ldr r0, [r4, #0x1f4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x34]
	blx r2
	ldr r2, [r4, #0x1f4]
	add r1, sp, #0
	ldrsh r3, [r2, #0x78]
	add r0, r4, #0x1f8
	add r2, r2, #0x48
	bl func_ov14_0214a92c
	mov r0, r4
	bl func_ov42_0218a9ac
	mov r0, r4
	bl func_ov42_0218aad4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end func_ov42_0218af20

	arm_func_start func_ov42_0218afa8
func_ov42_0218afa8: ; 0x0218afa8
	ldr ip, _0218afb8 ; =func_ov42_0218afbc
	mov r1, #0
	strb r1, [r0, #0x484]
	bx ip
	.align 2, 0
	arm_func_end func_ov42_0218afa8
_0218afb8: .word func_ov42_0218afbc

	arm_func_start func_ov42_0218afbc
func_ov42_0218afbc: ; 0x0218afbc
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #3
	ldr r0, _0218aff4 ; =data_ov09_0211f5b4
	str r1, [r4, #0x474]
	blx func_ov03_020f4048
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	mov r0, r4
	mov r1, #1
	bl func_ov00_020c1908
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218afbc
_0218aff4: .word data_ov09_0211f5b4

	arm_func_start func_ov42_0218aff8
func_ov42_0218aff8: ; 0x0218aff8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x1f4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x34]
	blx r2
	ldr r0, [r4, #0x1f4]
	add r1, sp, #0
	ldrsh r2, [r0, #0x78]
	add r0, r4, #0x1f8
	bl func_ov14_0214aa0c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xbc]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	ldr r0, _0218b080 ; =data_027e103c
	mov r1, #0
	ldr r0, [r0]
	mov r2, r1
	bl func_ov00_020cfa24
	ldr r0, _0218b080 ; =data_027e103c
	mov r1, #0
	ldr r0, [r0]
	mov r2, r1
	bl func_ov00_020cfa70
	mov r0, r4
	bl func_ov42_0218addc
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218aff8
_0218b080: .word data_027e103c

	arm_func_start func_ov42_0218b084
func_ov42_0218b084: ; 0x0218b084
	stmdb sp!, {r3, lr}
	ldrb r0, [r0, #0x478]
	cmp r0, #1
	bne _0218b0a4
	mov r0, #0x65
	mov r1, #3
	bl func_ov42_0218b0dc
	ldmia sp!, {r3, pc}
_0218b0a4:
	ldr r0, _0218b0d8 ; =data_027e0f74
	mov r1, #0x1f
	ldr r0, [r0]
	bl func_ov00_02097760
	cmp r0, #0
	mov r0, #0x65
	beq _0218b0cc
	mov r1, #2
	bl func_ov42_0218b0dc
	ldmia sp!, {r3, pc}
_0218b0cc:
	mov r1, #1
	bl func_ov42_0218b0dc
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b084
_0218b0d8: .word data_027e0f74

	arm_func_start func_ov42_0218b0dc
func_ov42_0218b0dc: ; 0x0218b0dc
	orr r0, r1, r0, lsl #16
	bx lr
	arm_func_end func_ov42_0218b0dc

	arm_func_start func_ov42_0218b0e4
func_ov42_0218b0e4: ; 0x0218b0e4
	stmdb sp!, {r3, lr}
	cmp r1, #0
	bne _0218b124
	ldr r2, _0218b12c ; =data_027e103c
	mov r1, #1
	strb r1, [r0, #0x478]
	ldr r0, [r2]
	mov r2, #0
	bl func_ov00_020cfa24
	ldr r0, _0218b12c ; =data_027e103c
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0
	bl func_ov00_020cfa70
	mov r0, #1
	ldmia sp!, {r3, pc}
_0218b124:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b0e4
_0218b12c: .word data_027e103c

	arm_func_start func_ov42_0218b130
func_ov42_0218b130: ; 0x0218b130
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x400
	ldrsb r2, [r0, #0xa0]
	cmp r2, r1
	strneb r1, [r4, #0x4a0]
	ldmia sp!, {r4, pc}
	ldrsb r0, [r0, #0xa0]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0218b15c: ; jump table
	b _0218b178 ; case 0
	b _0218b188 ; case 1
	b _0218b1c0 ; case 2
	b _0218b1e4 ; case 3
	b _0218b208 ; case 4
	b _0218b234 ; case 5
	b _0218b26c ; case 6
_0218b178:
	mov r0, #0
	str r0, [r4, #0x4a4]
	strb r0, [r4, #0x484]
	ldmia sp!, {r4, pc}
_0218b188:
	ldr r0, _0218b278 ; =data_ov00_020eec68
	mov r1, #0xd3
	mov r2, #0
	mov r3, #0x7f
	bl func_ov00_020d70a4
	mov r1, #0x1e
	str r1, [r4, #0x488]
	mov r3, #0
	ldr r0, _0218b27c ; =data_027e0ffc
	add r2, r4, #0x48
	mov r1, #0xbb
	str r3, [r4, #0x4a4]
	bl func_ov00_020ceacc
	ldmia sp!, {r4, pc}
_0218b1c0:
	mov r1, #0x1e
	str r1, [r4, #0x488]
	mov r3, #0
	ldr r0, _0218b27c ; =data_027e0ffc
	add r2, r4, #0x48
	mov r1, #0xba
	str r3, [r4, #0x4a4]
	bl func_ov00_020ceacc
	ldmia sp!, {r4, pc}
_0218b1e4:
	mov r1, #0x1e
	str r1, [r4, #0x488]
	mov r3, #0
	ldr r0, _0218b27c ; =data_027e0ffc
	add r2, r4, #0x48
	mov r1, #0xba
	str r3, [r4, #0x4a4]
	bl func_ov00_020ceacc
	ldmia sp!, {r4, pc}
_0218b208:
	mov r0, #0x1e
	str r0, [r4, #0x488]
	mov r1, #1
	strb r1, [r4, #0x484]
	mov r3, #0
	ldr r0, _0218b27c ; =data_027e0ffc
	add r2, r4, #0x48
	mov r1, #0xba
	str r3, [r4, #0x4a4]
	bl func_ov00_020ceacc
	ldmia sp!, {r4, pc}
_0218b234:
	ldr r0, _0218b278 ; =data_ov00_020eec68
	mov r1, #0
	bl func_ov00_020d716c
	mov r0, #1
	strb r0, [r4, #0x484]
	mov r3, #0
	ldr r0, _0218b27c ; =data_027e0ffc
	str r3, [r4, #0x4a4]
	mov ip, #0x1e
	add r2, r4, #0x48
	mov r1, #0xbf
	str ip, [r4, #0x488]
	bl func_ov00_020ceacc
	ldmia sp!, {r4, pc}
_0218b26c:
	mov r0, #0x32
	str r0, [r4, #0x488]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b130
_0218b278: .word data_ov00_020eec68
_0218b27c: .word data_027e0ffc

	arm_func_start func_ov42_0218b280
func_ov42_0218b280: ; 0x0218b280
	ldr r1, [r0, #0x4a4]
	add r1, r1, #0xa
	add r1, r1, #0x300
	str r1, [r0, #0x4a4]
	cmp r1, #0x1000
	movge r1, #0x1000
	strge r1, [r0, #0x4a4]
	bx lr
	arm_func_end func_ov42_0218b280

	arm_func_start func_ov42_0218b2a0
func_ov42_0218b2a0: ; 0x0218b2a0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldrneb r0, [r5, #0xa5]
	ldreqb r0, [r5, #0xa4]
	cmp r0, #0
	ldreq r0, _0218b434 ; =data_027e0618
	ldreqb r0, [r0, #0x101]
	cmpeq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x488]
	mov r1, #0
	sub r0, r0, #1
	str r0, [r5, #0x488]
	cmp r0, #0
	movle r0, #0
	strle r0, [r5, #0x488]
	add r0, r5, #0x400
	ldrsb r0, [r0, #0xa0]
	mov r4, r1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0218b408
_0218b2fc: ; jump table
	b _0218b40c ; case 0
	b _0218b318 ; case 1
	b _0218b340 ; case 2
	b _0218b368 ; case 3
	b _0218b390 ; case 4
	b _0218b3b8 ; case 5
	b _0218b3e0 ; case 6
_0218b318:
	mov r0, r5
	bl func_ov42_0218b280
	ldr r0, [r5, #0x488]
	cmp r0, #0
	bne _0218b338
	mov r0, r5
	mov r1, r4
	bl func_ov42_0218b130
_0218b338:
	mov r4, #0
	b _0218b40c
_0218b340:
	mov r0, r5
	bl func_ov42_0218b280
	ldr r0, [r5, #0x488]
	cmp r0, #0
	bne _0218b360
	mov r0, r5
	mov r1, #1
	bl func_ov42_0218b130
_0218b360:
	mov r4, #1
	b _0218b40c
_0218b368:
	mov r0, r5
	bl func_ov42_0218b280
	ldr r0, [r5, #0x488]
	cmp r0, #0
	bne _0218b388
	mov r0, r5
	mov r1, #2
	bl func_ov42_0218b130
_0218b388:
	mov r4, #2
	b _0218b40c
_0218b390:
	mov r0, r5
	bl func_ov42_0218b280
	ldr r0, [r5, #0x488]
	cmp r0, #0
	bne _0218b3b0
	mov r0, r5
	mov r1, #3
	bl func_ov42_0218b130
_0218b3b0:
	mov r4, #3
	b _0218b40c
_0218b3b8:
	mov r0, r5
	mov r4, #4
	bl func_ov42_0218b280
	ldr r0, [r5, #0x488]
	cmp r0, #0
	bne _0218b40c
	mov r0, r5
	mov r1, #6
	bl func_ov42_0218b130
	b _0218b40c
_0218b3e0:
	ldr r0, [r5, #0x488]
	mov r4, #4
	cmp r0, #0
	bne _0218b40c
	mov r0, r5
	strb r1, [r5, #0x484]
	bl func_ov42_0218b130
	bl func_ov42_0218962c
	bl func_ov42_02189e60
	b _0218b40c
_0218b408:
	mov r4, #5
_0218b40c:
	add r0, r5, #0x400
	ldrsb r0, [r0, #0xa0]
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	ldr r0, _0218b438 ; =data_027e0de4
	ldr r2, _0218b43c ; =func_ov42_0218b440
	mov r3, r4
	mov r1, #6
	bl func_ov00_0207bb1c
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b2a0
_0218b434: .word data_027e0618
_0218b438: .word data_027e0de4
_0218b43c: .word func_ov42_0218b440

	arm_func_start func_ov42_0218b440
func_ov42_0218b440: ; 0x0218b440
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	mov r6, #0
	mov r8, #0x1000
	bl func_ov42_0218a794
	cmp r0, #0
	ldrne r8, [r0, #0x4a4]
	cmp sb, #4
	addls pc, pc, sb, lsl #2
	b _0218b4f0
_0218b468: ; jump table
	b _0218b4dc ; case 0
	b _0218b4c4 ; case 1
	b _0218b4ac ; case 2
	b _0218b494 ; case 3
	b _0218b47c ; case 4
_0218b47c:
	mov r6, #0x100
	mov sl, #0x100000
	mov r4, #0x40000
	mov r5, #0x4d
	mov r7, #5
	b _0218b4f0
_0218b494:
	mov sl, #0x40000
	mov r4, sl
	mov r6, #0x40
	mov r5, #0x4c
	mov r7, #3
	b _0218b4f0
_0218b4ac:
	mov sl, #0x40000
	mov r4, sl
	mov r6, #0x40
	mov r5, #0x4b
	mov r7, #3
	b _0218b4f0
_0218b4c4:
	mov sl, #0x40000
	mov r4, sl
	mov r6, #0x40
	mov r5, #0x4a
	mov r7, #3
	b _0218b4f0
_0218b4dc:
	mov r6, #0x100
	mov sl, #0x100000
	mov r4, #0x40000
	mov r5, #0x4e
	mov r7, #5
_0218b4f0:
	ldr r2, _0218b67c ; =0x0000ffff
	ldr r1, _0218b680 ; =0x040004c0
	ldr r0, _0218b684 ; =0x001f0080
	str r2, [r1]
	ldr r3, _0218b688 ; =data_027e0d44
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
	ldr r1, _0218b68c ; =0x04000488
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
	ldr r2, _0218b68c ; =0x04000488
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
	ldr r2, _0218b68c ; =0x04000488
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
	ldr r2, _0218b68c ; =0x04000488
	mov r0, r4, lsl #0x10
	mov r1, r1, lsl #0x10
	str r5, [r2]
	orr r0, r1, r0, lsr #16
	str r0, [r2, #0xc]
	mov r0, #0
	str r0, [r2, #0x7c]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b440
_0218b67c: .word 0x0000ffff
_0218b680: .word 0x040004c0
_0218b684: .word 0x001f0080
_0218b688: .word data_027e0d44
_0218b68c: .word 0x04000488

	arm_func_start func_ov42_0218b690
func_ov42_0218b690: ; 0x0218b690
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x84
	ldr r0, _0218b7cc ; =data_027e0d44
	ldr r3, _0218b7d0 ; =data_ov42_0218ca10
	ldr r4, [r0]
	add lr, sp, #4
	mov r2, #0xc
_0218b6ac:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [lr]
	strb r0, [lr, #1]
	add lr, lr, #2
	subs r2, r2, #1
	bne _0218b6ac
	ldrb ip, [r3]
	ldr r1, _0218b7d4 ; =data_ov42_0218ca2c
	add r2, sp, #4
	mov r0, r4
	mov r3, #1
	strb ip, [lr]
	blx func_ov04_02105c64
	mvn ip, #0
	ldr r2, _0218b7d8 ; =data_ov42_0218ca30
	mov r0, r4
	mov r1, #0x4a
	mov r3, #0
	str ip, [sp]
	blx func_ov04_02105b10
	mvn ip, #0
	ldr r2, _0218b7dc ; =data_ov42_0218ca44
	mov r0, r4
	mov r1, #0x4b
	mov r3, #0
	str ip, [sp]
	blx func_ov04_02105b10
	mvn r0, #0
	str r0, [sp]
	ldr r2, _0218b7e0 ; =data_ov42_0218ca58
	mov r0, r4
	mov r1, #0x4c
	mov r3, #0
	blx func_ov04_02105b10
	mov r0, r4
	blx func_ov04_02105cd0
	ldr r0, _0218b7e4 ; =data_027e05f4
	blx func_0202ab38
	mov r1, r0
	add r0, sp, #4
	bl func_02047024
	ldr r1, _0218b7e8 ; =data_ov42_0218ca6c
	add r0, sp, #4
	bl func_0204713c
	ldr r1, _0218b7ec ; =data_ov42_0218ca88
	mov r0, r4
	add r2, sp, #4
	mov r3, #1
	blx func_ov04_02105c64
	mvn r0, #0
	str r0, [sp]
	ldr r2, _0218b7f0 ; =data_ov42_0218ca8c
	mov r0, r4
	mov r1, #0x4d
	mov r3, #0
	blx func_ov04_02105b10
	mvn r0, #0
	str r0, [sp]
	ldr r2, _0218b7f4 ; =data_ov42_0218caa0
	mov r0, r4
	mov r1, #0x4e
	mov r3, #0
	blx func_ov04_02105b10
	mov r0, r4
	blx func_ov04_02105cd0
	ldr r1, _0218b7f8 ; =data_ov42_0218cab4
	add r0, sp, #4
	bl func_0204713c
	add sp, sp, #0x84
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b690
_0218b7cc: .word data_027e0d44
_0218b7d0: .word data_ov42_0218ca10
_0218b7d4: .word data_ov42_0218ca2c
_0218b7d8: .word data_ov42_0218ca30
_0218b7dc: .word data_ov42_0218ca44
_0218b7e0: .word data_ov42_0218ca58
_0218b7e4: .word data_027e05f4
_0218b7e8: .word data_ov42_0218ca6c
_0218b7ec: .word data_ov42_0218ca88
_0218b7f0: .word data_ov42_0218ca8c
_0218b7f4: .word data_ov42_0218caa0
_0218b7f8: .word data_ov42_0218cab4

	arm_func_start func_ov42_0218b7fc
func_ov42_0218b7fc: ; 0x0218b7fc
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldrb r2, [r5, #0x484]
	mov r4, r1
	cmp r2, #0
	beq _0218b81c
	bl func_ov42_0218b2a0
_0218b81c:
	cmp r4, #0
	ldrneb r0, [r5, #0xa5]
	ldreqb r0, [r5, #0xa4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1d8
	bl func_ov00_020c5f1c
	ldr r3, [r5, #0x45c]
	cmp r3, #0
	addle sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov ip, #1
	str ip, [sp, #0xc]
	str ip, [sp, #0x10]
	ldr r0, _0218b884 ; =data_ov00_020e9370
	add r2, r5, #0x48
	str ip, [sp, #0x14]
	bl func_ov05_02102c2c
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b7fc
_0218b884: .word data_ov00_020e9370

	arm_func_start func_ov42_0218b888
func_ov42_0218b888: ; 0x0218b888
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl func_ov42_0218962c
	ldrh r0, [r0, #0x58]
	str r0, [r4, #0x47c]
	bl func_ov42_0218962c
	bl func_ov42_0218a734
	str r0, [r4, #0x480]
	add r0, r4, #0x7c
	add r0, r0, #0x400
	str r0, [r5, #0x38]
	mov r0, #2
	strh r0, [r5, #0x3c]
	mov r1, r6
	mov r2, r5
	mov r0, r4
	bl func_ov14_02144d70
	ldr r0, [r4, #0x474]
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl func_ov42_0218ae58
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end func_ov42_0218b888

	arm_func_start func_ov42_0218b8ec
func_ov42_0218b8ec: ; 0x0218b8ec
	stmdb sp!, {r4, lr}
	ldr r0, [r0, #0x474]
	mov r4, r1
	cmp r0, #3
	mvnne r0, #0
	ldmia sp!, {r4, pc}
	bl func_ov42_0218962c
	mov r1, r4
	bl func_ov42_0218959c
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218b8ec

	arm_func_start func_ov42_0218b914
func_ov42_0218b914: ; 0x0218b914
	stmdb sp!, {r3, lr}
	ldr r1, _0218b940 ; =data_027e0fe0
	mov r0, #0x218
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov42_0218b9b8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b914
_0218b940: .word data_027e0fe0

	arm_func_start func_ov42_0218b944
func_ov42_0218b944: ; 0x0218b944
	stmdb sp!, {r3, lr}
	ldr r1, _0218b970 ; =data_027e0fe0
	mov r0, #0x218
	ldr r1, [r1]
	mov r2, #4
	ldr r1, [r1]
	bl func_0202e9dc
	cmp r0, #0
	ldmia sp!, {r3, pc}
	bl func_ov42_0218b9d8
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b944
_0218b970: .word data_027e0fe0

	arm_func_start func_ov42_0218b974
func_ov42_0218b974: ; 0x0218b974
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov00_020c1554
	ldr r0, _0218b9b4 ; =data_ov42_0218cc58
	mvn r2, #0
	str r0, [r4]
	str r2, [r4, #0x15c]
	add r0, r4, #0x164
	mov r1, #0
	str r2, [r4, #0x160]
	blx func_ov00_020a9588
	mov r1, #0
	str r1, [r4, #0x200]
	mov r0, r4
	str r1, [r4, #0x204]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b974
_0218b9b4: .word data_ov42_0218cc58

	arm_func_start func_ov42_0218b9b8
func_ov42_0218b9b8: ; 0x0218b9b8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218b974
	ldr r1, _0218b9d4 ; =data_ov42_0218cb98
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b9b8
_0218b9d4: .word data_ov42_0218cb98

	arm_func_start func_ov42_0218b9d8
func_ov42_0218b9d8: ; 0x0218b9d8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218b974
	ldr r1, _0218b9f4 ; =data_ov42_0218cad8
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b9d8
_0218b9f4: .word data_ov42_0218cad8

	arm_func_start func_ov42_0218b9f8
func_ov42_0218b9f8: ; 0x0218b9f8
	stmdb sp!, {r4, lr}
	ldr r1, _0218ba24 ; =data_ov42_0218cc58
	mov r4, r0
	str r1, [r4]
	bl func_ov42_0218c644
	add r0, r4, #0x164
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218b9f8
_0218ba24: .word data_ov42_0218cc58

	arm_func_start func_ov42_0218ba28
func_ov42_0218ba28: ; 0x0218ba28
	stmdb sp!, {r4, lr}
	ldr r1, _0218ba5c ; =data_ov42_0218cc58
	mov r4, r0
	str r1, [r4]
	bl func_ov42_0218c644
	add r0, r4, #0x164
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218ba28
_0218ba5c: .word data_ov42_0218cc58

	arm_func_start func_ov42_0218ba60
func_ov42_0218ba60: ; 0x0218ba60
	stmdb sp!, {r4, lr}
	ldr r1, _0218ba8c ; =data_ov42_0218cc58
	mov r4, r0
	str r1, [r4]
	bl func_ov42_0218c644
	add r0, r4, #0x164
	blx func_ov00_020a95a4
	mov r0, r4
	bl func_ov00_020c1730
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218ba60
_0218ba8c: .word data_ov42_0218cc58

	arm_func_start func_ov42_0218ba90
func_ov42_0218ba90: ; 0x0218ba90
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218ba60
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218ba90

	arm_func_start func_ov42_0218baa4
func_ov42_0218baa4: ; 0x0218baa4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218ba60
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218baa4

	arm_func_start func_ov42_0218bac0
func_ov42_0218bac0: ; 0x0218bac0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218ba60
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218bac0

	arm_func_start func_ov42_0218bad4
func_ov42_0218bad4: ; 0x0218bad4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218ba60
	mov r0, r4
	bl func_0202ea0c
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218bad4

	arm_func_start func_ov42_0218baf0
func_ov42_0218baf0: ; 0x0218baf0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0x1000
	str r1, [r4, #0x1e4]
	str r1, [r4, #0x1e8]
	add r0, r4, #0x1c0
	str r1, [r4, #0x1ec]
	bl func_01ff80d4
	mov r1, #0
	str r1, [r4, #0x7c]
	mov lr, #0x800
	str lr, [r4, #0x80]
	str r1, [r4, #0x84]
	str lr, [r4, #0x88]
	ldr r0, [r4, #0x7c]
	mov r3, #0x1800
	str r0, [r4, #0x8c]
	ldr r0, [r4, #0x80]
	sub r2, r1, #1
	str r0, [r4, #0x90]
	ldr ip, [r4, #0x84]
	mov r0, r4
	str ip, [r4, #0x94]
	ldr ip, [r4, #0x88]
	str ip, [r4, #0x98]
	str r1, [r4, #0xa8]
	str lr, [r4, #0xac]
	str r1, [r4, #0xb0]
	str r3, [r4, #0xb4]
	strh r1, [r4, #0x9c]
	str r1, [r4, #0x6c]
	str r2, [r4, #0x158]
	str r1, [r4, #0x20c]
	str r1, [r4, #0x204]
	strb r1, [r4, #0x215]
	bl func_ov42_0218c0ec
	mov r0, r4
	bl func_ov00_020c1734
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218baf0

	arm_func_start func_ov42_0218bb8c
func_ov42_0218bb8c: ; 0x0218bb8c
	stmdb sp!, {r4, lr}
	ldr r1, _0218bbc4 ; =data_027e0fec
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x2680
	bl func_ov00_020c4588
	mov r1, r0
	add r0, r4, #0x164
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, r4
	bl func_ov42_0218baf0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218bb8c
_0218bbc4: .word data_027e0fec

	arm_func_start func_ov42_0218bbc8
func_ov42_0218bbc8: ; 0x0218bbc8
	stmdb sp!, {r4, lr}
	ldr r1, _0218bc04 ; =data_027e0fec
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x2b8
	add r0, r0, #0x2400
	bl func_ov00_020c4588
	mov r1, r0
	add r0, r4, #0x164
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, r4
	bl func_ov42_0218baf0
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218bbc8
_0218bc04: .word data_027e0fec

	arm_func_start func_ov42_0218bc08
func_ov42_0218bc08: ; 0x0218bc08
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov00_020c313c
	cmp r0, #0
	beq _0218bf5c
	ldr r0, [r5, #0x204]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0218bf5c
_0218bc30: ; jump table
	b _0218bf5c ; case 0
	b _0218bc58 ; case 1
	b _0218bcb0 ; case 2
	b _0218bd74 ; case 3
	b _0218bda8 ; case 4
	b _0218bdf4 ; case 5
	b _0218be94 ; case 6
	b _0218befc ; case 7
	b _0218bf30 ; case 8
	b _0218bf3c ; case 9
_0218bc58:
	ldrb r0, [r5, #0x215]
	cmp r0, #1
	ldr r0, [r5, #0x48]
	bne _0218bc8c
	add r1, r0, #0x100
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x208]
	cmp r1, r0
	blt _0218bf5c
	mov r0, r5
	mov r1, #2
	bl func_ov42_0218c1a4
	b _0218bf5c
_0218bc8c:
	sub r1, r0, #0x100
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x208]
	cmp r1, r0
	bgt _0218bf5c
	mov r0, r5
	mov r1, #2
	bl func_ov42_0218c1a4
	b _0218bf5c
_0218bcb0:
	ldrb r0, [r5, #0x215]
	cmp r0, #1
	ldrsh r0, [r5, #0x78]
	bne _0218bd18
	sub r0, r0, #0x55
	sub r0, r0, #0x1500
	strh r0, [r5, #0x78]
	ldrsh r0, [r5, #0x78]
	cmp r0, #0
	bgt _0218bcfc
	ldr r0, [r5, #0x200]
	cmp r0, #1
	mov r0, r5
	bne _0218bcf4
	mov r1, #3
	bl func_ov42_0218c1a4
	b _0218bcfc
_0218bcf4:
	mov r1, #4
	bl func_ov42_0218c1a4
_0218bcfc:
	ldr r0, [r5, #0x200]
	cmp r0, #2
	bne _0218bd68
	ldr r0, [r5, #0x48]
	add r0, r0, #0x100
	str r0, [r5, #0x48]
	b _0218bd68
_0218bd18:
	add r0, r0, #0x55
	add r0, r0, #0x1500
	strh r0, [r5, #0x78]
	ldrsh r0, [r5, #0x78]
	cmp r0, #0
	blt _0218bd54
	ldr r0, [r5, #0x200]
	cmp r0, #1
	mov r0, r5
	bne _0218bd4c
	mov r1, #3
	bl func_ov42_0218c1a4
	b _0218bd54
_0218bd4c:
	mov r1, #4
	bl func_ov42_0218c1a4
_0218bd54:
	ldr r0, [r5, #0x200]
	cmp r0, #2
	ldreq r0, [r5, #0x48]
	subeq r0, r0, #0x100
	streq r0, [r5, #0x48]
_0218bd68:
	mov r0, r5
	bl func_ov42_0218c620
	b _0218bf5c
_0218bd74:
	ldr r0, [r5, #0x20c]
	cmp r0, #0
	ble _0218bd9c
	sub r0, r0, #1
	str r0, [r5, #0x20c]
	cmp r0, #0
	bgt _0218bd9c
	mov r0, r5
	mov r1, #5
	bl func_ov42_0218c1a4
_0218bd9c:
	mov r0, r5
	bl func_ov42_0218c620
	b _0218bf5c
_0218bda8:
	ldr r0, [r5, #0x20c]
	cmp r0, #0
	ble _0218bdd0
	sub r0, r0, #1
	str r0, [r5, #0x20c]
	cmp r0, #0
	bgt _0218bdd0
	mov r0, r5
	mov r1, #5
	bl func_ov42_0218c1a4
_0218bdd0:
	ldrb r0, [r5, #0x215]
	cmp r0, #1
	ldr r0, [r5, #0x48]
	addeq r0, r0, #0x100
	subne r0, r0, #0x100
	str r0, [r5, #0x48]
	mov r0, r5
	bl func_ov42_0218c620
	b _0218bf5c
_0218bdf4:
	ldrb r0, [r5, #0x215]
	cmp r0, #1
	bne _0218be44
	ldrsh r0, [r5, #0x78]
	add r0, r0, #0x55
	add r0, r0, #0x1500
	strh r0, [r5, #0x78]
	ldrsh r0, [r5, #0x78]
	cmp r0, #0x4000
	blt _0218be28
	mov r0, r5
	mov r1, #6
	bl func_ov42_0218c1a4
_0218be28:
	ldr r0, [r5, #0x200]
	cmp r0, #2
	bne _0218be88
	ldr r0, [r5, #0x48]
	add r0, r0, #0x100
	str r0, [r5, #0x48]
	b _0218be88
_0218be44:
	ldrsh r1, [r5, #0x78]
	mov r0, #0x4000
	rsb r0, r0, #0
	sub r1, r1, #0x55
	sub r1, r1, #0x1500
	strh r1, [r5, #0x78]
	ldrsh r1, [r5, #0x78]
	cmp r1, r0
	bgt _0218be74
	mov r0, r5
	mov r1, #6
	bl func_ov42_0218c1a4
_0218be74:
	ldr r0, [r5, #0x200]
	cmp r0, #2
	ldreq r0, [r5, #0x48]
	subeq r0, r0, #0x100
	streq r0, [r5, #0x48]
_0218be88:
	mov r0, r5
	bl func_ov42_0218c620
	b _0218bf5c
_0218be94:
	ldrb r0, [r5, #0x215]
	cmp r0, #1
	ldr r0, [r5, #0x48]
	bne _0218bed0
	add r0, r0, #0x100
	str r0, [r5, #0x48]
	bl func_ov42_0218962c
	bl func_ov42_02189574
	ldr r1, [r5, #0x48]
	cmp r1, r0
	blt _0218bf5c
	mov r0, r5
	mov r1, #0
	bl func_ov42_0218c1a4
	b _0218bf5c
_0218bed0:
	sub r0, r0, #0x100
	str r0, [r5, #0x48]
	bl func_ov42_0218962c
	bl func_ov42_02189560
	ldr r1, [r5, #0x48]
	cmp r1, r0
	bgt _0218bf5c
	mov r0, r5
	mov r1, #0
	bl func_ov42_0218c1a4
	b _0218bf5c
_0218befc:
	ldrsh r0, [r5, #0x78]
	sub r0, r0, #0x55
	sub r0, r0, #0x1500
	strh r0, [r5, #0x78]
	ldrsh r0, [r5, #0x78]
	cmp r0, #0
	bgt _0218bf24
	mov r0, r5
	mov r1, #8
	bl func_ov42_0218c1a4
_0218bf24:
	mov r0, r5
	bl func_ov42_0218c620
	b _0218bf5c
_0218bf30:
	mov r0, r5
	bl func_ov42_0218c620
	b _0218bf5c
_0218bf3c:
	ldr r0, [r5, #0x210]
	sub r0, r0, #1
	str r0, [r5, #0x210]
	cmp r0, #0
	bgt _0218bf5c
	mov r0, r5
	mov r1, #0
	bl func_ov42_0218c1a4
_0218bf5c:
	mov r1, r4
	add r0, r5, #0xa4
	add r2, r5, #0x48
	bl func_ov00_0207a1c8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end func_ov42_0218bc08

	arm_func_start func_ov42_0218bf70
func_ov42_0218bf70: ; 0x0218bf70
	stmdb sp!, {r3, lr}
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end func_ov42_0218bf70

	arm_func_start func_ov42_0218bf84
func_ov42_0218bf84: ; 0x0218bf84
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0x10]
	mov r5, r0
	cmp r1, #7
	bne _0218bff0
	ldr r2, [r4, #0x14]
	ldr r1, _0218bff8 ; =0x41525257
	ldr r2, [r2, #4]
	cmp r2, r1
	bne _0218bff0
	mov r1, #9
	bl func_ov42_0218c1a4
	bl func_ov42_0218962c
	ldr r1, [r4, #0x14]
	add r1, r1, #8
	ldmia r1!, {r1, r2}
	bl func_ov42_0218a5a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0xb4]
	blx r1
	ldr r0, [r4, #0x14]
	mov r1, #0
	strb r1, [r0, #0x118]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0218bff0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov42_0218bf84
_0218bff8: .word 0x41525257

	arm_func_start func_ov42_0218bffc
func_ov42_0218bffc: ; 0x0218bffc
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218962c
	add r1, r4, #0x48
	ldmia r1!, {r1, r2, r3}
	bl func_ov42_0218a458
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218bffc

	arm_func_start func_ov42_0218c018
func_ov42_0218c018: ; 0x0218c018
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl func_ov42_0218962c
	add r1, r4, #0x48
	ldmia r1!, {r1, r2, r3}
	bl func_ov42_0218a53c
	ldmia sp!, {r4, pc}
	arm_func_end func_ov42_0218c018

	arm_func_start func_ov42_0218c034
func_ov42_0218c034: ; 0x0218c034
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldrneb r0, [r4, #0xa5]
	ldreqb r0, [r4, #0xa4]
	cmp r0, #0
	ldrneb r0, [r4, #0x214]
	cmpne r0, #0
	ldmia sp!, {r4, pc}
	add r0, r4, #0x164
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r1, _0218c0e4 ; =data_027e0f78
	ldr r1, [r1]
	ldrh r1, [r1, #0x1e]
	bl func_020196bc
	add r0, r4, #0x164
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r1, _0218c0e4 ; =data_027e0f78
	ldr r1, [r1]
	ldrh r1, [r1, #0x1c]
	bl func_020196fc
	ldrh r1, [r4, #0x78]
	add r0, r4, #0x1c0
	ldr r3, _0218c0e8 ; =data_02050f54
	mov r1, r1, asr #0x4
	mov r2, r1, lsl #0x1
	mov r1, r2, lsl #0x1
	ldrsh r1, [r3, r1]
	add r2, r2, #1
	mov r2, r2, lsl #0x1
	ldrsh r2, [r3, r2]
	blx func_01ff8214
	add r0, r4, #0x164
	add r1, r4, #0x1e4
	add r2, r4, #0x1c0
	add r3, r4, #0x48
	ldr r4, [r0]
	ldr r4, [r4, #0x10]
	blx r4
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c034
_0218c0e4: .word data_027e0f78
_0218c0e8: .word data_02050f54

	arm_func_start func_ov42_0218c0ec
func_ov42_0218c0ec: ; 0x0218c0ec
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	str r1, [r4, #0x200]
	mov r1, #0
	strh r1, [r4, #0x78]
	bl func_ov42_0218c644
	ldr r0, [r4, #0x200]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_0218c114: ; jump table
	b _0218c124 ; case 0
	b _0218c134 ; case 1
	b _0218c134 ; case 2
	b _0218c190 ; case 3
_0218c124:
	mov r0, r4
	mov r1, #0
	bl func_ov42_0218c1a4
	ldmia sp!, {r3, r4, r5, pc}
_0218c134:
	ldr r0, _0218c1a0 ; =data_027e0764
	mov r1, #0
	ldr r3, [r0]
	ldmib r0, {r2, ip}
	umull r5, lr, ip, r3
	mla lr, ip, r2, lr
	ldr r2, [r0, #0xc]
	ldr ip, [r0, #0x10]
	mla lr, r2, r3, lr
	ldr r2, [r0, #0x14]
	adds r3, ip, r5
	str r3, [r0]
	adc r2, r2, lr
	mov r1, r1, lsl #0x1
	orrs r1, r1, r2, lsr #31
	str r2, [r0, #4]
	movne r0, #0
	moveq r0, #1
	strb r0, [r4, #0x215]
	mov r0, r4
	mov r1, #1
	bl func_ov42_0218c1a4
	ldmia sp!, {r3, r4, r5, pc}
_0218c190:
	mov r0, r4
	mov r1, #7
	bl func_ov42_0218c1a4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c0ec
_0218c1a0: .word data_027e0764

	arm_func_start func_ov42_0218c1a4
func_ov42_0218c1a4: ; 0x0218c1a4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r0
	str r1, [r4, #0x204]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0218c5f8
_0218c1c0: ; jump table
	b _0218c1e8 ; case 0
	b _0218c214 ; case 1
	b _0218c4d4 ; case 2
	b _0218c500 ; case 3
	b _0218c510 ; case 4
	b _0218c520 ; case 5
	b _0218c53c ; case 6
	b _0218c55c ; case 7
	b _0218c574 ; case 8
	b _0218c584 ; case 9
_0218c1e8:
	ldr r5, [r4, #0x158]
	cmp r5, #0
	blt _0218c204
	bl func_ov42_0218962c
	mov r1, r5
	mov r2, #0
	bl func_ov42_0218a588
_0218c204:
	mov r0, #0
	add sp, sp, #8
	strb r0, [r4, #0x214]
	ldmia sp!, {r4, r5, r6, pc}
_0218c214:
	bl func_ov42_0218962c
	bl func_ov42_0218a398
	str r0, [r4, #0x158]
	ldrb r0, [r4, #0x215]
	cmp r0, #1
	bne _0218c36c
	bl func_ov42_0218962c
	bl func_ov42_02189588
	ldr r1, [r4, #0x158]
	add r5, r0, r1, lsl #12
	bl func_ov42_0218962c
	bl func_ov42_02189560
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x4c]
	str r5, [r4, #0x50]
	ldr r0, [r4, #0x200]
	cmp r0, #2
	bne _0218c2e0
	bl func_ov42_0218962c
	bl func_ov42_02189574
	sub r5, r0, #0x4000
	bl func_ov42_0218962c
	bl func_ov42_02189560
	sub r1, r5, r0
	add r1, r1, #1
	cmp r1, #0
	movle r6, #0
	ble _0218c2d4
	ldr r2, _0218c600 ; =data_027e0764
	ldr r5, [r2]
	ldmib r2, {r3, r6}
	umull lr, ip, r6, r5
	mla ip, r6, r3, ip
	ldr r3, [r2, #0xc]
	ldr r6, [r2, #0x10]
	mla ip, r3, r5, ip
	ldr r3, [r2, #0x14]
	adds r5, r6, lr
	adc r6, r3, ip
	stmia r2!, {r5, r6}
	cmp r1, #0
	beq _0218c2d4
	mov r5, #0
	umull r3, r2, r6, r1
	mla r2, r6, r5, r2
	mla r2, r5, r1, r2
	mov r6, r2
_0218c2d4:
	add r0, r0, r6
	str r0, [r4, #0x208]
	b _0218c360
_0218c2e0:
	bl func_ov42_0218962c
	bl func_ov42_02189574
	sub r5, r0, #0x2000
	bl func_ov42_0218962c
	bl func_ov42_02189560
	add r1, r0, #0x2000
	sub r0, r5, r1
	add r0, r0, #1
	cmp r0, #0
	movle r6, #0
	ble _0218c358
	ldr r2, _0218c600 ; =data_027e0764
	ldr r5, [r2]
	ldmib r2, {r3, r6}
	umull lr, ip, r6, r5
	mla ip, r6, r3, ip
	ldr r3, [r2, #0xc]
	ldr r6, [r2, #0x10]
	mla ip, r3, r5, ip
	ldr r3, [r2, #0x14]
	adds r5, r6, lr
	adc r6, r3, ip
	stmia r2!, {r5, r6}
	cmp r0, #0
	beq _0218c358
	mov r5, #0
	umull r3, r2, r6, r0
	mla r2, r6, r5, r2
	mla r2, r5, r0, r2
	mov r6, r2
_0218c358:
	add r0, r1, r6
	str r0, [r4, #0x208]
_0218c360:
	mov r0, #0x4000
	strh r0, [r4, #0x78]
	b _0218c4b4
_0218c36c:
	bl func_ov42_0218962c
	bl func_ov42_02189588
	ldr r1, [r4, #0x158]
	add r5, r0, r1, lsl #12
	bl func_ov42_0218962c
	bl func_ov42_02189574
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x4c]
	str r5, [r4, #0x50]
	ldr r0, [r4, #0x200]
	cmp r0, #2
	bne _0218c424
	bl func_ov42_0218962c
	bl func_ov42_02189574
	mov r5, r0
	bl func_ov42_0218962c
	bl func_ov42_02189560
	add r1, r0, #0x4000
	sub r0, r5, r1
	add r0, r0, #1
	cmp r0, #0
	movle r6, #0
	ble _0218c418
	ldr r2, _0218c600 ; =data_027e0764
	ldr r5, [r2]
	ldmib r2, {r3, r6}
	umull lr, ip, r6, r5
	mla ip, r6, r3, ip
	ldr r3, [r2, #0xc]
	ldr r6, [r2, #0x10]
	mla ip, r3, r5, ip
	ldr r3, [r2, #0x14]
	adds r5, r6, lr
	adc r6, r3, ip
	stmia r2!, {r5, r6}
	cmp r0, #0
	beq _0218c418
	mov r5, #0
	umull r3, r2, r6, r0
	mla r2, r6, r5, r2
	mla r2, r5, r0, r2
	mov r6, r2
_0218c418:
	add r0, r1, r6
	str r0, [r4, #0x208]
	b _0218c4a8
_0218c424:
	bl func_ov42_0218962c
	bl func_ov42_02189574
	sub r5, r0, #0x2000
	bl func_ov42_0218962c
	bl func_ov42_02189560
	add r1, r0, #0x2000
	sub r0, r5, r1
	add r0, r0, #1
	cmp r0, #0
	movle r5, #0
	ble _0218c4a0
	ldr r2, _0218c600 ; =data_027e0764
	ldr ip, [r2]
	ldmib r2, {r3, lr}
	umull r6, r5, lr, ip
	mla r5, lr, r3, r5
	ldr r3, [r2, #0xc]
	ldr lr, [r2, #0x10]
	mla r5, r3, ip, r5
	ldr r3, [r2, #0x14]
	adds r6, lr, r6
	adc r5, r3, r5
	str r6, [r2]
	str r5, [r2, #4]
	cmp r0, #0
	beq _0218c4a0
	mov ip, #0
	umull r3, r2, r5, r0
	mla r2, r5, ip, r2
	mla r2, ip, r0, r2
	mov r5, r2
_0218c4a0:
	add r0, r1, r5
	str r0, [r4, #0x208]
_0218c4a8:
	mov r0, #0x4000
	rsb r0, r0, #0
	strh r0, [r4, #0x78]
_0218c4b4:
	bl func_ov42_0218962c
	ldr r1, [r4, #0x158]
	mov r2, #1
	bl func_ov42_0218a588
	mov r0, #1
	add sp, sp, #8
	strb r0, [r4, #0x214]
	ldmia sp!, {r4, r5, r6, pc}
_0218c4d4:
	mov r0, #0x3c
	str r0, [r4, #0x20c]
	ldr ip, [r4, #0x208]
	ldr r0, _0218c604 ; =data_027e0ffc
	ldr r1, _0218c608 ; =0x000003f2
	add r2, r4, #0x48
	mov r3, #0
	str ip, [r4, #0x48]
	bl func_ov00_020ceacc
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_0218c500:
	mov r0, #0
	add sp, sp, #8
	strh r0, [r4, #0x78]
	ldmia sp!, {r4, r5, r6, pc}
_0218c510:
	mov r0, #0
	add sp, sp, #8
	strh r0, [r4, #0x78]
	ldmia sp!, {r4, r5, r6, pc}
_0218c520:
	ldr r0, _0218c604 ; =data_027e0ffc
	ldr r1, _0218c60c ; =0x000003f3
	add r2, r4, #0x48
	mov r3, #0
	bl func_ov00_020ceacc
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_0218c53c:
	ldrb r0, [r4, #0x215]
	add sp, sp, #8
	cmp r0, #1
	mov r0, #0x4000
	streqh r0, [r4, #0x78]
	rsbne r0, r0, #0
	strneh r0, [r4, #0x78]
	ldmia sp!, {r4, r5, r6, pc}
_0218c55c:
	mov r0, #0x4000
	strh r0, [r4, #0x78]
	mov r0, #1
	add sp, sp, #8
	strb r0, [r4, #0x214]
	ldmia sp!, {r4, r5, r6, pc}
_0218c574:
	mov r0, #0
	add sp, sp, #8
	strh r0, [r4, #0x78]
	ldmia sp!, {r4, r5, r6, pc}
_0218c584:
	mov r3, #0
	str r3, [sp]
	ldr r0, _0218c610 ; =data_027e0e58
	str r3, [sp, #4]
	ldr r0, [r0]
	ldr r1, _0218c614 ; =0x0000012e
	add r2, r4, #0x48
	bl func_ov00_0207c1b0
	mov r3, #0
	str r3, [sp]
	ldr r0, _0218c610 ; =data_027e0e58
	str r3, [sp, #4]
	ldr r0, [r0]
	ldr r1, _0218c618 ; =0x0000012f
	add r2, r4, #0x48
	bl func_ov00_0207c1b0
	ldr r0, _0218c604 ; =data_027e0ffc
	add r2, r4, #0x48
	mov r1, #0x1f8
	mov r3, #0
	bl func_ov00_020ceacc
	ldr r0, _0218c61c ; =data_027e1038
	add r1, r4, #0x48
	ldr r0, [r0]
	bl func_ov00_020cef10
	mov r0, #0x1e
	str r0, [r4, #0x210]
	mov r0, #0
	strb r0, [r4, #0x214]
_0218c5f8:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c1a4
_0218c600: .word data_027e0764
_0218c604: .word data_027e0ffc
_0218c608: .word 0x000003f2
_0218c60c: .word 0x000003f3
_0218c610: .word data_027e0e58
_0218c614: .word 0x0000012e
_0218c618: .word 0x0000012f
_0218c61c: .word data_027e1038

	arm_func_start func_ov42_0218c620
func_ov42_0218c620: ; 0x0218c620
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x214]
	cmp r1, #1
	ldmia sp!, {r3, pc}
	ldr r1, _0218c640 ; =data_ov42_0218c73c
	mov r2, #0
	bl func_ov00_020c243c
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c620
_0218c640: .word data_ov42_0218c73c

	arm_func_start func_ov42_0218c644
func_ov42_0218c644: ; 0x0218c644
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x15c]
	mvn r0, #0
	cmp r1, r0
	ldmia sp!, {r4, pc}
	ldr r0, _0218c68c ; =data_027e0fe4
	add r1, r4, #0x15c
	ldr r0, [r0]
	bl func_ov00_020c3674
	cmp r0, #0
	ldmia sp!, {r4, pc}
	mov r1, #0
	strb r1, [r0, #0x118]
	sub r0, r1, #1
	str r0, [r4, #0x15c]
	str r0, [r4, #0x160]
	ldmia sp!, {r4, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c644
_0218c68c: .word data_027e0fe4

	arm_func_start func_ov42_0218c690
func_ov42_0218c690: ; 0x0218c690
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl func_ov42_0218962c
	bl func_ov42_02189574
	mov r6, r0
	bl func_ov42_0218962c
	bl func_ov42_02189560
	sub r0, r6, r0
	ldr r1, _0218c6f0 ; =0x55555556
	sub r2, r0, #0x2000
	smull r0, r6, r1, r2
	add r6, r6, r2, lsr #31
	bl func_ov42_0218962c
	bl func_ov42_02189560
	add r0, r0, #0x1000
	mla r4, r6, r4, r0
	bl func_ov42_0218962c
	bl func_ov42_02189588
	str r4, [r5, #0x48]
	mov r1, #0
	str r1, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c690
_0218c6f0: .word 0x55555556
data_ov42_0218c6f4: ; 0x0218c6f4
	.byte 0x00, 0xa0, 0xf1, 0xff
data_ov42_0218c6f8: ; 0x0218c6f8
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c6fc: ; 0x0218c6fc
	.byte 0x00, 0x20, 0xff, 0xff
data_ov42_0218c700: ; 0x0218c700
	.byte 0x01, 0x00, 0x00, 0x00
data_ov42_0218c704: ; 0x0218c704
	.byte 0x03, 0x00, 0x00, 0x00
data_ov42_0218c708: ; 0x0218c708
	.byte 0x00, 0x08, 0x00, 0x00
data_ov42_0218c70c: ; 0x0218c70c
	.byte 0xe1, 0x06, 0x00, 0x00
data_ov42_0218c710: ; 0x0218c710
	.byte 0x66, 0x1a, 0x00, 0x00
data_ov42_0218c714: ; 0x0218c714
	.byte 0x6a, 0x75, 0x6d, 0x70, 0x00, 0x00, 0x00, 0x00
data_ov42_0218c71c: ; 0x0218c71c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c720: ; 0x0218c720
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c724: ; 0x0218c724
	.byte 0x01, 0x00, 0x00, 0x00
data_ov42_0218c728: ; 0x0218c728
	.byte 0x63, 0x68, 0x65, 0x73, 0x74, 0x00, 0x00, 0x00
data_ov42_0218c730: ; 0x0218c730
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c734: ; 0x0218c734
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c738: ; 0x0218c738
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c73c: ; 0x0218c73c
	.byte 0x57, 0x52, 0x52, 0x41
data_ov42_0218c740: ; 0x0218c740
	.asciz "LLUN@-� "
_0218c74a:
	.byte 0x9f, 0xe5, 0x20, 0x10, 0x9f, 0xe5
	.byte 0x20, 0x20, 0x9f, 0xe5, 0x00, 0x30, 0xa0, 0xe3, 0x09, 0xc8, 0xfa, 0xeb, 0x0c, 0x00, 0x9f, 0xe5
	.byte 0x14, 0x10, 0x9f, 0xe5, 0x14, 0x20, 0x9f, 0xe5, 0x59, 0x0c, 0xfb, 0xeb, 0x08, 0x80, 0xbd, 0xe8
_0218c770: .word data_ov42_0218cd30
_0218c774: .word 0x4d544e50
_0218c778: .word func_ov42_0218a760
_0218c77c: .word func_0203e7b4
_0218c780: .word data_ov42_0218cd24

	arm_func_start func_ov42_0218c784
func_ov42_0218c784: ; 0x0218c784
	stmdb sp!, {r3, lr}
	ldr r0, _0218c7d4 ; =data_ov42_0218cd54
	ldr r1, _0218c7d8 ; =0x4d544748
	ldr r2, _0218c7dc ; =func_ov42_0218b914
	mov r3, #0
	bl func_0203e784
	ldr r0, _0218c7d4 ; =data_ov42_0218cd54
	ldr r1, _0218c7e0 ; =func_0203e7b4
	ldr r2, _0218c7e4 ; =data_ov42_0218cd48
	bl func_0204f8d4
	ldr r0, _0218c7e8 ; =data_ov42_0218cd74
	ldr r1, _0218c7ec ; =0x4d544752
	ldr r2, _0218c7f0 ; =func_ov42_0218b944
	mov r3, #0
	bl func_0203e784
	ldr r0, _0218c7e8 ; =data_ov42_0218cd74
	ldr r1, _0218c7e0 ; =func_0203e7b4
	ldr r2, _0218c7f4 ; =data_ov42_0218cd68
	bl func_0204f8d4
	ldmia sp!, {r3, pc}
	.align 2, 0
	arm_func_end func_ov42_0218c784
_0218c7d4: .word data_ov42_0218cd54
_0218c7d8: .word 0x4d544748
_0218c7dc: .word func_ov42_0218b914
_0218c7e0: .word func_0203e7b4
_0218c7e4: .word data_ov42_0218cd48
_0218c7e8: .word data_ov42_0218cd74
_0218c7ec: .word 0x4d544752
_0218c7f0: .word func_ov42_0218b944
_0218c7f4: .word data_ov42_0218cd68
data_ov42_0218c7f8: ; 0x0218c7f8
	.byte 0x44, 0xc7, 0x18, 0x02
data_ov42_0218c7fc: ; 0x0218c7fc
	.byte 0x84, 0xc7, 0x18, 0x02
data_ov42_0218c800: ; 0x0218c800
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c804: ; 0x0218c804
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c808: ; 0x0218c808
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c80c: ; 0x0218c80c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c810: ; 0x0218c810
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c814: ; 0x0218c814
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c818: ; 0x0218c818
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c81c: ; 0x0218c81c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c820: ; 0x0218c820
	.byte 0x62, 0x72, 0x67, 0x00
data_ov42_0218c824: ; 0x0218c824
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov42_0218c828: ; 0x0218c828
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov42_0218c82c: ; 0x0218c82c
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov42_0218c830: ; 0x0218c830
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov42_0218c834: ; 0x0218c834
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov42_0218c838: ; 0x0218c838
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov42_0218c83c: ; 0x0218c83c
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov42_0218c840: ; 0x0218c840
	.byte 0x3c, 0xc8, 0x18, 0x02
data_ov42_0218c844: ; 0x0218c844
	.byte 0x38, 0xc8, 0x18, 0x02
data_ov42_0218c848: ; 0x0218c848
	.byte 0x34, 0xc8, 0x18, 0x02
data_ov42_0218c84c: ; 0x0218c84c
	.byte 0x30, 0xc8, 0x18, 0x02
data_ov42_0218c850: ; 0x0218c850
	.byte 0x2c, 0xc8, 0x18, 0x02
data_ov42_0218c854: ; 0x0218c854
	.byte 0x28, 0xc8, 0x18, 0x02
data_ov42_0218c858: ; 0x0218c858
	.byte 0x24, 0xc8, 0x18, 0x02
data_ov42_0218c85c: ; 0x0218c85c
	.byte 0x20, 0xc8, 0x18, 0x02
data_ov42_0218c860: ; 0x0218c860
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c864: ; 0x0218c864
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c868: ; 0x0218c868
	.byte 0x54, 0x97, 0x18, 0x02
data_ov42_0218c86c: ; 0x0218c86c
	.byte 0x94, 0x97, 0x18, 0x02
data_ov42_0218c870: ; 0x0218c870
	.byte 0x34, 0x98, 0x18, 0x02
data_ov42_0218c874: ; 0x0218c874
	.byte 0x84, 0x9b, 0x18, 0x02
data_ov42_0218c878: ; 0x0218c878
	.byte 0x20, 0x9b, 0x18, 0x02
data_ov42_0218c87c: ; 0x0218c87c
	.byte 0xf8, 0x9c, 0x18, 0x02
data_ov42_0218c880: ; 0x0218c880
	.byte 0x5c, 0xa0, 0x18, 0x02
data_ov42_0218c884: ; 0x0218c884
	.byte 0x60, 0xa0, 0x18, 0x02
data_ov42_0218c888: ; 0x0218c888
	.byte 0x90, 0xa3, 0x18, 0x02
data_ov42_0218c88c: ; 0x0218c88c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c890: ; 0x0218c890
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c894: ; 0x0218c894
	.byte 0x40, 0x97, 0x18, 0x02
data_ov42_0218c898: ; 0x0218c898
	.byte 0x44, 0xa7, 0x18, 0x02
data_ov42_0218c89c: ; 0x0218c89c
	.byte 0x21, 0x03, 0x03, 0x02
data_ov42_0218c8a0: ; 0x0218c8a0
	.byte 0x25, 0x03, 0x03, 0x02
data_ov42_0218c8a4: ; 0x0218c8a4
	.byte 0x29, 0x03, 0x03, 0x02
data_ov42_0218c8a8: ; 0x0218c8a8
	.byte 0x2d, 0x03, 0x03, 0x02
data_ov42_0218c8ac: ; 0x0218c8ac
	.byte 0x31, 0x03, 0x03, 0x02
data_ov42_0218c8b0: ; 0x0218c8b0
	.byte 0x35, 0x03, 0x03, 0x02
data_ov42_0218c8b4: ; 0x0218c8b4
	.byte 0x39, 0x03, 0x03, 0x02
data_ov42_0218c8b8: ; 0x0218c8b8
	.byte 0x3d, 0x03, 0x03, 0x02
data_ov42_0218c8bc: ; 0x0218c8bc
	.byte 0x41, 0x03, 0x03, 0x02
data_ov42_0218c8c0: ; 0x0218c8c0
	.byte 0x45, 0x03, 0x03, 0x02
data_ov42_0218c8c4: ; 0x0218c8c4
	.byte 0x49, 0x03, 0x03, 0x02
data_ov42_0218c8c8: ; 0x0218c8c8
	.byte 0xd5, 0x02, 0x03, 0x02
data_ov42_0218c8cc: ; 0x0218c8cc
	.byte 0x4d, 0x03, 0x03, 0x02
data_ov42_0218c8d0: ; 0x0218c8d0
	.byte 0x51, 0x03, 0x03, 0x02
data_ov42_0218c8d4: ; 0x0218c8d4
	.byte 0x61, 0x6e, 0x63, 0x00
data_ov42_0218c8d8: ; 0x0218c8d8
	.byte 0x62, 0x6f, 0x77, 0x00
data_ov42_0218c8dc: ; 0x0218c8dc
	.byte 0x68, 0x75, 0x6c, 0x00
data_ov42_0218c8e0: ; 0x0218c8e0
	.byte 0x63, 0x61, 0x6e, 0x00
data_ov42_0218c8e4: ; 0x0218c8e4
	.byte 0x64, 0x63, 0x6f, 0x00
data_ov42_0218c8e8: ; 0x0218c8e8
	.byte 0x70, 0x64, 0x6c, 0x00
data_ov42_0218c8ec: ; 0x0218c8ec
	.byte 0x66, 0x6e, 0x6c, 0x00
data_ov42_0218c8f0: ; 0x0218c8f0
	.byte 0x62, 0x72, 0x67, 0x00
data_ov42_0218c8f4: ; 0x0218c8f4
	.byte 0xd4, 0xc8, 0x18, 0x02
data_ov42_0218c8f8: ; 0x0218c8f8
	.byte 0xd8, 0xc8, 0x18, 0x02
data_ov42_0218c8fc: ; 0x0218c8fc
	.byte 0xdc, 0xc8, 0x18, 0x02
data_ov42_0218c900: ; 0x0218c900
	.byte 0xe0, 0xc8, 0x18, 0x02
data_ov42_0218c904: ; 0x0218c904
	.byte 0xe4, 0xc8, 0x18, 0x02
data_ov42_0218c908: ; 0x0218c908
	.byte 0xe8, 0xc8, 0x18, 0x02
data_ov42_0218c90c: ; 0x0218c90c
	.byte 0xec, 0xc8, 0x18, 0x02
data_ov42_0218c910: ; 0x0218c910
	.byte 0xf0, 0xc8, 0x18, 0x02
data_ov42_0218c914: ; 0x0218c914
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c918: ; 0x0218c918
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218c91c: ; 0x0218c91c
	.byte 0xdc, 0xa8, 0x18, 0x02
data_ov42_0218c920: ; 0x0218c920
	.byte 0x00, 0xa9, 0x18, 0x02
data_ov42_0218c924: ; 0x0218c924
	.byte 0x2c, 0xa9, 0x18, 0x02
data_ov42_0218c928: ; 0x0218c928
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov42_0218c92c: ; 0x0218c92c
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov42_0218c930: ; 0x0218c930
	.byte 0x90, 0x4a, 0x14, 0x02
data_ov42_0218c934: ; 0x0218c934
	.byte 0x64, 0x4b, 0x14, 0x02
data_ov42_0218c938: ; 0x0218c938
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov42_0218c93c: ; 0x0218c93c
	.byte 0xfc, 0xb7, 0x18, 0x02
data_ov42_0218c940: ; 0x0218c940
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov42_0218c944: ; 0x0218c944
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov42_0218c948: ; 0x0218c948
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov42_0218c94c: ; 0x0218c94c
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov42_0218c950: ; 0x0218c950
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov42_0218c954: ; 0x0218c954
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov42_0218c958: ; 0x0218c958
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov42_0218c95c: ; 0x0218c95c
	.byte 0x74, 0x59, 0x14, 0x02
data_ov42_0218c960: ; 0x0218c960
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov42_0218c964: ; 0x0218c964
	.byte 0xe8, 0xaa, 0x18, 0x02
data_ov42_0218c968: ; 0x0218c968
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov42_0218c96c: ; 0x0218c96c
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov42_0218c970: ; 0x0218c970
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov42_0218c974: ; 0x0218c974
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov42_0218c978: ; 0x0218c978
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov42_0218c97c: ; 0x0218c97c
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov42_0218c980: ; 0x0218c980
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov42_0218c984: ; 0x0218c984
	.byte 0x88, 0xb8, 0x18, 0x02
data_ov42_0218c988: ; 0x0218c988
	.byte 0xe4, 0xb0, 0x18, 0x02
data_ov42_0218c98c: ; 0x0218c98c
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov42_0218c990: ; 0x0218c990
	.byte 0x98, 0x56, 0x14, 0x02
data_ov42_0218c994: ; 0x0218c994
	.byte 0x90, 0x56, 0x14, 0x02
data_ov42_0218c998: ; 0x0218c998
	.byte 0x3c, 0x57, 0x14, 0x02
data_ov42_0218c99c: ; 0x0218c99c
	.byte 0x78, 0x55, 0x14, 0x02
data_ov42_0218c9a0: ; 0x0218c9a0
	.byte 0xb0, 0x55, 0x14, 0x02
data_ov42_0218c9a4: ; 0x0218c9a4
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov42_0218c9a8: ; 0x0218c9a8
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov42_0218c9ac: ; 0x0218c9ac
	.byte 0x60, 0x57, 0x14, 0x02
data_ov42_0218c9b0: ; 0x0218c9b0
	.byte 0x14, 0x58, 0x14, 0x02
data_ov42_0218c9b4: ; 0x0218c9b4
	.byte 0x74, 0x58, 0x14, 0x02
data_ov42_0218c9b8: ; 0x0218c9b8
	.byte 0xb0, 0x58, 0x14, 0x02
data_ov42_0218c9bc: ; 0x0218c9bc
	.byte 0x6c, 0x1b, 0x0c, 0x02
data_ov42_0218c9c0: ; 0x0218c9c0
	.byte 0xb4, 0x1b, 0x0c, 0x02
data_ov42_0218c9c4: ; 0x0218c9c4
	.byte 0xf8, 0x1b, 0x0c, 0x02
data_ov42_0218c9c8: ; 0x0218c9c8
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov42_0218c9cc: ; 0x0218c9cc
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov42_0218c9d0: ; 0x0218c9d0
	.byte 0x08, 0x4d, 0x14, 0x02
data_ov42_0218c9d4: ; 0x0218c9d4
	.byte 0x34, 0x4d, 0x14, 0x02
data_ov42_0218c9d8: ; 0x0218c9d8
	.byte 0x74, 0x4d, 0x14, 0x02
data_ov42_0218c9dc: ; 0x0218c9dc
	.byte 0xfc, 0x4a, 0x14, 0x02
data_ov42_0218c9e0: ; 0x0218c9e0
	.byte 0x74, 0xab, 0x18, 0x02
data_ov42_0218c9e4: ; 0x0218c9e4
	.byte 0x78, 0x56, 0x14, 0x02
data_ov42_0218c9e8: ; 0x0218c9e8
	.byte 0xe4, 0x55, 0x14, 0x02
data_ov42_0218c9ec: ; 0x0218c9ec
	.byte 0xa0, 0x58, 0x14, 0x02
data_ov42_0218c9f0: ; 0x0218c9f0
	.byte 0x84, 0xb0, 0x18, 0x02
data_ov42_0218c9f4: ; 0x0218c9f4
	.byte 0xec, 0xb8, 0x18, 0x02
data_ov42_0218c9f8: ; 0x0218c9f8
	.byte 0xdc, 0x48, 0x14, 0x02
data_ov42_0218c9fc: ; 0x0218c9fc
	.byte 0xe4, 0x48, 0x14, 0x02
data_ov42_0218ca00: ; 0x0218ca00
	.byte 0xec, 0x48, 0x14, 0x02
data_ov42_0218ca04: ; 0x0218ca04
	.byte 0xf4, 0x48, 0x14, 0x02
data_ov42_0218ca08: ; 0x0218ca08
	.byte 0xcc, 0x58, 0x14, 0x02
data_ov42_0218ca0c: ; 0x0218ca0c
	.byte 0x00, 0x59, 0x14, 0x02
data_ov42_0218ca10: ; 0x0218ca10
	.byte 0x2f
data_ov42_0218ca11: ; 0x0218ca11
	.byte 0x4d
data_ov42_0218ca12: ; 0x0218ca12
	.byte 0x65, 0x6e, 0x75, 0x2f, 0x54, 0x65, 0x78, 0x32, 0x44, 0x2f, 0x6d, 0x69, 0x6e, 0x69
	.byte 0x67, 0x61, 0x6d, 0x65, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov42_0218ca2c: ; 0x0218ca2c
	.byte 0x4d, 0x54, 0x58, 0x00
data_ov42_0218ca30: ; 0x0218ca30
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x63, 0x6f, 0x75, 0x6e
	.byte 0x74, 0x31, 0x00, 0x00
data_ov42_0218ca44: ; 0x0218ca44
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65
	.byte 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x32, 0x00, 0x00
data_ov42_0218ca58: ; 0x0218ca58
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69
	.byte 0x67, 0x61, 0x6d, 0x65, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x33, 0x00, 0x00
data_ov42_0218ca6c: ; 0x0218ca6c
	.byte 0x2f, 0x4d, 0x65, 0x6e
	.byte 0x75, 0x2f, 0x54, 0x65, 0x78, 0x32, 0x44, 0x2f, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65
	.byte 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov42_0218ca88: ; 0x0218ca88
	.byte 0x4d, 0x54, 0x58, 0x00
data_ov42_0218ca8c: ; 0x0218ca8c
	.byte 0x4d, 0x54, 0x58, 0x3a
	.byte 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x66, 0x69, 0x6e, 0x69, 0x73, 0x68, 0x00, 0x00
data_ov42_0218caa0: ; 0x0218caa0
	.byte 0x4d, 0x54, 0x58, 0x3a, 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x72
	.byte 0x74, 0x00, 0x00, 0x00
data_ov42_0218cab4: ; 0x0218cab4
	.byte 0x2f, 0x4d, 0x65, 0x6e, 0x75, 0x2f, 0x54, 0x65, 0x78, 0x32, 0x44, 0x2f
	.byte 0x6d, 0x69, 0x6e, 0x69, 0x67, 0x61, 0x6d, 0x65, 0x2e, 0x62, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00
data_ov42_0218cad0: ; 0x0218cad0
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cad4: ; 0x0218cad4
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cad8: ; 0x0218cad8
	.byte 0xc0, 0xba, 0x18, 0x02
data_ov42_0218cadc: ; 0x0218cadc
	.byte 0xd4, 0xba, 0x18, 0x02
data_ov42_0218cae0: ; 0x0218cae0
	.byte 0xc8, 0xbb, 0x18, 0x02
data_ov42_0218cae4: ; 0x0218cae4
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov42_0218cae8: ; 0x0218cae8
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov42_0218caec: ; 0x0218caec
	.byte 0x08, 0xbc, 0x18, 0x02
data_ov42_0218caf0: ; 0x0218caf0
	.byte 0x70, 0xbf, 0x18, 0x02
data_ov42_0218caf4: ; 0x0218caf4
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov42_0218caf8: ; 0x0218caf8
	.byte 0x34, 0xc0, 0x18, 0x02
data_ov42_0218cafc: ; 0x0218cafc
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov42_0218cb00: ; 0x0218cb00
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov42_0218cb04: ; 0x0218cb04
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov42_0218cb08: ; 0x0218cb08
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov42_0218cb0c: ; 0x0218cb0c
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov42_0218cb10: ; 0x0218cb10
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov42_0218cb14: ; 0x0218cb14
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov42_0218cb18: ; 0x0218cb18
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov42_0218cb1c: ; 0x0218cb1c
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov42_0218cb20: ; 0x0218cb20
	.byte 0x84, 0xbf, 0x18, 0x02
data_ov42_0218cb24: ; 0x0218cb24
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov42_0218cb28: ; 0x0218cb28
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov42_0218cb2c: ; 0x0218cb2c
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov42_0218cb30: ; 0x0218cb30
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov42_0218cb34: ; 0x0218cb34
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov42_0218cb38: ; 0x0218cb38
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov42_0218cb3c: ; 0x0218cb3c
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov42_0218cb40: ; 0x0218cb40
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov42_0218cb44: ; 0x0218cb44
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov42_0218cb48: ; 0x0218cb48
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov42_0218cb4c: ; 0x0218cb4c
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov42_0218cb50: ; 0x0218cb50
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov42_0218cb54: ; 0x0218cb54
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov42_0218cb58: ; 0x0218cb58
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov42_0218cb5c: ; 0x0218cb5c
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov42_0218cb60: ; 0x0218cb60
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov42_0218cb64: ; 0x0218cb64
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov42_0218cb68: ; 0x0218cb68
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov42_0218cb6c: ; 0x0218cb6c
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov42_0218cb70: ; 0x0218cb70
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov42_0218cb74: ; 0x0218cb74
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov42_0218cb78: ; 0x0218cb78
	.byte 0x6c, 0x1b, 0x0c, 0x02
data_ov42_0218cb7c: ; 0x0218cb7c
	.byte 0xb4, 0x1b, 0x0c, 0x02
data_ov42_0218cb80: ; 0x0218cb80
	.byte 0xf8, 0x1b, 0x0c, 0x02
data_ov42_0218cb84: ; 0x0218cb84
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov42_0218cb88: ; 0x0218cb88
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov42_0218cb8c: ; 0x0218cb8c
	.byte 0x18, 0xc0, 0x18, 0x02
data_ov42_0218cb90: ; 0x0218cb90
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cb94: ; 0x0218cb94
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cb98: ; 0x0218cb98
	.byte 0x90, 0xba, 0x18, 0x02
data_ov42_0218cb9c: ; 0x0218cb9c
	.byte 0xa4, 0xba, 0x18, 0x02
data_ov42_0218cba0: ; 0x0218cba0
	.byte 0x8c, 0xbb, 0x18, 0x02
data_ov42_0218cba4: ; 0x0218cba4
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov42_0218cba8: ; 0x0218cba8
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov42_0218cbac: ; 0x0218cbac
	.byte 0x08, 0xbc, 0x18, 0x02
data_ov42_0218cbb0: ; 0x0218cbb0
	.byte 0x70, 0xbf, 0x18, 0x02
data_ov42_0218cbb4: ; 0x0218cbb4
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov42_0218cbb8: ; 0x0218cbb8
	.byte 0x34, 0xc0, 0x18, 0x02
data_ov42_0218cbbc: ; 0x0218cbbc
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov42_0218cbc0: ; 0x0218cbc0
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov42_0218cbc4: ; 0x0218cbc4
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov42_0218cbc8: ; 0x0218cbc8
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov42_0218cbcc: ; 0x0218cbcc
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov42_0218cbd0: ; 0x0218cbd0
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov42_0218cbd4: ; 0x0218cbd4
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov42_0218cbd8: ; 0x0218cbd8
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov42_0218cbdc: ; 0x0218cbdc
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov42_0218cbe0: ; 0x0218cbe0
	.byte 0x84, 0xbf, 0x18, 0x02
data_ov42_0218cbe4: ; 0x0218cbe4
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov42_0218cbe8: ; 0x0218cbe8
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov42_0218cbec: ; 0x0218cbec
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov42_0218cbf0: ; 0x0218cbf0
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov42_0218cbf4: ; 0x0218cbf4
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov42_0218cbf8: ; 0x0218cbf8
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov42_0218cbfc: ; 0x0218cbfc
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov42_0218cc00: ; 0x0218cc00
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov42_0218cc04: ; 0x0218cc04
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov42_0218cc08: ; 0x0218cc08
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov42_0218cc0c: ; 0x0218cc0c
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov42_0218cc10: ; 0x0218cc10
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov42_0218cc14: ; 0x0218cc14
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov42_0218cc18: ; 0x0218cc18
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov42_0218cc1c: ; 0x0218cc1c
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov42_0218cc20: ; 0x0218cc20
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov42_0218cc24: ; 0x0218cc24
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov42_0218cc28: ; 0x0218cc28
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov42_0218cc2c: ; 0x0218cc2c
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov42_0218cc30: ; 0x0218cc30
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov42_0218cc34: ; 0x0218cc34
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov42_0218cc38: ; 0x0218cc38
	.byte 0x6c, 0x1b, 0x0c, 0x02
data_ov42_0218cc3c: ; 0x0218cc3c
	.byte 0xb4, 0x1b, 0x0c, 0x02
data_ov42_0218cc40: ; 0x0218cc40
	.byte 0xf8, 0x1b, 0x0c, 0x02
data_ov42_0218cc44: ; 0x0218cc44
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov42_0218cc48: ; 0x0218cc48
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov42_0218cc4c: ; 0x0218cc4c
	.byte 0xfc, 0xbf, 0x18, 0x02
data_ov42_0218cc50: ; 0x0218cc50
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cc54: ; 0x0218cc54
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cc58: ; 0x0218cc58
	.byte 0xf8, 0xb9, 0x18, 0x02
data_ov42_0218cc5c: ; 0x0218cc5c
	.byte 0x28, 0xba, 0x18, 0x02
data_ov42_0218cc60: ; 0x0218cc60
	.byte 0xf0, 0xba, 0x18, 0x02
data_ov42_0218cc64: ; 0x0218cc64
	.byte 0x3c, 0x17, 0x0c, 0x02
data_ov42_0218cc68: ; 0x0218cc68
	.byte 0x40, 0x17, 0x0c, 0x02
data_ov42_0218cc6c: ; 0x0218cc6c
	.byte 0x08, 0xbc, 0x18, 0x02
data_ov42_0218cc70: ; 0x0218cc70
	.byte 0x70, 0xbf, 0x18, 0x02
data_ov42_0218cc74: ; 0x0218cc74
	.byte 0xd4, 0x17, 0x0c, 0x02
data_ov42_0218cc78: ; 0x0218cc78
	.byte 0x34, 0xc0, 0x18, 0x02
data_ov42_0218cc7c: ; 0x0218cc7c
	.byte 0x44, 0x17, 0x0c, 0x02
data_ov42_0218cc80: ; 0x0218cc80
	.byte 0x48, 0x17, 0x0c, 0x02
data_ov42_0218cc84: ; 0x0218cc84
	.byte 0xa8, 0x17, 0x0c, 0x02
data_ov42_0218cc88: ; 0x0218cc88
	.byte 0xb0, 0x17, 0x0c, 0x02
data_ov42_0218cc8c: ; 0x0218cc8c
	.byte 0x4c, 0x17, 0x0c, 0x02
data_ov42_0218cc90: ; 0x0218cc90
	.byte 0x7c, 0x17, 0x0c, 0x02
data_ov42_0218cc94: ; 0x0218cc94
	.byte 0xe4, 0x27, 0x0c, 0x02
data_ov42_0218cc98: ; 0x0218cc98
	.byte 0x04, 0x30, 0x0c, 0x02
data_ov42_0218cc9c: ; 0x0218cc9c
	.byte 0x44, 0x27, 0x0c, 0x02
data_ov42_0218cca0: ; 0x0218cca0
	.byte 0x84, 0xbf, 0x18, 0x02
data_ov42_0218cca4: ; 0x0218cca4
	.byte 0x50, 0x1c, 0x0c, 0x02
data_ov42_0218cca8: ; 0x0218cca8
	.byte 0x0c, 0x31, 0x0c, 0x02
data_ov42_0218ccac: ; 0x0218ccac
	.byte 0x14, 0x31, 0x0c, 0x02
data_ov42_0218ccb0: ; 0x0218ccb0
	.byte 0xa8, 0x18, 0x0c, 0x02
data_ov42_0218ccb4: ; 0x0218ccb4
	.byte 0xc4, 0x18, 0x0c, 0x02
data_ov42_0218ccb8: ; 0x0218ccb8
	.byte 0xfc, 0x18, 0x0c, 0x02
data_ov42_0218ccbc: ; 0x0218ccbc
	.byte 0x04, 0x19, 0x0c, 0x02
data_ov42_0218ccc0: ; 0x0218ccc0
	.byte 0x10, 0x19, 0x0c, 0x02
data_ov42_0218ccc4: ; 0x0218ccc4
	.byte 0x14, 0x19, 0x0c, 0x02
data_ov42_0218ccc8: ; 0x0218ccc8
	.byte 0x1c, 0x19, 0x0c, 0x02
data_ov42_0218cccc: ; 0x0218cccc
	.byte 0x24, 0x19, 0x0c, 0x02
data_ov42_0218ccd0: ; 0x0218ccd0
	.byte 0x2c, 0x19, 0x0c, 0x02
data_ov42_0218ccd4: ; 0x0218ccd4
	.byte 0x28, 0x19, 0x0c, 0x02
data_ov42_0218ccd8: ; 0x0218ccd8
	.byte 0x34, 0x19, 0x0c, 0x02
data_ov42_0218ccdc: ; 0x0218ccdc
	.byte 0x38, 0x19, 0x0c, 0x02
data_ov42_0218cce0: ; 0x0218cce0
	.byte 0x3c, 0x19, 0x0c, 0x02
data_ov42_0218cce4: ; 0x0218cce4
	.byte 0x40, 0x19, 0x0c, 0x02
data_ov42_0218cce8: ; 0x0218cce8
	.byte 0x48, 0x19, 0x0c, 0x02
data_ov42_0218ccec: ; 0x0218ccec
	.byte 0x50, 0x19, 0x0c, 0x02
data_ov42_0218ccf0: ; 0x0218ccf0
	.byte 0x54, 0x19, 0x0c, 0x02
data_ov42_0218ccf4: ; 0x0218ccf4
	.byte 0x58, 0x19, 0x0c, 0x02
data_ov42_0218ccf8: ; 0x0218ccf8
	.byte 0x6c, 0x1b, 0x0c, 0x02
data_ov42_0218ccfc: ; 0x0218ccfc
	.byte 0xb4, 0x1b, 0x0c, 0x02
data_ov42_0218cd00: ; 0x0218cd00
	.byte 0xf8, 0x1b, 0x0c, 0x02
data_ov42_0218cd04: ; 0x0218cd04
	.byte 0xfc, 0x31, 0x0c, 0x02
data_ov42_0218cd08: ; 0x0218cd08
	.byte 0x2c, 0x32, 0x0c, 0x02
data_ov42_0218cd0c: ; 0x0218cd0c
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cd10: ; 0x0218cd10
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cd14: ; 0x0218cd14
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cd18: ; 0x0218cd18
	.byte 0x00, 0x00, 0x00, 0x00
data_ov42_0218cd1c: ; 0x0218cd1c
	.byte 0x00, 0x00, 0x00, 0x00
	; 0x0218cd20

	.bss
data_ov42_0218cd20:
	.space 0x4
data_ov42_0218cd24:
	.space 0x4
data_ov42_0218cd28:
	.space 0x4
data_ov42_0218cd2c:
	.space 0x4
data_ov42_0218cd30:
	.space 0x4
data_ov42_0218cd34:
	.space 0x4
data_ov42_0218cd38:
	.space 0x4
data_ov42_0218cd3c:
	.space 0x4
data_ov42_0218cd40:
	.space 0x4
data_ov42_0218cd44:
	.space 0x4
data_ov42_0218cd48:
	.space 0x4
data_ov42_0218cd4c:
	.space 0x4
data_ov42_0218cd50:
	.space 0x4
data_ov42_0218cd54:
	.space 0x4
data_ov42_0218cd58:
	.space 0x4
data_ov42_0218cd5c:
	.space 0x4
data_ov42_0218cd60:
	.space 0x4
data_ov42_0218cd64:
	.space 0x4
data_ov42_0218cd68:
	.space 0x4
data_ov42_0218cd6c:
	.space 0x4
data_ov42_0218cd70:
	.space 0x4
data_ov42_0218cd74:
	.space 0x4
data_ov42_0218cd78:
	.space 0x4
data_ov42_0218cd7c:
	.space 0x4
data_ov42_0218cd80:
	.space 0x4
data_ov42_0218cd84:
	.space 0x4
data_ov42_0218cd88:
	.space 0x4
data_ov42_0218cd8c:
	.space 0x4
data_ov42_0218cd90:
	.space 0x4
data_ov42_0218cd94:
	.space 0x4
data_ov42_0218cd98:
	.space 0x4
data_ov42_0218cd9c:
	.space 0x4
