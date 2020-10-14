	ldr x29, [x0,x2]
	ldr x17, [x20, #0]
	cmp x0, x17
	b.eq #0xC
	ldr x8, [x29, #128]
	b #0x8
	ldr x11, [x27]
