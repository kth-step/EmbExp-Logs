	ldr x25, [x28,x3]
	ldr x8, [x7, #0]
	cmp x28, x8
	b.eq #0xC
	ldr x8, [x25, #41]
	b #0x8
	ldr x24, [x9, #4]
