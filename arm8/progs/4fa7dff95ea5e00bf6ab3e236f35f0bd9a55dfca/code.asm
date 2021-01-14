	ldr x27, [x25,x28]
	ldr x21, [x26, #128]
	cmp x25, x21
	b.eq #0xC
	ldr x25, [x27, #255]
	b #0x8
	ldr x11, [x26, #8]
