	ldr x22, [x3,x18]
	ldr x4, [x20, #0]
	cmp x3, x4
	b.eq #0xC
	ldr x29, [x22, #239]
	b #0x8
	ldr x17, [x4, #8]
