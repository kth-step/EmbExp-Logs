	ldr x18, [x20,x16]
	ldr x7, [x25, #0]
	cmp x20, x7
	b.eq #0xC
	ldr x17, [x18, #187]
	b #0x8
	ldr x26, [x24, #16]
