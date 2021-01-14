	ldr x5, [x19,x10]
	ldr x27, [x12, #158]
	cmp x19, x27
	b.eq #0xC
	ldr x28, [x5, #17]
	b #0x8
	ldr x4, [x5, #8]
