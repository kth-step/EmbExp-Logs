	ldr x8, [x24,x4]
	ldr x19, [x10, #0]
	cmp x24, x19
	b.eq #0xC
	ldr x29, [x8, #18]
	b #0x8
	ldr x11, [x13]
