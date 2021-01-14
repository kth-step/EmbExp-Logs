	ldr x9, [x6,x11]
	ldr x0, [x21, #108]
	cmp x6, x0
	b.eq #0xC
	ldr x23, [x9, #220]
	b #0x8
	ldr x22, [x5, #16]
