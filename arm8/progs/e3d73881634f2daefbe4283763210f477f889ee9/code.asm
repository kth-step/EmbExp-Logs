	ldr x16, [x7,x19]
	ldr x27, [x20, #0]
	cmp x7, x27
	b.eq #0xC
	ldr x13, [x16, #242]
	b #0x8
	ldr x28, [x21]
