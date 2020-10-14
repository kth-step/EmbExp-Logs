	ldr x21, [x11,x17]
	ldr x12, [x4, #0]
	cmp x11, x12
	b.eq #0xC
	ldr x29, [x21, #245]
	b #0x8
	ldr x26, [x1, #4]
