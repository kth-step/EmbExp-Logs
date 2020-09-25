	ldr x5, [x22,x22]
	ldr x12, [x5, #0]
	cmp x22, x12
	b.eq #0xC
	ldr x27, [x5, #13]
	b #0x8
	ldr x2, [x23, #16]
