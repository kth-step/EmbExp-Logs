	ldr x22, [x23,x8]
	ldr x17, [x3, #239]
	cmp x23, x17
	b.eq #0xC
	ldr x19, [x22, #10]
	b #0x8
	ldr x26, [x3, #16]
