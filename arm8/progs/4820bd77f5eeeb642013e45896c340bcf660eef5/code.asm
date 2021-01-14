	ldr x19, [x7,x13]
	ldr x17, [x1, #81]
	cmp x7, x17
	b.eq #0xC
	ldr x8, [x19, #203]
	b #0x8
	ldr x20, [x12, #4]
