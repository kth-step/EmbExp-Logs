	ldr x27, [x18,x16]
	ldr x14, [x29, #0]
	cmp x18, x14
	b.eq #0xC
	ldr x14, [x27, #81]
	b #0x8
	ldr x19, [x5, #16]
