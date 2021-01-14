	ldr x15, [x4,x3]
	ldr x2, [x22, #64]
	cmp x4, x2
	b.eq #0xC
	ldr x28, [x15, #44]
	b #0x8
	ldr x8, [x9, #16]
