	ldr x10, [x24,x4]
	ldr x4, [x12, #0]
	cmp x24, x4
	b.eq #0xC
	ldr x7, [x10, #68]
	b #0x8
	ldr x29, [x8, #4]
