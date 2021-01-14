	ldr x7, [x8,x14]
	ldr x10, [x21, #114]
	cmp x8, x10
	b.eq #0xC
	ldr x4, [x7, #251]
	b #0x8
	ldr x9, [x7, #4]
