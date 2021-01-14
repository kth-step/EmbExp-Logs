	ldr x29, [x8,x28]
	ldr x28, [x24, #58]
	cmp x8, x28
	b.eq #0xC
	ldr x7, [x29, #251]
	b #0x8
	ldr x28, [x17, #16]
