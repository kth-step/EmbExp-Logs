	ldr x12, [x7,x4]
	ldr x18, [x19, #0]
	cmp x7, x18
	b.eq #0xC
	ldr x10, [x12, #202]
	b #0x8
	ldr x5, [x28, #16]
