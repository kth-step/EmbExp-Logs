	ldr x13, [x23,x17]
	ldr x22, [x21, #0]
	cmp x23, x22
	b.eq #0xC
	ldr x22, [x13, #118]
	b #0x8
	ldr x3, [x12, #16]
