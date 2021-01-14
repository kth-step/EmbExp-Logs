	ldr x11, [x2,x24]
	ldr x2, [x25, #179]
	cmp x2, x2
	b.eq #0xC
	ldr x6, [x11, #230]
	b #0x8
	ldr x26, [x22]
