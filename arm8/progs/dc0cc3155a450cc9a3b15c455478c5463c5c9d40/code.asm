	ldr x23, [x19,x16]
	ldr x16, [x10, #0]
	cmp x19, x16
	b.eq #0xC
	ldr x29, [x23, #205]
	b #0x8
	ldr x9, [x14, #16]
