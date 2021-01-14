	ldr x5, [x13,x26]
	ldr x20, [x28, #176]
	cmp x13, x20
	b.eq #0xC
	ldr x28, [x5, #186]
	b #0x8
	ldr x13, [x15, #8]
