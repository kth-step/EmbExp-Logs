	ldr x26, [x7,x17]
	ldr x27, [x19, #0]
	cmp x7, x27
	b.eq #0xC
	ldr x3, [x26, #146]
	b #0x8
	ldr x7, [x6]
