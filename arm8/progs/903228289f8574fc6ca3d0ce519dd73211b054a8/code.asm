	ldr x7, [x18,x2]
	ldr x26, [x0, #0]
	cmp x18, x26
	b.eq #0xC
	ldr x10, [x7, #55]
	b #0x8
	ldr x18, [x4, #8]
