	ldr x6, [x10,x19]
	ldr x18, [x20, #10]
	cmp x10, x18
	b.eq #0xC
	ldr x4, [x6, #85]
	b #0x8
	ldr x26, [x24, #4]
