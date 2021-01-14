	ldr x16, [x28,x14]
	ldr x9, [x19, #80]
	cmp x28, x9
	b.eq #0xC
	ldr x10, [x16, #186]
	b #0x8
	ldr x19, [x2, #8]
