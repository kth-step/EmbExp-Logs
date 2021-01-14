	ldr x25, [x7,x8]
	ldr x24, [x29, #171]
	cmp x7, x24
	b.eq #0xC
	ldr x5, [x25, #116]
	b #0x8
	ldr x9, [x5, #16]
