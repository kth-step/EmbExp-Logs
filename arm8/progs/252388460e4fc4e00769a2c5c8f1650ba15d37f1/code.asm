	ldr x23, [x21,x13]
	ldr x28, [x25, #236]
	cmp x21, x28
	b.eq #0xC
	ldr x3, [x23, #133]
	b #0x8
	ldr x8, [x7, #4]
