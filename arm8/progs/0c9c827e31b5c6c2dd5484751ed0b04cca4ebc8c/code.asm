	ldr x11, [x6,x20]
	ldr x22, [x25, #0]
	cmp x6, x22
	b.eq #0xC
	ldr x22, [x11, #83]
	b #0x8
	ldr x7, [x19, #4]
