	ldr x14, [x22,x10]
	ldr x1, [x17, #196]
	cmp x22, x1
	b.eq #0xC
	ldr x4, [x14, #95]
	b #0x8
	ldr x17, [x3, #4]
