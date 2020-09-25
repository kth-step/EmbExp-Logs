	ldr x27, [x1,x17]
	ldr x5, [x14, #0]
	cmp x1, x5
	b.eq #0xC
	ldr x10, [x27, #33]
	b #0x8
	ldr x10, [x17, #8]
