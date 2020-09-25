	ldr x12, [x7,x24]
	ldr x9, [x15, #0]
	cmp x7, x9
	b.eq #0xC
	ldr x17, [x12, #12]
	b #0x8
	ldr x20, [x25]
