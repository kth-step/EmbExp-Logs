	ldr x9, [x22,x8]
	ldr x28, [x23, #0]
	cmp x22, x28
	b.eq #0xC
	ldr x8, [x9, #219]
	b #0x8
	ldr x22, [x28, #16]
