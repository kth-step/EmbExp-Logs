	ldr x8, [x25,x4]
	ldr x26, [x29, #0]
	cmp x25, x26
	b.eq #0xC
	ldr x13, [x8, #219]
	b #0x8
	ldr x23, [x15, #4]
