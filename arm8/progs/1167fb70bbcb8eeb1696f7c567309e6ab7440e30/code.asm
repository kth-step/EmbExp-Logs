	ldr x19, [x27,x22]
	ldr x28, [x20, #0]
	cmp x27, x28
	b.eq #0xC
	ldr x9, [x19, #89]
	b #0x8
	ldr x5, [x12, #8]
