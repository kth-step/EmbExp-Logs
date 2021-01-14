	ldr x26, [x29,x10]
	ldr x15, [x6, #168]
	cmp x29, x15
	b.eq #0xC
	ldr x21, [x26, #253]
	b #0x8
	ldr x5, [x13]
