	ldr x21, [x18,x1]
	ldr x14, [x16, #0]
	cmp x18, x14
	b.eq #0xC
	ldr x12, [x21, #81]
	b #0x8
	ldr x25, [x7]
