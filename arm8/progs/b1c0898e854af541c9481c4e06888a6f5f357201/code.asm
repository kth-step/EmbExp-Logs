	ldr x25, [x8,x10]
	ldr x3, [x18, #0]
	cmp x8, x3
	b.eq #0xC
	ldr x6, [x25, #47]
	b #0x8
	ldr x0, [x3, #4]
