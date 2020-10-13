	ldr x21, [x13,x12]
	ldr x13, [x18, #0]
	cmp x13, x13
	b.eq #0xC
	ldr x27, [x21, #225]
	b #0x8
	ldr x18, [x13]
