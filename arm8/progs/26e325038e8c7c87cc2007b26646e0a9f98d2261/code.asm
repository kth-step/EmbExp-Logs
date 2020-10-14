	ldr x19, [x7,x11]
	ldr x10, [x5, #0]
	cmp x7, x10
	b.eq #0xC
	ldr x10, [x19, #100]
	b #0x8
	ldr x2, [x14]
