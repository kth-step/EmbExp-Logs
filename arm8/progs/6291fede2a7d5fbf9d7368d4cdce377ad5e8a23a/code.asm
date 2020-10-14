	ldr x11, [x4,x22]
	ldr x8, [x25, #0]
	cmp x4, x8
	b.eq #0xC
	ldr x9, [x11, #148]
	b #0x8
	ldr x26, [x4]
