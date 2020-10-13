	ldr x28, [x27,x10]
	ldr x6, [x29, #0]
	cmp x27, x6
	b.eq #0xC
	ldr x27, [x28, #60]
	b #0x8
	ldr x13, [x7, #8]
