	ldr x27, [x28,x18]
	ldr x10, [x18, #0]
	cmp x28, x10
	b.eq #0xC
	ldr x24, [x27, #73]
	b #0x8
	ldr x20, [x24, #4]
