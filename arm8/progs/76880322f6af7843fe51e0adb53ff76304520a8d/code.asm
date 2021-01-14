	ldr x27, [x7,x22]
	ldr x22, [x14, #116]
	cmp x7, x22
	b.eq #0xC
	ldr x8, [x27, #230]
	b #0x8
	ldr x15, [x22, #8]
