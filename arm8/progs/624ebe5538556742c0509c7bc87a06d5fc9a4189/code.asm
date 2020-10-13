	ldr x15, [x29,x10]
	ldr x1, [x0, #0]
	cmp x29, x1
	b.eq #0xC
	ldr x25, [x15, #112]
	b #0x8
	ldr x19, [x29]
