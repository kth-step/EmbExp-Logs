	ldr x6, [x28,x9]
	ldr x29, [x7, #80]
	cmp x28, x29
	b.eq #0xC
	ldr x1, [x6, #112]
	b #0x8
	ldr x25, [x16, #4]
