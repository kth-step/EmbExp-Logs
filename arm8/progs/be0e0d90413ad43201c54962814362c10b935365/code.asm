	ldr x10, [x4,x20]
	ldr x23, [x5, #0]
	cmp x4, x23
	b.eq #0xC
	ldr x21, [x10, #173]
	b #0x8
	ldr x20, [x24, #4]
