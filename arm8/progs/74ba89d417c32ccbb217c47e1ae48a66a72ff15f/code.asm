	ldr x24, [x9,x17]
	ldr x16, [x11, #51]
	cmp x9, x16
	b.eq #0xC
	ldr x9, [x24, #62]
	b #0x8
	ldr x21, [x23]
