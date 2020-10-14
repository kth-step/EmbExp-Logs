	ldr x9, [x22,x5]
	ldr x27, [x17, #0]
	cmp x22, x27
	b.eq #0xC
	ldr x17, [x9, #215]
	b #0x8
	ldr x23, [x15]
