	ldr x11, [x13,x17]
	ldr x0, [x24, #188]
	cmp x13, x0
	b.eq #0xC
	ldr x7, [x11, #70]
	b #0x8
	ldr x17, [x3]
