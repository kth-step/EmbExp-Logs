	ldr x12, [x0,x11]
	ldr x20, [x25, #0]
	cmp x0, x20
	b.eq #0xC
	ldr x21, [x12, #40]
	b #0x8
	ldr x22, [x19]
