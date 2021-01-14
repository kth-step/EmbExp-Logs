	ldr x18, [x0,x25]
	ldr x5, [x21, #75]
	cmp x0, x5
	b.eq #0xC
	ldr x15, [x18, #112]
	b #0x8
	ldr x0, [x27]
