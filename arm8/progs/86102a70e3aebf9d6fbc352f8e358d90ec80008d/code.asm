	ldr x21, [x22,x2]
	ldr x26, [x7, #0]
	cmp x22, x26
	b.eq #0xC
	ldr x11, [x21, #158]
	b #0x8
	ldr x2, [x5, #4]
