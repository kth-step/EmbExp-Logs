	ldr x28, [x25,x2]
	ldr x24, [x26, #0]
	cmp x25, x24
	b.eq #0xC
	ldr x15, [x28, #22]
	b #0x8
	ldr x28, [x13, #8]
