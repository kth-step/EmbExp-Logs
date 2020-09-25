	ldr x6, [x27,x8]
	ldr x16, [x29, #0]
	cmp x27, x16
	b.eq #0xC
	ldr x28, [x6, #120]
	b #0x8
	ldr x24, [x22]
