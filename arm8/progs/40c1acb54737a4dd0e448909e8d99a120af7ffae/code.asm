	ldr x28, [x9,x22]
	ldr x0, [x3, #0]
	cmp x9, x0
	b.eq #0xC
	ldr x20, [x28, #8]
	b #0x8
	ldr x17, [x12]
