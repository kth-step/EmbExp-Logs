	ldr x27, [x10,x1]
	ldr x14, [x2, #0]
	cmp x10, x14
	b.eq #0xC
	ldr x15, [x27, #50]
	b #0x8
	ldr x18, [x19, #16]
