	ldr x24, [x19,x12]
	ldr x9, [x13, #0]
	cmp x19, x9
	b.eq #0xC
	ldr x28, [x24, #86]
	b #0x8
	ldr x15, [x26]
