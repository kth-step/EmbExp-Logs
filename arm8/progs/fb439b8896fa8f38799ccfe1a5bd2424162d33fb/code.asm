	ldr x18, [x5,x23]
	ldr x5, [x10, #0]
	cmp x5, x5
	b.eq #0xC
	ldr x7, [x18, #87]
	b #0x8
	ldr x26, [x0, #16]
