	ldr x11, [x24,x28]
	ldr x27, [x14, #12]
	cmp x24, x27
	b.eq #0xC
	ldr x17, [x11, #130]
	b #0x8
	ldr x25, [x19, #16]
