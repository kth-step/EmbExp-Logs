	ldr x14, [x1,x22]
	ldr x3, [x0, #200]
	cmp x1, x3
	b.eq #0xC
	ldr x8, [x14, #204]
	b #0x8
	ldr x29, [x24]
