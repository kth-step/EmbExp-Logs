	ldr x17, [x0,x12]
	ldr x16, [x15, #112]
	cmp x0, x16
	b.eq #0xC
	ldr x16, [x17, #192]
	b #0x8
	ldr x19, [x24]
