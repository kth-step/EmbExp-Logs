	ldr x28, [x22,x25]
	ldr x2, [x0, #141]
	cmp x22, x2
	b.eq #0xC
	ldr x19, [x28, #182]
	b #0x8
	ldr x22, [x8, #16]
