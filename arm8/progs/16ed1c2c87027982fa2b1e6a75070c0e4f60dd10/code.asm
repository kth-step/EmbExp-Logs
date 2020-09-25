	ldr x21, [x28,x6]
	ldr x18, [x3, #0]
	cmp x28, x18
	b.eq #0xC
	ldr x20, [x21, #254]
	b #0x8
	ldr x22, [x7, #8]
