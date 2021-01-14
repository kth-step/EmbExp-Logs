	ldr x5, [x0,x13]
	ldr x9, [x27, #217]
	cmp x0, x9
	b.eq #0xC
	ldr x27, [x5, #85]
	b #0x8
	ldr x16, [x22]
