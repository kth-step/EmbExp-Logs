	ldr x28, [x3,x0]
	ldr x3, [x11, #40]
	cmp x3, x3
	b.eq #0xC
	ldr x25, [x28, #43]
	b #0x8
	ldr x18, [x14, #4]
