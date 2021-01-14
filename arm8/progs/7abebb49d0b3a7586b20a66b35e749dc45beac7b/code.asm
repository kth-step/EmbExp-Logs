	ldr x3, [x19,x28]
	ldr x11, [x3, #131]
	cmp x19, x11
	b.eq #0xC
	ldr x28, [x3, #150]
	b #0x8
	ldr x27, [x9, #16]
