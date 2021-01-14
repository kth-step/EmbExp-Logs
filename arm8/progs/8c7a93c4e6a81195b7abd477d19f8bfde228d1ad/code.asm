	ldr x24, [x26,x23]
	ldr x21, [x15, #34]
	cmp x26, x21
	b.eq #0xC
	ldr x10, [x24, #40]
	b #0x8
	ldr x22, [x26, #4]
