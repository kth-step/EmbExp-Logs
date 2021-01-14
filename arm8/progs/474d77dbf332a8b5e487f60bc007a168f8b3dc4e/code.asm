	ldr x18, [x7,x26]
	ldr x9, [x24, #232]
	cmp x7, x9
	b.eq #0xC
	ldr x20, [x18, #40]
	b #0x8
	ldr x25, [x11, #16]
