	ldr x22, [x25,x4]
	ldr x26, [x0, #122]
	cmp x25, x26
	b.eq #0xC
	ldr x13, [x22, #99]
	b #0x8
	ldr x7, [x13, #16]
