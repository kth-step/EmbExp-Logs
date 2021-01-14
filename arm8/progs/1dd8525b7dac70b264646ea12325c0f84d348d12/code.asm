	ldr x5, [x18,x10]
	ldr x25, [x10, #108]
	cmp x18, x25
	b.eq #0xC
	ldr x26, [x5, #73]
	b #0x8
	ldr x7, [x10, #8]
