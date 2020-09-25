	ldr x17, [x15,x18]
	ldr x20, [x14, #0]
	cmp x15, x20
	b.eq #0xC
	ldr x14, [x17, #100]
	b #0x8
	ldr x12, [x11]
