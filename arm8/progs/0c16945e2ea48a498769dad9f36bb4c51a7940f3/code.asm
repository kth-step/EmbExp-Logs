	ldr x20, [x23,x11]
	ldr x23, [x12, #0]
	cmp x23, x23
	b.eq #0xC
	ldr x7, [x20, #148]
	b #0x8
	ldr x26, [x19]
