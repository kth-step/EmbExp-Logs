	ldr x28, [x19,x12]
	ldr x4, [x16, #149]
	cmp x19, x4
	b.eq #0xC
	ldr x18, [x28, #13]
	b #0x8
	ldr x14, [x8, #16]
