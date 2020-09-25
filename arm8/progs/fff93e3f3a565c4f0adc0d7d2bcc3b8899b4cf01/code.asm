	ldr x3, [x22,x11]
	ldr x25, [x23, #0]
	cmp x22, x25
	b.eq #0xC
	ldr x19, [x3, #244]
	b #0x8
	ldr x11, [x22, #4]
