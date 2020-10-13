	ldr x25, [x15,x10]
	ldr x4, [x29, #0]
	cmp x15, x4
	b.eq #0xC
	ldr x24, [x25, #78]
	b #0x8
	ldr x1, [x25, #4]
