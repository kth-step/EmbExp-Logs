	ldr x20, [x21,x23]
	ldr x17, [x14, #157]
	cmp x21, x17
	b.eq #0xC
	ldr x15, [x20, #12]
	b #0x8
	ldr x1, [x16]
