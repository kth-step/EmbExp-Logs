	ldr x24, [x19,x28]
	ldr x3, [x12, #104]
	cmp x19, x3
	b.eq #0xC
	ldr x25, [x24, #132]
	b #0x8
	ldr x8, [x23]
