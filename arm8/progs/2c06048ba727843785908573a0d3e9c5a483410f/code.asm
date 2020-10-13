	ldr x28, [x9,x25]
	ldr x4, [x20, #0]
	cmp x9, x4
	b.eq #0xC
	ldr x6, [x28, #113]
	b #0x8
	ldr x27, [x9]
