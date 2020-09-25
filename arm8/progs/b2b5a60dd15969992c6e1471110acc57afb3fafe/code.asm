	ldr x24, [x22,x19]
	ldr x28, [x0, #0]
	cmp x22, x28
	b.eq #0xC
	ldr x15, [x24, #148]
	b #0x8
	ldr x29, [x28]
