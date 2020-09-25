	ldr x2, [x20,x1]
	ldr x22, [x14, #0]
	cmp x20, x22
	b.eq #0xC
	ldr x25, [x2, #90]
	b #0x8
	ldr x21, [x28, #4]
