	ldr x27, [x11,x8]
	ldr x4, [x22, #0]
	cmp x11, x4
	b.eq #0xC
	ldr x10, [x27, #139]
	b #0x8
	ldr x15, [x11, #4]
