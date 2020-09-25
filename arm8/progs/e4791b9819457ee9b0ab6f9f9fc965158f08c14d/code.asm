	ldr x15, [x1,x27]
	ldr x18, [x14, #0]
	cmp x1, x18
	b.eq #0xC
	ldr x8, [x15, #84]
	b #0x8
	ldr x2, [x20]
