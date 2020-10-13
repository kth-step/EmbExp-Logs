	ldr x6, [x27,x18]
	ldr x1, [x2, #0]
	cmp x27, x1
	b.eq #0xC
	ldr x0, [x6, #103]
	b #0x8
	ldr x3, [x0]
