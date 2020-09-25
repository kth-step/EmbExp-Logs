	ldr x24, [x29,x4]
	ldr x20, [x21, #0]
	cmp x29, x20
	b.eq #0xC
	ldr x14, [x24, #197]
	b #0x8
	ldr x12, [x3]
