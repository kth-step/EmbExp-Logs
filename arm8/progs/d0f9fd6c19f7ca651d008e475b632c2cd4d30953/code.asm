	ldr x2, [x25,x10]
	ldr x4, [x12, #157]
	cmp x25, x4
	b.eq #0xC
	ldr x0, [x2, #111]
	b #0x8
	ldr x11, [x8, #16]
