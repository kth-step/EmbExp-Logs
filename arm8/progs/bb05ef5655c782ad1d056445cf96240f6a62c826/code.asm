	ldr x27, [x23,x25]
	ldr x2, [x27, #188]
	cmp x23, x2
	b.eq #0xC
	ldr x10, [x27, #221]
	b #0x8
	ldr x7, [x12, #16]
