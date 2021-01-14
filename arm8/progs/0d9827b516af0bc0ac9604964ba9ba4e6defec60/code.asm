	ldr x17, [x28,x15]
	ldr x20, [x3, #86]
	cmp x28, x20
	b.eq #0xC
	ldr x24, [x17, #234]
	b #0x8
	ldr x9, [x20, #8]
