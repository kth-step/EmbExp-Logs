	ldr x27, [x8,x8]
	ldr x22, [x0, #0]
	cmp x8, x22
	b.eq #0xC
	ldr x2, [x27, #140]
	b #0x8
	ldr x6, [x23, #8]
