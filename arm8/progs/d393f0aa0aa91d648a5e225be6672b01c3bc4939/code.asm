	ldr x19, [x2,x9]
	ldr x27, [x1, #176]
	cmp x2, x27
	b.eq #0xC
	ldr x25, [x19, #214]
	b #0x8
	ldr x1, [x17]
