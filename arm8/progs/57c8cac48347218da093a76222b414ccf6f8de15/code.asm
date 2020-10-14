	ldr x19, [x10,x12]
	ldr x18, [x12, #0]
	cmp x10, x18
	b.eq #0xC
	ldr x25, [x19, #77]
	b #0x8
	ldr x6, [x21, #16]
