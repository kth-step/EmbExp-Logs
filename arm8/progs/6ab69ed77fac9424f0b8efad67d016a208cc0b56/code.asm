	ldr x12, [x16,x22]
	ldr x4, [x25, #129]
	cmp x16, x4
	b.eq #0xC
	ldr x13, [x12, #47]
	b #0x8
	ldr x0, [x18, #16]
