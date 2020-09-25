	ldr x19, [x13,x18]
	ldr x3, [x10, #0]
	cmp x13, x3
	b.eq #0xC
	ldr x22, [x19, #3]
	b #0x8
	ldr x28, [x4]
