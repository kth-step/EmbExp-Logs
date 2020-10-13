	ldr x12, [x10,x6]
	ldr x2, [x25, #0]
	cmp x10, x2
	b.eq #0xC
	ldr x10, [x12, #137]
	b #0x8
	ldr x15, [x18, #4]
