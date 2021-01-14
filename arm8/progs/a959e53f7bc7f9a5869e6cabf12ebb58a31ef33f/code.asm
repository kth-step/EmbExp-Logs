	ldr x28, [x25,x3]
	ldr x2, [x0, #90]
	cmp x25, x2
	b.eq #0xC
	ldr x12, [x28, #219]
	b #0x8
	ldr x25, [x12]
