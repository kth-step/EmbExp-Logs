	ldr x8, [x10,x14]
	ldr x26, [x20, #0]
	cmp x10, x26
	b.eq #0xC
	ldr x12, [x8, #66]
	b #0x8
	ldr x19, [x1]
