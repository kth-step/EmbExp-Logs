	ldr x15, [x13,x20]
	ldr x18, [x27, #0]
	cmp x13, x18
	b.eq #0xC
	ldr x18, [x15, #196]
	b #0x8
	ldr x21, [x29]
