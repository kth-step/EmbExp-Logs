	ldr x14, [x8,x10]
	ldr x2, [x9, #0]
	cmp x8, x2
	b.eq #0xC
	ldr x18, [x14, #246]
	b #0x8
	ldr x20, [x8, #16]
