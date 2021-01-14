	ldr x28, [x15,x8]
	ldr x26, [x15, #30]
	cmp x15, x26
	b.eq #0xC
	ldr x18, [x28, #137]
	b #0x8
	ldr x29, [x16]
