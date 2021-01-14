	ldr x5, [x23,x26]
	ldr x29, [x8, #87]
	cmp x23, x29
	b.eq #0xC
	ldr x27, [x5, #61]
	b #0x8
	ldr x22, [x27, #4]
