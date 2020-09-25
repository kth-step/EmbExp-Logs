	ldr x8, [x4,x13]
	ldr x0, [x3, #0]
	cmp x4, x0
	b.eq #0xC
	ldr x14, [x8, #152]
	b #0x8
	ldr x15, [x25]
