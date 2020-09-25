	ldr x21, [x28,x24]
	ldr x6, [x10, #0]
	cmp x28, x6
	b.eq #0xC
	ldr x0, [x21, #220]
	b #0x8
	ldr x3, [x29, #8]
