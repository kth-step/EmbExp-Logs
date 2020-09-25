	ldr x6, [x8,x25]
	ldr x14, [x24, #0]
	cmp x8, x14
	b.eq #0xC
	ldr x19, [x6, #81]
	b #0x8
	ldr x23, [x13]
