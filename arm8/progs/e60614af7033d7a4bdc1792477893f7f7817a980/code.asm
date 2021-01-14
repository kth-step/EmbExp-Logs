	ldr x18, [x29,x26]
	ldr x4, [x10, #255]
	cmp x29, x4
	b.eq #0xC
	ldr x29, [x18, #100]
	b #0x8
	ldr x1, [x28]
