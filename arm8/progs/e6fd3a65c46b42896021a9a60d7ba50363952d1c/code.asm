	ldr x23, [x25,x4]
	ldr x1, [x17, #0]
	cmp x25, x1
	b.eq #0xC
	ldr x14, [x23, #91]
	b #0x8
	ldr x26, [x6]
