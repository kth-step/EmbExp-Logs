	ldr x9, [x24,x22]
	ldr x25, [x18, #0]
	cmp x24, x25
	b.eq #0xC
	ldr x17, [x9, #112]
	b #0x8
	ldr x3, [x14]
