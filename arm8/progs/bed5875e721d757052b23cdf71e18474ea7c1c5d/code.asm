	ldr x4, [x26,x19]
	ldr x16, [x12, #0]
	cmp x26, x16
	b.eq #0xC
	ldr x29, [x4, #19]
	b #0x8
	ldr x14, [x15]
