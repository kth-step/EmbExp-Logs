	ldr x8, [x0,x24]
	ldr x0, [x7, #0]
	cmp x0, x0
	b.eq #0xC
	ldr x2, [x8, #120]
	b #0x8
	ldr x27, [x3, #16]
