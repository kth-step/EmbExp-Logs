	ldr x22, [x7,x24]
	ldr x11, [x25, #42]
	cmp x7, x11
	b.eq #0xC
	ldr x16, [x22, #65]
	b #0x8
	ldr x2, [x12]
