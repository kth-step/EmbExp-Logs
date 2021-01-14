	ldr x12, [x29,x25]
	ldr x7, [x18, #44]
	cmp x29, x7
	b.eq #0xC
	ldr x28, [x12, #214]
	b #0x8
	ldr x28, [x17, #8]
