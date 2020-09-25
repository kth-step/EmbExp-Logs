	ldr x10, [x8,x6]
	ldr x25, [x27, #0]
	cmp x8, x25
	b.eq #0xC
	ldr x24, [x10, #169]
	b #0x8
	ldr x26, [x8, #16]
