	ldr x22, [x9,x7]
	ldr x6, [x25, #193]
	cmp x9, x6
	b.eq #0xC
	ldr x28, [x22, #23]
	b #0x8
	ldr x11, [x26, #8]
