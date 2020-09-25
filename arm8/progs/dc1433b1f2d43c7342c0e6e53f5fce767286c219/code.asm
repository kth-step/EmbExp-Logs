	ldr x9, [x27,x22]
	ldr x8, [x0, #0]
	cmp x27, x8
	b.eq #0xC
	ldr x10, [x9, #146]
	b #0x8
	ldr x23, [x2, #8]
