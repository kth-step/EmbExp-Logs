	ldr x10, [x12,x17]
	ldr x17, [x2, #0]
	cmp x12, x17
	b.eq #0xC
	ldr x16, [x10, #87]
	b #0x8
	ldr x14, [x2, #16]
