	ldr x4, [x5,x22]
	ldr x2, [x8, #171]
	cmp x5, x2
	b.eq #0xC
	ldr x9, [x4, #92]
	b #0x8
	ldr x22, [x4]
