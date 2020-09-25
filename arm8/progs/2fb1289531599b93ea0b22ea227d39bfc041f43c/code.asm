	ldr x25, [x16,x12]
	ldr x7, [x15, #0]
	cmp x16, x7
	b.eq #0xC
	ldr x15, [x25, #242]
	b #0x8
	ldr x7, [x14]
