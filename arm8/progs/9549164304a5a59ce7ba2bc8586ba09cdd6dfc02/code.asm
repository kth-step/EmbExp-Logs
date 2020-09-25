	ldr x16, [x22,x1]
	ldr x20, [x0, #0]
	cmp x22, x20
	b.eq #0xC
	ldr x22, [x16, #103]
	b #0x8
	ldr x26, [x21, #4]
