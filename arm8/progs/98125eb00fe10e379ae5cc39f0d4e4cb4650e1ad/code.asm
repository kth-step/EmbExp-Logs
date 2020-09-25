	ldr x28, [x22,x22]
	ldr x1, [x22, #0]
	cmp x22, x1
	b.eq #0xC
	ldr x22, [x28, #43]
	b #0x8
	ldr x7, [x13, #8]
