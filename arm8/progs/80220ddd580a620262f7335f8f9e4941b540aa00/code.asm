	ldr x8, [x14,x16]
	ldr x5, [x15, #0]
	cmp x14, x5
	b.eq #0xC
	ldr x6, [x8, #33]
	b #0x8
	ldr x21, [x26]
