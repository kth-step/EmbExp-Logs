	ldr x22, [x15,x28]
	ldr x23, [x22, #0]
	cmp x15, x23
	b.eq #0xC
	ldr x14, [x22, #36]
	b #0x8
	ldr x17, [x8]
