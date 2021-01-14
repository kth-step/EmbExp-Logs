	ldr x20, [x27,x14]
	ldr x21, [x6, #163]
	cmp x27, x21
	b.eq #0xC
	ldr x11, [x20, #158]
	b #0x8
	ldr x17, [x5, #4]
