	ldr x15, [x7,x20]
	ldr x22, [x12, #0]
	cmp x7, x22
	b.eq #0xC
	ldr x8, [x15, #193]
	b #0x8
	ldr x17, [x20, #8]
