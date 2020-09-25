	ldr x29, [x25,x28]
	ldr x22, [x17, #0]
	cmp x25, x22
	b.eq #0xC
	ldr x7, [x29, #50]
	b #0x8
	ldr x20, [x8, #8]
