	ldr x28, [x5,x19]
	ldr x24, [x29, #0]
	cmp x5, x24
	b.eq #0xC
	ldr x19, [x28, #208]
	b #0x8
	ldr x21, [x15, #8]
