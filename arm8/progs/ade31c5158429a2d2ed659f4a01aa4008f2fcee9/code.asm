	ldr x12, [x25,x18]
	ldr x18, [x3, #0]
	cmp x25, x18
	b.eq #0xC
	ldr x20, [x12, #250]
	b #0x8
	ldr x25, [x15]
