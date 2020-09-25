	ldr x24, [x5,x14]
	ldr x21, [x4, #0]
	cmp x5, x21
	b.eq #0xC
	ldr x5, [x24, #143]
	b #0x8
	ldr x3, [x6, #8]
