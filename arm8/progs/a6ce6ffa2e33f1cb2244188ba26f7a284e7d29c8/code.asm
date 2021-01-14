	ldr x29, [x25,x0]
	ldr x0, [x19, #31]
	cmp x25, x0
	b.eq #0xC
	ldr x4, [x29, #114]
	b #0x8
	ldr x12, [x2, #8]
