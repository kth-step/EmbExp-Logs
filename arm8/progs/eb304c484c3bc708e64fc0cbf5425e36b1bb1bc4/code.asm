	ldr x12, [x13,x8]
	ldr x3, [x11, #0]
	cmp x13, x3
	b.eq #0xC
	ldr x22, [x12, #99]
	b #0x8
	ldr x23, [x0]
