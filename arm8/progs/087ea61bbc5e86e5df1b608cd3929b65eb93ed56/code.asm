	ldr x12, [x7,x16]
	ldr x22, [x13, #114]
	cmp x7, x22
	b.eq #0xC
	ldr x6, [x12, #183]
	b #0x8
	ldr x7, [x29, #16]
