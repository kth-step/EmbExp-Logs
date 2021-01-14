	ldr x18, [x28,x24]
	ldr x2, [x15, #178]
	cmp x28, x2
	b.eq #0xC
	ldr x0, [x18, #26]
	b #0x8
	ldr x12, [x25, #4]
