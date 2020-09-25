	ldr x15, [x22,x14]
	ldr x4, [x24, #0]
	cmp x22, x4
	b.eq #0xC
	ldr x17, [x15, #81]
	b #0x8
	ldr x15, [x26]
