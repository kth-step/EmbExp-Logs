	ldr x13, [x5,x22]
	ldr x22, [x8, #212]
	cmp x5, x22
	b.eq #0xC
	ldr x22, [x13, #15]
	b #0x8
	ldr x2, [x23, #4]
