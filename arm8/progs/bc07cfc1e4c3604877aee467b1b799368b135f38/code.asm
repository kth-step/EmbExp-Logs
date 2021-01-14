	ldr x8, [x11,x2]
	ldr x22, [x11, #235]
	cmp x11, x22
	b.eq #0xC
	ldr x4, [x8, #122]
	b #0x8
	ldr x20, [x27, #16]
