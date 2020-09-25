	ldr x4, [x28,x2]
	ldr x21, [x26, #0]
	cmp x28, x21
	b.eq #0xC
	ldr x7, [x4, #161]
	b #0x8
	ldr x5, [x3]
