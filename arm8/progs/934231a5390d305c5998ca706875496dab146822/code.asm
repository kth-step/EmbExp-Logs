	ldr x24, [x2,x14]
	ldr x20, [x8, #0]
	cmp x2, x20
	b.eq #0xC
	ldr x25, [x24, #36]
	b #0x8
	ldr x28, [x10, #4]
