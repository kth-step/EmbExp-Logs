	ldr x23, [x11,x17]
	ldr x10, [x7, #0]
	cmp x11, x10
	b.eq #0xC
	ldr x24, [x23, #202]
	b #0x8
	ldr x0, [x24, #4]
