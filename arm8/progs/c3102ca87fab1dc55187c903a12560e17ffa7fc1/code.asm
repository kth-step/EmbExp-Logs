	ldr x27, [x4,x18]
	ldr x29, [x10, #0]
	cmp x4, x29
	b.eq #0xC
	ldr x12, [x27, #249]
	b #0x8
	ldr x5, [x21, #16]
