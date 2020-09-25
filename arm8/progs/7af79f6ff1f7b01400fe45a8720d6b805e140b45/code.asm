	ldr x29, [x1,x14]
	ldr x18, [x9, #0]
	cmp x1, x18
	b.eq #0xC
	ldr x5, [x29, #246]
	b #0x8
	ldr x7, [x1, #4]
