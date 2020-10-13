	ldr x2, [x0,x27]
	ldr x23, [x28, #0]
	cmp x0, x23
	b.eq #0xC
	ldr x16, [x2, #253]
	b #0x8
	ldr x25, [x16]
