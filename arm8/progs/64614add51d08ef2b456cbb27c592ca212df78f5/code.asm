	ldr x25, [x19,x15]
	ldr x14, [x12, #0]
	cmp x19, x14
	b.eq #0xC
	ldr x6, [x25, #170]
	b #0x8
	ldr x3, [x29]
