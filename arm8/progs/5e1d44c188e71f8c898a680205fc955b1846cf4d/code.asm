	ldr x29, [x3,x24]
	ldr x28, [x21, #0]
	cmp x3, x28
	b.eq #0xC
	ldr x22, [x29, #94]
	b #0x8
	ldr x15, [x19, #8]
