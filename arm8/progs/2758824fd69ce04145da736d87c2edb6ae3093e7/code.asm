	ldr x8, [x26,x18]
	ldr x10, [x1, #174]
	cmp x26, x10
	b.eq #0xC
	ldr x11, [x8, #48]
	b #0x8
	ldr x19, [x15]
