	ldr x20, [x24,x22]
	ldr x9, [x17, #94]
	cmp x24, x9
	b.eq #0xC
	ldr x6, [x20, #214]
	b #0x8
	ldr x20, [x17, #16]
