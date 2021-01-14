	ldr x6, [x18,x14]
	ldr x15, [x16, #248]
	cmp x18, x15
	b.eq #0xC
	ldr x21, [x6, #167]
	b #0x8
	ldr x28, [x28, #4]
