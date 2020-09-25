	ldr x6, [x25,x29]
	ldr x8, [x9, #0]
	cmp x25, x8
	b.eq #0xC
	ldr x20, [x6, #161]
	b #0x8
	ldr x29, [x3, #16]
