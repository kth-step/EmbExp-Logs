	ldr x16, [x4,x7]
	ldr x13, [x16, #91]
	cmp x4, x13
	b.eq #0xC
	ldr x12, [x16, #71]
	b #0x8
	ldr x25, [x7, #4]
