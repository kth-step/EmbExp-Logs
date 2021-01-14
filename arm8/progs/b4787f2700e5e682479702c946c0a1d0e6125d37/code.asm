	ldr x16, [x17,x0]
	ldr x20, [x19, #237]
	cmp x17, x20
	b.eq #0xC
	ldr x15, [x16, #32]
	b #0x8
	ldr x8, [x18]
