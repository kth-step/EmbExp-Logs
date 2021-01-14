	ldr x23, [x3,x10]
	ldr x0, [x20, #87]
	cmp x3, x0
	b.eq #0xC
	ldr x21, [x23, #7]
	b #0x8
	ldr x15, [x26, #16]
