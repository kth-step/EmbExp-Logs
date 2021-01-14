	ldr x25, [x19,x20]
	ldr x8, [x22, #74]
	cmp x19, x8
	b.eq #0xC
	ldr x4, [x25, #52]
	b #0x8
	ldr x15, [x16, #4]
