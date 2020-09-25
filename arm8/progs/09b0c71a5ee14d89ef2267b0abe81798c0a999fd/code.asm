	ldr x22, [x7,x2]
	ldr x20, [x29, #0]
	cmp x7, x20
	b.eq #0xC
	ldr x1, [x22, #121]
	b #0x8
	ldr x26, [x19, #4]
