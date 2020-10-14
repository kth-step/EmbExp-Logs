	ldr x3, [x16,x25]
	ldr x18, [x26, #0]
	cmp x16, x18
	b.eq #0xC
	ldr x22, [x3, #233]
	b #0x8
	ldr x5, [x20]
