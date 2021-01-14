	ldr x26, [x11,x4]
	ldr x0, [x21, #240]
	cmp x11, x0
	b.eq #0xC
	ldr x25, [x26, #141]
	b #0x8
	ldr x19, [x2]
