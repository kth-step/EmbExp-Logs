	ldr x6, [x25,x21]
	ldr x17, [x24, #249]
	cmp x25, x17
	b.eq #0xC
	ldr x12, [x6, #1]
	b #0x8
	ldr x29, [x16, #16]
