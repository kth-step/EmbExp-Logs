	ldr x22, [x28,x0]
	ldr x18, [x22, #0]
	cmp x28, x18
	b.eq #0xC
	ldr x25, [x22, #148]
	b #0x8
	ldr x22, [x8, #8]
