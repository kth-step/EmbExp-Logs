	ldr x5, [x11,x11]
	ldr x28, [x11, #31]
	cmp x11, x28
	b.eq #0xC
	ldr x25, [x5, #98]
	b #0x8
	ldr x10, [x15, #16]
