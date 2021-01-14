	ldr x24, [x9,x26]
	ldr x11, [x1, #22]
	cmp x9, x11
	b.eq #0xC
	ldr x23, [x24, #111]
	b #0x8
	ldr x23, [x9, #16]
