	ldr x28, [x27,x11]
	ldr x21, [x4, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x4, [x28, #72]
	b #0x8
	ldr x25, [x20, #4]
