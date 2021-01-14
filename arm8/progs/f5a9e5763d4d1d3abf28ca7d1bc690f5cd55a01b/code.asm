	ldr x23, [x22,x17]
	ldr x6, [x12, #253]
	cmp x22, x6
	b.eq #0xC
	ldr x10, [x23, #222]
	b #0x8
	ldr x20, [x10, #4]
