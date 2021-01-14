	ldr x22, [x18,x12]
	ldr x1, [x22, #130]
	cmp x18, x1
	b.eq #0xC
	ldr x25, [x22, #214]
	b #0x8
	ldr x20, [x6, #4]
