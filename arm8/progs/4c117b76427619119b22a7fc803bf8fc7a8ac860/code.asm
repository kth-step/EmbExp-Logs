	ldr x22, [x27,x23]
	ldr x10, [x21, #0]
	cmp x27, x10
	b.eq #0xC
	ldr x15, [x22, #9]
	b #0x8
	ldr x12, [x27]
