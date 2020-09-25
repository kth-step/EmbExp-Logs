	ldr x25, [x13,x22]
	ldr x11, [x9, #0]
	cmp x13, x11
	b.eq #0xC
	ldr x18, [x25, #71]
	b #0x8
	ldr x9, [x18]
