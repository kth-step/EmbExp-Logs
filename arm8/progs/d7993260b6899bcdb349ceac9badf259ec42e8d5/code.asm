	ldr x27, [x21,x16]
	ldr x16, [x22, #207]
	cmp x21, x16
	b.eq #0xC
	ldr x17, [x27, #106]
	b #0x8
	ldr x8, [x6]
