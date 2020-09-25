	ldr x8, [x16,x18]
	ldr x15, [x14, #0]
	cmp x16, x15
	b.eq #0xC
	ldr x17, [x8, #139]
	b #0x8
	ldr x7, [x14]
