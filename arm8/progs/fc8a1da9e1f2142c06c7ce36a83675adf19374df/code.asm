	ldr x19, [x9,x2]
	ldr x14, [x7, #0]
	cmp x9, x14
	b.eq #0xC
	ldr x27, [x19, #78]
	b #0x8
	ldr x3, [x24, #8]
