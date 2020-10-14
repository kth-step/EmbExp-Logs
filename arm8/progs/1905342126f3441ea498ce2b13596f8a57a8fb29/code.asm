	ldr x19, [x3,x10]
	ldr x6, [x7, #0]
	cmp x3, x6
	b.eq #0xC
	ldr x2, [x19, #115]
	b #0x8
	ldr x9, [x28]
