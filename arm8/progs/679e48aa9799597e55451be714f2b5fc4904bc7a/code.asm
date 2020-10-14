	ldr x18, [x1,x23]
	ldr x12, [x21, #0]
	cmp x1, x12
	b.eq #0xC
	ldr x7, [x18, #10]
	b #0x8
	ldr x1, [x19, #16]
