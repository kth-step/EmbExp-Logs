	ldr x16, [x23,x9]
	ldr x27, [x0, #0]
	cmp x23, x27
	b.eq #0xC
	ldr x8, [x16, #51]
	b #0x8
	ldr x23, [x22]
