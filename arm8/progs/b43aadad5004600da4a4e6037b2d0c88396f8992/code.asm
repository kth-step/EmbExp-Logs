	ldr x4, [x20,x12]
	ldr x5, [x4, #194]
	cmp x20, x5
	b.eq #0xC
	ldr x29, [x4, #243]
	b #0x8
	ldr x11, [x9]
