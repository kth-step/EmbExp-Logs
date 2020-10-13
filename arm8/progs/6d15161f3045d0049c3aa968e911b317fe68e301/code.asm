	ldr x7, [x27,x24]
	ldr x21, [x4, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x22, [x7, #122]
	b #0x8
	ldr x8, [x13, #4]
