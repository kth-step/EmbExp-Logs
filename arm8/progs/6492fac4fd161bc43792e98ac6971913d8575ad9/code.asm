	ldr x21, [x26,x11]
	ldr x0, [x22, #167]
	cmp x26, x0
	b.eq #0xC
	ldr x25, [x21, #16]
	b #0x8
	ldr x15, [x18]
