	ldr x12, [x26,x19]
	ldr x1, [x28, #0]
	cmp x26, x1
	b.eq #0xC
	ldr x23, [x12, #188]
	b #0x8
	ldr x12, [x13]
