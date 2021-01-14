	ldr x11, [x15,x20]
	ldr x23, [x16, #94]
	cmp x15, x23
	b.eq #0xC
	ldr x25, [x11, #220]
	b #0x8
	ldr x24, [x29]
