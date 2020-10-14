	ldr x4, [x27,x14]
	ldr x28, [x6, #0]
	cmp x27, x28
	b.eq #0xC
	ldr x19, [x4, #119]
	b #0x8
	ldr x20, [x16]
