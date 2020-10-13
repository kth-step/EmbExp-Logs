	ldr x18, [x15,x17]
	ldr x24, [x17, #0]
	cmp x15, x24
	b.eq #0xC
	ldr x14, [x18, #76]
	b #0x8
	ldr x14, [x25, #8]
