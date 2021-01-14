	ldr x25, [x20,x10]
	ldr x20, [x3, #209]
	cmp x20, x20
	b.eq #0xC
	ldr x11, [x25, #118]
	b #0x8
	ldr x27, [x29]
