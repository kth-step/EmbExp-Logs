	ldr x19, [x29,x10]
	ldr x4, [x18, #204]
	cmp x29, x4
	b.eq #0xC
	ldr x16, [x19, #133]
	b #0x8
	ldr x0, [x24]
