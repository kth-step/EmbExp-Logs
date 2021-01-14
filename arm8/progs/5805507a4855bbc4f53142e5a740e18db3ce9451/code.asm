	ldr x14, [x9,x3]
	ldr x16, [x28, #244]
	cmp x9, x16
	b.eq #0xC
	ldr x18, [x14, #217]
	b #0x8
	ldr x8, [x10]
