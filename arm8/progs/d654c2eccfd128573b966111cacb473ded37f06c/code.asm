	ldr x25, [x7,x2]
	ldr x2, [x1, #115]
	cmp x7, x2
	b.eq #0xC
	ldr x19, [x25, #131]
	b #0x8
	ldr x16, [x11]
