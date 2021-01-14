	ldr x2, [x24,x11]
	ldr x4, [x10, #234]
	cmp x24, x4
	b.eq #0xC
	ldr x24, [x2, #126]
	b #0x8
	ldr x29, [x20, #4]
