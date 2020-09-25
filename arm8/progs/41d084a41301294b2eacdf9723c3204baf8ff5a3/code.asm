	ldr x6, [x8,x16]
	ldr x13, [x4, #0]
	cmp x8, x13
	b.eq #0xC
	ldr x12, [x6, #222]
	b #0x8
	ldr x28, [x27, #4]
