	ldr x15, [x21,x2]
	ldr x11, [x25, #0]
	cmp x21, x11
	b.eq #0xC
	ldr x24, [x15, #161]
	b #0x8
	ldr x24, [x19, #16]
