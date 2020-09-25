	ldr x6, [x29,x25]
	ldr x23, [x1, #0]
	cmp x29, x23
	b.eq #0xC
	ldr x27, [x6, #165]
	b #0x8
	ldr x19, [x17]
