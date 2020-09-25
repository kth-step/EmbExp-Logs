	ldr x19, [x1,x5]
	ldr x8, [x21, #0]
	cmp x1, x8
	b.eq #0xC
	ldr x29, [x19, #243]
	b #0x8
	ldr x18, [x18]
