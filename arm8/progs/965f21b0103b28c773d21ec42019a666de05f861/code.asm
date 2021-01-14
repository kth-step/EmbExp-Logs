	ldr x12, [x29,x18]
	ldr x8, [x28, #21]
	cmp x29, x8
	b.eq #0xC
	ldr x21, [x12, #109]
	b #0x8
	ldr x9, [x10]
