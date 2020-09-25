	ldr x20, [x22,x7]
	ldr x28, [x8, #0]
	cmp x22, x28
	b.eq #0xC
	ldr x3, [x20, #223]
	b #0x8
	ldr x26, [x21]
