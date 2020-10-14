	ldr x8, [x15,x16]
	ldr x22, [x29, #0]
	cmp x15, x22
	b.eq #0xC
	ldr x17, [x8, #234]
	b #0x8
	ldr x16, [x7]
