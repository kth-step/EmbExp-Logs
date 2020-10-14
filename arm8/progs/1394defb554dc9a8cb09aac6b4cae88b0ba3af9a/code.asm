	ldr x27, [x0,x3]
	ldr x25, [x19, #0]
	cmp x0, x25
	b.eq #0xC
	ldr x15, [x27, #40]
	b #0x8
	ldr x0, [x24, #4]
