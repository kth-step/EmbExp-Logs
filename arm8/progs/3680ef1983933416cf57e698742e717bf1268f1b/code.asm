	ldr x16, [x11,x12]
	ldr x19, [x23, #0]
	cmp x11, x19
	b.eq #0xC
	ldr x11, [x16, #208]
	b #0x8
	ldr x4, [x17, #16]
