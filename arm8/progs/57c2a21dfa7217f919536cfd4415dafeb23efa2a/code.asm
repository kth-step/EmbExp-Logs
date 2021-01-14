	ldr x26, [x10,x3]
	ldr x6, [x3, #207]
	cmp x10, x6
	b.eq #0xC
	ldr x2, [x26, #222]
	b #0x8
	ldr x18, [x9, #4]
