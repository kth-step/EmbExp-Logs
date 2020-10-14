	ldr x28, [x22,x15]
	ldr x15, [x28, #0]
	cmp x22, x15
	b.eq #0xC
	ldr x15, [x28, #16]
	b #0x8
	ldr x28, [x25, #16]
