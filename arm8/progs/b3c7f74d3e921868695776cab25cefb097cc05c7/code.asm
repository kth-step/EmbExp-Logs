	ldr x21, [x5,x11]
	ldr x4, [x29, #0]
	cmp x5, x4
	b.eq #0xC
	ldr x3, [x21, #111]
	b #0x8
	ldr x22, [x12]
