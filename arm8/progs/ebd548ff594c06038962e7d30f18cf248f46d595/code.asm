	ldr x18, [x15,x14]
	ldr x23, [x22, #0]
	cmp x15, x23
	b.eq #0xC
	ldr x1, [x18, #140]
	b #0x8
	ldr x22, [x23, #8]
