	ldr x27, [x19,x13]
	ldr x14, [x10, #0]
	cmp x19, x14
	b.eq #0xC
	ldr x29, [x27, #246]
	b #0x8
	ldr x2, [x18, #4]
