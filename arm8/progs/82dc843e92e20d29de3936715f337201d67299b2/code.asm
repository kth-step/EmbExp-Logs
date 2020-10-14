	ldr x23, [x29,x12]
	ldr x17, [x26, #0]
	cmp x29, x17
	b.eq #0xC
	ldr x17, [x23, #169]
	b #0x8
	ldr x19, [x13]
