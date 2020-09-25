	ldr x4, [x14,x15]
	ldr x20, [x27, #0]
	cmp x14, x20
	b.eq #0xC
	ldr x29, [x4, #57]
	b #0x8
	ldr x27, [x4, #8]
