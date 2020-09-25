	ldr x14, [x10,x26]
	ldr x18, [x5, #0]
	cmp x10, x18
	b.eq #0xC
	ldr x19, [x14, #34]
	b #0x8
	ldr x16, [x21, #4]
