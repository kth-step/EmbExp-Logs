	ldr x25, [x16,x16]
	ldr x18, [x5, #0]
	cmp x16, x18
	b.eq #0xC
	ldr x4, [x25, #2]
	b #0x8
	ldr x6, [x18, #4]
