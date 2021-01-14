	ldr x13, [x11,x22]
	ldr x4, [x10, #27]
	cmp x11, x4
	b.eq #0xC
	ldr x11, [x13, #29]
	b #0x8
	ldr x18, [x19, #16]
