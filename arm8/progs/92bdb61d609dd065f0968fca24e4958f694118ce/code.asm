	ldr x28, [x29,x0]
	ldr x20, [x22, #2]
	cmp x29, x20
	b.eq #0xC
	ldr x7, [x28, #77]
	b #0x8
	ldr x19, [x5]
