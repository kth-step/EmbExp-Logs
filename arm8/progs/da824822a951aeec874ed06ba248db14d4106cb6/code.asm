	ldr x27, [x18,x18]
	ldr x12, [x15, #102]
	cmp x18, x12
	b.eq #0xC
	ldr x1, [x27, #98]
	b #0x8
	ldr x19, [x19, #8]
