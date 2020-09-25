	ldr x8, [x14,x19]
	ldr x15, [x2, #0]
	cmp x14, x15
	b.eq #0xC
	ldr x27, [x8, #20]
	b #0x8
	ldr x12, [x23, #16]
