	ldr x6, [x25,x28]
	ldr x28, [x15, #0]
	cmp x25, x28
	b.eq #0xC
	ldr x29, [x6, #241]
	b #0x8
	ldr x6, [x10, #8]
