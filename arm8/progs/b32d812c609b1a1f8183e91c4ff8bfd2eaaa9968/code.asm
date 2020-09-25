	ldr x5, [x20,x18]
	ldr x12, [x22, #0]
	cmp x20, x12
	b.eq #0xC
	ldr x28, [x5, #158]
	b #0x8
	ldr x5, [x2]
