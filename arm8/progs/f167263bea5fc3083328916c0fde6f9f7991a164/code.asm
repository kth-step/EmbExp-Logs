	ldr x21, [x28,x27]
	ldr x6, [x1, #0]
	cmp x28, x6
	b.eq #0xC
	ldr x10, [x21, #58]
	b #0x8
	ldr x21, [x3, #16]
