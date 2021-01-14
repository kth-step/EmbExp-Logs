	ldr x23, [x14,x24]
	ldr x16, [x7, #64]
	cmp x14, x16
	b.eq #0xC
	ldr x17, [x23, #83]
	b #0x8
	ldr x22, [x10]
