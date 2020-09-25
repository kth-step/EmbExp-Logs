	ldr x22, [x21,x16]
	ldr x16, [x18, #0]
	cmp x21, x16
	b.eq #0xC
	ldr x2, [x22, #162]
	b #0x8
	ldr x17, [x14]
