	ldr x29, [x28,x25]
	ldr x3, [x1, #9]
	cmp x28, x3
	b.eq #0xC
	ldr x9, [x29, #86]
	b #0x8
	ldr x9, [x24]
