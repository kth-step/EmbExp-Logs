	ldr x12, [x23,x23]
	ldr x28, [x4, #2]
	cmp x23, x28
	b.eq #0xC
	ldr x8, [x12, #160]
	b #0x8
	ldr x19, [x17, #16]
