	ldr x24, [x22,x2]
	ldr x0, [x19, #0]
	cmp x22, x0
	b.eq #0xC
	ldr x10, [x24, #74]
	b #0x8
	ldr x10, [x2, #4]
