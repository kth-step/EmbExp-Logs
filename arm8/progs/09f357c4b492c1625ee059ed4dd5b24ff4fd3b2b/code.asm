	ldr x5, [x18,x24]
	ldr x16, [x1, #146]
	cmp x18, x16
	b.eq #0xC
	ldr x19, [x5, #204]
	b #0x8
	ldr x23, [x26, #4]
