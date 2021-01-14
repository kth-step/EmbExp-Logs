	ldr x17, [x6,x5]
	ldr x22, [x20, #28]
	cmp x6, x22
	b.eq #0xC
	ldr x5, [x17, #229]
	b #0x8
	ldr x18, [x0, #16]
