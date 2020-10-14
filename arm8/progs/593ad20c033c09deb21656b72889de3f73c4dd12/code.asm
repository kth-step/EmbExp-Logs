	ldr x27, [x23,x18]
	ldr x3, [x25, #0]
	cmp x23, x3
	b.eq #0xC
	ldr x25, [x27, #204]
	b #0x8
	ldr x21, [x19, #8]
