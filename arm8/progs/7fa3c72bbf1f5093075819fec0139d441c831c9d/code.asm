	ldr x12, [x28,x17]
	ldr x20, [x16, #0]
	cmp x28, x20
	b.eq #0xC
	ldr x24, [x12, #162]
	b #0x8
	ldr x25, [x14, #4]
