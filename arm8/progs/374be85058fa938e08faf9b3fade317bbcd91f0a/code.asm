	ldr x22, [x28,x17]
	ldr x13, [x29, #224]
	cmp x28, x13
	b.eq #0xC
	ldr x18, [x22, #19]
	b #0x8
	ldr x25, [x0]
