	ldr x22, [x25,x26]
	ldr x6, [x18, #0]
	cmp x25, x6
	b.eq #0xC
	ldr x5, [x22, #171]
	b #0x8
	ldr x17, [x2]
