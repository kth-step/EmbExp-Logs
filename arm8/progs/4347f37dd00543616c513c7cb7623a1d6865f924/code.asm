	ldr x3, [x15,x28]
	ldr x25, [x2, #87]
	cmp x15, x25
	b.eq #0xC
	ldr x16, [x3, #239]
	b #0x8
	ldr x5, [x25]
