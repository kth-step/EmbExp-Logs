	ldr x17, [x15,x24]
	ldr x9, [x21, #0]
	cmp x15, x9
	b.eq #0xC
	ldr x18, [x17, #28]
	b #0x8
	ldr x10, [x4]
