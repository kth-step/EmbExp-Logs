	ldr x24, [x23,x5]
	ldr x25, [x22, #0]
	cmp x23, x25
	b.eq #0xC
	ldr x0, [x24, #150]
	b #0x8
	ldr x6, [x27]
