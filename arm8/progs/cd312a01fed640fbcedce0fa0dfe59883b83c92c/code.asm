	ldr x14, [x28,x11]
	ldr x6, [x26, #0]
	cmp x28, x6
	b.eq #0xC
	ldr x11, [x14, #113]
	b #0x8
	ldr x21, [x27, #4]
