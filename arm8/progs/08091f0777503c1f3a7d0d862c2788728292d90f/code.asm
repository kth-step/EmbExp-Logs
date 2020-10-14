	ldr x28, [x25,x27]
	ldr x8, [x9, #0]
	cmp x25, x8
	b.eq #0xC
	ldr x21, [x28, #21]
	b #0x8
	ldr x9, [x20]
