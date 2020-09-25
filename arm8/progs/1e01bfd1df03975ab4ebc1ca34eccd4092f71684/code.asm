	ldr x28, [x0,x10]
	ldr x9, [x22, #0]
	cmp x0, x9
	b.eq #0xC
	ldr x2, [x28, #79]
	b #0x8
	ldr x19, [x29]
