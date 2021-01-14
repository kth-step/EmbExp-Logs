	ldr x17, [x22,x21]
	ldr x25, [x2, #54]
	cmp x22, x25
	b.eq #0xC
	ldr x1, [x17, #222]
	b #0x8
	ldr x3, [x28, #8]
