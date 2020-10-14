	ldr x14, [x10,x20]
	ldr x10, [x29, #0]
	cmp x10, x10
	b.eq #0xC
	ldr x26, [x14, #42]
	b #0x8
	ldr x29, [x21]
