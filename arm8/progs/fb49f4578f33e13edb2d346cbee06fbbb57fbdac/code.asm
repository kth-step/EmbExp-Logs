	ldr x18, [x24,x20]
	ldr x10, [x17, #0]
	cmp x24, x10
	b.eq #0xC
	ldr x12, [x18, #150]
	b #0x8
	ldr x17, [x5, #4]
