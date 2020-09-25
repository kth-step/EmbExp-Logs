	ldr x27, [x21,x16]
	ldr x12, [x15, #0]
	cmp x21, x12
	b.eq #0xC
	ldr x9, [x27, #64]
	b #0x8
	ldr x0, [x23, #4]
