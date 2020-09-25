	ldr x16, [x1,x26]
	ldr x25, [x27, #0]
	cmp x1, x25
	b.eq #0xC
	ldr x29, [x16, #212]
	b #0x8
	ldr x16, [x29, #4]
