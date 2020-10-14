	ldr x23, [x27,x10]
	ldr x2, [x27, #0]
	cmp x27, x2
	b.eq #0xC
	ldr x26, [x23, #72]
	b #0x8
	ldr x2, [x4, #16]
