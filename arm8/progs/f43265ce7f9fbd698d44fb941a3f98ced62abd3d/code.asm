	ldr x22, [x7,x10]
	ldr x6, [x4, #0]
	cmp x7, x6
	b.eq #0xC
	ldr x11, [x22, #171]
	b #0x8
	ldr x1, [x24]
