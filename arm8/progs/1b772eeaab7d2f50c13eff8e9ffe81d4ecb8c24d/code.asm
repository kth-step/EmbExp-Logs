	ldr x24, [x27,x28]
	ldr x21, [x24, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x14, [x24, #112]
	b #0x8
	ldr x5, [x6, #4]
