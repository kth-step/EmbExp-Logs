	ldr x22, [x18,x26]
	ldr x24, [x17, #0]
	cmp x18, x24
	b.eq #0xC
	ldr x14, [x22, #70]
	b #0x8
	ldr x23, [x15]
