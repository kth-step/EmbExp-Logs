	ldr x28, [x18,x8]
	ldr x11, [x3, #235]
	cmp x18, x11
	b.eq #0xC
	ldr x17, [x28, #139]
	b #0x8
	ldr x24, [x20, #16]
