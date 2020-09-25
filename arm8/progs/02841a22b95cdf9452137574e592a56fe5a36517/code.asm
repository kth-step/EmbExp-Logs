	ldr x28, [x18,x2]
	ldr x5, [x14, #0]
	cmp x18, x5
	b.eq #0xC
	ldr x11, [x28, #253]
	b #0x8
	ldr x26, [x4, #16]
