	ldr x5, [x18,x23]
	ldr x16, [x7, #0]
	cmp x18, x16
	b.eq #0xC
	ldr x21, [x5, #214]
	b #0x8
	ldr x22, [x20, #16]
