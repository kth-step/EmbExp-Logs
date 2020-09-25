	ldr x29, [x25,x6]
	ldr x12, [x26, #0]
	cmp x25, x12
	b.eq #0xC
	ldr x22, [x29, #87]
	b #0x8
	ldr x0, [x22]
