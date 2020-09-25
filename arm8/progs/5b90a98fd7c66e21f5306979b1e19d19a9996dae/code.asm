	ldr x18, [x7,x19]
	ldr x7, [x12, #0]
	cmp x7, x7
	b.eq #0xC
	ldr x15, [x18, #92]
	b #0x8
	ldr x14, [x14, #16]
