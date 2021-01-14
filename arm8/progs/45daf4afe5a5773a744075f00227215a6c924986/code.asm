	ldr x11, [x22,x27]
	ldr x12, [x15, #235]
	cmp x22, x12
	b.eq #0xC
	ldr x3, [x11, #112]
	b #0x8
	ldr x18, [x15, #8]
