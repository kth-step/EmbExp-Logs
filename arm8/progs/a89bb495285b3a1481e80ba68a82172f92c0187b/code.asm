	ldr x21, [x20,x6]
	ldr x27, [x12, #0]
	cmp x20, x27
	b.eq #0xC
	ldr x29, [x21, #82]
	b #0x8
	ldr x6, [x15, #8]
