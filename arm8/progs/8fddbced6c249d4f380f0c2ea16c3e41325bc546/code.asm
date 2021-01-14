	ldr x25, [x2,x4]
	ldr x16, [x5, #52]
	cmp x2, x16
	b.eq #0xC
	ldr x19, [x25, #102]
	b #0x8
	ldr x23, [x8]
