	ldr x8, [x16,x0]
	ldr x19, [x28, #0]
	cmp x16, x19
	b.eq #0xC
	ldr x7, [x8, #94]
	b #0x8
	ldr x17, [x24]
