	ldr x17, [x18,x14]
	ldr x5, [x20, #0]
	cmp x18, x5
	b.eq #0xC
	ldr x23, [x17, #130]
	b #0x8
	ldr x27, [x23]
