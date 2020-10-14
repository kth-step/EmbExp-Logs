	ldr x28, [x23,x16]
	ldr x22, [x4, #0]
	cmp x23, x22
	b.eq #0xC
	ldr x21, [x28, #91]
	b #0x8
	ldr x16, [x6, #4]
