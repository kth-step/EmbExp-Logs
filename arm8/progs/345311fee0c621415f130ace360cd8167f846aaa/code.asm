	ldr x14, [x17,x25]
	ldr x15, [x25, #52]
	cmp x17, x15
	b.eq #0xC
	ldr x19, [x14, #202]
	b #0x8
	ldr x23, [x21]
