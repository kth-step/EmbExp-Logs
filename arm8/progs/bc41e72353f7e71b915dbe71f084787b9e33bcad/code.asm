	ldr x6, [x12,x10]
	ldr x10, [x3, #0]
	cmp x12, x10
	b.eq #0xC
	ldr x17, [x6, #22]
	b #0x8
	ldr x6, [x18, #16]
