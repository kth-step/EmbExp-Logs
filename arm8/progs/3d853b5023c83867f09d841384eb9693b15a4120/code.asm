	ldr x28, [x29,x3]
	ldr x26, [x10, #0]
	cmp x29, x26
	b.eq #0xC
	ldr x13, [x28, #119]
	b #0x8
	ldr x5, [x19, #16]
