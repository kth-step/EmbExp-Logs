	ldr x25, [x24,x27]
	ldr x4, [x13, #187]
	cmp x24, x4
	b.eq #0xC
	ldr x22, [x25, #249]
	b #0x8
	ldr x29, [x12]
