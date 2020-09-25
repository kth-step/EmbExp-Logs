	ldr x22, [x15,x29]
	ldr x26, [x8, #0]
	cmp x15, x26
	b.eq #0xC
	ldr x10, [x22, #122]
	b #0x8
	ldr x19, [x15, #8]
