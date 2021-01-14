	ldr x21, [x29,x19]
	ldr x28, [x16, #178]
	cmp x29, x28
	b.eq #0xC
	ldr x7, [x21, #253]
	b #0x8
	ldr x13, [x21, #4]
