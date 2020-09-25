	ldr x22, [x17,x0]
	ldr x8, [x18, #0]
	cmp x17, x8
	b.eq #0xC
	ldr x4, [x22, #112]
	b #0x8
	ldr x13, [x18, #8]
