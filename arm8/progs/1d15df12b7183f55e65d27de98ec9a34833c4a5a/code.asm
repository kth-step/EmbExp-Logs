	ldr x2, [x22,x17]
	ldr x10, [x13, #0]
	cmp x22, x10
	b.eq #0xC
	ldr x12, [x2, #95]
	b #0x8
	ldr x9, [x19, #8]
