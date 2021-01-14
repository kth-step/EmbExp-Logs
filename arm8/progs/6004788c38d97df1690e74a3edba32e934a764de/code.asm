	ldr x11, [x5,x1]
	ldr x4, [x18, #58]
	cmp x5, x4
	b.eq #0xC
	ldr x29, [x11, #46]
	b #0x8
	ldr x24, [x16]
