	ldr x9, [x29,x4]
	ldr x25, [x9, #31]
	cmp x29, x25
	b.eq #0xC
	ldr x17, [x9, #23]
	b #0x8
	ldr x12, [x28, #16]
