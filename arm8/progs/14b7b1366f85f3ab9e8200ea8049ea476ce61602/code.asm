	ldr x15, [x7,x18]
	ldr x19, [x23, #112]
	cmp x7, x19
	b.eq #0xC
	ldr x28, [x15, #145]
	b #0x8
	ldr x29, [x4, #16]
