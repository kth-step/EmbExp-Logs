	ldr x27, [x15,x22]
	ldr x22, [x17, #0]
	cmp x15, x22
	b.eq #0xC
	ldr x28, [x27, #153]
	b #0x8
	ldr x21, [x7, #8]
