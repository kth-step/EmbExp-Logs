	ldr x27, [x24,x1]
	ldr x23, [x21, #0]
	cmp x24, x23
	b.eq #0xC
	ldr x29, [x27, #114]
	b #0x8
	ldr x13, [x12, #16]
