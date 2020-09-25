	ldr x19, [x25,x7]
	ldr x6, [x22, #0]
	cmp x25, x6
	b.eq #0xC
	ldr x9, [x19, #22]
	b #0x8
	ldr x28, [x18, #8]
