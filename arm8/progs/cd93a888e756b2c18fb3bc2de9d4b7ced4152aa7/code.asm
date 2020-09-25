	ldr x25, [x16,x14]
	ldr x16, [x17, #0]
	cmp x16, x16
	b.eq #0xC
	ldr x4, [x25, #119]
	b #0x8
	ldr x16, [x21]
