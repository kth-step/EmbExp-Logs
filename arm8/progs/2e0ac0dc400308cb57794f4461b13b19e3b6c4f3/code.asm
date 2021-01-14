	ldr x12, [x19,x0]
	ldr x10, [x3, #60]
	cmp x19, x10
	b.eq #0xC
	ldr x22, [x12, #162]
	b #0x8
	ldr x27, [x16, #16]
