	ldr x10, [x20,x7]
	ldr x12, [x28, #0]
	cmp x20, x12
	b.eq #0xC
	ldr x7, [x10, #234]
	b #0x8
	ldr x12, [x25, #8]
