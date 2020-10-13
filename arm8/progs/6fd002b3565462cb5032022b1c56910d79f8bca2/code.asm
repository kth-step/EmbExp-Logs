	ldr x5, [x15,x22]
	ldr x12, [x7, #0]
	cmp x15, x12
	b.eq #0xC
	ldr x20, [x5, #45]
	b #0x8
	ldr x19, [x7, #16]
