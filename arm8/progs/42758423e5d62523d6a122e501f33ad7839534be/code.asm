	ldr x21, [x14,x28]
	ldr x3, [x2, #100]
	cmp x14, x3
	b.eq #0xC
	ldr x8, [x21, #228]
	b #0x8
	ldr x19, [x26, #4]
