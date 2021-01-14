	ldr x16, [x7,x18]
	ldr x22, [x20, #91]
	cmp x7, x22
	b.eq #0xC
	ldr x13, [x16, #191]
	b #0x8
	ldr x3, [x13]
