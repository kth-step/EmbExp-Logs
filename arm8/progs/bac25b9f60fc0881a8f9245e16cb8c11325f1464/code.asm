	ldr x27, [x28,x24]
	ldr x18, [x2, #0]
	cmp x28, x18
	b.eq #0xC
	ldr x16, [x27, #165]
	b #0x8
	ldr x4, [x23, #16]
