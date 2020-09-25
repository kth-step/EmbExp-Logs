	ldr x21, [x5,x5]
	ldr x10, [x8, #0]
	cmp x5, x10
	b.eq #0xC
	ldr x22, [x21, #100]
	b #0x8
	ldr x15, [x23, #16]
