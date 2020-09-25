	ldr x11, [x28,x13]
	ldr x18, [x11, #0]
	cmp x28, x18
	b.eq #0xC
	ldr x8, [x11, #102]
	b #0x8
	ldr x1, [x22]
