	ldr x17, [x29,x14]
	ldr x25, [x28, #0]
	cmp x29, x25
	b.eq #0xC
	ldr x6, [x17, #238]
	b #0x8
	ldr x27, [x4, #16]
