	ldr x12, [x27,x18]
	ldr x29, [x10, #0]
	cmp x27, x29
	b.eq #0xC
	ldr x2, [x12, #188]
	b #0x8
	ldr x3, [x27, #8]
