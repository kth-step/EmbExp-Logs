	ldr x24, [x8,x18]
	ldr x0, [x10, #235]
	cmp x8, x0
	b.eq #0xC
	ldr x17, [x24, #230]
	b #0x8
	ldr x22, [x21]
