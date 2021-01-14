	ldr x6, [x16,x7]
	ldr x16, [x6, #203]
	cmp x16, x16
	b.eq #0xC
	ldr x17, [x6, #227]
	b #0x8
	ldr x20, [x16]
