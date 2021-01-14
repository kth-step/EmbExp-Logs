	ldr x7, [x28,x17]
	ldr x22, [x5, #193]
	cmp x28, x22
	b.eq #0xC
	ldr x15, [x7, #146]
	b #0x8
	ldr x16, [x12]
