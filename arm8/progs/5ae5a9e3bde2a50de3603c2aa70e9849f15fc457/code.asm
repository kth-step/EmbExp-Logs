	ldr x25, [x20,x14]
	ldr x24, [x25, #0]
	cmp x20, x24
	b.eq #0xC
	ldr x22, [x25, #138]
	b #0x8
	ldr x1, [x7]
