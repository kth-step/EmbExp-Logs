	ldr x15, [x2,x2]
	ldr x26, [x3, #0]
	cmp x2, x26
	b.eq #0xC
	ldr x5, [x15, #233]
	b #0x8
	ldr x12, [x19, #8]
