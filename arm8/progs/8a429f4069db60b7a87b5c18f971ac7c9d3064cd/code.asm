	ldr x5, [x23,x22]
	ldr x18, [x22, #0]
	cmp x23, x18
	b.eq #0xC
	ldr x26, [x5, #137]
	b #0x8
	ldr x2, [x8, #8]
