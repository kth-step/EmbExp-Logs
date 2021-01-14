	ldr x27, [x17,x20]
	ldr x25, [x12, #153]
	cmp x17, x25
	b.eq #0xC
	ldr x9, [x27, #121]
	b #0x8
	ldr x5, [x13]
