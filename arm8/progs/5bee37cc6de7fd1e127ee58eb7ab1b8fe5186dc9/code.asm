	ldr x28, [x26,x19]
	ldr x19, [x14, #17]
	cmp x26, x19
	b.eq #0xC
	ldr x14, [x28, #114]
	b #0x8
	ldr x24, [x26, #8]
