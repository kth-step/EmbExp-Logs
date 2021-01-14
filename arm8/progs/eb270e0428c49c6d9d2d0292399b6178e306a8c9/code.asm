	ldr x29, [x22,x3]
	ldr x4, [x22, #138]
	cmp x22, x4
	b.eq #0xC
	ldr x9, [x29, #235]
	b #0x8
	ldr x26, [x10, #8]
