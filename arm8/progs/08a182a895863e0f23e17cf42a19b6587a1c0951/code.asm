	ldr x24, [x7,x20]
	ldr x1, [x29, #0]
	cmp x7, x1
	b.eq #0xC
	ldr x10, [x24, #51]
	b #0x8
	ldr x18, [x25, #4]
