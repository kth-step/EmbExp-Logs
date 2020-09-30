	ldr x13, [x9,x16]
	ldr x3, [x7, #0]
	cmp x9, x3
	b.eq #0xC
	ldr x18, [x13, #128]
	b #0x8
	ldr x7, [x10, #4]
