	ldr x19, [x22,x23]
	ldr x25, [x13, #71]
	cmp x22, x25
	b.eq #0xC
	ldr x20, [x19, #27]
	b #0x8
	ldr x19, [x3, #16]
