	ldr x20, [x9,x10]
	ldr x3, [x29, #0]
	cmp x9, x3
	b.eq #0xC
	ldr x28, [x20, #88]
	b #0x8
	ldr x24, [x0, #4]
