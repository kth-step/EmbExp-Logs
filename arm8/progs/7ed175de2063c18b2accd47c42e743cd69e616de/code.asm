	ldr x24, [x14,x29]
	ldr x6, [x24, #0]
	cmp x14, x6
	b.eq #0xC
	ldr x17, [x24, #112]
	b #0x8
	ldr x11, [x10, #4]
