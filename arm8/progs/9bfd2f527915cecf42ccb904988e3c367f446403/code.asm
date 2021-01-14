	ldr x17, [x19,x9]
	ldr x4, [x22, #221]
	cmp x19, x4
	b.eq #0xC
	ldr x26, [x17, #5]
	b #0x8
	ldr x3, [x17]
