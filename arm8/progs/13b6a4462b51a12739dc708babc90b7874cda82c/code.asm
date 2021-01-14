	ldr x25, [x27,x17]
	ldr x14, [x24, #0]
	cmp x27, x14
	b.eq #0xC
	ldr x10, [x25, #182]
	b #0x8
	ldr x18, [x16, #4]
