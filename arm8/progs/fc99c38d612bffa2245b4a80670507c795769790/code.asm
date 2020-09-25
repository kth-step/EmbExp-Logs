	ldr x2, [x15,x28]
	ldr x0, [x8, #0]
	cmp x15, x0
	b.eq #0xC
	ldr x19, [x2, #114]
	b #0x8
	ldr x0, [x21]
