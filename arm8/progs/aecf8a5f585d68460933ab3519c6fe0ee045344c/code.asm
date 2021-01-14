	ldr x27, [x29,x18]
	ldr x28, [x0, #183]
	cmp x29, x28
	b.eq #0xC
	ldr x18, [x27, #222]
	b #0x8
	ldr x14, [x9]
