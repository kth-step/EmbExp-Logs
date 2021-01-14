	ldr x25, [x2,x13]
	ldr x1, [x26, #168]
	cmp x2, x1
	b.eq #0xC
	ldr x4, [x25, #204]
	b #0x8
	ldr x13, [x22]
