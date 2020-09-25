	ldr x4, [x29,x24]
	ldr x25, [x22, #0]
	cmp x29, x25
	b.eq #0xC
	ldr x17, [x4, #46]
	b #0x8
	ldr x15, [x8]
