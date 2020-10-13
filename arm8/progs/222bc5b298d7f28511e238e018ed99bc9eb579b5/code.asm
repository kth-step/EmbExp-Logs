	ldr x21, [x16,x8]
	ldr x18, [x20, #0]
	cmp x16, x18
	b.eq #0xC
	ldr x16, [x21, #205]
	b #0x8
	ldr x13, [x28]
