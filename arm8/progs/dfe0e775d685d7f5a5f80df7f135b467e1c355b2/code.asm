	ldr x18, [x9,x2]
	ldr x13, [x17, #0]
	cmp x9, x13
	b.eq #0xC
	ldr x27, [x18, #158]
	b #0x8
	ldr x16, [x14]
