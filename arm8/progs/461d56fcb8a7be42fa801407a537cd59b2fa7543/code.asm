	ldr x2, [x19,x17]
	ldr x14, [x9, #24]
	cmp x19, x14
	b.eq #0xC
	ldr x19, [x2, #181]
	b #0x8
	ldr x7, [x14, #16]
