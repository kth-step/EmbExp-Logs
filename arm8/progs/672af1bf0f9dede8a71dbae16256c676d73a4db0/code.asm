	ldr x15, [x17,x5]
	ldr x25, [x4, #0]
	cmp x17, x25
	b.eq #0xC
	ldr x24, [x15, #248]
	b #0x8
	ldr x23, [x14, #8]
