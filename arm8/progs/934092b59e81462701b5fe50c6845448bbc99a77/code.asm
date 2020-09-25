	ldr x22, [x16,x24]
	ldr x10, [x24, #0]
	cmp x16, x10
	b.eq #0xC
	ldr x6, [x22, #90]
	b #0x8
	ldr x18, [x21, #4]
