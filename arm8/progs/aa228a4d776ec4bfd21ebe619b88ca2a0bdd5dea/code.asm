	ldr x6, [x7,x15]
	ldr x9, [x15, #241]
	cmp x7, x9
	b.eq #0xC
	ldr x15, [x6, #12]
	b #0x8
	ldr x8, [x3]
