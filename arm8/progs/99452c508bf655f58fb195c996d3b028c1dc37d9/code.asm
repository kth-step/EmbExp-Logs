	ldr x9, [x18,x10]
	ldr x14, [x17, #0]
	cmp x18, x14
	b.eq #0xC
	ldr x28, [x9, #222]
	b #0x8
	ldr x16, [x17, #16]
