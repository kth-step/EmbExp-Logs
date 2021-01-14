	ldr x11, [x15,x5]
	ldr x6, [x25, #11]
	cmp x15, x6
	b.eq #0xC
	ldr x14, [x11, #171]
	b #0x8
	ldr x19, [x6]
