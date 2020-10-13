	ldr x6, [x12,x13]
	ldr x12, [x25, #0]
	cmp x12, x12
	b.eq #0xC
	ldr x28, [x6, #11]
	b #0x8
	ldr x11, [x28, #8]
