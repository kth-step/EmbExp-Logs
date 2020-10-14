	ldr x13, [x9,x8]
	ldr x26, [x22, #0]
	cmp x9, x26
	b.eq #0xC
	ldr x2, [x13, #139]
	b #0x8
	ldr x18, [x22, #16]
