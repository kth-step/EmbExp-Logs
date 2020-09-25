	ldr x2, [x26,x7]
	ldr x4, [x18, #0]
	cmp x26, x4
	b.eq #0xC
	ldr x28, [x2, #11]
	b #0x8
	ldr x27, [x23]
