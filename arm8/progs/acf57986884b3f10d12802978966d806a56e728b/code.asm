	ldr x21, [x5,x2]
	ldr x0, [x19, #140]
	cmp x5, x0
	b.eq #0xC
	ldr x4, [x21, #171]
	b #0x8
	ldr x22, [x9, #8]
