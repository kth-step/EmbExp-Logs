	ldr x13, [x10,x22]
	ldr x0, [x28, #22]
	cmp x10, x0
	b.eq #0xC
	ldr x19, [x13, #215]
	b #0x8
	ldr x20, [x9]
