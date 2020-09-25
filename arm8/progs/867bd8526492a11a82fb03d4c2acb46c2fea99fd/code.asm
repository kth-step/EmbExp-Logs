	ldr x25, [x12,x17]
	ldr x17, [x3, #0]
	cmp x12, x17
	b.eq #0xC
	ldr x19, [x25, #210]
	b #0x8
	ldr x6, [x29]
