	ldr x27, [x16,x20]
	ldr x5, [x0, #0]
	cmp x16, x5
	b.eq #0xC
	ldr x14, [x27, #126]
	b #0x8
	ldr x25, [x8]
