	ldr x24, [x11,x22]
	ldr x14, [x28, #0]
	cmp x11, x14
	b.eq #0xC
	ldr x29, [x24, #60]
	b #0x8
	ldr x10, [x10, #4]
