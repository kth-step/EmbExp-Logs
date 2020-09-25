	ldr x20, [x9,x19]
	ldr x28, [x8, #0]
	cmp x9, x28
	b.eq #0xC
	ldr x18, [x20, #38]
	b #0x8
	ldr x21, [x26, #4]
