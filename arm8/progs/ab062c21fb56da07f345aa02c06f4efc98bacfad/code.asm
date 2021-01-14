	ldr x11, [x14,x27]
	ldr x15, [x8, #103]
	cmp x14, x15
	b.eq #0xC
	ldr x24, [x11, #33]
	b #0x8
	ldr x6, [x20, #4]
