	ldr x25, [x5,x22]
	ldr x29, [x23, #0]
	cmp x5, x29
	b.eq #0xC
	ldr x2, [x25, #196]
	b #0x8
	ldr x11, [x10]
