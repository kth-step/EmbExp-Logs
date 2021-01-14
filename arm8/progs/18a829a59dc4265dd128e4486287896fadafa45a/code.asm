	ldr x23, [x4,x12]
	ldr x19, [x22, #254]
	cmp x4, x19
	b.eq #0xC
	ldr x10, [x23, #162]
	b #0x8
	ldr x18, [x5, #16]
