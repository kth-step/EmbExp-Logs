	ldr x4, [x9,x8]
	ldr x23, [x18, #0]
	cmp x9, x23
	b.eq #0xC
	ldr x7, [x4, #70]
	b #0x8
	ldr x14, [x7]
