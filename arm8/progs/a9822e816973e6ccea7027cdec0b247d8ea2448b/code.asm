	ldr x18, [x29,x9]
	ldr x5, [x25, #104]
	cmp x29, x5
	b.eq #0xC
	ldr x8, [x18, #100]
	b #0x8
	ldr x0, [x25, #4]
