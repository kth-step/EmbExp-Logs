	ldr x8, [x12,x26]
	ldr x7, [x2, #110]
	cmp x12, x7
	b.eq #0xC
	ldr x15, [x8, #112]
	b #0x8
	ldr x25, [x16, #4]
