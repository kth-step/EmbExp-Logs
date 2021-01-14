	ldr x22, [x9,x14]
	ldr x13, [x27, #170]
	cmp x9, x13
	b.eq #0xC
	ldr x10, [x22, #10]
	b #0x8
	ldr x27, [x24, #4]
