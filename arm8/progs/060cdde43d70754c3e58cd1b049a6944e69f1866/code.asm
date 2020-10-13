	ldr x16, [x2,x24]
	ldr x23, [x25, #0]
	cmp x2, x23
	b.eq #0xC
	ldr x22, [x16, #219]
	b #0x8
	ldr x0, [x22]
