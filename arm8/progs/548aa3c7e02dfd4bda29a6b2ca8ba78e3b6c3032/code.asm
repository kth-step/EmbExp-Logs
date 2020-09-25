	ldr x9, [x5,x13]
	ldr x18, [x10, #0]
	cmp x5, x18
	b.eq #0xC
	ldr x22, [x9, #78]
	b #0x8
	ldr x21, [x19, #8]
