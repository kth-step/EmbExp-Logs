	ldr x16, [x20,x7]
	ldr x15, [x17, #128]
	cmp x20, x15
	b.eq #0xC
	ldr x22, [x16, #198]
	b #0x8
	ldr x8, [x28]
