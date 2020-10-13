	ldr x9, [x3,x24]
	ldr x29, [x22, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x2, [x9, #164]
	b #0x8
	ldr x27, [x28, #16]
