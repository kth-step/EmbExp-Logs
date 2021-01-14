	ldr x21, [x25,x22]
	ldr x2, [x4, #171]
	cmp x25, x2
	b.eq #0xC
	ldr x3, [x21, #245]
	b #0x8
	ldr x22, [x1]
