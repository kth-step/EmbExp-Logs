	ldr x3, [x18,x13]
	ldr x2, [x11, #0]
	cmp x18, x2
	b.eq #0xC
	ldr x10, [x3, #94]
	b #0x8
	ldr x8, [x24, #16]
