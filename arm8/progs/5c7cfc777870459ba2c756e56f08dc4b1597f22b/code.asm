	ldr x19, [x22,x9]
	ldr x20, [x15, #243]
	cmp x22, x20
	b.eq #0xC
	ldr x4, [x19, #140]
	b #0x8
	ldr x21, [x9]
