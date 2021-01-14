	ldr x6, [x1,x4]
	ldr x25, [x26, #71]
	cmp x1, x25
	b.eq #0xC
	ldr x28, [x6, #85]
	b #0x8
	ldr x29, [x6, #4]
