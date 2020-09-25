	ldr x21, [x11,x4]
	ldr x1, [x24, #0]
	cmp x11, x1
	b.eq #0xC
	ldr x6, [x21, #82]
	b #0x8
	ldr x7, [x28]
