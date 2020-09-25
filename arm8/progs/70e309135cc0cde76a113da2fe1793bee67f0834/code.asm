	ldr x17, [x19,x22]
	ldr x25, [x6, #0]
	cmp x19, x25
	b.eq #0xC
	ldr x27, [x17, #233]
	b #0x8
	ldr x15, [x3]
