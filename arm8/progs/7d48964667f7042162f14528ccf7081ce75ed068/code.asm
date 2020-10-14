	ldr x8, [x20,x5]
	ldr x15, [x28, #0]
	cmp x20, x15
	b.eq #0xC
	ldr x4, [x8, #193]
	b #0x8
	ldr x8, [x27]
