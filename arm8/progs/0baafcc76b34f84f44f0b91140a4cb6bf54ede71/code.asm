	ldr x5, [x1,x19]
	ldr x24, [x14, #7]
	cmp x1, x24
	b.eq #0xC
	ldr x15, [x5, #146]
	b #0x8
	ldr x29, [x17, #4]
