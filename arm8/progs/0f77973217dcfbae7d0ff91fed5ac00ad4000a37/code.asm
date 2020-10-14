	ldr x9, [x20,x28]
	ldr x19, [x17, #0]
	cmp x20, x19
	b.eq #0xC
	ldr x18, [x9, #164]
	b #0x8
	ldr x16, [x20, #4]
