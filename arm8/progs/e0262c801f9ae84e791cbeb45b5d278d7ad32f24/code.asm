	ldr x21, [x8,x3]
	ldr x16, [x28, #93]
	cmp x8, x16
	b.eq #0xC
	ldr x18, [x21, #251]
	b #0x8
	ldr x18, [x5, #4]
