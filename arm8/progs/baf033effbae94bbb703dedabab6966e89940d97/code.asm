	ldr x2, [x15,x20]
	ldr x19, [x1, #0]
	cmp x15, x19
	b.eq #0xC
	ldr x26, [x2, #185]
	b #0x8
	ldr x22, [x18, #4]
