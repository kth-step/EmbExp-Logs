	ldr x25, [x24,x24]
	ldr x15, [x8, #0]
	cmp x24, x15
	b.eq #0xC
	ldr x7, [x25, #222]
	b #0x8
	ldr x19, [x11, #4]
