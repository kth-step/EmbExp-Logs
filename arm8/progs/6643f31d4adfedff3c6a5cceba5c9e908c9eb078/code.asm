	ldr x12, [x6,x24]
	ldr x21, [x17, #0]
	cmp x6, x21
	b.eq #0xC
	ldr x25, [x12, #100]
	b #0x8
	ldr x15, [x1, #4]
