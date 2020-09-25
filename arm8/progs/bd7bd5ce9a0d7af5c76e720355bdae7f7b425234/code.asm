	ldr x18, [x26,x12]
	ldr x14, [x15, #0]
	cmp x26, x14
	b.eq #0xC
	ldr x28, [x18, #1]
	b #0x8
	ldr x2, [x28]
