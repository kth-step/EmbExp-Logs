	ldr x27, [x3,x0]
	ldr x29, [x24, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x12, [x27, #244]
	b #0x8
	ldr x21, [x19]
