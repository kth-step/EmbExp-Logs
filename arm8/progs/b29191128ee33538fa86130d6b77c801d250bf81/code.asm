	ldr x28, [x25,x17]
	ldr x19, [x12, #0]
	cmp x25, x19
	b.eq #0xC
	ldr x2, [x28, #223]
	b #0x8
	ldr x5, [x15, #16]
