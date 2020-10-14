	ldr x28, [x10,x8]
	ldr x24, [x10, #0]
	cmp x10, x24
	b.eq #0xC
	ldr x20, [x28, #80]
	b #0x8
	ldr x1, [x6, #8]
