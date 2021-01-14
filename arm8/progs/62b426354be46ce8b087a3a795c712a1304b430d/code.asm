	ldr x14, [x0,x26]
	ldr x2, [x8, #168]
	cmp x0, x2
	b.eq #0xC
	ldr x28, [x14, #251]
	b #0x8
	ldr x19, [x20]
