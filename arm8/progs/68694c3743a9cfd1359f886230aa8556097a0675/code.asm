	ldr x8, [x1,x5]
	ldr x29, [x28, #88]
	cmp x1, x29
	b.eq #0xC
	ldr x9, [x8, #177]
	b #0x8
	ldr x12, [x27, #4]
