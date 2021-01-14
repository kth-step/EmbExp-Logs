	ldr x19, [x24,x7]
	ldr x17, [x28, #190]
	cmp x24, x17
	b.eq #0xC
	ldr x6, [x19, #220]
	b #0x8
	ldr x18, [x19, #16]
