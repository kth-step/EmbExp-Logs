	ldr x23, [x13,x20]
	ldr x19, [x8, #134]
	cmp x13, x19
	b.eq #0xC
	ldr x22, [x23, #131]
	b #0x8
	ldr x22, [x12, #16]
