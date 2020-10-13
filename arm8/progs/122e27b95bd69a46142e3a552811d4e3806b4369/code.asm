	ldr x4, [x24,x17]
	ldr x2, [x11, #0]
	cmp x24, x2
	b.eq #0xC
	ldr x0, [x4, #57]
	b #0x8
	ldr x19, [x21]
