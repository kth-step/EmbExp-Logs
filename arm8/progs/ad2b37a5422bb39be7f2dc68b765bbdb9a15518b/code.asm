	ldr x16, [x15,x23]
	ldr x27, [x25, #0]
	cmp x15, x27
	b.eq #0xC
	ldr x19, [x16, #97]
	b #0x8
	ldr x27, [x27, #8]
