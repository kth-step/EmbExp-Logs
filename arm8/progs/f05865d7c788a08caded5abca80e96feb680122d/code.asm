	ldr x19, [x23,x15]
	ldr x26, [x17, #0]
	cmp x23, x26
	b.eq #0xC
	ldr x15, [x19, #91]
	b #0x8
	ldr x11, [x23]
