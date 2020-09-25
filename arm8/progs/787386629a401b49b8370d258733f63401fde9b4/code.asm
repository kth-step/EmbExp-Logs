	ldr x21, [x9,x14]
	ldr x19, [x1, #0]
	cmp x9, x19
	b.eq #0xC
	ldr x28, [x21, #95]
	b #0x8
	ldr x27, [x12, #16]
