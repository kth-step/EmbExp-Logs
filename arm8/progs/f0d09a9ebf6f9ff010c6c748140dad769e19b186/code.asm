	ldr x22, [x6,x16]
	ldr x23, [x11, #104]
	cmp x6, x23
	b.eq #0xC
	ldr x25, [x22, #92]
	b #0x8
	ldr x17, [x24]
