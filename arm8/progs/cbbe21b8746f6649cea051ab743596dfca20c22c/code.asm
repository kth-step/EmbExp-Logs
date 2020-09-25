	ldr x10, [x21,x16]
	ldr x26, [x6, #0]
	cmp x21, x26
	b.eq #0xC
	ldr x12, [x10, #195]
	b #0x8
	ldr x16, [x19, #4]
