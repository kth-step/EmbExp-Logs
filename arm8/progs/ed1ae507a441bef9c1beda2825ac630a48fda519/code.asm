	ldr x23, [x8,x19]
	ldr x4, [x10, #0]
	cmp x8, x4
	b.eq #0xC
	ldr x17, [x23, #70]
	b #0x8
	ldr x18, [x7, #4]
