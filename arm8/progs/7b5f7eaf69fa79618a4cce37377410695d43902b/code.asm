	ldr x22, [x4,x20]
	ldr x19, [x29, #0]
	cmp x4, x19
	b.eq #0xC
	ldr x9, [x22, #114]
	b #0x8
	ldr x5, [x6]
