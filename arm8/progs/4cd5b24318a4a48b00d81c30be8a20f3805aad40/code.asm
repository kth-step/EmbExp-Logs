	ldr x27, [x12,x12]
	ldr x28, [x12, #0]
	cmp x12, x28
	b.eq #0xC
	ldr x8, [x27, #143]
	b #0x8
	ldr x19, [x2, #16]
