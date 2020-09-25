	ldr x25, [x11,x6]
	ldr x22, [x16, #0]
	cmp x11, x22
	b.eq #0xC
	ldr x9, [x25, #224]
	b #0x8
	ldr x1, [x29, #4]
