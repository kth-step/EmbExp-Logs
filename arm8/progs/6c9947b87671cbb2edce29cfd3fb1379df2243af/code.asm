	ldr x7, [x12,x16]
	ldr x26, [x13, #246]
	cmp x12, x26
	b.eq #0xC
	ldr x4, [x7, #236]
	b #0x8
	ldr x14, [x21, #4]
