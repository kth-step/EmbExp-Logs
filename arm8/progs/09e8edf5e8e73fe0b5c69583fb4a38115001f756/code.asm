	ldr x5, [x2,x22]
	ldr x16, [x2, #0]
	cmp x2, x16
	b.eq #0xC
	ldr x18, [x5, #114]
	b #0x8
	ldr x24, [x19]
