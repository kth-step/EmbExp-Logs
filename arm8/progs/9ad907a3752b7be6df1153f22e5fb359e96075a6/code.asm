	ldr x3, [x18,x29]
	ldr x11, [x27, #0]
	cmp x18, x11
	b.eq #0xC
	ldr x16, [x3, #250]
	b #0x8
	ldr x8, [x17]
