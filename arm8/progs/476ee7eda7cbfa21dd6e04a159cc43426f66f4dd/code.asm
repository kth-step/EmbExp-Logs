	ldr x28, [x20,x12]
	ldr x0, [x27, #0]
	cmp x20, x0
	b.eq #0xC
	ldr x8, [x28, #157]
	b #0x8
	ldr x8, [x22, #16]
