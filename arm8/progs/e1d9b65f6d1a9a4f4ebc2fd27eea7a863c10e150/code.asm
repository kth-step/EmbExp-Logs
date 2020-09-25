	ldr x24, [x27,x16]
	ldr x28, [x15, #0]
	cmp x27, x28
	b.eq #0xC
	ldr x17, [x24, #214]
	b #0x8
	ldr x1, [x16]
