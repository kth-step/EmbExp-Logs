	ldr x25, [x0,x1]
	ldr x26, [x19, #0]
	cmp x0, x26
	b.eq #0xC
	ldr x2, [x25, #70]
	b #0x8
	ldr x20, [x11]
