	ldr x10, [x3,x22]
	ldr x0, [x12, #253]
	cmp x3, x0
	b.eq #0xC
	ldr x16, [x10, #196]
	b #0x8
	ldr x27, [x6]
