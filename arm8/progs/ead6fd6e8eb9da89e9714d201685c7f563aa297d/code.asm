	ldr x14, [x7,x7]
	ldr x1, [x5, #204]
	cmp x7, x1
	b.eq #0xC
	ldr x19, [x14, #246]
	b #0x8
	ldr x7, [x14, #16]
