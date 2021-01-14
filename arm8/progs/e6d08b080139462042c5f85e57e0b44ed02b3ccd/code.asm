	ldr x25, [x19,x22]
	ldr x11, [x1, #99]
	cmp x19, x11
	b.eq #0xC
	ldr x28, [x25, #211]
	b #0x8
	ldr x16, [x27]
