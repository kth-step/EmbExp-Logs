	ldr x18, [x5,x4]
	ldr x13, [x10, #0]
	cmp x5, x13
	b.eq #0xC
	ldr x19, [x18, #203]
	b #0x8
	ldr x4, [x24, #4]
