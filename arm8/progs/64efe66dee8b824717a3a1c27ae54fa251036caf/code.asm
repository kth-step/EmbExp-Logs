	ldr x6, [x18,x29]
	ldr x23, [x17, #0]
	cmp x18, x23
	b.eq #0xC
	ldr x20, [x6, #70]
	b #0x8
	ldr x16, [x27, #16]
