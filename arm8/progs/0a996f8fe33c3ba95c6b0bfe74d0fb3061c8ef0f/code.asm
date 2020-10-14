	ldr x19, [x14,x27]
	ldr x28, [x27, #0]
	cmp x14, x28
	b.eq #0xC
	ldr x11, [x19, #76]
	b #0x8
	ldr x28, [x17]
