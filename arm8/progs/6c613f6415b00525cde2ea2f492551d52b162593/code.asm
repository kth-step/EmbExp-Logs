	ldr x29, [x4,x26]
	ldr x12, [x24, #192]
	cmp x4, x12
	b.eq #0xC
	ldr x14, [x29, #180]
	b #0x8
	ldr x21, [x25, #16]
