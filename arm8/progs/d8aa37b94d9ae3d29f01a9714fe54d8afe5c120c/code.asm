	ldr x8, [x3,x3]
	ldr x11, [x4, #158]
	cmp x3, x11
	b.eq #0xC
	ldr x9, [x8, #101]
	b #0x8
	ldr x7, [x7]
