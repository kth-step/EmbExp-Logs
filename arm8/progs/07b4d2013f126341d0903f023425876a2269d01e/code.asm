	ldr x10, [x7,x11]
	ldr x0, [x8, #0]
	cmp x7, x0
	b.eq #0xC
	ldr x28, [x10, #242]
	b #0x8
	ldr x20, [x27]
