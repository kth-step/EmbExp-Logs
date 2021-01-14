	ldr x9, [x25,x22]
	ldr x27, [x6, #35]
	cmp x25, x27
	b.eq #0xC
	ldr x11, [x9, #239]
	b #0x8
	ldr x27, [x11, #8]
