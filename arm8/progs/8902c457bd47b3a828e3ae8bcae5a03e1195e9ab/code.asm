	ldr x29, [x26,x13]
	ldr x7, [x24, #0]
	cmp x26, x7
	b.eq #0xC
	ldr x0, [x29, #112]
	b #0x8
	ldr x16, [x26]
