	ldr x25, [x19,x21]
	ldr x15, [x17, #0]
	cmp x19, x15
	b.eq #0xC
	ldr x26, [x25, #180]
	b #0x8
	ldr x6, [x25]
