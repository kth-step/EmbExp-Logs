	ldr x20, [x7,x6]
	ldr x19, [x13, #0]
	cmp x7, x19
	b.eq #0xC
	ldr x24, [x20, #234]
	b #0x8
	ldr x26, [x17]
