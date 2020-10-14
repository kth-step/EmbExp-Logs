	ldr x23, [x21,x19]
	ldr x27, [x24, #0]
	cmp x21, x27
	b.eq #0xC
	ldr x25, [x23, #54]
	b #0x8
	ldr x23, [x13]
