	ldr x12, [x14,x25]
	ldr x25, [x27, #0]
	cmp x14, x25
	b.eq #0xC
	ldr x8, [x12, #133]
	b #0x8
	ldr x2, [x28, #4]
